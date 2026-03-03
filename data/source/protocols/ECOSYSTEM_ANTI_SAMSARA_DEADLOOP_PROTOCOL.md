# ECOSYSTEM ANTI-SAMSARA DEADLOOP PROTOCOL

protocol_type: governance_contract
scope: all active phases/tasks across RADRILONIUMA ecosystem
mode: contracts-first, observability-first, derivation-only

## Purpose
Prevent repeated closed-loop execution (SAMSARA/deadloop) without closure decisions.

## Hard Rules
1) Every ACTIVE task/phase MUST declare:
- cycle_window
- cycle_max
- closure_gate_state
- closure_decision
- latest_asr

2) Cycle increments are allowed only while:
- closure_gate_state = CLOSED
- current_cycle < cycle_max

3) When current_cycle reaches cycle_max:
- closure_gate_state MUST be set to OPEN
- closure_decision MUST be set within SLA window
- further cycle increments are forbidden

4) Allowed closure decisions are only:
- COMPLETE
- BLOCKED

5) If closure decision is missing after SLA window:
- auto_state = BLOCKED_PENDING_REVIEW
- deadloop_guard_status = TRIGGERED

## Enforcement Surface (policy-level)
- INTERACTION_PROTOCOL.md
- GOV_STATUS.md
- TASK_MAP.md
- ROADMAP.md
- DEV_LOGS.md
- WORKFLOW_SNAPSHOT_STATE.md
- gov/asr/INDEX.md

## Decision SLA
- closure_decision_sla_minutes: 30

## Evidence
Each gate change requires ASR in `gov/asr/sessions/` and index registration.
