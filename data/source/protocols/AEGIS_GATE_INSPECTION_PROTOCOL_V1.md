# A.E.G.I.S. GATE INSPECTION PROTOCOL V1

contract_type: aegis_gate_inspection_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:22:04Z

## Purpose
- Define static zero-trust checks before artifacts enter TSPT incoming slots.
- Enforce checksum and policy conformity at gateway boundaries.

## Validation Rules
- Artifact tuple: TASK_SPEC + PATCH + checksum manifest.
- sha256 mismatch => REJECT.
- Missing policy metadata => REJECT.
- Runtime-impact markers in restricted scope => REJECT_RUNTIME_IMPACT.

## Outputs
- Decision states: PASS / REVISE / REJECT / REJECT_RUNTIME_IMPACT
- Reject evidence must be recorded in `LRPT/log/sentinel_rejects.log`.
