# TASK_SPEC_VALIDATOR_CONTRACT_V1.1

version: v1.1.0
last_updated_utc: 2026-03-05T00:00:00Z
status: ACTIVE

## Purpose
- Enforce Task Spec contract v1.1 with strict YAML parsing.
- Fail-fast on structural, precondition, and integrity violations.
- Emit deterministic machine-readable `error_code` for every violation.

## Required v1.1 Fields
Task Spec MUST include:
1. `spec_version` with exact value `"1.1"`.
2. `goal` as non-empty single-line string.
3. `constraints.derivation_only` with exact boolean `true`.
4. `preconditions` as non-empty list of objects containing `type`.
5. `artifacts.patch_path` as non-empty string.
6. `artifacts.patch_sha256` as exactly 64 lowercase hex chars.
7. `limits.timeout_ms` as positive integer.
8. `limits.max_output_tokens` as positive integer.

## Fail-Fast Error Codes
- `TASKSPEC_YAML_PARSE_FAILED`
- `TASKSPEC_INVALID_ROOT_TYPE`
- `TASKSPEC_SPEC_VERSION_INVALID`
- `TASKSPEC_MISSING_GOAL`
- `TASKSPEC_DERIVATION_ONLY_REQUIRED`
- `TASKSPEC_PRECONDITIONS_MISSING`
- `TASKSPEC_PATCH_PATH_MISSING`
- `TASKSPEC_PATCH_SHA256_INVALID`
- `TASKSPEC_LIMITS_MISSING`

## Runtime Contract
1. Validator MUST parse YAML using structural parser, not regex-only matching.
2. Default mode MUST be fail-fast and stop on first violation.
3. Validator MUST return non-zero exit code on any contract violation.
4. Validator MUST print `error_code=<CODE>` lines for violations.
5. Apply/runtime gates MUST NOT continue on validator failure.

## Verification Surface
- Validator: `scripts/task_spec_validator.py`
- Template: `devkit/task_spec_template.yaml`
- Tests: `tests/test_task_spec_governance.py`
- Governance wiring: `scripts/test_entrypoint.sh --governance`
