# RECOVERY EXECUTION PROTOCOL V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T09:16:10Z
scope: deterministic execution protocol for ecosystem recovery cycles

## Execution Chain
1) Context Sync
- capture current block states, latest ASR, active module states.

2) Failure Classification
- classify into recovery domain map (`RECOVERY_PROTOCOL_MAP_V2.md`).

3) Action Block
- apply minimal deterministic remediation patch(es).

4) Safety Check
- run gate validations for impacted domain(s).

5) Verification
- verify pointer sync:
  - `GOV_STATUS.md`
  - `ROADMAP.md`
  - `DEV_LOGS.md`
  - `WORKFLOW_SNAPSHOT_STATE.md`
  - `gov/asr/INDEX.md`

6) Governance Decision
- finalize cycle as `COMPLETE` or `BLOCKED`.

## Mandatory Constraints
- no cycle increment while closure decision remains pending.
- no promotion with unresolved conflict-block state.
- no recovery completion without ASR evidence registration.

## Failure Classes
- `RV_CLASSIFICATION_MISSING`
- `RV_ACTION_UNSAFE`
- `RV_GATE_VERIFICATION_FAILED`
- `RV_POINTER_SYNC_FAILED`
- `RV_CLOSURE_DECISION_MISSING`
