# Queue Lock Contention & Deadlock Prevention Analysis

## Executive Summary
This document presents a comprehensive technical analysis of file lock contention and deadlock hazards in `scripts/global/lam_queue_worker.py`. Currently, `run_worker()` holds an exclusive POSIX file lock (`fcntl.flock(fd, fcntl.LOCK_EX)` via context manager `QueueLock`) across the entire task lifecycle—including long-running sub-process executions (`subprocess.run(..., timeout=300)`). 

Holding `QueueLock` for up to 300 seconds blocks all other queue operations (`lam_gateway.py`, state queries, task enqueues) and creates severe circular deadlock risks if spawned sub-processes attempt to interact with the gateway queue. We present a fine-grained, two-phase refactoring strategy that restricts lock acquisition strictly to task status mutation in `.gateway/queue.json` (Phase 1 & Phase 3), keeping sub-process execution completely lock-free (Phase 2).

---

## 1. Problem Investigation & Codebase Evidence

### 1.1 Exact Failure Mechanism
In `scripts/global/lam_queue_worker.py`:
- **Line 135**: `with QueueLock(QUEUE_FILE):` acquires `LOCK_EX` on `.gateway/queue.json.lock`.
- **Line 289**: `ok, msg = process_apc_task(item, routing_map)` is called **INSIDE** the `QueueLock` block.
- **Lines 92 & 118**: `process_apc_task` executes external scripts (`start.py` or `patch.sh`) via `subprocess.run(..., timeout=300)`.

```python
# scripts/global/lam_queue_worker.py (Current implementation)
135: with QueueLock(QUEUE_FILE):
...
280:     item["status"] = "in_progress"
281:     item["started_utc"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
282:     
283:     # Flush queue state before execution to mark as in_progress
284:     with QUEUE_FILE.open("w", encoding="utf-8") as f:
285:         json.dump(queue_data, f, indent=2)
286:     
287:     log_event("task.start", f"Starting task {item['id']}", task_id=item['id'])
288:     
289:     ok, msg = process_apc_task(item, routing_map)  # <-- HELD LOCK FOR UP TO 300s
290:     
291:     if ok:
292:         item["status"] = "done"
...
305: with QUEUE_FILE.open("w", encoding="utf-8") as f:
306:     json.dump(queue_data, f, indent=2)
```

### 1.2 Impact Assessment & Deadlock Vectors
1. **System-wide Queue Contention**:
   Any process attempting to read, write, or enqueue items into `.gateway/queue.json` (e.g. `lam_gateway.py` CLI or daemons using `QueueLock`) will block or crash while waiting for the lock.
2. **Circular Deadlock Vector**:
   If an organ's `patch.sh` or `start.py` script executes a command that invokes `lam_gateway.py` or reads/writes `.gateway/queue.json`, it attempts to acquire `QueueLock`. Because the worker process holds `QueueLock` waiting for `subprocess.run()` to finish, both processes deadlock permanently until the 300s timeout triggers.
3. **Impaired Multi-Worker Parallelism**:
   Strict single-threading across all organ task executions regardless of available worker threads or CPU capacity.
4. **Elevated Stale Lock Risk**:
   If the worker process receives a SIGKILL or crashes mid-execution during Phase 2, the lock file remains unlinked or locked, requiring manual intervention.

---

## 2. Refactoring Architecture: Two-Phase Queue Locking

To completely decouple task execution from queue synchronization, the locking model must be refactored into three distinct operational phases:

```
[Phase 1: Claim Task]           [Phase 2: Subprocess Exec]        [Phase 3: Finalize Task]
Acquire QueueLock (LOCK_EX) --> Release QueueLock --------------> Acquire QueueLock (LOCK_EX)
Read queue.json                 Execute process_apc_task()       Read queue.json
Mark status = "in_progress"     (Up to 300s, lock-free)         Mark status = "done"/"error"
Write queue.json                Allows concurrent gateway ops     Write queue.json
Release QueueLock               No deadlock vector               Release QueueLock
```

### 2.1 Refactored Lifecycle breakdown

#### Phase 1: Task Claiming (Lock Held: ~5-10 ms)
1. Acquire `QueueLock(QUEUE_FILE)`.
2. Parse `.gateway/queue.json`.
3. Locate next candidate item (`status == "pending"`, `type == "apc_task"`).
4. Perform task spec resolution and double-attention pre-checks.
5. If pre-checks fail: mark item `status = "error"`, write `queue.json`, and release lock.
6. If valid: mark item `status = "in_progress"`, set `started_utc`, write `queue.json`.
7. Deep-copy claimed task payload `claimed_item = dict(item)`.
8. **Exit `QueueLock` block immediately** (Lock released).

#### Phase 2: Lock-Free Task Execution (Lock Held: 0 ms)
1. Log `task.start` event.
2. Execute `ok, msg = process_apc_task(claimed_item, routing_map)` outside any lock.
3. Wrap execution in `try...except` to catch unexpected execution exceptions safely.

#### Phase 3: Task Finalization (Lock Held: ~5-10 ms)
1. Re-acquire `QueueLock(QUEUE_FILE)`.
2. Freshly read `.gateway/queue.json`.
3. Locate task matching `item["id"] == claimed_item["id"]`.
4. Update `status` to `"done"` (with `finished_utc` & `result`) or `"error"` (with `error_msg`).
5. Write updated `queue_data` to `QUEUE_FILE`.
6. Exit `QueueLock` block (Lock released).
7. Log `task.complete` or `task.error` event.

---

## 3. Proposed Refactored Code Structure (`scripts/global/lam_queue_worker.py`)

```python
def run_worker():
    """Main APC worker loop (refactored for fine-grained queue locking)."""
    if not QUEUE_FILE.exists():
        return

    routing_map = get_routing_map()
    claimed_item = None

    # =========================================================================
    # PHASE 1: Claim Pending Task under QueueLock (Short Duration)
    # =========================================================================
    with QueueLock(QUEUE_FILE):
        try:
            with QUEUE_FILE.open("r", encoding="utf-8") as f:
                queue_data = json.load(f)
        except Exception as e:
            print(f"[APC] Error reading queue: {e}")
            return

        items = queue_data.get("items", [])
        
        for item in items:
            if item.get("status") != "pending":
                continue
            
            if item.get("type") != "apc_task":
                continue

            owner = item.get("payload", {}).get("owner", "unknown")
            intent = item.get("payload", {}).get("intent", "unknown")

            # Resolve spec_path artifacts if required
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

            # Double Attention Checks
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
                
                entrypoint = routing_map.get(owner)
                if not entrypoint or not entrypoint.exists():
                    msg = f"Double Attention Pre-check Failure: Devkit patch.sh entrypoint does not exist at {entrypoint} for organ {owner}"
                    item["status"] = "error"
                    item["error_msg"] = msg
                    log_event("task.error", msg, task_id=item['id'])
                    with QUEUE_FILE.open("w", encoding="utf-8") as f:
                        json.dump(queue_data, f, indent=2)
                    return
                
                if intent == "patch":
                    spec_path = item.get("payload", {}).get("spec_path")
                    if not spec_path or not Path(spec_path).exists():
                        msg = "Double Attention Pre-check Failure: Valid 'spec_path' is required for patch intent."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        with QUEUE_FILE.open("w", encoding="utf-8") as f:
                            json.dump(queue_data, f, indent=2)
                        return
                    
                    validator_script = BASE_DIR / "scripts" / "task_spec_validator.py"
                    if validator_script.exists():
                        cmd = [sys.executable, str(validator_script), "--file", str(spec_path)]
                        res = subprocess.run(cmd, capture_output=True, text=True)
                        if res.returncode != 0:
                            msg = f"Double Attention Pre-check Failure: Task spec failed VAVIMA validation: {res.stdout.strip() or res.stderr.strip()}"
                            item["status"] = "error"
                            item["error_msg"] = msg
                            log_event("task.error", msg, task_id=item['id'])
                            with QUEUE_FILE.open("w", encoding="utf-8") as f:
                                json.dump(queue_data, f, indent=2)
                            return
                    
                    patch_file = item.get("payload", {}).get("patch_file")
                    expected_sha = item.get("payload", {}).get("sha256")
                    if not patch_file or not expected_sha or not Path(patch_file).exists():
                        msg = "Double Attention Pre-check Failure: Valid 'patch_file' and 'sha256' are required."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        with QUEUE_FILE.open("w", encoding="utf-8") as f:
                            json.dump(queue_data, f, indent=2)
                        return
                    
                    import hashlib
                    h = hashlib.sha256()
                    with Path(patch_file).open("rb") as f:
                        for chunk in iter(lambda: f.read(65536), b""):
                            h.update(chunk)
                    if h.hexdigest() != expected_sha:
                        msg = f"Double Attention Pre-check Failure: Patch SHA-256 mismatch."
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", msg, task_id=item['id'])
                        with QUEUE_FILE.open("w", encoding="utf-8") as f:
                            json.dump(queue_data, f, indent=2)
                        return

            # Claim candidate item
            item["status"] = "in_progress"
            item["started_utc"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
            
            with QUEUE_FILE.open("w", encoding="utf-8") as f:
                json.dump(queue_data, f, indent=2)
            
            claimed_item = dict(item)
            break

    # =========================================================================
    # PHASE 2: Lock-Free Subprocess Execution
    # =========================================================================
    if not claimed_item:
        return

    log_event("task.start", f"Starting task {claimed_item['id']}", task_id=claimed_item['id'])
    
    try:
        ok, msg = process_apc_task(claimed_item, routing_map)
    except Exception as e:
        ok, msg = False, f"Unhandled exception during task execution: {e}"

    # =========================================================================
    # PHASE 3: Re-acquire QueueLock to Finalize Task Status (Short Duration)
    # =========================================================================
    with QueueLock(QUEUE_FILE):
        try:
            with QUEUE_FILE.open("r", encoding="utf-8") as f:
                queue_data = json.load(f)
            
            target_id = claimed_item["id"]
            updated = False
            for item in queue_data.get("items", []):
                if item.get("id") == target_id:
                    if ok:
                        item["status"] = "done"
                        item["finished_utc"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
                        item["result"] = msg
                        log_event("task.complete", "Task finished successfully", task_id=target_id)
                    else:
                        item["status"] = "error"
                        item["error_msg"] = msg
                        log_event("task.error", f"Task failed: {msg}", task_id=target_id)
                    updated = True
                    break
            
            if updated:
                with QUEUE_FILE.open("w", encoding="utf-8") as f:
                    json.dump(queue_data, f, indent=2)
            else:
                print(f"[APC] WARNING: Claimed task {target_id} missing during status finalization.")

        except Exception as e:
            print(f"[APC] Error updating queue completion state: {e}")

    print(f"[APC] Worker cycle complete for task {claimed_item['id']}.")
```

---

## 4. Verification & Testing Method

1. **Unit Test Pass**:
   Run `pytest tests/test_lam_gateway.py` and `bash scripts/test_entrypoint.sh --all` to ensure zero regressions in gateway queue state or task routing.
2. **Lock Contention Simulation**:
   Create a test script that enqueues a long-running dummy task (`sleep 5`), launches `lam_queue_worker.py` in a background thread/process, and immediately verifies that another process can acquire `QueueLock` and append/query items in `.gateway/queue.json` while `sleep 5` is active.
3. **Deadlock Prevention Verification**:
   Verify that a task whose `patch.sh` or `start.py` script queries `.gateway/queue.json` finishes without hanging or timing out.
