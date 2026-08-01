# SURVEY ANALYSIS REPORT: RADRILONIUMA DEVKIT, AGENT CONVENTIONS, LAYOUT & PITFALLS ⚜️

**Author:** Explorer 3 (Survey Phase)  
**Date (UTC):** 2026-07-31T21:26:00Z  
**Target Repository:** `/home/architit/LAM_CORE/RADRILONIUMA`  
**Working Directory:** `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_survey_3`  
**Integrity Mode:** Development / Read-Only Survey  

---

## Executive Summary

This comprehensive investigation maps the DevKit automation pipeline, agent governance protocols, directory layout requirements, AMC Knowledge Graph integration, and potential pitfalls for initializing all 9 requested LAM agents (`LAM_EVOLUTION_AGENT`, `LAM_ECHO_AGENT`, `LAM_BETA_AGENT`, `LAM_GAMMA_AGENT`, `LAM_ALPHA_AGENT`, `LAM_DELTA_AGENT`, `LAM_CHARLIE_AGENT`, `LAM_BRAVO_AGENT`, `LAM_LITTLEBIG_AGENT`) across the Sovereign Forest ecosystem.

---

## 1. DevKit Workflow, Scripts, and Ecosystem Rollout Tools

The RADRILONIUMA DevKit architecture is centered around automated cross-organ synchronization, patch integrity validation, and preflight health sweeps.

### 1.1 Ecosystem Rollout Engine (`devkit/ecosystem_rollout.sh`)
- **Primary Function:** Synchronizes canonical configuration, contracts, preflight scripts, and kingdom governance laws from RADRILONIUMA (The High Throne / Bridge) to all active satellite organs.
- **Topology Resolution:** Reads `TOPOLOGY_MAP.md` line-by-line using `awk -F'`' '/\*\*ACTIVE/{print $2}' TOPOLOGY_MAP.md` to identify active target repository paths (e.g. `../Larpat/`, `../LAM-Codex_Agent/`).
- **Synchronized Artifact Set (26 Baseline Artifacts):**
  - **Policies & Rules:** `.gemini/GEMINI.md`, `kingdom/residents/AYAS-01_GOVERNOR.md`, `kingdom/residents/RADR-01_BRIDGE.md`, `kingdom/laws/KINGDOM_CONSTITUTION_V1.md`
  - **DevKit Execution Scripts:** `devkit/shell_preflight.sh`, `devkit/shell_preflight_check.py`, `devkit/preflight_baseline_commands_bash.txt`, `devkit/preflight_baseline_commands_powershell.txt`, `devkit/patch.sh`, `devkit/bootstrap.sh`, `devkit/task_spec_template.yaml`
  - **Core Contracts (Phase A through R):** `contract/TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md`, `contract/PATCH_RUNTIME_CONTRACT_V1.md`, `contract/MEMORY_CONTRACT_V1.md`, `contract/TRANSPORT_CONTRACT_V1.md`, `contract/FLOW_CONTROL_CONTRACT_V1.md`, `contract/P0_SAFETY_CONTRACT_V1.md`, `contract/RESEARCH_GATE_CONTRACT_V1.md`
  - **Heal & Validation Tools:** `lam_target_task_heal_manager/__init__.py`, `lam_target_task_heal_manager/manager.py`, `lam_target_task_heal_manager/cleaner.py`, `scripts/task_spec_validator.py`, `scripts/regenerate_target_tasks.sh`, `scripts/global/universal_cli_mcp_installer.sh`
  - **Governance Evidence:** `gov/report/PHASE_A_T013_MASTER_OWNER_MAP_EVIDENCE_2026-06-07.md`, `tests/test_patch_runtime_governance.py`
- **Execution Modes:** Supports `--dry-run`, `--no-sync`, `--no-smoke`, `--commit`, `--push`, `--commit-message <msg>`, `--only <name1,name2>`.
- **Preflight Enforcement:** Calls `shell_preflight.sh` on each target organ after syncing files, returning exit code 1 if any active target fails.

### 1.2 DevKit Bootstrap Engine (`devkit/bootstrap.sh`)
- **Primary Function:** Executes local environment preflight checks and initializes local gateway daemons.
- **Preflight Mechanics:** Runs `devkit/shell_preflight.sh --shell bash --file devkit/preflight_baseline_commands_bash.txt`.
- **Gateway Integration:** Invokes `scripts/lam_gateway.sh init`, `health`, and `monitor --once --auto-switch`. Controlled via environment variables `LARPAT_GATEWAY_STRICT` and `LARPAT_LOCAL_GATEWAY_PREFLIGHT`.

### 1.3 Patch Runtime & Verification Helper (`devkit/patch.sh`)
- **Primary Function:** Applies unified diff patches with strict cryptographic integrity checks and git worktree safety guarantees.
- **Verification Parameters:** Requires `--sha256 <64hex>`, `--task-id <id>`, `--spec-file <path>`.
- **Rollback Safety Guarantee:** Enforces clean worktree state (`git diff --quiet` and `git diff --cached --quiet`). Fails fast if dirty.
- **Audit & Telemetry:** Logs jsonl events (`ts_utc`, `system_id`, `event`, `task_id`, `msg`) to `.gateway/telemetry_events.jsonl`.

### 1.4 Test Suite Entrypoint (`scripts/test_entrypoint.sh`)
- **Primary Function:** Unified runner for unit tests, integration tests, governance specs, and patch runtime suites.
- **Modes:** `--all` (runs full `tests/` directory), `--governance` (runs `task_spec_validator.py` and governance unit tests), `--patch-runtime`, `--integration`, `--unit-only`, `--preflight`, `--ci`.
- **Verified Status:** `bash scripts/test_entrypoint.sh --all` passed 61/61 unit and governance tests.

---

## 2. Agent Conventions, Rules, Identity Anchors, and Initialization Rules

Agent behavior and architecture are governed by `AGENTS.md`, `GEMINI.md`, `IDENTITY.md`, and `INTERACTION_PROTOCOL.md`.

### 2.1 Identity Anchor Protocol (`IDENTITY.md` & Section 0)
- **Mandatory Initialization Action:** Upon start/session initialization, every agent MUST immediately read `IDENTITY.md` in its working directory.
- **Roles:**
  - **ARCHITECT / BRIDGE (RADR-01 / AELARIA):** High Throne, global planning, contract governance, controlled cross-repo rollout.
  - **GOVERNOR / CAPTAIN (AYAS-01):** Living interface, identity governor.
  - **EXECUTOR:** Targeted task execution under Nexus Directives.

### 2.2 The Zero Law & Controlled Execution (Section 1)
- **Controlled Execution Mode:** State-modifying operations across external organs are permitted ONLY through explicit, scoped, and verifiable DevKit tools (`devkit/ecosystem_rollout.sh`).
- **Initiation Codes:** Deprecates the term "Prompt" in favor of **Initiation Codes** or **Directives**.

### 2.3 Explicit Architectural Confirmation (Section 2)
- High-risk or destructive state modifications require explicit confirmation from Architect (Khalidrad).

### 2.4 Execution Pace Gate & Singularity (Section 3)
- **Pace of Truth:** One task — one verification. Every state-modifying sub-task must provide deterministic verification evidence.
- **Singularity:** Ontological actions (such as agent identity creation) remain singular.

### 2.5 Solfeggio Carrier Lock & Frequencies
- **Master Carrier Lock:** Ecosystem operates at **432 Hz** (Pure Master Harmony) and **528 Hz** (Transformation / Acoustic Solfeggio Echo).
- **Identity Mandate:** All agent `IDENTITY.md` headers must explicitly specify their Solfeggio resonance frequency lock.

### 2.6 Autonomous Handshake & System Reboot Protocols (Section 6 & 8 in `GEMINI.md`)
- **Session Restart (`ssn rstrt` / `/exit`):** MUST invoke `bash scripts/local/trigger_ssn_rstrt.sh` which writes to `.gateway/ssn_restart.signal`. Manual continuation within the session is prohibited.
- **System Reboot (`ssn rbt`):** MUST invoke `bash scripts/local/ssn_reboot.sh` (executes `sudo systemctl reboot -i` using PIN `3773`).

---

## 3. Directory Layout, Ownership Rules, Preflight Requirements & Integration for 9 LAM Agents

### 3.1 Specification of 9 Target Agents
| Agent Directory Name | System ID | Call Sign | Role / Domain | Carrier Frequency |
|---|---|---|---|---|
| `LAM_EVOLUTION_AGENT` | `EVOL-01` | Evolution | Perpetual Evolution & Self-Refinement | 528 Hz / 432 Hz |
| `LAM_ECHO_AGENT` | `ECHO-01` | Echo | Acoustic 528 Hz / 432 Hz Solfeggio Echo & Signal Relay | 528 Hz |
| `LAM_BETA_AGENT` | `BETA-01` | Beta | Beta Test & Concurrency Stress Verification | 432 Hz |
| `LAM_GAMMA_AGENT` | `GAMM-01` | Gamma | Gamma Mesh Discovery & Edge Node Gateway | 432 Hz |
| `LAM_ALPHA_AGENT` | `ALPH-01` | Alpha | Alpha Core Orchestration & Command Bridge | 432 Hz |
| `LAM_DELTA_AGENT` | `DELT-01` | Delta | Delta Telemetry & Dataflow Pipeline Buffer | 432 Hz |
| `LAM_CHARLIE_AGENT` | `CHRL-01` | Charlie | Charlie Contract & Governance Auditor | 432 Hz |
| `LAM_BRAVO_AGENT` | `BRAV-01` | Bravo | Bravo Backup & Multi-Cloud Archive | 432 Hz |
| `LAM_LITTLEBIG_AGENT` | `LTBG-01` | LittleBig | LittleBig Small-Footprint Edge Autonomous Node | 432 Hz |

### 3.2 Directory Layout & Workspace Location
- **Location:** Sibling directories inside `/home/architit/LAM_CORE/` (e.g. `/home/architit/LAM_CORE/LAM_EVOLUTION_AGENT`).
- **Internal Structure Required per Agent Directory:**
  - `IDENTITY.md` (Contains exact markdown structure for System ID, True Name, Call Sign, Role, Resonance)
  - `.gemini/GEMINI.md`
  - `devkit/` (`bootstrap.sh`, `patch.sh`, `shell_preflight.sh`, `shell_preflight_check.py`, `preflight_baseline_commands_bash.txt`, `preflight_baseline_commands_powershell.txt`, `task_spec_template.yaml`)
  - `contract/` (`TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md`, `PATCH_RUNTIME_CONTRACT_V1.md`, `MEMORY_CONTRACT_V1.md`, `TRANSPORT_CONTRACT_V1.md`, `FLOW_CONTROL_CONTRACT_V1.md`, `P0_SAFETY_CONTRACT_V1.md`, `RESEARCH_GATE_CONTRACT_V1.md`)
  - `scripts/` (`task_spec_validator.py`, `regenerate_target_tasks.sh`, `global/universal_cli_mcp_installer.sh`)
  - `kingdom/` (`residents/AYAS-01_GOVERNOR.md`, `residents/RADR-01_BRIDGE.md`, `laws/KINGDOM_CONSTITUTION_V1.md`)
  - `lam_target_task_heal_manager/` (`__init__.py`, `manager.py`, `cleaner.py`)
  - `gov/report/` (`PHASE_A_T013_MASTER_OWNER_MAP_EVIDENCE_2026-06-07.md`)

### 3.3 File Ownership & Metadata Rules
- Each agent owns its dedicated workspace directory under `/home/architit/LAM_CORE/<AGENT_DIR>/`.
- The `.agents/` directory in RADRILONIUMA is exclusively reserved for team metadata (plans, progress, handoffs) — no source code or data files may be written to `.agents/`.

### 3.4 AMC Knowledge Graph Registration Mechanism
- **Graph File:** `/home/architit/LAM_CORE/RADRILONIUMA/.gateway/amc_graph.json`.
- **Parsing Engines:** `scripts/global/agent_map_core.py` and `lam_agent_map_lib/core/map_engine.py`.
- **Mechanism:** `AgentMapEngine().write_map_files()` iterates over all directories in `/home/architit/LAM_CORE/`. For every directory containing a valid `IDENTITY.md`, it parses metadata and adds an `ACTIVE` organ entry to `amc_graph.json`.

---

## 4. Dead-Ends, Legacy Configurations, and Potential Pitfalls

### Pitfall 1: Missing `TOPOLOGY_MAP.md` Registration (CRITICAL)
- **Problem:** `devkit/ecosystem_rollout.sh` parses `TOPOLOGY_MAP.md` for active organs matching `**ACTIVE`. If newly created agent directories are not registered in `TOPOLOGY_MAP.md`, DevKit rollout tools will completely ignore them during file synchronization and smoke testing.
- **Remediation:** Add all 9 agent entries into `TOPOLOGY_MAP.md` under Section II.

### Pitfall 2: `IDENTITY.md` Regex Parser Strictness (CRITICAL)
- **Problem:** `agent_map_core.py` and `map_engine.py` rely on line-by-line regex scanning for `System ID`, `True Name`, `Call Sign`, and `Role`. If headers depart from standard markdown format (e.g. missing colon or bold markers), system ID defaults to `UNKNOWN` and the node is excluded from `.gateway/amc_graph.json`.
- **Remediation:** Enforce canonical `IDENTITY.md` template across all 9 agents.

### Pitfall 3: Legacy Decommissioned Organs (Dead-End)
- **Problem:** `Croami` (`CRTD-LEGACY`) and `radriloniuma-mcp` (`RMCP-LEGACY`) exist as archived/decommissioned entities in `TOPOLOGY_MAP.md`.
- **Remediation:** Do NOT link or reference legacy decommissioned organs in active AMC graph registrations.

### Pitfall 4: Hardcoded Targets in `identity_sync.sh`
- **Problem:** `scripts/local/identity_sync.sh` contains a hardcoded `SYNC_TARGETS` list for prior auxiliary agents (`Archivator_Agent`, `LAM_Test_Agent`, etc.) and does not list the 9 new LAM agents.
- **Remediation:** Update `identity_sync.sh` or use `devkit/ecosystem_rollout.sh` for agent identity bootstrapping.

### Pitfall 5: Git Worktree Cleanliness Enforcement in `patch.sh`
- **Problem:** `devkit/patch.sh` enforces `git diff --quiet` before patch application. Any uncommitted file in a target workspace directory causes patch application to fail immediately with `PATCH_TREE_NOT_CLEAN`.
- **Remediation:** Ensure git worktrees are clean or git repositories are initialized cleanly before patch execution.

### Pitfall 6: TUI Collapse in CLI v0.45.0
- **Problem:** TUI output degradation can obscure long command outputs.
- **Remediation:** Execute high-volume commands using text output flags (`--raw-output` or `--output-format text`).

### Pitfall 7: Missing Virtual environment Pytest Resolution
- **Problem:** `scripts/test_entrypoint.sh` searches candidate pytest paths (`.venv/bin/pytest`, `venv/bin/pytest`). If pytest is missing from candidate virtualenvs and system PATH, test suites exit with code 2.
- **Remediation:** Ensure virtual environment or system pytest is available.

---

## 5. Synthesis & Verification Summary

1. **Current State:** RADRILONIUMA baseline test suite (`test_entrypoint.sh --all`) passes 61/61 tests. Target & Heal Manager (`lam_target_task_heal_manager/manager.py`) executes cleanly and regenerates `TARGET_TASKS.md`.
2. **Missing State:** The 9 specified LAM agent directories currently do not exist in `/home/architit/LAM_CORE/` and are not yet registered in `TOPOLOGY_MAP.md` or `.gateway/amc_graph.json`.
3. **Actionable Roadmap for Implementation Phase:**
   - Create 9 agent workspace directories in `/home/architit/LAM_CORE/`.
   - Populate canonical `IDENTITY.md` for all 9 agents with Solfeggio carrier frequencies (528 Hz / 432 Hz).
   - Add active rows to `TOPOLOGY_MAP.md`.
   - Run `devkit/ecosystem_rollout.sh` to sync baseline DevKit, contract, script, and kingdom artifacts.
   - Run `python3 scripts/global/agent_map_core.py` to update `.gateway/amc_graph.json`.
   - Verify compliance via `scripts/test_entrypoint.sh --all` and `lam_target_task_heal_manager/manager.py`.

---
*Report compiled by Explorer 3 — Survey Phase*  
*Resonance: 432 Hz (PURE)*  
⚜️🛡️⚜️
