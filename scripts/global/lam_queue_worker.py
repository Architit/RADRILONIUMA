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
AMC_GRAPH_FILE = BASE_DIR / ".gateway" / "amc_graph.json"
TELEMETRY_BUFFER = BASE_DIR / ".gateway" / "telemetry_events.jsonl"

def get_routing_map():
    """Load dynamic routing map from AMC Graph."""
    if not AMC_GRAPH_FILE.exists():
        print("[APC] WARNING: AMC Graph missing. Falling back to empty map.")
        return {}
    
    with AMC_GRAPH_FILE.open("r", encoding="utf-8") as f:
        graph = json.load(f)
    
    # Map System ID -> patch.sh path
    routing = {}
    for sys_id, meta in graph.get("organs", {}).items():
        path = Path(meta["path"])
        patch_script = path / "devkit" / "patch.sh"
        if patch_script.exists():
            routing[sys_id] = patch_script
            
    return routing

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

def process_apc_task(task, routing_map):
    """Execute a task using the APC routing logic."""
    payload = task.get("payload", {})
    owner = payload.get("owner", "RADR-01")
    intent = payload.get("intent", "patch")
    
    print(f"[APC] Processing Task {task['id']} | Owner: {owner} | Intent: {intent}")
    
    if intent == "patch":
        if "sha256" not in payload or not payload["sha256"]:
            return False, "Validation failed: 'sha256' payload field is required for 'patch' intent"
        if "patch_file" not in payload or not payload["patch_file"]:
            return False, "Validation failed: 'patch_file' payload field is required for 'patch' intent"
    
    entrypoint = routing_map.get(owner)
    if not entrypoint or not entrypoint.exists():
        return False, f"Unknown or missing entrypoint for organ: {owner}"
    
    try:
        if intent == "research":
            organ_root = entrypoint.parent.parent
            start_script = organ_root / "start.py"
            if start_script.exists():
                print(f"[APC] Executing research script for {owner}: start.py")
                cmd = [sys.executable, str(start_script)]
                result = subprocess.run(cmd, cwd=str(organ_root), capture_output=True, text=True, timeout=300)
                if result.returncode == 0:
                    return True, result.stdout.strip()
                else:
                    return False, f"Research execution failed: {result.stderr.strip() or result.stdout.strip()}"
            else:
                return False, f"Research intent not supported: start.py missing in {owner}"

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
            
        result = subprocess.run(cmd, cwd=str(entrypoint.parent.parent), capture_output=True, text=True, timeout=300)
        
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

    routing_map = get_routing_map()

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

            owner = item.get("payload", {}).get("owner", "unknown")
            intent = item.get("payload", {}).get("intent", "unknown")

            # Resolve missing sha256 or patch_file from task spec if present
            spec_path = item.get("payload", {}).get("spec_path")
            if spec_path and Path(spec_path).exists():
                try:
                    import yaml
                    with open(spec_path, "r", encoding="utf-8") as sf:
                        spec_data = yaml.safe_load(sf) or {}
                except Exception:
                    try:
                        py = "import json,sys,yaml; print(json.dumps(yaml.safe_load(sys.stdin.read())))"
                        proc = subprocess.run(["python3", "-c", py], input=Path(spec_path).read_text(encoding="utf-8"), capture_output=True, text=True)
                        spec_data = json.loads(proc.stdout) if proc.returncode == 0 else {}
                    except Exception:
                        spec_data = {}
                        
                if spec_data:
                    artifacts = spec_data.get("artifacts", {})
                    if "sha256" not in item["payload"] or not item["payload"]["sha256"]:
                        item["payload"]["sha256"] = artifacts.get("patch_sha256")
                    if "patch_file" not in item["payload"] or not item["payload"]["patch_file"]:
                        raw_patch_path = artifacts.get("patch_path")
                        if raw_patch_path:
                            entrypoint = routing_map.get(owner)
                            if entrypoint:
                                organ_root = entrypoint.parent.parent
                                resolved_patch = (organ_root / raw_patch_path).resolve()
                                item["payload"]["patch_file"] = str(resolved_patch)

            # Double Attention Check for repeated pending tasks or tasks with history of failure
            is_repeated = False
            last_failed_run = None
            
            for past_item in items:
                if past_item != item and past_item.get("payload", {}).get("owner") == owner and past_item.get("payload", {}).get("intent") == intent:
                    is_repeated = True
                    if past_item.get("status") == "error":
                        last_failed_run = past_item
            
            if is_repeated or last_failed_run:
                print(f"[APC] [DOUBLE ATTENTION] Task {item['id']} for organ {owner} (intent={intent}) is repeated or has a history of failure.")
                log_event("task.repeated_warning", f"Repeated task detected for {owner} (intent={intent})", task_id=item['id'])
                
                # Perform extra validation pre-checks to fix and prevent repeated failures
                entrypoint = routing_map.get(owner)
                if not entrypoint or not entrypoint.exists():
                    msg = f"Double Attention Pre-check Failure: Devkit patch.sh entrypoint does not exist at {entrypoint} for organ {owner}"
                    item["status"] = "error"
                    item["error_msg"] = msg
                    log_event("task.error", msg, task_id=item['id'])
                    processed_count += 1
                    break
                
                if intent == "patch":
                    spec_path = item.get("payload", {}).get("spec_path")
                    if not spec_path:
                        msg = "Double Attention Pre-check Failure: 'spec_path' is required for patch intent."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        processed_count += 1
                        break
                    
                    spec_file = Path(spec_path)
                    if not spec_file.exists():
                        msg = f"Double Attention Pre-check Failure: Task spec file does not exist at {spec_path}."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        processed_count += 1
                        break
                    
                    # Validate the VAVIMA task spec via task_spec_validator.py
                    validator_script = BASE_DIR / "scripts" / "task_spec_validator.py"
                    if validator_script.exists():
                        cmd = [sys.executable, str(validator_script), "--file", str(spec_file)]
                        res = subprocess.run(cmd, capture_output=True, text=True)
                        if res.returncode != 0:
                            msg = f"Double Attention Pre-check Failure: Task spec failed VAVIMA validation: {res.stdout.strip() or res.stderr.strip()}"
                            item["status"] = "error"
                            item["error_msg"] = msg
                            log_event("task.error", msg, task_id=item['id'])
                            processed_count += 1
                            break
                    
                    # Validate SHA-256 and patch file existence/hash to prevent crash
                    patch_file = item.get("payload", {}).get("patch_file")
                    expected_sha = item.get("payload", {}).get("sha256")
                    if not patch_file or not expected_sha:
                        msg = "Double Attention Pre-check Failure: Both 'patch_file' and 'sha256' are required for patch intent."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        processed_count += 1
                        break
                    
                    pf = Path(patch_file)
                    if not pf.exists():
                        msg = f"Double Attention Pre-check Failure: Patch file does not exist at {patch_file}."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        processed_count += 1
                        break
                    
                    import hashlib
                    h = hashlib.sha256()
                    with pf.open("rb") as f:
                        for chunk in iter(lambda: f.read(65536), b""):
                            h.update(chunk)
                    actual_sha = h.hexdigest()
                    if actual_sha != expected_sha:
                        msg = f"Double Attention Pre-check Failure: Patch SHA-256 mismatch. Expected: {expected_sha}, Actual: {actual_sha}."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        processed_count += 1
                        break

                print(f"[APC] [DOUBLE ATTENTION] All pre-checks passed for repeated task {item['id']}.")

            item["status"] = "in_progress"
            item["started_utc"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
            
            # Flush queue state before execution to mark as in_progress
            with QUEUE_FILE.open("w", encoding="utf-8") as f:
                json.dump(queue_data, f, indent=2)
            
            log_event("task.start", f"Starting task {item['id']}", task_id=item['id'])
            
            ok, msg = process_apc_task(item, routing_map)
            
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
