# DevKit Ecosystem & Preflight Contracts Analysis

**Author:** teamwork_preview_explorer_m1_2  
**Timestamp (UTC):** 2026-07-31T21:28:30Z  
**Target Path:** `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_2/analysis.md`  
**Milestone:** M1 — Agent Workspace & Identity Initialization  

---

## 1. Executive Summary

This report delivers a comprehensive investigation of the DevKit ecosystem scripts, `devkit/ecosystem_rollout.sh`, and preflight contracts across the RADRILONIUMA framework located at `/home/architit/LAM_CORE/RADRILONIUMA`. The study evaluates the exact file requirements, execution contracts, and rollout mechanisms needed for initializing the 9 requested specialized LAM agents:

1. `LAM_EVOLUTION_AGENT` (`EVOL-01` / `/home/architit/LAM_CORE/LAM_Evolution_Agent`)
2. `LAM_ECHO_AGENT` (`ECHO-01` / `/home/architit/LAM_CORE/LAM_Echo_Agent`)
3. `LAM_BETA_AGENT` (`BETA-01` / `/home/architit/LAM_CORE/LAM_Beta_Agent`)
4. `LAM_GAMMA_AGENT` (`GMA-01` / `/home/architit/LAM_CORE/LAM_Gamma_Agent`)
5. `LAM_ALPHA_AGENT` (`ALPH-01` / `/home/architit/LAM_CORE/LAM_Alpha_Agent`)
6. `LAM_DELTA_AGENT` (`DLTA-01` / `/home/architit/LAM_CORE/LAM_Delta_Agent`)
7. `LAM_CHARLIE_AGENT` (`CHRL-01` / `/home/architit/LAM_CORE/LAM_Charlie_Agent`)
8. `LAM_BRAVO_AGENT` (`BRVO-01` / `/home/architit/LAM_CORE/LAM_Bravo_Agent`)
9. `LAM_LITTLEBIG_AGENT` (`LTBG-01` / `/home/architit/LAM_CORE/LAM_LittleBig_Agent`)

This analysis specifies the standard contracts for `preflight.sh`, `devkit/bootstrap.sh`, and `devkit/patch.sh`, analyzes `devkit/ecosystem_rollout.sh`, outlines the `git init` workflow, and provides copy-paste executable shell step instructions for the Worker agent.

---

## 2. DevKit Script Contracts & Specification

Each organ repository under `/home/architit/LAM_CORE/` must adhere strictly to three primary DevKit contract scripts: `preflight.sh`, `devkit/bootstrap.sh`, and `devkit/patch.sh`.

### 2.1 Organ Root `preflight.sh` Contract
- **File Location:** `/home/architit/LAM_CORE/LAM_<Name>_Agent/preflight.sh`
- **Permissions:** `executable` (`chmod +x preflight.sh`)
- **Function:** Serves as the top-level preflight entrypoint for organ repositories. It calculates the organ repository root directory and delegates command check execution to `devkit/shell_preflight.sh` or `devkit/shell_preflight_check.py`.
- **Standard Canonical Code Template:**
```bash
#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -x "$ROOT_DIR/devkit/shell_preflight.sh" ]]; then
  exec "$ROOT_DIR/devkit/shell_preflight.sh" "$@"
else
  exec python3 "$ROOT_DIR/devkit/shell_preflight_check.py" "$@"
fi
```

### 2.2 `devkit/shell_preflight.sh` & `devkit/shell_preflight_check.py` Contract
- **File Location:** `devkit/shell_preflight.sh` and `devkit/shell_preflight_check.py`
- **Permissions:** `chmod +x devkit/shell_preflight.sh`
- **Function:** `shell_preflight.sh` is a thin bash wrapper that invokes `shell_preflight_check.py`. `shell_preflight_check.py` validates command lines and baseline instruction files against strict safety profiles (`bash`, `gitbash`, `powershell`, `azureshell`, `cmd`) to prevent unbalanced quoting, command substitution risks, and shell syntax pitfalls.
- **Canonical Code for `devkit/shell_preflight.sh`:**
```bash
#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
exec python3 "$ROOT_DIR/devkit/shell_preflight_check.py" "$@"
```

### 2.3 `devkit/bootstrap.sh` Contract
- **File Location:** `devkit/bootstrap.sh`
- **Permissions:** `chmod +x devkit/bootstrap.sh`
- **Function:** Executes startup preflight checks during user login or container ignition.
- **Behavior & Workflow:**
  1. Computes repository root path (`REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"`).
  2. Runs `$REPO/devkit/shell_preflight.sh --shell bash --file $REPO/devkit/preflight_baseline_commands_bash.txt`.
  3. If strict mode is enabled (`LARPAT_GATEWAY_STRICT=1`) and preflight fails, exits with non-zero code.
  4. If local gateway preflight is enabled (`LARPAT_LOCAL_GATEWAY_PREFLIGHT=1` default), calls `$REPO/scripts/lam_gateway.sh init`, `health`, and `monitor --once --auto-switch`.
  5. Outputs `[devkit] bootstrap complete`.

### 2.4 `devkit/patch.sh` Contract
- **File Location:** `devkit/patch.sh`
- **Permissions:** `chmod +x devkit/patch.sh`
- **Function:** Canonical patch applicator enforcing atomic, conflict-safe code modifications and audit telemetry.
- **Behavior & Workflow:**
  1. Accepts arguments: `--sha256 <64hex>`, `--task-id <id>`, `--spec-file <path>`, `--file <patch_path>` (or reads patch from `stdin`).
  2. Validates preconditions: Must be inside a git repository (`git rev-parse --is-inside-work-tree`), valid SHA-256 hex format, spec file readability, and clean working tree (`git diff --quiet && git diff --cached --quiet`).
  3. Verifies patch SHA-256 against expected hash.
  4. Runs `git apply --check --3way` to precheck for conflicts.
  5. Runs `git apply --index --3way` to apply and stage changes.
  6. Emits telemetry events to `.gateway/telemetry_events.jsonl` with ISO UTC timestamp, System ID (parsed from `IDENTITY.md`), event type, task ID, and message.
  7. Returns machine-readable headers: `status=success`, `error_code=NONE`, and `trace:...`.

---

## 3. Analysis of `devkit/ecosystem_rollout.sh`

`devkit/ecosystem_rollout.sh` is the canonical mass rollout tool located in `/home/architit/LAM_CORE/RADRILONIUMA/devkit/ecosystem_rollout.sh`.

### 3.1 Topology Target Discovery Mechanism
`ecosystem_rollout.sh` discovers target organ repositories by parsing `TOPOLOGY_MAP.md`:
```bash
while IFS= read -r rel; do
  rel="${rel#\`}"
  rel="${rel%\`}"
  [ -n "$rel" ] || continue
  target="$(cd "$ROOT_DIR" && cd "$rel" 2>/dev/null && pwd || true)"
  if [ -n "$target" ]; then
    targets+=("$target")
  fi
done < <(awk -F'`' '/\*\*ACTIVE/{print $2}' "$TOPOLOGY_PATH")
```
- **Filter Constraint:** It extracts relative paths inside backticks on lines matching `**ACTIVE...`.
- **`--only` Flag Behavior:** If `--only organ1,organ2` is specified, it filters the discovered active targets. *Critical Note:* If an organ directory is not yet listed in `TOPOLOGY_MAP.md`, `--only` will return `ERROR: target set is empty after filtering.` Therefore, new organ directories must be registered in `TOPOLOGY_MAP.md` or a custom topology file before running `ecosystem_rollout.sh`.

### 3.2 File Synchronization (`sync_one`)
`sync_one()` creates the target directory structure and copies 26 baseline artifacts:
- **Subdirectories Created:** `.gemini`, `devkit`, `contract`, `scripts`, `gov/report`, `tests`, `kingdom/residents`, `kingdom/laws`, `lam_target_task_heal_manager`, `scripts/global`.
- **Files Synchronized:**
  1. `.gemini/GEMINI.md`
  2. `devkit/shell_preflight.sh`
  3. `devkit/shell_preflight_check.py`
  4. `devkit/preflight_baseline_commands_bash.txt`
  5. `devkit/preflight_baseline_commands_powershell.txt`
  6. `contract/TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md`
  7. `scripts/task_spec_validator.py`
  8. `devkit/task_spec_template.yaml`
  9. `gov/report/PHASE_A_T013_MASTER_OWNER_MAP_EVIDENCE_2026-06-07.md`
  10. `contract/PATCH_RUNTIME_CONTRACT_V1.md`
  11. `tests/test_patch_runtime_governance.py`
  12. `devkit/patch.sh`
  13. `devkit/bootstrap.sh`
  14. `contract/MEMORY_CONTRACT_V1.md`
  15. `contract/TRANSPORT_CONTRACT_V1.md`
  16. `contract/FLOW_CONTROL_CONTRACT_V1.md`
  17. `contract/P0_SAFETY_CONTRACT_V1.md`
  18. `contract/RESEARCH_GATE_CONTRACT_V1.md`
  19. `kingdom/residents/AYAS-01_GOVERNOR.md`
  20. `kingdom/residents/RADR-01_BRIDGE.md`
  21. `kingdom/laws/KINGDOM_CONSTITUTION_V1.md`
  22. `lam_target_task_heal_manager/__init__.py`
  23. `lam_target_task_heal_manager/manager.py`
  24. `lam_target_task_heal_manager/cleaner.py`
  25. `scripts/regenerate_target_tasks.sh`
  26. `scripts/global/universal_cli_mcp_installer.sh`

- **Executable Permissions (`chmod +x`):**
  - `devkit/shell_preflight.sh`
  - `devkit/patch.sh`
  - `devkit/bootstrap.sh`
  - `lam_target_task_heal_manager/manager.py`
  - `lam_target_task_heal_manager/cleaner.py`
  - `scripts/regenerate_target_tasks.sh`
  - `scripts/global/universal_cli_mcp_installer.sh`

### 3.3 Preflight Smoke Check (`smoke_one`)
`smoke_one()` executes a non-destructive verification command on each target:
```bash
bash "$target/devkit/shell_preflight.sh" --shell bash --command "printf 'smoke'" >/dev/null
```
If this command exits with returncode 0, the target passes the preflight smoke check.

### 3.4 Git Operations (`git_one`)
If `--commit` or `--push` is set, `git_one()` checks if `$target/.git` exists. If `.git` exists, it stages all synchronized DevKit files and creates a git commit. If `.git` does not exist, it prints `WARN: not a git repository, skipping commit/push`.

---

## 4. Git Initialization Requirements (`git init`)

To enable `devkit/patch.sh` compliance and allow `git_one` in `ecosystem_rollout.sh` to stage and commit DevKit files:
1. Every new organ directory must be initialized as a standalone Git repository using `git init`.
2. Initializing git creates the `.git` directory at `/home/architit/LAM_CORE/LAM_<Name>_Agent/.git`.
3. An initial commit (or staging of `IDENTITY.md` and DevKit files) should be created to establish `HEAD`, which is required for `git rev-parse --short HEAD` in `patch.sh`.

---

## 5. Executable Shell Step Instructions for the Worker

Below is the complete, deterministic sequence of shell commands for the Worker agent to initialize the 9 requested agent workspaces, run `git init`, set up `preflight.sh`, sync DevKit artifacts, and verify compliance.

```bash
#!/usr/bin/env bash
set -euo pipefail

# Define Target Agent Directories
AGENTS=(
  "LAM_Evolution_Agent"
  "LAM_Echo_Agent"
  "LAM_Beta_Agent"
  "LAM_Gamma_Agent"
  "LAM_Alpha_Agent"
  "LAM_Delta_Agent"
  "LAM_Charlie_Agent"
  "LAM_Bravo_Agent"
  "LAM_LittleBig_Agent"
)

BASE_DIR="/home/architit/LAM_CORE"
RADR_DIR="/home/architit/LAM_CORE/RADRILONIUMA"

echo "=== STEP 1: Creating Agent Directories & Running git init ==="
for agent in "${AGENTS[@]}"; do
  target_dir="$BASE_DIR/$agent"
  mkdir -p "$target_dir"
  if [ ! -d "$target_dir/.git" ]; then
    (cd "$target_dir" && git init -q)
    echo "Initialized git repository in $target_dir"
  fi
done

echo "=== STEP 2: Creating Root preflight.sh in Each Agent Directory ==="
for agent in "${AGENTS[@]}"; do
  target_dir="$BASE_DIR/$agent"
  cat <<'EOF' > "$target_dir/preflight.sh"
#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -x "$ROOT_DIR/devkit/shell_preflight.sh" ]]; then
  exec "$ROOT_DIR/devkit/shell_preflight.sh" "$@"
else
  exec python3 "$ROOT_DIR/devkit/shell_preflight_check.py" "$@"
fi
EOF
  chmod +x "$target_dir/preflight.sh"
  echo "Created executable preflight.sh in $target_dir"
done

echo "=== STEP 3: Executing DevKit Synchronization ==="
# Option A: If TOPOLOGY_MAP.md has been updated with the 9 organs:
# bash "$RADR_DIR/devkit/ecosystem_rollout.sh" --only LAM_Evolution_Agent,LAM_Echo_Agent,LAM_Beta_Agent,LAM_Gamma_Agent,LAM_Alpha_Agent,LAM_Delta_Agent,LAM_Charlie_Agent,LAM_Bravo_Agent,LAM_LittleBig_Agent

# Option B: Direct Copy of DevKit Artifacts to all 9 agent repositories:
for agent in "${AGENTS[@]}"; do
  target_dir="$BASE_DIR/$agent"
  mkdir -p "$target_dir/.gemini" "$target_dir/devkit" "$target_dir/contract" "$target_dir/scripts" \
           "$target_dir/gov/report" "$target_dir/tests" "$target_dir/kingdom/residents" \
           "$target_dir/kingdom/laws" "$target_dir/lam_target_task_heal_manager" "$target_dir/scripts/global"

  cp "$RADR_DIR/.gemini/GEMINI.md" "$target_dir/.gemini/GEMINI.md"
  cp "$RADR_DIR/devkit/shell_preflight.sh" "$target_dir/devkit/shell_preflight.sh"
  cp "$RADR_DIR/devkit/shell_preflight_check.py" "$target_dir/devkit/shell_preflight_check.py"
  cp "$RADR_DIR/devkit/preflight_baseline_commands_bash.txt" "$target_dir/devkit/preflight_baseline_commands_bash.txt"
  cp "$RADR_DIR/devkit/preflight_baseline_commands_powershell.txt" "$target_dir/devkit/preflight_baseline_commands_powershell.txt"
  cp "$RADR_DIR/contract/TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md" "$target_dir/contract/TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md"
  cp "$RADR_DIR/scripts/task_spec_validator.py" "$target_dir/scripts/task_spec_validator.py"
  cp "$RADR_DIR/devkit/task_spec_template.yaml" "$target_dir/devkit/task_spec_template.yaml"
  cp "$RADR_DIR/gov/report/PHASE_A_T013_MASTER_OWNER_MAP_EVIDENCE_2026-06-07.md" "$target_dir/gov/report/PHASE_A_T013_MASTER_OWNER_MAP_EVIDENCE_2026-06-07.md"
  cp "$RADR_DIR/contract/PATCH_RUNTIME_CONTRACT_V1.md" "$target_dir/contract/PATCH_RUNTIME_CONTRACT_V1.md"
  cp "$RADR_DIR/tests/test_patch_runtime_governance.py" "$target_dir/tests/test_patch_runtime_governance.py"
  cp "$RADR_DIR/devkit/patch.sh" "$target_dir/devkit/patch.sh"
  cp "$RADR_DIR/devkit/bootstrap.sh" "$target_dir/devkit/bootstrap.sh"
  cp "$RADR_DIR/contract/MEMORY_CONTRACT_V1.md" "$target_dir/contract/MEMORY_CONTRACT_V1.md"
  cp "$RADR_DIR/contract/TRANSPORT_CONTRACT_V1.md" "$target_dir/contract/TRANSPORT_CONTRACT_V1.md"
  cp "$RADR_DIR/contract/FLOW_CONTROL_CONTRACT_V1.md" "$target_dir/contract/FLOW_CONTROL_CONTRACT_V1.md"
  cp "$RADR_DIR/contract/P0_SAFETY_CONTRACT_V1.md" "$target_dir/contract/P0_SAFETY_CONTRACT_V1.md"
  cp "$RADR_DIR/contract/RESEARCH_GATE_CONTRACT_V1.md" "$target_dir/contract/RESEARCH_GATE_CONTRACT_V1.md"
  cp "$RADR_DIR/kingdom/residents/AYAS-01_GOVERNOR.md" "$target_dir/kingdom/residents/AYAS-01_GOVERNOR.md"
  cp "$RADR_DIR/kingdom/residents/RADR-01_BRIDGE.md" "$target_dir/kingdom/residents/RADR-01_BRIDGE.md"
  cp "$RADR_DIR/kingdom/laws/KINGDOM_CONSTITUTION_V1.md" "$target_dir/kingdom/laws/KINGDOM_CONSTITUTION_V1.md"
  cp "$RADR_DIR/lam_target_task_heal_manager/__init__.py" "$target_dir/lam_target_task_heal_manager/__init__.py"
  cp "$RADR_DIR/lam_target_task_heal_manager/manager.py" "$target_dir/lam_target_task_heal_manager/manager.py"
  cp "$RADR_DIR/lam_target_task_heal_manager/cleaner.py" "$target_dir/lam_target_task_heal_manager/cleaner.py"
  cp "$RADR_DIR/scripts/regenerate_target_tasks.sh" "$target_dir/scripts/regenerate_target_tasks.sh"
  cp "$RADR_DIR/scripts/global/universal_cli_mcp_installer.sh" "$target_dir/scripts/global/universal_cli_mcp_installer.sh"

  chmod +x "$target_dir/devkit/shell_preflight.sh" "$target_dir/devkit/patch.sh" "$target_dir/devkit/bootstrap.sh" \
           "$target_dir/lam_target_task_heal_manager/manager.py" "$target_dir/lam_target_task_heal_manager/cleaner.py" \
           "$target_dir/scripts/regenerate_target_tasks.sh" "$target_dir/scripts/global/universal_cli_mcp_installer.sh"
  echo "Synchronized DevKit files to $target_dir"
done

echo "=== STEP 4: Verification Smoke Test ==="
for agent in "${AGENTS[@]}"; do
  target_dir="$BASE_DIR/$agent"
  echo -n "Testing preflight in $agent: "
  bash "$target_dir/preflight.sh" --shell bash --command "printf 'smoke'" >/dev/null && echo "PASS" || echo "FAIL"
done
```

---

## 6. Verification Method

To verify that the DevKit contracts and scripts match ecosystem requirements:
1. **Preflight Execution Verification:**
   Run `bash /home/architit/LAM_CORE/LAM_<Agent>/preflight.sh --shell bash --command "printf 'test'"` for each agent. Expected output: returncode `0`.
2. **Bootstrap Preflight Verification:**
   Run `bash /home/architit/LAM_CORE/LAM_<Agent>/devkit/bootstrap.sh`. Expected output: `[devkit] shell preflight: OK` and `[devkit] bootstrap complete`.
3. **Patch Script Verification:**
   Run `bash /home/architit/LAM_CORE/LAM_<Agent>/devkit/patch.sh --help`. Expected output: Help text displayed with exit code 0.
4. **Git Repository Verification:**
   Run `git -C /home/architit/LAM_CORE/LAM_<Agent> status`. Expected output: Git worktree status reported cleanly without `not a git repository` errors.
5. **Ecosystem Rollout Verification:**
   Run `bash /home/architit/LAM_CORE/RADRILONIUMA/devkit/ecosystem_rollout.sh --dry-run` to verify dry-run scan compatibility across active organs.

---
*DevKit Ecosystem & Preflight Contracts Analysis complete.*  
*Resonance: 432 Hz / 528 Hz Solfeggio Lock*  
⚜️🛡️⚜️
