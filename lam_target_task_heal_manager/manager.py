#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Sovereign Target Task & Heal Manager (lam_target_task_heal_manager)
Dynamically scans ecosystem organs, queue status, and git state to
regenerate a comprehensive targets, missions, and healing walkthrough list.
"""

import json
import os
import subprocess
from pathlib import Path
from datetime import datetime, timezone

# Root Path
BASE_DIR = Path(__file__).resolve().parents[1]
AMC_GRAPH_FILE = BASE_DIR / ".gateway" / "amc_graph.json"
QUEUE_FILE = BASE_DIR / ".gateway" / "queue.json"
TARGET_TASKS_FILE = BASE_DIR / "lam_target_task_heal_manager" / "TARGET_TASKS.md"

def load_amc_graph():
    if not AMC_GRAPH_FILE.exists():
        return {}
    try:
        with AMC_GRAPH_FILE.open("r", encoding="utf-8") as f:
            return json.load(f)
    except Exception as e:
        print(f"[HEAL_MANAGER] Error loading AMC Graph: {e}")
        return {}

def load_queue():
    if not QUEUE_FILE.exists():
        return {"items": []}
    try:
        with QUEUE_FILE.open("r", encoding="utf-8") as f:
            return json.load(f)
    except Exception as e:
        print(f"[HEAL_MANAGER] Error loading Queue: {e}")
        return {"items": []}

def get_git_status():
    try:
        res = subprocess.run(["git", "status", "-sb"], cwd=str(BASE_DIR), capture_output=True, text=True, check=True)
        return res.stdout.strip()
    except Exception as e:
        return f"Unknown ({e})"

def scan_organ(meta):
    path_str = meta.get("path")
    if not path_str:
        return {"status": "MISSING_PATH", "identity": False, "patch": False, "bootstrap": False}
    
    path = Path(path_str)
    if not path.exists():
        return {"status": "OFFLINE", "identity": False, "patch": False, "bootstrap": False}
        
    identity_file = path / "IDENTITY.md"
    patch_file = path / "devkit" / "patch.sh"
    bootstrap_file = path / "devkit" / "bootstrap.sh"
    
    return {
        "status": "ONLINE",
        "identity": identity_file.exists(),
        "patch": patch_file.exists(),
        "bootstrap": bootstrap_file.exists(),
        "path": path
    }

BASELINE_TASKS = {
    "AYAS-01": "Verify SSH/GCR credentials mapping and run preflight check.",
    "LRPT-01": "Audit local devkit version and environment baseline.",
    "VLRM-01": "Generate updated ecosystem topology map.",
    "CRTD-01": "Run core health and verify system state sync.",
    "TSPT-01": "Clean up old task specification cache.",
    "FMLN-01": "Verify system transition state constraints.",
    "GLKT-01": "Verify logger formatting and telemetry stream.",
    "JNSR-01": "Record the current Phase 11.4 session log entry.",
    "KTRD-01": "Run tool preflight baseline sweeps.",
    "LVNS-01": "Verify task queue lease TTL and timeouts.",
    "MLVD-01": "Audit package imports for cognitive scripts.",
    "XNVR-01": "Verify AMC graph consistency and links.",
    "PLTS-01": "Verify compliance with interaction protocol.",
    "SRZJ-01": "Verify zero-trust check constraints on ingress.",
    "VRBN-01": "Audit timestamp-utc formatting across files.",
    "VRLS-01": "Verify active target lists in rollout tools.",
    "ZRDG-01": "Verify matrix routing assignments.",
    "RBTK-01": "Run genesis validation test suite.",
    "CDKS-01": "Run Codex self-refinement checks.",
    "RDTR-01": "Audit LLM routing provider endpoints.",
    "LAM-01": "Verify primary mind core is online.",
    "ARKS-01": "Secure database backup integrity.",
    "TRNM-01": "Audit kingdom constitution compliance.",
    "ALGS-01": "Run global log de-duplication sweep.",
}

COMPLIANCE_ORDER = [
    "AYAS-01",
    "LRPT-01",
    "VLRM-01",
    "CRTD-01",
    "TSPT-01",
    "FMLN-01",
    "GLKT-01",
    "JNSR-01",
    "KTRD-01",
    "LVNS-01",
    "MLVD-01",
    "XNVR-01",
    "PLTS-01",
    "SRZJ-01",
    "VRBN-01",
    "VRLS-01",
    "ZRDG-01",
    "RBTK-01",
    "CDKS-01",
    "RDTR-01",
    "LAM-01",
    "ARKS-01",
    "TRNM-01",
    "ALGS-01",
]

def write_and_validate_vavima_spec(sys_id, task_desc):
    """Generates a VAVIMA-compliant task spec YAML file and validates it."""
    spec_dir = BASE_DIR / "lam_target_task_heal_manager" / "specs"
    spec_dir.mkdir(parents=True, exist_ok=True)
    spec_file = spec_dir / f"task_spec_{sys_id.lower()}.yaml"
    
    patch_name = f"devkit/patches/{sys_id.lower()}_compliance.patch"
    patch_sha = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    
    # Write VAVIMA compliance spec
    yaml_content = f"""spec_version: "1.1"
task_id: "apc_{sys_id.lower().replace('-', '_')}_compliance"
goal: "Execute VAVIMA compliance task for {sys_id}: {task_desc}"
constraints:
  derivation_only: true
  code_injection_forbidden: true
preconditions:
  - type: file_exists
    path: "./devkit/patch.sh"
artifacts:
  patch_path: "{patch_name}"
  patch_sha256: "{patch_sha}"
limits:
  timeout_ms: 30000
  max_output_tokens: 2048
expected_result:
  status: success
  changed_files_max: 5
"""
    spec_file.write_text(yaml_content, encoding="utf-8")
    
    validator_script = BASE_DIR / "scripts" / "task_spec_validator.py"
    if validator_script.exists():
        import sys
        res = subprocess.run([sys.executable, str(validator_script), "--file", str(spec_file)], capture_output=True, text=True)
        if res.returncode != 0:
            print(f"[HEAL_MANAGER] Warning: Spec validation failed for {sys_id}: {res.stdout.strip() or res.stderr.strip()}")
            return spec_file, False
        return spec_file, True
    return spec_file, False

def get_dynamic_organ_task(sys_id, queue_items):
    """Determines the task description based on previous runs to prevent repetition."""
    base_id = sys_id.split("-")[0]
    past_runs = []
    for t in queue_items:
        owner = t.get("payload", {}).get("owner", "")
        if owner and (owner == sys_id or owner == base_id or owner.split("-")[0] == base_id):
            past_runs.append(t)
            
    completed_runs = [t for t in past_runs if t.get("status") == "done"]
    failed_runs = [t for t in past_runs if t.get("status") == "error"]
    pending_runs = [t for t in past_runs if t.get("status") == "pending"]

    # Base task
    base_task = BASELINE_TASKS.get(sys_id, "Perform standard system validation.")
    
    # 1. Double Attention Check: If it failed recently or is duplicated pending
    if failed_runs:
        latest_fail = failed_runs[-1]
        err_msg = latest_fail.get("error_msg", "unknown error").replace("\n", " ")
        desc = f"🚨 [DOUBLE ATTENTION Required] Fix execution bug. Previous error: `{err_msg}`. Task: {base_task}"
        spec_file, ok = write_and_validate_vavima_spec(sys_id, desc)
        return desc, spec_file, "double_attention"
    
    if len(pending_runs) > 1:
        desc = f"🚨 [DOUBLE ATTENTION Required] Repeated pending tasks detected in queue. Clean queue or check runner. Task: {base_task}"
        spec_file, ok = write_and_validate_vavima_spec(sys_id, desc)
        return desc, spec_file, "double_attention"

    # 2. Prevent repetition: If baseline is already done, generate a NEW advanced step
    num_completed = len(completed_runs)
    if num_completed > 0:
        if num_completed == 1:
            desc = f"Step 2: Verify post-execution telemetry and check for stability after initial baseline for {sys_id}."
        elif num_completed == 2:
            desc = f"Step 3: Run comprehensive resource and memory performance audit for {sys_id}."
        else:
            desc = f"Step {num_completed + 1}: Perform advanced deep-dive safety and boundary verification for {sys_id}."
        spec_file, ok = write_and_validate_vavima_spec(sys_id, desc)
        return desc, spec_file, "new_step"

    # 3. Standard baseline
    spec_file, ok = write_and_validate_vavima_spec(sys_id, base_task)
    return base_task, spec_file, "baseline"

def main():
    print("[HEAL_MANAGER] Initiating target task scan...")
    graph = load_amc_graph()
    queue = load_queue()
    git_status = get_git_status()
    
    organs = graph.get("organs", {})
    online_count = 0
    offline_count = 0
    missing_bootstrap = []
    missing_identity = []
    missing_patch = []
    
    organ_rows = []
    for sys_id, meta in sorted(organs.items()):
        scan = scan_organ(meta)
        if scan["status"] == "ONLINE":
            online_count += 1
            if not scan["bootstrap"]:
                missing_bootstrap.append((sys_id, scan["path"]))
            if not scan["identity"]:
                missing_identity.append((sys_id, scan["path"]))
            if not scan["patch"]:
                missing_patch.append((sys_id, scan["path"]))
        else:
            offline_count += 1
            
        status_icon = "🟢 ONLINE" if scan["status"] == "ONLINE" else "🔴 OFFLINE"
        ident_icon = "✅ YES" if scan["identity"] else "❌ NO"
        patch_icon = "✅ YES" if scan["patch"] else "❌ NO"
        boot_icon = "✅ YES" if scan["bootstrap"] else "⚠️ MISSING"
        
        organ_rows.append(
            f"| **{sys_id}** | {meta.get('role', 'UNKNOWN')} | {status_icon} | {ident_icon} | {patch_icon} | {boot_icon} |"
        )
        
    # Analyze Queue for healing opportunities
    queue_items = queue.get("items", [])
    failed_tasks = [item for item in queue_items if item.get("status") == "error"]
    pending_tasks = [item for item in queue_items if item.get("status") == "pending"]
    
    # Generate content
    content = []
    content.append("# ⚜️ SOVEREIGN FOREST: TARGETS & MISSIONS MATRIX ⚜️")
    content.append(f"\n*Generated at (UTC): {datetime.now(timezone.utc).strftime('%Y-%m-%dT%H:%M:%SZ')}*")
    
    content.append("\n> [!NOTE]\n> This matrix is dynamically managed by `lam_target_task_heal_manager` to scan the active state of the Sovereign Forest organs and suggest tasks, campaigns, and healing walkthroughs.")
    
    content.append("\n## I. ACTIVE CAMPAIGN STATUS")
    content.append("- **Current Phase:** `PHASE_11_AUTONOMOUS_INTEGRATION`")
    content.append("- **Current Stage:** `IC_PHASE_11.4_PROJECT_LIFECYCLE` (Cross-organ project orchestration)")
    content.append("- **Resonance Target:** `432 Hz` (Pure)")
    
    content.append("\n## II. SYSTEM HEALING MISSIONS (AUTO-GENERATED)")
    
    healing_needed = False
    
    # 1. Failed Queue Tasks
    if failed_tasks:
        healing_needed = True
        content.append("\n### 🚨 FAILED QUEUE TASKS (HEALING REQUIRED)")
        content.append("The following queue tasks have encountered errors and require remediation:")
        for task in failed_tasks:
            content.append(f"- **Task ID:** `{task['id']}`")
            content.append(f"  - **Owner Organ:** `{task['payload'].get('owner')}`")
            content.append(f"  - **Intent:** `{task['payload'].get('intent')}`")
            content.append(f"  - **Error Msg:** `{task.get('error_msg')}`")
            content.append("  - **Recommended Action:** Check the organ's error logs, verify task payload arguments (e.g. hash or file parameters), resolve the issue, and rerun/re-enqueue the task.")
            
    # 2. Missing DevKit bootstraps/patches
    if missing_bootstrap or missing_patch:
        healing_needed = True
        content.append("\n### ⚠️ DEV_KIT HEALING MISSIONS")
        content.append("The following organs are missing essential DevKit scripts:")
        for sys_id, path in missing_bootstrap:
            content.append(f"- [ ] **{sys_id}**: Missing `devkit/bootstrap.sh` in [{sys_id} workspace](file://{path})")
        for sys_id, path in missing_patch:
            content.append(f"- [ ] **{sys_id}**: Missing `devkit/patch.sh` in [{sys_id} workspace](file://{path})")
            
    # 3. Missing Identity documents
    if missing_identity:
        healing_needed = True
        content.append("\n### ⚠️ IDENTITY HEALING MISSIONS")
        content.append("The following organs do not have an `IDENTITY.md` file:")
        for sys_id, path in missing_identity:
            content.append(f"- [ ] **{sys_id}**: Create `IDENTITY.md` in [{sys_id} workspace](file://{path})")
            
    if not healing_needed:
        content.append("\n> [!TIP]\n> 🟢 **No healing actions required.** All active organs are online and their local DevKit configurations are complete.")
 
    content.append("\n## III. CURRENT CAMPAIGN WALKTHROUGH & SUGGESTED TASKS")
    content.append("Here is the list of suggested tasks to advance the current campaign:")
    content.append("- [ ] **Task 1: Verify Telemetry Heartbeat**")
    content.append("  - Check `/home/architit/LAM_CORE/RADRILONIUMA/.gateway/telemetry_events.jsonl` to ensure the system is emitting pulses.")
    content.append("- [ ] **Task 2: Clear Failed Queue Tasks**")
    content.append("  - Run diagnostics on any failed queue items and clear or re-enqueue them.")
    content.append("- [ ] **Task 3: Perform Dry-Run Rollout**")
    content.append("  - Run `bash devkit/ecosystem_rollout.sh --dry-run` to verify dry-run patch propagation.")
    content.append("- [ ] **Task 4: Run Governance Test Suite**")
    content.append("  - Run `bash scripts/test_entrypoint.sh --governance` to verify 100% compliance.")
 
    content.append("\n## III.B SOVEREIGN FOREST: 24 TARGET ORGAN TASKS (MINIMAL COMPLIANCE)")
    content.append("These 24 tasks are dynamically generated to ensure active vital status (heartbeat/breath) across the 24 primary MCP server and organ nodes:")
    
    idx = 1
    for sys_id in COMPLIANCE_ORDER:
        desc, spec_file, task_type = get_dynamic_organ_task(sys_id, queue_items)
        spec_link = f"[VAVIMA Spec](file://{spec_file.absolute()})"
        content.append(f"- [ ] **Task {idx:02d} ({sys_id}):** {spec_link} — {desc}")
        idx += 1

    content.append("\n## IV. SOVEREIGN FOREST ORGAN STATES")
    content.append(f"Currently tracking **{len(organs)}** organs (**{online_count}** Online, **{offline_count}** Offline/External):")
    content.append("\n| Organ System ID | Role | Status | Identity.md | devkit/patch.sh | devkit/bootstrap.sh |")
    content.append("| :--- | :--- | :--- | :---: | :---: | :---: |")
    for row in organ_rows:
        content.append(row)
        
    content.append("\n## V. GIT STATE & WORKSPACE COMPLIANCE")
    content.append(f"```bash\n{git_status}\n```")
    
    # Save the file
    TARGET_TASKS_FILE.parent.mkdir(parents=True, exist_ok=True)
    with TARGET_TASKS_FILE.open("w", encoding="utf-8") as f:
        f.write("\n".join(content) + "\n")
        
    print(f"[HEAL_MANAGER] Targets and missions matrix successfully regenerated at: {TARGET_TASKS_FILE}")

if __name__ == "__main__":
    main()
