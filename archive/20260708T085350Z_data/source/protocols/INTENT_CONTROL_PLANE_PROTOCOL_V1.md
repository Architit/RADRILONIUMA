# INTENT CONTROL PLANE PROTOCOL V1

contract_type: intent_control_plane_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:35:27Z

## Purpose
- Define deterministic intent variables for ecosystem steering.
- Bind intent changes to governance evidence and Council/Sentinel gates.

## Intent Variables
- `intent_current`: active macro intent.
- `intent_next`: candidate transition intent.
- `intent_gate`: OPEN / HOLD / BLOCKED.
- `intent_confidence`: LOW / MEDIUM / HIGH.

## Controls
- Critical intent transition requires Council PASS and no Sentinel block.
- Every transition writes evidence into state matrix and governance logs.
- Runtime execution is out of scope.
