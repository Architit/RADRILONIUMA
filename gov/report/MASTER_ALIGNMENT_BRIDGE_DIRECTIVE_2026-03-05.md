# MASTER ALIGNMENT BRIDGE DIRECTIVE

- report_date: 2026-03-05
- repo: /home/architit/work/RADRILONIUMA
- bridge_role: RADRILONIUMA (Captain Bridge)
- castle_role: RADRILONIUMA-PROJECT (CASTLE)
- anchor_commits:
  - CASTLE role normalization: d8937e1
  - Bridge readiness closure: 152dec3

## 1) Canonical Source Chain (MASTER -> LOCAL -> TASK_SPEC)
1. MASTER source: `/home/architit/MASTER_ARCHITECTURE_PLAN_V1.md`
   - Task Spec invariants are mandatory: `derivation_only`, `fail-fast`, `patch_sha256` integrity pinning.
   - Runtime anti-patterns forbidden (no runtime code injection, no stochastic execution branches in critical path).
2. LOCAL source: `/home/architit/LOCAL_INTEGRATION_DELEGATION_PLAN_V1.md`
   - Execution must reuse existing nodes.
   - Anti-Sprawl Gate: no new agents unless strict ADR criteria are met.
3. TASK_SPEC source: `/home/architit/TASK_SPEC_PACK_PHASE_A_V1.md`
   - Provides concrete Phase A task IDs, dependencies, preconditions, and verification markers.

## 2) Crosswalk Summary
- MASTER `Task Spec Layer` -> LOCAL `delegation registry` -> TASK_SPEC `task_id package`.
- Derived next wave targets contracts first in CASTLE, then prepares downstream integration owners.
- Derivation-only policy preserved: directive defines desired state and verification criteria, not runtime implementation code.

## 3) Next Task Set (Phase A Next Wave)
- wave_id: `PHASE_A_WAVE_1_TASKSPEC_CORE`
- owner node: `RADRILONIUMA-PROJECT (CASTLE)`
- selected tasks:
  1. `phaseA_t001_task_spec_contract_v1_1`
  2. `phaseA_t002_task_spec_validator_contract`
  3. `phaseA_t013_master_owner_map_evidence`

Rationale:
- `t001/t002` establish canonical Task Spec v1.1 + fail-fast contract layer.
- `t013` fixes owner-map evidence needed for transparent delegation before broader wave rollout.

## 4) Delegation Map (Existing Nodes Only)
- Primary owner:
  - `RADRILONIUMA-PROJECT (CASTLE)` -> contract surface and governance evidence.
- Integration points:
  - `Archivator_Agent` -> downstream integrity chain/hybrid hook dependency path (`phaseA_t003/t004`).
  - `LAM_Test_Agent` -> regression gating for Phase A controls.
- Constraint:
  - `no new agents`, `no new repositories`, `anti-sprawl gate active`.

## 5) Required Evidence for GO
1. Contract markers in CASTLE Task Spec template:
   - `derivation_only`, `patch_sha256`, `timeout_ms`, `max_output_tokens`.
2. Validator markers in CASTLE contract layer:
   - `Task Spec`, `fail-fast`, `error_code`.
3. Owner-map evidence markers:
   - `phaseA_t00*`, `owner`, `delegation`, `evidence`.
4. Governance regression command returns pass:
   - `bash scripts/test_entrypoint.sh --all || bash scripts/test_entrypoint.sh --ci`.

## 6) Stop/Go Criteria
- GO:
  - all passive preconditions satisfied,
  - patch hash pinning matches (`patch_sha256`),
  - verify markers present,
  - regression gates pass,
  - no `conflict_detected`.
- STOP:
  - hash mismatch,
  - missing preconditions,
  - 3-way apply conflict,
  - regression failure,
  - anti-sprawl violation (proposal of new node).

## 7) Verification Evidence (this cycle)
- Mandatory token check and bridge/castle/delegation constraints validated via required `rg` command.
- Local governance test command executed.
- Git working tree status and diff-stat captured.
