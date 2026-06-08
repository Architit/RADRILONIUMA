#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Sovereign Secure Data Erasure Engine (R3 Cleanup)
Implements the approved lifecycle process for secure erasure of R3_TEMPORARY files
in accordance with the DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md.
"""

import json
import os
from pathlib import Path
from datetime import datetime, timezone

# Root paths
BASE_DIR = Path(__file__).resolve().parents[1]
MCP_TMP_DIR = BASE_DIR / "data" / "local" / "mcp_tmp"
QUEUE_FILE = BASE_DIR / ".gateway" / "queue.json"
TELEMETRY_FILE = BASE_DIR / ".gateway" / "telemetry_events.jsonl"

def load_queue():
    if not QUEUE_FILE.exists():
        return {}
    try:
        with QUEUE_FILE.open("r", encoding="utf-8") as f:
            return json.load(f)
    except Exception as e:
        print(f"[ERASURE] Error loading queue: {e}")
        return {}

def log_erasure_event(filename, size_bytes, task_id):
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    event = {
        "ts_utc": ts,
        "system_id": "RADR-01",
        "event": "DATA_ERASURE",
        "task_id": task_id,
        "msg": f"Securely erased R3 transient spec: {filename} ({size_bytes} bytes). Preconditions met: done state confirmed."
    }
    try:
        with TELEMETRY_FILE.open("a", encoding="utf-8") as f:
            f.write(json.dumps(event) + "\n")
    except Exception as e:
        print(f"[ERASURE] Failed to log telemetry: {e}")

def secure_erase(file_path: Path):
    """Securely overwrites file with zeros before deleting."""
    if not file_path.exists():
        return
    
    size = file_path.stat().st_size
    # 1. Overwrite with zeros
    with file_path.open("wb") as f:
        f.write(b"\x00" * size)
        f.flush()
        os.fsync(f.fileno())
        
    # 2. Delete
    file_path.unlink()
    return size

def main():
    print("[ERASURE] Starting secure erasure scan of R3 temporary data...")
    if not MCP_TMP_DIR.exists():
        print("[ERASURE] No R3 temporary directory found.")
        return
        
    queue = load_queue()
    items = queue.get("items", [])
    
    # Map of task_id -> status
    task_statuses = {}
    for item in items:
        t_id = item.get("id")
        if t_id:
            # Also map short ID from file name if present
            task_statuses[t_id] = item.get("status")
            
    # Also support parsing task_id from payload or mapping generic put tasks
    completed_task_ids = {t_id for t_id, status in task_statuses.items() if status in ("done", "error")}

    erased_count = 0
    total_bytes = 0

    for file_path in MCP_TMP_DIR.glob("*.yaml"):
        # Read the file content to find the task_id
        try:
            content = file_path.read_text(encoding="utf-8")
            task_id = None
            for line in content.splitlines():
                if line.startswith("task_id:"):
                    task_id = line.split(":", 1)[1].replace('"', '').strip()
                    break
            
            # Match against queue task_ids
            # We match either:
            # - exact task_id (e.g. TASK_DIAG_001)
            # - or queue job ID containing the name of this file
            is_completed = False
            matched_job_id = None

            # Check if this task_id matches any completed job
            for item in items:
                status = item.get("status")
                if status in ("done", "error"):
                    # Check if task_id matches, or if payload src matches
                    payload = item.get("payload", {})
                    src = payload.get("src", "")
                    if task_id and (task_id in item.get("id", "") or item.get("id") == task_id):
                        is_completed = True
                        matched_job_id = item.get("id")
                        break
                    if file_path.name in src:
                        is_completed = True
                        matched_job_id = item.get("id")
                        break
            
            if is_completed:
                print(f"[ERASURE] Task {matched_job_id} confirmed completed. Erasing {file_path.name}...")
                size = secure_erase(file_path)
                log_erasure_event(file_path.name, size, matched_job_id or "UNKNOWN")
                erased_count += 1
                total_bytes += size
            else:
                print(f"[ERASURE] File {file_path.name} (Task ID: {task_id}) is still pending or unreferenced in queue. Retaining.")
                
        except Exception as e:
            print(f"[ERASURE] Failed to process {file_path.name}: {e}")

    print(f"[ERASURE] Secure erasure complete. Erased {erased_count} files ({total_bytes} bytes).")

if __name__ == "__main__":
    main()
