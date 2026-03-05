# PHASE_A_A0_ARCHITECTURE_SCAN_AND_INTEGRATION_MAP (2026-03-05)

## Scope
- workspace: `/home/architit/work/RADRILONIUMA`
- mode: no new agents, no new repositories, integration over existing skeleton only

## Current local architecture scan (RADRILONIUMA)
1. Governance surfaces: root contracts/maps (`SYSTEM_STATE.md`, `WORKFLOW_SNAPSHOT_STATE.md`, `DEV_MAP.md`, `TASK_MAP.md`).
2. DevKit runtime surfaces: `devkit/patch.sh`, `devkit/shell_preflight_check.py`, `devkit/ecosystem_rollout.sh`.
3. Local execution wrapper surfaces: `scripts/ecosystem_rollout.sh`, `scripts/test_entrypoint.sh`.
4. Governance evidence surfaces: `gov/asr/*`, `gov/report/*`.
5. Test surfaces: `tests/test_block_recovery_contract.py` + Phase A governance additions.

## Integration map (delegation points, no entity creation)
1. `RADRILONIUMA-PROJECT` (CASTLE):
   - `devkit/task_spec_template.yaml` as canonical Task Spec shape source.
   - contract alignment source for `derivation_only`, `fail-fast`, `patch_sha256`.
2. `Archivator_Agent`:
   - downstream dependency path for integrity-chain/hybrid hook (`phaseA_t003/t004` from pack).
3. `LAM_Test_Agent`:
   - regression-gate dependency path for cross-repo acceptance sequence.
4. Local RADRILONIUMA integration points:
   - `devkit/task_spec_template.yaml` (local contract mirror for enforcement).
   - `scripts/task_spec_validator.py` (fail-fast validator).
   - `scripts/test_entrypoint.sh --governance` (validator + governance tests).

## Preconditions checked for local Phase A start
- `python3` available
- local `pytest` available via `.venv/bin/pytest`
- writable paths: `gov/report/`, `tests/`, `scripts/`, `devkit/`

## Result
- A0 status: `DONE`
- note: no new agents/repos created; integration only through existing skeleton and delegation map.
