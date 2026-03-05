# PATCH_RUNTIME_CONTRACT_V1

version: v1.1.0
last_updated_utc: 2026-03-05T00:00:00Z
status: ACTIVE

## Purpose
- Define deterministic Phase B patch runtime behavior.
- Enforce fail-fast patch conflict statuses and explicit error codes.
- Enforce mandatory integrity pinning and task audit chain.

## Runtime Requirements
1. Runtime MUST use `git apply --index --3way` for patch application.
2. Runtime MUST run precheck via `git apply --check --3way` before apply.
3. On precheck failure runtime MUST return:
   - `status=conflict_detected`
   - `error_code=PATCH_CONFLICT_DETECTED`
4. Runtime MUST require integrity pin via `--sha256 <64hex>`.
5. Runtime MUST require task identifier via `--task-id <id>`.
6. On hash mismatch runtime MUST return:
   - `status=integrity_mismatch`
   - `error_code=PATCH_SHA256_MISMATCH`
7. Runtime MUST emit machine-readable fields:
   - `status=<...>`
   - `error_code=<...>`
8. Runtime MUST emit audit trace chain per attempt:
   - `trace: task_id=<...> spec_hash=<...> artifact_hash=<...> apply_result=<...> commit_ref=<...>`

## Rollback Policy
- Policy: `precheck-only no-mutation gate`.
- If precheck fails, runtime MUST stop before tree/index mutation.
- Runtime requires clean worktree+index before apply (`PATCH_TREE_NOT_CLEAN`).

## Reference Implementation
- Runtime: `devkit/patch.sh`
- Tests: `tests/test_patch_runtime_governance.py`
- Entrypoint wiring: `scripts/test_entrypoint.sh --patch-runtime`
