# BLOCK_RECOVERY_CONTRACT

version: v1.0.0
last_updated_utc: 2026-03-03T10:00:00Z
status: ACTIVE

## Purpose
- Prevent permanent execution lock states.
- Ensure every block has a concrete, machine-readable unblock path.
- Preserve operator dignity: never deny without explanation and next step.

## Mandatory Response Contract
Any gating/checker that can deny execution MUST return:
1. `decision`: `OPEN | HOLD | BLOCK`
2. `reason_code`: stable rule identifier
3. `explanation`: human-readable reason
4. `next_actions`: explicit retry/remediation steps

## State Machine
- Allowed transitions:
  - `OPEN -> HOLD -> BLOCK`
  - `BLOCK -> HOLD -> OPEN` after remediation
- Forbidden:
  - indefinite `BLOCK` without unresolved critical reason
  - `BLOCK` response without `reason_code` and `next_actions`

## Enforcement Rules
1. If `decision=BLOCK`, `next_actions` must contain at least one concrete step.
2. If only warnings are present, decision should be `HOLD`, not `BLOCK`.
3. `OPEN` is allowed only when no blocking errors exist.
4. Host-shell expansion risks must be mitigated using file-based preflight (`--file`) when needed.

## Verification Surface
- Runtime checker: `devkit/shell_preflight_check.py`
- Wrapper: `devkit/shell_preflight.sh`
- Tests: `tests/test_block_recovery_contract.py`

