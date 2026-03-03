# GOVERNANCE DECISION PROTOCOL V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T06:34:10Z
scope: deterministic governance decision lifecycle

## Decision Classes
- `D_POLICY`
- `D_CONTRACT`
- `D_MODULE`
- `D_TOOLING`
- `D_RELEASE`
- `D_RECOVERY`

## Decision States
- `PROPOSED`
- `UNDER_REVIEW`
- `APPROVED`
- `REJECTED`
- `BLOCKED_PENDING_GOVERNANCE_DECISION`

## Mandatory Decision Fields
- `decision_id`
- `decision_class`
- `decision_state`
- `impact_class` (`IC_LOW|IC_MEDIUM|IC_HIGH|IC_CRITICAL`)
- `timestamp_utc`
- `evidence_bundle_ref`
- `rollback_path`

## Decision Rules
1) `IC_HIGH` and `IC_CRITICAL` require explicit rollback path.
2) `APPROVED` requires evidence grade aligned with `EVIDENCE_POLICY.md`.
3) `REJECTED` and `BLOCKED` require a reason code and remediation path.
4) All state transitions require ASR pointer and SoT synchronization.

## Reason Codes
- `RC_EVIDENCE_INSUFFICIENT`
- `RC_GATE_NOT_SATISFIED`
- `RC_POLICY_CONFLICT`
- `RC_DEPENDENCY_CONFLICT`
- `RC_SECURITY_RISK`

## Output
- Governance decisions must be reflected in:
  - `GOV_STATUS.md`
  - `ROADMAP.md`
  - `DEV_LOGS.md`
  - `WORKFLOW_SNAPSHOT_STATE.md`
  - `gov/asr/INDEX.md`
