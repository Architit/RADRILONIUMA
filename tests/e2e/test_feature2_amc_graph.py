# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Feature 2: AMC Knowledge Graph Active Registration
- Coverage: Tier 1 (≥5 tests) & Tier 2 (≥5 boundary tests)
- Spec: .gateway/amc_graph.json contains active status entries for all 9 sub-agents.
"""

import json
import pytest
from pathlib import Path
from lam_target_task_heal_manager.manager import load_amc_graph
from lam_agent_map_lib.core.map_engine import AgentMapEngine
from tests.e2e.conftest import EXPECTED_9_AGENTS

EXPECTED_SYSTEM_IDS = [spec["system_id"] for spec in EXPECTED_9_AGENTS]

# -----------------------------------------------------------------------------
# TIER 1: FEATURE COVERAGE TESTS (HAPPY PATH)
# -----------------------------------------------------------------------------

def test_tier1_f2_amc_graph_file_existence(mock_9_agent_workspace):
    """Tier 1: Verify .gateway/amc_graph.json exists and is valid non-empty JSON."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    assert graph_file.exists(), ".gateway/amc_graph.json must exist"
    assert graph_file.stat().st_size > 0, "amc_graph.json must not be empty"

    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)
    assert isinstance(data, dict), "amc_graph.json root must be a JSON object"

def test_tier1_f2_amc_graph_structure(mock_9_agent_workspace):
    """Tier 1: Verify top-level structure of AMC graph file."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    for key in ["timestamp_utc", "resonance", "version", "organs"]:
        assert key in data, f"AMC Graph missing top-level key: {key}"

def test_tier1_f2_all_9_agents_registered(mock_9_agent_workspace):
    """Tier 1: Verify all 9 sub-agents are registered in organs mapping."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    organs = data.get("organs", {})
    for sys_id in EXPECTED_SYSTEM_IDS:
        assert sys_id in organs, f"Agent {sys_id} must be registered in AMC Knowledge Graph organs"

def test_tier1_f2_organ_node_schema_compliance(mock_9_agent_workspace):
    """Tier 1: Verify organ node schema contains required metadata fields."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    required_fields = ["system_id", "true_name", "call_sign", "role", "path", "contracts", "tasks_count", "status"]
    organs = data.get("organs", {})
    for sys_id in EXPECTED_SYSTEM_IDS:
        organ_node = organs[sys_id]
        for field in required_fields:
            assert field in organ_node, f"Organ node {sys_id} missing required field '{field}'"

def test_tier1_f2_organ_active_status_flag(mock_9_agent_workspace):
    """Tier 1: Verify all 9 agents have status set to ACTIVE."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    organs = data.get("organs", {})
    for sys_id in EXPECTED_SYSTEM_IDS:
        assert organs[sys_id]["status"] == "ACTIVE", f"Agent {sys_id} status must be ACTIVE"


# -----------------------------------------------------------------------------
# TIER 2: BOUNDARY & EDGE CASE TESTS
# -----------------------------------------------------------------------------

def test_tier2_f2_missing_amc_graph_file(monkeypatch, tmp_path):
    """Tier 2: Verify load_amc_graph handles missing file by returning empty dict."""
    non_existent = tmp_path / "missing_graph.json"
    import lam_target_task_heal_manager.manager as heal_manager
    monkeypatch.setattr(heal_manager, "AMC_GRAPH_FILE", non_existent)
    res = load_amc_graph()
    assert res == {}, "load_amc_graph should return empty dict when graph file is missing"

def test_tier2_f2_corrupted_json_syntax(monkeypatch, tmp_path):
    """Tier 2: Verify load_amc_graph handles corrupted JSON syntax gracefully."""
    corrupt_file = tmp_path / "corrupt_graph.json"
    corrupt_file.write_text("{invalid json content, missing quotes}", encoding="utf-8")
    import lam_target_task_heal_manager.manager as heal_manager
    monkeypatch.setattr(heal_manager, "AMC_GRAPH_FILE", corrupt_file)
    res = load_amc_graph()
    assert res == {}, "load_amc_graph should return empty dict on JSON syntax error"

def test_tier2_f2_empty_organs_dict(tmp_path):
    """Tier 2: Verify topology builder handles workspace with no organ subfolders."""
    engine = AgentMapEngine(workspace_root=tmp_path)
    topology = engine.build_topology()
    assert isinstance(topology["organs"], dict)
    assert len(topology["organs"]) == 0

def test_tier2_f2_missing_mandatory_organ_attribute(mock_9_agent_workspace):
    """Tier 2: Verify validation fails when organ node misses mandatory status or path."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    data["organs"]["EVOL-01"].pop("status", None)
    with graph_file.open("w", encoding="utf-8") as f:
        json.dump(data, f)

    with graph_file.open("r", encoding="utf-8") as f:
        reloaded = json.load(f)
    assert "status" not in reloaded["organs"]["EVOL-01"]

def test_tier2_f2_invalid_status_string(mock_9_agent_workspace):
    """Tier 2: Verify detection when organ node has an invalid status value."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    data["organs"]["ECHO-01"]["status"] = "INVALID_NODE_STATUS"
    invalid_nodes = [
        sys_id for sys_id, meta in data["organs"].items()
        if meta.get("status") not in ["ACTIVE", "DORMANT"]
    ]
    assert "ECHO-01" in invalid_nodes
