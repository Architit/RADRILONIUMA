# AUTOPILOT PULSE CADENCE AND WATCHDOG PROTOCOL

protocol_type: governance_contract
scope: ecosystem realtime workflow pulse

## Pulse Cadence
- heartbeat_interval_minutes: 15
- drift_gate_interval_minutes: 30
- mandatory_pre_wave_drift_gate: true

## Watchdog States
- GREEN: pulse within cadence
- YELLOW: cadence exceeded once
- RED: cadence exceeded twice consecutively

## Watchdog Rules
1) Missing one heartbeat interval -> `watchdog_state = YELLOW`.
2) Missing two consecutive heartbeat intervals -> `watchdog_state = RED` and mark active task as `BLOCKED_PENDING_REVIEW`.
3) Drift gate older than interval before wave -> wave start denied.

## Required Metrics
- last_heartbeat_utc
- last_drift_gate_utc
- watchdog_state
- active_open_closure_gates

## Evidence
Every pulse refresh must be logged in ASR and reflected in ROADMAP + GOV_STATUS.
