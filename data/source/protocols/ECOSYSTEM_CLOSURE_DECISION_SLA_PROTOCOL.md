# ECOSYSTEM CLOSURE DECISION SLA PROTOCOL

protocol_type: governance_contract
scope: all tasks/phases with OPEN closure-gate

## Objective
Guarantee deterministic closure decisions and avoid indefinite ACTIVE loops.

## SLA
- decision_due_minutes_after_gate_open: 30

## Rules
1) On `closure_gate = OPEN`, set `closure_decision = PENDING` with timestamp.
2) Before SLA deadline, choose exactly one:
- COMPLETE
- BLOCKED
3) If deadline exceeded:
- state -> BLOCKED_PENDING_REVIEW
- blocker_reason -> CLOSURE_DECISION_SLA_EXCEEDED
4) After COMPLETE/BLOCKED, cycle increment is prohibited.

## Required Fields (GOV_STATUS)
- closure_gate_opened_at_utc
- closure_decision_due_at_utc
- closure_decision
- closure_decision_asr

## Evidence
Closure decision must be recorded in ASR and synchronized across roadmap/log/snapshot/task map.
