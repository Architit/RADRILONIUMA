# KIT ASSEMBLY PROTOCOL V2

version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: deterministic assembly and upgrade workflow for kit sets

## Assembly Lifecycle
1) `KASM_DRAFT`
- requested kit change declared; no execution.

2) `KASM_REVIEW_PENDING`
- owner/dependency/risk review active.

3) `KASM_DECIDED_ALLOW`
- assembly allowed under gate controls.

4) `KASM_EXECUTED`
- kit artifacts updated and synchronized.

5) `KASM_VERIFIED`
- checks passed, evidence captured.

6) `KASM_CLOSED`
- state pointers updated and ASR indexed.

## Mandatory Tuple
- `kit_id`
- `owner_role`
- `dependency_class`
- `change_scope`
- `rollback_pointer`
- `binary_decision: ALLOW|BLOCK`

## Assembly Gates
- `KGATE-1_CATALOG_GATE`: kit exists in `KIT_CATALOG_V2.md`.
- `KGATE-2_OWNER_GATE`: owner declared and valid.
- `KGATE-3_DEPENDENCY_GATE`: dependency class impact declared.
- `KGATE-4_PREFLIGHT_GATE`: command safety/preflight passed.
- `KGATE-5_SOT_SYNC_GATE`: `GOV_STATUS/DEV_LOGS/ROADMAP` synchronized.
- `KGATE-6_CLOSURE_GATE`: ASR indexed and closure state set.

## Conflict State
- unresolved kit transition state:
  `BLOCKED_PENDING_KIT_DECISION_ON_CONFLICT`

## Prohibitions
- no implicit kit activation.
- no kit assembly without rollback pointer.
- no closure with stale status pointers.
