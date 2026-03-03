# DEAD WAVE FLOW LOOP PROTOCOL

timestamp_utc: 2026-02-16T03:55:54Z
scope: dead-wave and loop suppression for monitored execution flows
mode: anti-loop governance extension
status: ACTIVE

## Objective
- Prevent stalled or repetitive wave cycles that produce no state progress.
- Detect dead-wave patterns early and route them to deterministic recovery.

## Dead-Wave Detection Rules
1) If two consecutive waves produce identical state tuple and no new evidence artifact:
   classify as `DEAD_WAVE_CANDIDATE`.
2) If three consecutive waves remain unchanged:
   classify as `DEAD_WAVE_CONFIRMED`.
3) If wave checkpoint exists but lacks SoT synchronization:
   classify as `FLOW_LOOP_DESYNC`.

## Required State Tuple
- `release_gate_state`
- `monitoring_status`
- `latest_asr`
- `wave_n_state`
- `governance_pointer_sync_state`

## Recovery Flow
1) on `DEAD_WAVE_CANDIDATE`:
   run immediate drift/heartbeat refresh and emit evidence-only ASR.
2) on `DEAD_WAVE_CONFIRMED`:
   freeze wave increment and require explicit reactivation decision.
3) on `FLOW_LOOP_DESYNC`:
   enforce mandatory write-order replay and block next wave until aligned.

## Gate Actions
- allow_next_wave: only if state tuple changed or explicit keepalive decision recorded.
- block_next_wave: when dead-wave confirmed or desync unresolved.
- escalation: `GREEN -> YELLOW -> RED -> BLOCKED_PENDING_REVIEW`.

## Constraints
- policy-only, no runtime logic injection.
- no silent auto-heal; every recovery step requires ASR evidence.
