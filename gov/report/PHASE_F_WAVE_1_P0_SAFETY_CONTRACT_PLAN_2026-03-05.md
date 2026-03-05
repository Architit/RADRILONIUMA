# PHASE_F_WAVE_1_P0_SAFETY_CONTRACT_PLAN (2026-03-05)

## Scope
- workspace: `/home/architit/work/RADRILONIUMA`
- phase: `PHASE_F_WAVE_1`
- task_id: `phaseF_F1_p0_safety_contract_wave_plan`
- status: `DONE`

## Contract Objectives
1. Introduce P0-safety governance markers aligned with master Phase F intent (`circuit_breakers`, `hard_stop`, `manual_reauth`).
2. Preserve derivation-only/fail-fast constraints during owner execution.
3. Keep first-wave execution limited to existing owner repositories.

## Owner Execution Sequence (Wave F1)
1. `Archivator_Agent`
   - objective: P0 markers for safe refresh interruption and hard-stop behavior.
   - required evidence: closure report + verify commands + commit hash.
2. `LAM_Test_Agent`
   - objective: regression gate coverage for Phase F P0-safety markers.
   - required evidence: test evidence + marker scans + commit hash.
3. `System-`
   - objective: guard/routing hard-stop and manual-reauth markers.
   - required evidence: guard-plan update + verify commands + commit hash.
4. `Operator_Agent`
   - objective: deterministic queue-level circuit-breaker and hard-stop markers.
   - required evidence: closure report + verify commands + commit hash.
5. `J.A.R.V.I.S`
   - objective: deterministic routing-level circuit-breaker markers.
   - required evidence: closure report + verify commands + commit hash.
6. `LAM_Comunication_Agent`
   - objective: communication-level circuit-breaker and hard-stop markers.
   - required evidence: closure report + verify commands + commit hash.

## Acceptance Gates
- Gate F1: owner closure report exists with explicit `DONE/BLOCKED`.
- Gate F2: verification commands captured (`--p0-safety`/governance/all as applicable).
- Gate F3: owner commit hash captured per executed repo.
- Gate F4: bridge mirror updated after each owner closure.

## Fail-Fast Rules
- Missing preconditions -> stop owner step, mark `BLOCKED`.
- Missing/ambiguous evidence -> do not promote owner step to `DONE`.
- Scope expansion beyond first-wave repos -> reject step.

## Next Task
- `phaseF_F2_owner_p0_safety_wave_execution`
- status: `NEXT_STEP_READY`
