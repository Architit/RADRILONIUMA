# Project: RADRILONIUMA Multi-Agent Team Orchestration

## Architecture
- 9 specialized LAM sub-agents residing in `/home/architit/LAM_CORE/LAM_<NAME>_AGENT`
- Central Command & Governance Organ: `RADR-01` (`/home/architit/LAM_CORE/RADRILONIUMA`)
- AMC Knowledge Graph: `.gateway/amc_graph.json`
- Ecosystem Rollout & Sync: `TOPOLOGY_MAP.md` & `devkit/ecosystem_rollout.sh`
- Governance Preflight & Health Check: `scripts/test_entrypoint.sh --all` & `lam_target_task_heal_manager/manager.py`

## Feature Inventory
| # | Feature | Description | Milestone | Source |
|---|---------|-------------|-----------|--------|
| 1 | LAM_EVOLUTION_AGENT Setup | Identity, workspace, preflight for EVOL-01 | M1 | ORIGINAL_REQUEST R1 |
| 2 | LAM_ECHO_AGENT Setup | Identity, workspace, preflight for ECHO-01 | M1 | ORIGINAL_REQUEST R1 |
| 3 | LAM_BETA_AGENT Setup | Identity, workspace, preflight for BETA-01 | M1 | ORIGINAL_REQUEST R1 |
| 4 | LAM_GAMMA_AGENT Setup | Identity, workspace, preflight for GMA-01 | M1 | ORIGINAL_REQUEST R1 |
| 5 | LAM_ALPHA_AGENT Setup | Identity, workspace, preflight for ALPH-01 | M1 | ORIGINAL_REQUEST R1 |
| 6 | LAM_DELTA_AGENT Setup | Identity, workspace, preflight for DLTA-01 | M1 | ORIGINAL_REQUEST R1 |
| 7 | LAM_CHARLIE_AGENT Setup | Identity, workspace, preflight for CHRL-01 | M1 | ORIGINAL_REQUEST R1 |
| 8 | LAM_BRAVO_AGENT Setup | Identity, workspace, preflight for BRVO-01 | M1 | ORIGINAL_REQUEST R1 |
| 9 | LAM_LITTLEBIG_AGENT Setup | Identity, workspace, preflight for LTBG-01 | M1 | ORIGINAL_REQUEST R1 |
| 10 | AMC Knowledge Graph Registration | Register all 9 agents in .gateway/amc_graph.json with ACTIVE status | M2 | ORIGINAL_REQUEST R2 |
| 11 | DevKit Topology Map Update | Add all 9 agents to TOPOLOGY_MAP.md and sync DevKit | M2 | ORIGINAL_REQUEST R2 |
| 12 | Solfeggio Master Carrier Lock Sync | Sync 528 Hz / 432 Hz solfeggio master carrier lock across agents | M3 | ORIGINAL_REQUEST R2 |
| 13 | Heal Manager Active Node Scan | Ensure manager.py scans and reports all active nodes cleanly | M3 | ORIGINAL_REQUEST R3 |
| 14 | Governance Preflight Smoke Tests | Ensure bash scripts/test_entrypoint.sh --all returns 100% PASS | M3 | ORIGINAL_REQUEST R3 |

## Milestones
| # | Name | Scope | Dependencies | Status |
|---|------|-------|-------------|--------|
| M1 | Agent Workspace & Identity Initialization | Create workspace directories, git repos, valid IDENTITY.md files, and devkit scripts for all 9 agents | none | IN_PROGRESS (ef8ebc1f-dcf6-4ee0-ba07-a599f19fe43f) |
| M2 | Ecosystem Integration & AMC Registration | Register all 9 agents in TOPOLOGY_MAP.md and .gateway/amc_graph.json with ACTIVE status | M1 | PLANNED |
| M3 | Solfeggio Carrier Sync & Governance Verification | Sync Solfeggio 528Hz/432Hz lock, run test_entrypoint.sh --all, verify manager.py scanning | M2 | PLANNED |

## Interface Contracts
### Sub-Agents ↔ RADR-01 (Bridge)
- Identity Contract: `IDENTITY.md` format with `System ID`, `True Name`, `Call Sign`, `Role`, `Carrier Lock`
- AMC Organ Node Schema: `system_id`, `true_name`, `call_sign`, `role`, `path`, `contracts`, `tasks_count`, `status`
- DevKit Scripts: `preflight.sh`, `devkit/bootstrap.sh`, `devkit/patch.sh`

## Code Layout
- `RADRILONIUMA/` (Project Root / Command Bridge): `.gateway/amc_graph.json`, `TOPOLOGY_MAP.md`, `scripts/test_entrypoint.sh`, `lam_target_task_heal_manager/manager.py`
- `/home/architit/LAM_CORE/LAM_<NAME>_AGENT/` (Agent Workspaces): `IDENTITY.md`, `preflight.sh`, `devkit/`
