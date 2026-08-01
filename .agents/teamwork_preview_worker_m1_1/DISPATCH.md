## 2026-08-02T01:00:56Z
You are Worker M1-1 (`teamwork_preview_worker_m1_1`). Your working directory is `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_worker_m1_1`.

MUST READ before starting:
- `/home/architit/LAM_CORE/RADRILONIUMA/ORIGINAL_REQUEST.md`
- `/home/architit/LAM_CORE/RADRILONIUMA/PROJECT.md`
- `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_1/handoff.md`
- `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_2/handoff.md`
- `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_3/handoff.md`

Your Task — Implement Milestone M1: Core Organ Hardening & Security Remediation.

1. **Credential Redaction & Security Hardening**:
   - Refactor `core_daemons/nexus_telemetry.py`: Remove hardcoded PIN `3773`. Implement safe `collect_kernel_logs()` using `dmesg` -> `sudo -n dmesg` -> `SUDO_PIN` env var -> graceful fallback. Implement `send_telemetry_event(event_type, payload)` appending JSON lines to `.gateway/telemetry_events.jsonl`.
   - Refactor `cluster_launcher.py`: Remove hardcoded `"secret_pass"`. Replace with `os.environ.get("FACTORIO_RCON_PASSWORD") or os.environ.get("RCON_PASSWORD") or "REDACTED_DEFAULT_RCON_PASS"`.

2. **Queue Lock Contention & Concurrency Fix**:
   - Refactor `scripts/global/lam_queue_worker.py`: Implement the 3-phase locking architecture: acquire `QueueLock` only for claiming pending tasks and marking `PROCESSING`, RELEASE `QueueLock` BEFORE invoking subprocess tasks (`process_apc_task`), then re-acquire `QueueLock` only to update final completion status (`DONE`/`FAILED`).

3. **Non-GUI Process Signaling & IPC Fix**:
   - Refactor `scripts/global/ssn_daemon.js`: Remove `xdotool` keyboard injection. Replace with direct IPC signal file creation (`.gateway/ssn_exit.signal`, `.gateway/ssn_restart.signal`) or stdio pipe writing.

4. **Build & Test Verification**:
   - Run `bash scripts/test_entrypoint.sh --all` and verify all tests pass (100% pass rate).
   - Verify `python3 lam_target_task_heal_manager/manager.py` runs cleanly.

DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A teamwork_preview_auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.

Create your working directory `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_worker_m1_1` if needed.
Write your detailed changes to `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_worker_m1_1/changes.md` and structured handoff report to `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_worker_m1_1/handoff.md`.

Communicate completion back to parent via `send_message`.
