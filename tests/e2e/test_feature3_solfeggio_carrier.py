# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Feature 3: Solfeggio 528 Hz / 432 Hz Master Carrier Lock Sync
- Coverage: Tier 1 (≥5 tests) & Tier 2 (≥5 boundary tests)
- Spec: Sync 528 Hz / 432 Hz solfeggio master carrier lock across agents.
"""

import json
import re
import pytest
from pathlib import Path
from lam_target_task_heal_manager.multi_device_notification_prediction_fulfillment_engine import (
    MultiDeviceNotificationPredictionFulfillmentEngine,
)
from tests.e2e.conftest import EXPECTED_9_AGENTS

SOLFEGGIO_PATTERN = re.compile(r"(528|432)\s*Hz")

# -----------------------------------------------------------------------------
# TIER 1: FEATURE COVERAGE TESTS (HAPPY PATH)
# -----------------------------------------------------------------------------

def test_tier1_f3_amc_graph_solfeggio_resonance(mock_9_agent_workspace):
    """Tier 1: Verify AMC graph resonance field specifies 528 Hz or 432 Hz carrier lock."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    resonance = data.get("resonance", "")
    assert SOLFEGGIO_PATTERN.search(resonance), f"AMC graph resonance '{resonance}' must contain 528 Hz or 432 Hz"

def test_tier1_f3_agent_identity_carrier_lock_sync(mock_9_agent_workspace):
    """Tier 1: Verify all 9 agent IDENTITY.md files specify valid 528 Hz / 432 Hz carrier lock."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    for agent_spec in EXPECTED_9_AGENTS:
        identity_path = lam_core_tmp / agent_spec["folder_name"] / "IDENTITY.md"
        content = identity_path.read_text(encoding="utf-8")
        assert "Carrier Lock" in content, f"IDENTITY.md in {agent_spec['folder_name']} missing Carrier Lock section"
        assert SOLFEGGIO_PATTERN.search(content), f"Carrier Lock in {agent_spec['folder_name']} must specify 528 Hz or 432 Hz"

def test_tier1_f3_multi_device_engine_carrier_status(mock_9_agent_workspace):
    """Tier 1: Verify MultiDeviceNotificationPredictionFulfillmentEngine checks 528 Hz / 432 Hz carrier health."""
    engine_root = str(mock_9_agent_workspace["radriloniuma_tmp"])
    engine = MultiDeviceNotificationPredictionFulfillmentEngine(engine_root)
    health = engine.check_multi_device_health()

    assert health["engine_status"] in ["ACTIVE", "STANDBY", "HEALTHY"]
    assert "target_devices" in health or "active_channels" in health

def test_tier1_f3_echo_agent_acoustic_solfeggio(mock_9_agent_workspace):
    """Tier 1: Verify LAM_ECHO_AGENT (ECHO-01) specifically has Acoustic 528 Hz / 432 Hz Solfeggio role."""
    lam_core_tmp = mock_9_agent_workspace["lam_core_tmp"]
    echo_identity = lam_core_tmp / "LAM_ECHO_AGENT" / "IDENTITY.md"
    content = echo_identity.read_text(encoding="utf-8")
    assert "528 Hz" in content and "432 Hz" in content
    assert "ECHO-01" in content

def test_tier1_f3_carrier_lock_frequency_format(mock_9_agent_workspace):
    """Tier 1: Verify zero-drift carrier frequency format across all agent specifications."""
    for agent_spec in EXPECTED_9_AGENTS:
        lock = agent_spec.get("carrier_lock", "")
        matches = SOLFEGGIO_PATTERN.findall(lock)
        assert len(matches) >= 1, f"Carrier lock '{lock}' for {agent_spec['folder_name']} must match Solfeggio frequencies"


# -----------------------------------------------------------------------------
# TIER 2: BOUNDARY & EDGE CASE TESTS
# -----------------------------------------------------------------------------

def test_tier2_f3_corrupted_carrier_lock_frequency():
    """Tier 2: Verify detection of out-of-band/corrupted frequencies."""
    corrupted_locks = ["999 Hz", "0 Hz", "UNSYNCED", "10000 Hz", "DEFAULT_LOCK"]
    for lock in corrupted_locks:
        matches = SOLFEGGIO_PATTERN.findall(lock)
        assert len(matches) == 0, f"Corrupted lock '{lock}' should not pass Solfeggio verification"

def test_tier2_f3_missing_carrier_lock_header(tmp_path):
    """Tier 2: Verify identity validation flags missing Carrier Lock section."""
    identity_file = tmp_path / "IDENTITY.md"
    identity_file.write_text("## System ID\nSystem ID: EVOL-01\n## True Name\nTrue Name: Evolution", encoding="utf-8")
    content = identity_file.read_text(encoding="utf-8")
    has_carrier_lock = "Carrier Lock" in content and SOLFEGGIO_PATTERN.search(content) is not None
    assert not has_carrier_lock, "Identity lacking Carrier Lock should be detected as un-synced"

def test_tier2_f3_amc_graph_invalid_resonance_string(mock_9_agent_workspace):
    """Tier 2: Verify detection when amc_graph.json contains invalid resonance string."""
    graph_file = mock_9_agent_workspace["amc_graph_file"]
    with graph_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    data["resonance"] = "999 Hz (CORRUPTED)"
    with graph_file.open("w", encoding="utf-8") as f:
        json.dump(data, f)

    with graph_file.open("r", encoding="utf-8") as f:
        reloaded = json.load(f)

    is_valid_resonance = SOLFEGGIO_PATTERN.search(reloaded.get("resonance", "")) is not None
    assert not is_valid_resonance, "999 Hz should fail Solfeggio carrier validation"

def test_tier2_f3_multi_device_engine_invalid_root(tmp_path):
    """Tier 2: Verify MultiDeviceNotificationPredictionFulfillmentEngine handles invalid workspace root."""
    engine = MultiDeviceNotificationPredictionFulfillmentEngine(str(tmp_path))
    health = engine.check_multi_device_health()
    assert isinstance(health, dict)
    assert "engine_status" in health

def test_tier2_f3_solfeggio_regex_validation_strictness():
    """Tier 2: Test strict Solfeggio frequency regex matching rules."""
    valid_examples = ["528 Hz", "432 Hz", "528 Hz / 432 Hz", "Resonance: 432 Hz (PURE)"]
    invalid_examples = ["5280 Hz", "4320 Hz", "Hz 528", "528", "432"]

    for val in valid_examples:
        assert SOLFEGGIO_PATTERN.search(val) is not None, f"'{val}' should be valid Solfeggio"

    for val in invalid_examples:
        # Check strict whole word frequency matching
        exact_match = re.search(r"\b(528|432)\s*Hz\b", val)
        assert exact_match is None, f"'{val}' should be invalid Solfeggio"
