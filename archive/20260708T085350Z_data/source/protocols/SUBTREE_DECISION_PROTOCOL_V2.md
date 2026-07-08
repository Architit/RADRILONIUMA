# SUBTREE DECISION PROTOCOL V2

protocol_version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: subtree decision lifecycle and binary closure

## Decision Lifecycle
1) `DRAFT`
- subtree intent recorded; no execution allowed.

2) `REVIEW_PENDING`
- topology/risk/evidence review in progress.

3) `DECIDED_ALLOW`
- subtree operation permitted under active gate.

4) `DECIDED_BLOCK`
- subtree operation denied pending remediation.

5) `EXECUTED`
- operation applied; lock/state updated.

6) `CLOSED`
- closure complete; ASR indexed and SoT pointers synchronized.

## Required Decision Tuple
- `subtree_scope`
- `upstream_reference`
- `downstream_targets`
- `lock_change_required`
- `risk_class`
- `binary_decision: ALLOW|BLOCK`

## Conflict Semantics
- unresolved subtree conflict state:
  `BLOCKED_PENDING_SUBTREE_DECISION_ON_CONFLICT`

## Prohibitions
- no implicit subtree rollout.
- no lock mutation without declared decision tuple.
- no closure with stale `GOV_STATUS.md` pointers.
