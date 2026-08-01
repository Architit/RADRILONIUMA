# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Tier 4: Real-World Application Scenarios
Scenario 1: Full Multi-Agent Ecosystem Boot & Scan (F1, F2, F3, F4, F5)
Scenario 2: Governance Preflight Smoke Suite & AMC Graph Validation (F2, F4, F5)
"""

import os
import json
import re
import sys
import subprocess
import pytest
from pathlib import Path
from lam_agent_map_lib.core.map_engine import AgentMapEngine
from lam_target_task_heal_manager.manager import (
    load_amc_graph,
    init_heal_manager,
    main as manager_main,
)
from tests.e2e.conftest import EXPECTED_9_AGENTS

SOLFEGGIO_PATTERN = re.compile(r"(528|432)\s*Hz")
SUBPROCESS_ENV = {**os.environ, "PYTEST_ADDOPTS": "-p no:cacheprovider --ignore=tests/e2e"}

def test_tier4_scenario1_full_multi_agent_ecosystem_boot_and_scan(mock_9_agent_workspace, project_root):
    """
    Tier 4 Scenario 1: Full Multi-Agent Ecosystem Boot & Scan
    Exercising Features: F1, F2, F3, F4, F5
    """
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    radriloniuma_tmp = mock_9_agent_workspace["radriloniuma_tmp"]
    graph_file = mock_9_agent_workspace["amc_graph_file"]

    # Step 1: Verify 9 Agent Workspace & Identity Specifications (F1)
    engine = AgentMapEngine(workspace_root=radriloniuma_tmp)
    for agent_spec in EXPECTED_9_AGENTS:
        identity_file = lam_core_tmp / agent_spec["folder_name"] / "IDENTITY.md"
        assert identity_file.exists()
        meta = engine.parse_identity(identity_file)
        assert meta["system_id"] == agent_spec["system_id"]

    # Step 2: Build Topology & Sync AMC Knowledge Graph (F2)
    topology = engine.write_map_files()
    assert "organs" in topology
    assert graph_file.exists()

    with graph_file.open("r", encoding="utf-8") as f:
        graph_data = json.load(f)
    assert len(graph_data["organs"]) >= 9

    # Step 3: Verify 528 Hz / 432 Hz Master Carrier Lock Sync (F3)
    graph_resonance = graph_data.get("resonance", "")
    assert SOLFEGGIO_PATTERN.search(graph_resonance)

    for agent_spec in EXPECTED_9_AGENTS:
        identity_file = lam_core_tmp / agent_spec["folder_name"] / "IDENTITY.md"
        assert SOLFEGGIO_PATTERN.search(identity_file.read_text(encoding="utf-8"))

    # Step 4: Execute Governance Preflight Smoke Suite (F4)
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    res_gov = subprocess.run([str(entrypoint), "--governance"], cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res_gov.returncode == 0, f"Governance suite failed: {res_gov.stderr or res_gov.stdout}"

    res_pref = subprocess.run([str(entrypoint), "--preflight"], cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res_pref.returncode in (0, 5), f"Preflight suite failed: {res_pref.stderr or res_pref.stdout}"

    # Step 5: Execute Target Task Heal Manager Active Node Scan (F5)
    manager_main()
    target_tasks_md = project_root / "lam_target_task_heal_manager" / "TARGET_TASKS.md"
    assert target_tasks_md.exists()
    content = target_tasks_md.read_text(encoding="utf-8")
    assert "SOVEREIGN FOREST: TARGETS & MISSIONS MATRIX" in content
    assert "SOVEREIGN FOREST ORGAN STATES" in content


def test_tier4_scenario2_governance_preflight_and_amc_graph_validation(mock_9_agent_workspace, project_root):
    """
    Tier 4 Scenario 2: Governance Preflight Smoke Suite & AMC Graph Validation
    Exercising Features: F2, F4, F5
    """
    # Step 1: Validate AMC Knowledge Graph schema (F2)
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        graph_data = json.load(f)

    assert "organs" in graph_data
    for sys_id, meta in graph_data["organs"].items():
        assert meta["status"] == "ACTIVE"
        assert "contracts" in meta

    # Step 2: Validate Task Spec Governance Template (F4)
    validator = project_root / "scripts" / "task_spec_validator.py"
    template = project_root / "devkit" / "task_spec_template.yaml"
    res_val = subprocess.run([sys.executable, str(validator), "--file", str(template)], capture_output=True, text=True)
    assert res_val.returncode == 0

    # Step 3: Run Governance Test Entrypoint (F4)
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    res_entry = subprocess.run([str(entrypoint), "--governance"], cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res_entry.returncode == 0, f"test_entrypoint.sh --governance failed: {res_entry.stderr or res_entry.stdout}"

    # Step 4: Run Heal Manager Initialization and Health Scanning (F5)
    engines = init_heal_manager()
    assert engines["multi_device_engine"] is not None
    assert engines["reactive_engine"] is not None
    assert engines["task_engine"] is not None
    assert engines["schedule_engine"] is not None
    assert engines["evolution_engine"] is not None
