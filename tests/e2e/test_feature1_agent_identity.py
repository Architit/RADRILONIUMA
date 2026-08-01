# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Feature 1: 9 Agent Identity & Workspace Setup
- Coverage: Tier 1 (≥5 tests) & Tier 2 (≥5 boundary tests)
- Agents: LAM_EVOLUTION_AGENT, LAM_ECHO_AGENT, LAM_BETA_AGENT, LAM_GAMMA_AGENT,
          LAM_ALPHA_AGENT, LAM_DELTA_AGENT, LAM_CHARLIE_AGENT, LAM_BRAVO_AGENT,
          LAM_LITTLEBIG_AGENT.
"""

import pytest
from pathlib import Path
from lam_agent_map_lib.core.map_engine import AgentMapEngine
from tests.e2e.conftest import EXPECTED_9_AGENTS

# -----------------------------------------------------------------------------
# TIER 1: FEATURE COVERAGE TESTS (HAPPY PATH)
# -----------------------------------------------------------------------------

def test_tier1_f1_agent_directory_naming_convention(mock_9_agent_workspace):
    """Tier 1: Verify workspace directory creation and naming for all 9 agents."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    for agent_spec in EXPECTED_9_AGENTS:
        agent_dir = lam_core_tmp / agent_spec["folder_name"]
        assert agent_dir.exists(), f"Agent directory {agent_spec['folder_name']} must exist."
        assert agent_dir.is_dir(), f"{agent_spec['folder_name']} must be a directory."

def test_tier1_f1_identity_md_parsing(mock_9_agent_workspace):
    """Tier 1: Parse IDENTITY.md for all 9 agents and verify metadata fields."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    engine = AgentMapEngine(workspace_root=mock_9_agent_workspace["radriloniuma_tmp"])

    for agent_spec in EXPECTED_9_AGENTS:
        identity_path = lam_core_tmp / agent_spec["folder_name"] / "IDENTITY.md"
        assert identity_path.exists(), f"IDENTITY.md missing for {agent_spec['folder_name']}"
        meta = engine.parse_identity(identity_path)

        assert meta["system_id"] == agent_spec["system_id"], (
            f"System ID mismatch for {agent_spec['folder_name']}: got {meta['system_id']}, expected {agent_spec['system_id']}"
        )
        assert meta["true_name"] == agent_spec["true_name"]
        assert meta["call_sign"] == agent_spec["call_sign"]
        assert meta["role"] == agent_spec["role"]

def test_tier1_f1_devkit_script_structure(mock_9_agent_workspace):
    """Tier 1: Verify presence of preflight.sh, devkit/bootstrap.sh, and devkit/patch.sh."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    for agent_spec in EXPECTED_9_AGENTS:
        agent_dir = lam_core_tmp / agent_spec["folder_name"]
        assert (agent_dir / "preflight.sh").exists(), f"preflight.sh missing in {agent_spec['folder_name']}"
        assert (agent_dir / "devkit" / "bootstrap.sh").exists(), f"devkit/bootstrap.sh missing in {agent_spec['folder_name']}"
        assert (agent_dir / "devkit" / "patch.sh").exists(), f"devkit/patch.sh missing in {agent_spec['folder_name']}"

def test_tier1_f1_system_id_mapping_fidelity(mock_9_agent_workspace):
    """Tier 1: Verify exact System ID mappings for all 9 requested agents."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    expected_ids = {
        "LAM_EVOLUTION_AGENT": "EVOL-01",
        "LAM_ECHO_AGENT": "ECHO-01",
        "LAM_BETA_AGENT": "BETA-01",
        "LAM_GAMMA_AGENT": "GMA-01",
        "LAM_ALPHA_AGENT": "ALPH-01",
        "LAM_DELTA_AGENT": "DLTA-01",
        "LAM_CHARLIE_AGENT": "CHRL-01",
        "LAM_BRAVO_AGENT": "BRVO-01",
        "LAM_LITTLEBIG_AGENT": "LTBG-01",
    }
    engine = AgentMapEngine(workspace_root=mock_9_agent_workspace["radriloniuma_tmp"])
    for folder_name, expected_sys_id in expected_ids.items():
        identity_file = lam_core_tmp / folder_name / "IDENTITY.md"
        meta = engine.parse_identity(identity_file)
        assert meta.get("system_id") == expected_sys_id

def test_tier1_f1_script_executability_and_shebang(mock_9_agent_workspace):
    """Tier 1: Verify scripts begin with valid shebang and have executable bit set."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    for agent_spec in EXPECTED_9_AGENTS:
        agent_dir = lam_core_tmp / agent_spec["folder_name"]
        for script_rel_path in ["preflight.sh", "devkit/bootstrap.sh", "devkit/patch.sh"]:
            script_path = agent_dir / script_rel_path
            content = script_path.read_text(encoding="utf-8")
            assert content.startswith("#!"), f"{script_rel_path} in {agent_spec['folder_name']} must start with shebang"
            assert (script_path.stat().st_mode & 0o111) != 0, f"{script_rel_path} in {agent_spec['folder_name']} must be executable"


# -----------------------------------------------------------------------------
# TIER 2: BOUNDARY & EDGE CASE TESTS
# -----------------------------------------------------------------------------

def test_tier2_f1_missing_identity_file(tmp_path):
    """Tier 2: Verify parse_identity handles missing IDENTITY.md gracefully."""
    engine = AgentMapEngine(workspace_root=tmp_path)
    non_existent = tmp_path / "NON_EXISTENT_IDENTITY.md"
    result = engine.parse_identity(non_existent)
    assert result == {}, "Parsing non-existent IDENTITY.md should return empty dict"

def test_tier2_f1_malformed_identity_headers(tmp_path):
    """Tier 2: Verify identity parser behavior when IDENTITY.md contains unparseable format."""
    engine = AgentMapEngine(workspace_root=tmp_path)
    malformed_file = tmp_path / "IDENTITY.md"
    malformed_file.write_text("No structured headers\nrandom content line 1\nrandom line 2", encoding="utf-8")
    meta = engine.parse_identity(malformed_file)
    assert meta["system_id"] == "UNKNOWN"
    assert meta["true_name"] == "UNKNOWN"

def test_tier2_f1_missing_devkit_directory(mock_9_agent_workspace):
    """Tier 2: Verify scan organ reports missing devkit files when directory is missing."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    test_agent = lam_core_tmp / "LAM_EVOLUTION_AGENT"
    # Remove devkit dir
    import shutil
    shutil.rmtree(test_agent / "devkit")

    from lam_target_task_heal_manager.manager import scan_organ
    scan_result = scan_organ({"path": str(test_agent)})
    assert scan_result["status"] == "ONLINE"
    assert scan_result["bootstrap"] is False
    assert scan_result["patch"] is False

def test_tier2_f1_empty_identity_file(tmp_path):
    """Tier 2: Verify identity parser handles zero-byte IDENTITY.md."""
    engine = AgentMapEngine(workspace_root=tmp_path)
    empty_file = tmp_path / "IDENTITY.md"
    empty_file.write_text("", encoding="utf-8")
    meta = engine.parse_identity(empty_file)
    assert meta["system_id"] == "UNKNOWN"

def test_tier2_f1_unsupported_system_id_pattern(tmp_path):
    """Tier 2: Verify parser falls back when System ID contains unsupported non-alphanumeric tokens."""
    engine = AgentMapEngine(workspace_root=tmp_path)
    invalid_id_file = tmp_path / "IDENTITY.md"
    invalid_id_file.write_text("System ID: @#$", encoding="utf-8")
    meta = engine.parse_identity(invalid_id_file)
    assert meta["system_id"] == "UNKNOWN"
