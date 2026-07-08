# SENTINEL GATEWAY GUARD V1

contract_type: sentinel_gateway_guard
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T02:49:38Z

## Purpose
- Activate agent Аяэариас (Guard Dog) at the Semantic Gateway and TSPT boundaries.
- Filter incoming patches for strict compliance with 'NO runtime logic' and 'derivation-only' invariants.

## Constraints
- Sentinel operates as a static filter (Pass/Reject).
- Validation includes sha256 checksum verification of task specs against patches.
- Rejections log to LRPT/log/sentinel_rejects.log.
