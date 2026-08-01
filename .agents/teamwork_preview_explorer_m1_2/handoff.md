# Handoff Report: Queue Lock Contention & Deadlock Prevention

## 1. Observation
- **Target File**: `scripts/global/lam_queue_worker.py`
- **Lock Acquisition**: Line 135: `with QueueLock(QUEUE_FILE):` wraps the worker's entire loop in `run_worker()`.
- **Lock Implementation**: `QueueLock` uses POSIX file locking via `fcntl.flock(fd, fcntl.LOCK_EX)` on `.gateway/queue.json.lock`.
- **Subprocess Execution Inside Lock**: Line 289: `ok, msg = process_apc_task(item, routing_map)` runs while holding `QueueLock`.
- **Subprocess Details**: `process_apc_task` (lines 92 and 118) executes external scripts (`start.py` or `patch.sh`) via `subprocess.run(cmd, ..., timeout=300)`.
- **Lock Duration**: The Exclusive Lock (`LOCK_EX`) is held for the entire subprocess execution (up to 300 seconds).

---

## 2. Logic Chain
1. **Observation 1 & 2**: `run_worker()` acquires an exclusive POSIX lock `QueueLock` (`fcntl.flock(fd, fcntl.LOCK_EX)`) at line 135.
2. **Observation 3 & 4**: Line 289 calls `process_apc_task(item, routing_map)` within the `QueueLock` context block, which executes `subprocess.run(...)` with timeouts up to 300 seconds.
3. **Inference**: Any process attempting to read, write, or enqueue tasks to `.gateway/queue.json` (such as `lam_gateway.py` or other workers) will block waiting for `QueueLock` for up to 300 seconds.
4. **Deadlock Hazard**: If a sub-process launched by `process_apc_task` (e.g. `patch.sh` or `start.py`) invokes `lam_gateway.py` or reads/writes `.gateway/queue.json` using `QueueLock`, it will block waiting for the lock held by its parent worker process, causing a circular deadlock.
5. **Conclusion**: `run_worker()` must be refactored into a two-phase locking model where `QueueLock` is acquired strictly during state read/mutation (Phase 1: Claim Task, Phase 3: Finalize Status) and released completely during subprocess execution (Phase 2).

---

## 3. Caveats
- No code modification was made in `scripts/global/lam_queue_worker.py` as this investigation was performed under read-only explorer constraints.
- Implementation of the refactoring proposal should be carried out by an Implementer agent in Milestone M1.

---

## 4. Conclusion
`scripts/global/lam_queue_worker.py` exhibits critical queue file lock contention and circular deadlock vulnerabilities due to holding `QueueLock` across 300-second subprocess calls. Refactoring `run_worker()` to use fine-grained, two-phase queue locking (claiming the task, releasing the lock, executing the subprocess, and re-acquiring the lock to update completion status) completely resolves lock contention and prevents queue deadlocks without breaking contract specifications.

---

## 5. Verification Method
1. **Inspect Analysis & Proposed Implementation**:
   Review `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_2/analysis.md`.
2. **Execution Test Suite**:
   Run `bash scripts/test_entrypoint.sh --all` or `pytest tests/test_lam_gateway.py` to verify that queue operations and routing functions work cleanly.
3. **Lock Contention Simulation**:
   Enqueue a test task, run worker phase 1, verify `.gateway/queue.json.lock` is unlocked while subprocess is running, and verify concurrent `lam_gateway.py` calls succeed without blocking.
