# INTERFACE LIFECYCLE PROTOCOL V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T08:18:10Z
scope: deterministic lifecycle and gate transitions for ecosystem interfaces

## Lifecycle
`CANDIDATE -> DEFINED -> VERIFIED -> ACTIVE -> REFACTORED -> DEPRECATED`

## Promotion Requirements
- `CANDIDATE -> DEFINED`
  - interface id + class + owner + surface path in `INTERFACE_CATALOG_V2.md`
  - boundary declaration in `ECOSYSTEM_INTERFACE_STACK_V2.md`
- `DEFINED -> VERIFIED`
  - compatibility mode declared
  - gate assignment declared (`IGATE_*`)
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
| IGATE_BOUNDARY | owner/surface/boundary declared | proceed | BLOCKED_PENDING_INTERFACE_DECISION_ON_CONFLICT |
| IGATE_COMPATIBILITY | compatibility mode declared and coherent | proceed | BLOCKED_PENDING_INTERFACE_DECISION_ON_CONFLICT |
| IGATE_TRANSITION | lifecycle transition valid | proceed | BLOCKED_PENDING_INTERFACE_DECISION_ON_CONFLICT |
| IGATE_SYNC | SoT + ASR pointers aligned | ACTIVE | BLOCKED_PENDING_INTERFACE_DECISION_ON_CONFLICT |

## Failure Classification
- `IV_BOUNDARY_UNDECLARED`
- `IV_COMPATIBILITY_UNDECLARED`
- `IV_BREAKING_CHANGE_UNGATED`
- `IV_INTERFACE_TRANSITION_CONFLICT`
- `IV_INTERFACE_SYNC_DRIFT`

## Recovery Rules
- Any `IV_*` violation triggers stop-transition behavior.
- Recovery requires:
  - correction patch,
  - verification checkpoint,
  - new ASR entry.
