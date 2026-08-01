# Project: RADRILONIUMA Refinement & Autonomous Orchestration Suite

## Architecture
- Core Organ Subsystems (24+ mapped organs, identity contracts, TASK_SPEC_VALIDATOR_CONTRACT_V1_1).
- DevKit & Zero-Drift Cross-Organ Tooling (`devkit/ecosystem_rollout.sh`, `devkit/patch.sh`, `scripts/task_spec_validator.py`, `scripts/global/drift_watchdog.py`).
- Autonomous Orchestration & Telemetry (`sovereign_kernel.py`, `lam_queue_worker.py`, `telemetry_shipper.py`, `.gateway/telemetry_events.jsonl`, `lam_target_task_heal_manager/manager.py`).

## Feature Inventory
Every feature from the Survey phase is enumerated below with its assigned milestone.
| # | Feature | Description | Milestone | Source |
|---|---------|-------------|-----------|--------|
| 1 | Core Organ Hardening | Refine and verify active subsystems across 24 core organs, identity contracts, and 100% test pass rate on `scripts/test_entrypoint.sh` | M1 | R1 (Survey 1) |
| 2 | Redact Hardcoded Sudo PIN & Credentials | Redact plaintext sudo PIN `3773` in `core_daemons/nexus_telemetry.py` and hardcoded RCON password in `cluster_launcher.py` to satisfy zero credential exposure | M1 | R1/R3 (Survey 3) |
| 3 | Queue File Lock Contention Refactoring | Refactor `scripts/global/lam_queue_worker.py` to release `QueueLock` file lock prior to executing long-running subprocesses, preventing queue stalls and deadlocks | M1 | R3 (Survey 3) |
| 4 | Non-GUI Process Signaling Refactoring | Refactor `ssn_daemon.js` to replace GUI `xdotool` injection hazards with direct IPC process signaling | M1 | R3 (Survey 3) |
| 5 | Automated Zero-Drift Cross-Organ Auditing | Automated scanning & verification routines across all 36 organ targets using `devkit/ecosystem_rollout.sh --dry-run` and `scripts/global/drift_watchdog.py` | M2 | R2 (Survey 2) |
| 6 | Contract Schema & Task Spec Validation | Enforce VAVIMA Task Spec schema validation (`scripts/task_spec_validator.py`) and conflict-safe patch runtime (`devkit/patch.sh`) without breaking existing API contracts | M2 | R2 (Survey 2) |
| 7 | Interactive Telemetry & Event Logging Suite | Verify real-time telemetry streaming (`.gateway/telemetry_events.jsonl`) and automated log shipping (`telemetry_shipper.py`) | M3 | R3 (Survey 3) |
| 8 | Autonomous Self-Healing & Daemon Verification | Verify sovereign kernel (`sovereign_kernel.py`) and heal manager (`lam_target_task_heal_manager/manager.py`) operate without deadlocks or resource leaks | M3 | R3 (Survey 3) |
| 9 | Empirical Governance & Verification Report | Generate empirical markdown report under `gov/report/` with deterministic log evidence (`100% PASS`, zero-drift audit log, zero credential exposure) | M3 | R3 (Survey 3) |

## Milestones
| # | Name | Scope | Dependencies | Status |
|---|------|-------|-------------|--------|
| M1 | Core Organ Hardening & Security Remediation | Core organ contracts, credential redaction (`nexus_telemetry.py`, `cluster_launcher.py`), lock contention fix (`lam_queue_worker.py`), signaling fix (`ssn_daemon.js`), and test suite verification | none | PLANNED |
| M2 | Automated Zero-Drift Cross-Organ Auditing & Refactoring | Cross-organ DevKit rollout verification, schema validation, zero-drift watchdog enforcement, and conflict-safe patch runtime | M1 | PLANNED |
| M3 | Interactive Orchestration, Telemetry & Empirical Governance Report | Telemetry pipeline, self-healing daemons, sovereign kernel verification, and empirical report generation under `gov/report/` | M2 | PLANNED |

## Interface Contracts
### `nexus_telemetry` ↔ `sovereign_kernel`
- Function signatures: `collect_kernel_logs()`, `send_telemetry_event(event_type, payload)`
- Telemetry format: JSON Lines append to `.gateway/telemetry_events.jsonl`
- Credential policy: No hardcoded PINs or credentials; non-zero exit fallback on missing sudo permissions.

### `lam_queue_worker` ↔ `lam_target_task_heal_manager`
- Queue format: `.gateway/queue.json`
- Lock policy: `QueueLock` held strictly for read/write queue mutation, released BEFORE spawning sub-process tasks.

### `task_spec_validator` ↔ `devkit/patch.sh`
- Schema version: `1.1`
- Constraints: `derivation_only == true`, 64-char SHA256 artifact digest enforcement.

## Code Layout
- `core_daemons/nexus_telemetry.py`: Core telemetry and dmesg log collector
- `scripts/global/lam_queue_worker.py`: Task queue processing daemon
- `scripts/global/ssn_daemon.js`: Sovereign session daemon
- `cluster_launcher.py`: Multi-agent cluster initialization
- `devkit/ecosystem_rollout.sh`: DevKit cross-organ rollout runner
- `devkit/patch.sh`: Conflict-safe patch runtime
- `scripts/task_spec_validator.py`: VAVIMA Task Spec schema validator
- `scripts/global/drift_watchdog.py`: Continuous zero-drift monitoring watchdog
- `lam_target_task_heal_manager/manager.py`: Sovereign target task and self-healing manager
- `scripts/test_entrypoint.sh`: Universal test suite entrypoint runner
- `gov/report/`: Empirical governance verification reports destination
