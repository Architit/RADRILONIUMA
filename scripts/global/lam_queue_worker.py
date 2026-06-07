# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import json
import os
import subprocess
import time
import fcntl
import sys
from pathlib import Path
from datetime import datetime, timezone

# Path Configuration
BASE_DIR = Path(__file__).resolve().parents[2]
QUEUE_FILE = BASE_DIR / ".gateway" / "queue.json"
TELEMETRY_BUFFER = BASE_DIR / ".gateway" / "telemetry_events.jsonl"

# Organ Routing Map
ORGAN_MAP = {
    "RADR-01": BASE_DIR / "devkit" / "patch.sh",
    "CDKS-01": BASE_DIR.parent / "LAM-Codex_Agent" / "devkit" / "patch.sh",
    "RDTR-01": BASE_DIR.parent / "Roaudter-agent" / "devkit" / "patch.sh",
}

def log_event(event_type, msg, task_id=None):
    """Log structured telemetry event."""
    event = {
        "ts_utc": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "event": event_type,
        "msg": msg,
        "task_id": task_id
    }
    with TELEMETRY_BUFFER.open("a", encoding="utf-8") as f:
        f.write(json.dumps(event) + "\n")

class QueueLock:
    """Simple file-based lock for queue synchronization."""
    def __init__(self, path):
        self.lock_file = Path(str(path) + ".lock")
        self.fd = None

    def __enter__(self):
        self.fd = open(self.lock_file, "w")
        fcntl.flock(self.fd, fcntl.LOCK_EX)
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self.fd:
            fcntl.flock(self.fd, fcntl.LOCK_UN)
            self.fd.close()
            try:
                self.lock_file.unlink()
            except:
                pass

def process_apc_task(task):
    """Execute a task using the APC routing logic."""
    payload = task.get("payload", {})
    owner = payload.get("owner", "RADR-01")
    intent = payload.get("intent", "patch")
    
    print(f"[APC] Processing Task {task['id']} | Owner: {owner} | Intent: {intent}")
    
    entrypoint = ORGAN_MAP.get(owner)
    if not entrypoint or not entrypoint.exists():
        return False, f"Unknown or missing entrypoint for organ: {owner}"
    
    try:
        # Standard execution via patch.sh if intent is patch/sync
        cmd = ["bash", str(entrypoint)]
        # Add task context if available
        if "spec_path" in payload and payload["spec_path"]:
            cmd.extend(["--spec-file", payload["spec_path"]])
        
        # Pass audit mandatory fields if present
        if "task_id" in payload:
            cmd.extend(["--task-id", payload["task_id"]])
        elif "id" in task:
             cmd.extend(["--task-id", task["id"]])

        if "sha256" in payload:
            cmd.extend(["--sha256", payload["sha256"]])
        
        if "patch_file" in payload:
            cmd.extend(["--file", payload["patch_file"]])
            
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=300)
        
        if result.returncode == 0:
            return True, result.stdout.strip()
        else:
            return False, result.stderr.strip() or result.stdout.strip()
            
    except Exception as e:
        return False, str(e)

def run_worker():
    """Main APC worker loop (one-pass)."""
    if not QUEUE_FILE.exists():
        return

    with QueueLock(QUEUE_FILE):
        try:
            with QUEUE_FILE.open("r", encoding="utf-8") as f:
                queue_data = json.load(f)
        except Exception as e:
            print(f"[APC] Error reading queue: {e}")
            return

        items = queue_data.get("items", [])
        now_epoch = int(time.time())
        processed_count = 0

        for item in items:
            if item.get("status") != "pending":
                continue
            
            # Simple priority/time check (already implicitly sorted by enqueue)
            # APC only handles 'apc_task' and legacy 'put'/'get' if needed
            # For now, let's focus on apc_task
            if item.get("type") != "apc_task":
                continue

            item["status"] = "in_progress"
            item["started_utc"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
            
            # Flush queue state before execution to mark as in_progress
            with QUEUE_FILE.open("w", encoding="utf-8") as f:
                json.dump(queue_data, f, indent=2)
            
            log_event("task.start", f"Starting task {item['id']}", task_id=item['id'])
            
            ok, msg = process_apc_task(item)
            
            if ok:
                item["status"] = "done"
                item["finished_utc"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
                item["result"] = msg
                log_event("task.complete", "Task finished successfully", task_id=item['id'])
            else:
                item["status"] = "error"
                item["error_msg"] = msg
                log_event("task.error", f"Task failed: {msg}", task_id=item['id'])
            
            processed_count += 1
            # Break after one task to keep cycles short and allow re-prioritization
            break 

        # Final save
        with QUEUE_FILE.open("w", encoding="utf-8") as f:
            json.dump(queue_data, f, indent=2)
            
    if processed_count > 0:
        print(f"[APC] Worker cycle complete. Processed {processed_count} tasks.")

if __name__ == "__main__":
    run_worker()
