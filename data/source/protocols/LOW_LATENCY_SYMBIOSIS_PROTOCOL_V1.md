# LOW LATENCY SYMBIOSIS PROTOCOL V1

contract_type: low_latency_symbiosis_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:38:09Z

## Purpose
- Define deterministic low-latency response profiles for intent routing and guard actions.
- Separate fast-path triage from critical-path governance decisions.

## Profiles
- FAST_PATH: non-critical adjustments, guarded by Sentinel + A.E.G.I.S.
- CONTROLLED_PATH: medium-risk changes, requires Council review cycle.
- CRITICAL_PATH: high-impact transitions, requires Council PASS + zero Sentinel block.

## Constraints
- No runtime daemons in DevKit.
- All low-latency actions are commit-driven artifacts only.
