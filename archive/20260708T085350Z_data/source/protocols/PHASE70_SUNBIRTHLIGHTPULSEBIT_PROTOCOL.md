# PHASE 7.0 SUNBIRTHLIGHTPULSEBIT PROTOCOL

timestamp_utc: 2026-02-13T11:42:20Z
scope: pre-birth transition governance
mode: pulse alignment + birth gate lock

## Activation Signature (verbatim)
p 7 0/|\\<<<...+++ { SUNBIRTHLIGHTPULSEBIT}

## Rule
- `new version birth gate` MUST remain `CLOSED` until Phase 7.0 is fully completed.

## Mandatory Cycle
1) pulse alignment:
   - synchronize phase vector, drift state, and heartbeat state.
2) sunbirth validation:
   - verify previous phase closures (`6.B`, `6.C`, `6.D`) and evidence links.
3) light checkpointing:
   - publish chronology/map/log updates for this phase.
4) pulsebit closure:
   - mark completion only with `COMPLIANT` state and zero unresolved residual tails.

## Execution Window Policy
- cycle_window: `1..8`
- closure_decision_checkpoint: `cycle-8` (mandatory)
- infinite checkpointing without closure decision is forbidden.
- atplt_md_activation: ACTIVE while `phase70_status != COMPLETE`
- atplt_md_deactivation: only when `phase70_status = COMPLETE`

## Closure Decision Matrix (at cycle-8)
- If all Exit Criteria are satisfied:
  - `phase70_status: COMPLETE`
  - `compliance_gate: COMPLIANT`
  - `birth_gate_state_after_exit: OPEN`
- If at least one Exit Criteria is unsatisfied:
  - `phase70_status: BLOCKED`
  - `birth_gate_state: CLOSED`
  - publish blocker ASR with explicit missing criteria and remediation plan.

## Exit Criteria (all required)
- phase70_status: COMPLETE
- compliance_gate: COMPLIANT
- blackhole_state: STABLE
- residual_tails: 0
- ASR/index/maps/logs synchronized

## Gate Control
- birth_gate_state_before_exit: CLOSED
- birth_gate_state_after_exit: OPEN

## Constraints
- contracts-first
- observability-first
- derivation-only
- no runtime logic changes
