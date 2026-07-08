# AUTOPILOT RESONANCE CONTRACT V1

contract_type: autopilot_resonance_contract
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T05:40:00Z

## Purpose
- Formalize the EASSR heartbeat and watchdog pulse cadence.
- Ensure a strict boundary between host-level scheduling (cron/systemd) and agent logic.
- Prevent DEAD_WAVE_FLOW_LOOP via passive observation and declarative intervals.

## Constraints
- No in-repo runtime daemon (NO runtime logic).
- Host-level triggers ONLY.
- Fail-fast on overlapping executions via `flock` (already verified in script).
