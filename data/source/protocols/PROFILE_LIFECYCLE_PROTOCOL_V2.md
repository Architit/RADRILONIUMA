# PROFILE LIFECYCLE PROTOCOL V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T08:52:10Z
scope: deterministic lifecycle and gate transitions for ecosystem profiles

## Lifecycle
`CANDIDATE -> DEFINED -> VERIFIED -> ACTIVE -> REFACTORED -> DEPRECATED`

## Promotion Requirements
- `CANDIDATE -> DEFINED`
  - profile id + class + owner + surface in `PROFILE_CATALOG_V2.md`
  - boundary declaration in `ECOSYSTEM_PROFILE_STACK_V2.md`
- `DEFINED -> VERIFIED`
  - compatibility and transition rules declared
  - gate assignment declared (`PGATE_*`)
- `VERIFIED -> ACTIVE`
  - SoT synchronization complete:
    - `INTERACTION_PROTOCOL.md`
    - `GOV_STATUS.md`
    - `CONTRACT_ATLAS.md`
    - `TASK_MAP.md`
  - ASR evidence indexed in `gov/asr/INDEX.md`

## Gate Matrix
| gate | condition | transition on pass | transition on fail |
|---|---|---|---|
| PGATE_BOUNDARY | profile boundary and owner declared | proceed | BLOCKED_PENDING_PROFILE_DECISION_ON_CONFLICT |
| PGATE_COMPATIBILITY | compatibility checks pass | proceed | BLOCKED_PENDING_PROFILE_DECISION_ON_CONFLICT |
| PGATE_TRANSITION | transition safety validated | proceed | BLOCKED_PENDING_PROFILE_DECISION_ON_CONFLICT |
| PGATE_SYNC | SoT + ASR pointers aligned | ACTIVE | BLOCKED_PENDING_PROFILE_DECISION_ON_CONFLICT |

## Failure Classification
- `PV_BOUNDARY_UNDECLARED`
- `PV_COMPATIBILITY_MISMATCH`
- `PV_TRANSITION_UNSAFE`
- `PV_UNGATED_BREAKING_PROFILE_CHANGE`
- `PV_PROFILE_SYNC_DRIFT`

## Recovery Rules
- Any `PV_*` violation triggers stop-transition.
- Recovery requires:
  - correction patch,
  - verification checkpoint,
  - ASR registration.
