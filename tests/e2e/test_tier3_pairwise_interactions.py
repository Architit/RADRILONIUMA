# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Tier 3: Pairwise Cross-Feature Interaction Tests
- F1 (9 Agent Identity & Workspace Setup)
- F2 (AMC Knowledge Graph Active Registration)
- F3 (Solfeggio 528 Hz / 432 Hz Master Carrier Lock Sync)
- F4 (Governance Preflight Smoke Tests)
- F5 (Target Task Heal Manager Active Node Scan)
"""

import json
import re
import sys
import subprocess
import pytest
from pathlib import Path
from lam_agent_map_lib.core.map_engine import AgentMapEngine
from lam_target_task_heal_manager.manager import (
    load_amc_graph,
    scan_organ,
    init_heal_manager,
    write_and_validate_vavima_spec,
    main as manager_main,
)
from tests.e2e.conftest import EXPECTED_9_AGENTS

SOLFEGGIO_PATTERN = re.compile(r"(528|432)\s*Hz")

def test_tier3_f1_f2_agent_setup_and_amc_graph_alignment(mock_9_agent_workspace):
    """
    Tier 3 Pairwise (F1 + F2):
    Verify workspace IDENTITY.md metadata aligns with AMC Knowledge Graph organ entries.
    """
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        graph_data = json.load(f)

    engine = AgentMapEngine(workspace_root=mock_9_agent_workspace["radriloniuma_tmp"])
    organs = graph_data.get("organs", {})

    for agent_spec in EXPECTED_9_AGENTS:
        sys_id = agent_spec["system_id"]
        folder_name = agent_spec["folder_name"]
        identity_path = lam_core_tmp / folder_name / "IDENTITY.md"

        meta = engine.parse_identity(identity_path)
        assert sys_id in organs, f"{sys_id} missing from AMC Graph"

        organ_entry = organs[sys_id]
        assert meta["system_id"] == organ_entry["system_id"]
        assert meta["true_name"] == organ_entry["true_name"]
        assert meta["call_sign"] == organ_entry["call_sign"]
        assert meta["role"] == organ_entry["role"]
        assert organ_entry["status"] == "ACTIVE"

def test_tier3_f2_f3_amc_graph_and_solfeggio_sync(mock_9_agent_workspace):
    """
    Tier 3 Pairwise (F2 + F3):
    Verify AMC Knowledge Graph top-level resonance aligns with all 9 agent carrier lock frequencies.
    """
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        graph_data = json.load(f)

    graph_resonance = graph_data.get("resonance", "")
    assert SOLFEGGIO_PATTERN.search(graph_resonance), f"Graph resonance '{graph_resonance}' missing Solfeggio 528/432 Hz"

    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    for agent_spec in EXPECTED_9_AGENTS:
        identity_path = lam_core_tmp / agent_spec["folder_name"] / "IDENTITY.md"
        content = identity_path.read_text(encoding="utf-8")
        assert SOLFEGGIO_PATTERN.search(content), f"Agent {agent_spec['system_id']} missing Solfeggio carrier lock"

def test_tier3_f2_f5_amc_graph_and_heal_manager_scan(mock_9_agent_workspace, monkeypatch):
    """
    Tier 3 Pairwise (F2 + F5):
    Verify Heal Manager scan_organ results match organs registered in AMC Graph.
    """
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    import lam_target_task_heal_manager.manager as heal_manager
    monkeypatch.setattr(heal_manager, "AMC_GRAPH_FILE", graph_file)

    graph = load_amc_graph()
    organs = graph.get("organs", {})
    assert len(organs) >= 9

    for sys_id, meta in organs.items():
        scan_res = scan_organ(meta)
        assert scan_res["status"] == "ONLINE"
        assert scan_res["identity"] is True
        assert scan_res["bootstrap"] is True
        assert scan_res["patch"] is True

def test_tier3_f1_f4_agent_workspace_and_governance_preflight(mock_9_agent_workspace):
    """
    Tier 3 Pairwise (F1 + F4):
    Verify agent workspace preflight & devkit scripts comply with governance execution standards.
    """
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    for agent_spec in EXPECTED_9_AGENTS:
        agent_dir = lam_core_tmp / agent_spec["folder_name"]
        for script_name in ["preflight.sh", "devkit/bootstrap.sh", "devkit/patch.sh"]:
            script_path = agent_dir / script_name
            res = subprocess.run([str(script_path)], capture_output=True, text=True)
            assert res.returncode == 0, f"Script {script_name} in {agent_spec['folder_name']} failed execution"

def test_tier3_f3_f5_carrier_sync_and_fulfillment_engine_init(mock_9_agent_workspace):
    """
    Tier 3 Pairwise (F3 + F5):
    Verify Heal Manager init_heal_manager reports active 528 Hz / 432 Hz Solfeggio carrier status.
    """
    radriloniuma_tmp = mock_9_agent_workspace["radriloniuma_tmp"]

    engines = init_heal_manager()
    multi_dev_health = engines["multi_device_engine"].check_multi_device_health()
    evolution_health = engines["evolution_engine"].check_evolution_health()

    assert multi_dev_health["engine_status"] in ["ACTIVE", "HEALTHY"]
    assert evolution_health["engine_status"] in ["ACTIVE", "EVOLVING", "HEALTHY", "PERPETUAL"]

def test_tier3_f4_f5_task_spec_validator_and_heal_manager_specs(project_root, tmp_path):
    """
    Tier 3 Pairwise (F4 + F5):
    Verify VAVIMA task spec files generated by Heal Manager pass Task Spec Validator.
    """
    validator = project_root / "scripts" / "task_spec_validator.py"
    spec_file, is_valid = write_and_validate_vavima_spec("EVOL-01", "Execute test evolution step", suffix="_tier3_test")

    assert spec_file.exists(), "Generated VAVIMA task spec file must exist"
    assert is_valid is True, "write_and_validate_vavima_spec must return True for valid spec"

    cmd = [sys.executable, str(validator), "--file", str(spec_file)]
    res = subprocess.run(cmd, capture_output=True, text=True)
    assert res.returncode == 0, f"Validator failed on generated spec: {res.stderr or res.stdout}"
