# PATCH_RUNTIME_CONTRACT_V1

version: v1.0.0
last_updated_utc: 2026-03-05T00:00:00Z
status: ACTIVE

## Purpose
- Define deterministic Phase B patch runtime behavior.
- Enforce fail-fast patch conflict statuses and explicit error codes.
- Keep rollback policy safe and verifiable.

## Runtime Requirements
1. Runtime MUST use `git apply --index --3way` for patch application.
2. Runtime MUST run precheck via `git apply --check --3way` before apply.
3. On precheck failure runtime MUST return:
   - `status=conflict_detected`
   - `error_code=PATCH_CONFLICT_DETECTED`
4. Runtime MUST support optional integrity pin via `--sha256 <64hex>`.
5. On hash mismatch runtime MUST return:
   - `status=integrity_mismatch`
   - `error_code=PATCH_SHA256_MISMATCH`
6. Runtime MUST emit machine-readable output fields:
   - `status=<...>`
   - `error_code=<...>`

## Rollback Policy
- Policy: `precheck-only no-mutation gate`.
- If precheck fails, runtime MUST stop before tree/index mutation.
- Runtime requires clean worktree+index before apply (`PATCH_TREE_NOT_CLEAN`).

## Reference Implementation
- Runtime: `devkit/patch.sh`
- Tests: `tests/test_patch_runtime_governance.py`
- Entrypoint wiring: `scripts/test_entrypoint.sh --patch-runtime`
