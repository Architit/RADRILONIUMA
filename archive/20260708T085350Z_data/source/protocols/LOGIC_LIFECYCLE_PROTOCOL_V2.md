# LOGIC LIFECYCLE PROTOCOL V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T08:38:10Z
scope: deterministic lifecycle and gate transitions for ecosystem logic

## Lifecycle
`CANDIDATE -> DEFINED -> VERIFIED -> ACTIVE -> REFACTORED -> DEPRECATED`

## Promotion Requirements
- `CANDIDATE -> DEFINED`
  - logic id + class + owner + surface in `LOGIC_CATALOG_V2.md`
  - boundary declaration in `ECOSYSTEM_LOGIC_STACK_V2.md`
- `DEFINED -> VERIFIED`
  - consistency and transition rules declared
  - gate mapping declared (`LGATE_*`)
- `VERIFIED -> ACTIVE`
  - SoT synchronization complete:
    - `INTERACTION_PROTOCOL.md`
    - `GOV_STATUS.md`
    - `CONTRACT_ATLAS.md`
    - `TASK_MAP.md`
  - ASR evidence registered in `gov/asr/INDEX.md`

## Gate Matrix
| gate | condition | transition on pass | transition on fail |
|---|---|---|---|
| LGATE_BOUNDARY | logic boundary and owner declared | proceed | BLOCKED_PENDING_LOGIC_DECISION_ON_CONFLICT |
| LGATE_CONSISTENCY | logical consistency validated | proceed | BLOCKED_PENDING_LOGIC_DECISION_ON_CONFLICT |
| LGATE_TRANSITION | transition safety verified | proceed | BLOCKED_PENDING_LOGIC_DECISION_ON_CONFLICT |
| LGATE_SYNC | SoT + ASR pointers aligned | ACTIVE | BLOCKED_PENDING_LOGIC_DECISION_ON_CONFLICT |

## Failure Classification
- `LV_BOUNDARY_UNDECLARED`
- `LV_CONSISTENCY_CONFLICT`
- `LV_TRANSITION_UNSAFE`
- `LV_UNGATED_BREAKING_LOGIC_CHANGE`
- `LV_LOGIC_SYNC_DRIFT`

## Recovery Rules
- Any `LV_*` violation triggers stop-transition.
- Recovery requires:
  - correction patch,
  - verification checkpoint,
  - ASR registration.
