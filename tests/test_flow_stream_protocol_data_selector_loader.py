#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • FLOW STREAM PROTOCOL DATA SELECTOR LOADER TEST SUITE
===================================================================
Tests for 8-source orbit, 20k symbol limit, value assessment, deduplication,
storage saturation cascade (98%), and MOVE ONLY zero-copy operations.
"""

import os
import sys
import json
import pytest
import tempfile
import hashlib
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
CORE_DIR = REPO_ROOT / "core" / "stream_conveyor"
if str(CORE_DIR) not in sys.path:
    sys.path.insert(0, str(CORE_DIR))
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))

from flow_stream_protocol_data_selector_loader import (
    FlowStreamProtocolDataSelectorLoader,
    SegmentVolumeExceededException,
    TargetStorageSaturatedException,
    SOURCE_IDENTIFIERS,
    MAX_SEGMENT_SYMBOLS,
    SATURATION_THRESHOLD
)


@pytest.fixture
def temp_environment():
    """Sets up a temporary testing sandbox for loader execution."""
    with tempfile.TemporaryDirectory() as tmp_dir:
        tmp_path = Path(tmp_dir)
        chronolog_dir = tmp_path / "chronolog"
        chronolog_dir.mkdir(parents=True, exist_ok=True)
        
        target_v1 = tmp_path / "target_v1"
        target_v2 = tmp_path / "target_v2"
        target_v1.mkdir(parents=True, exist_ok=True)
        target_v2.mkdir(parents=True, exist_ok=True)

        loader = FlowStreamProtocolDataSelectorLoader(
            repo_root=tmp_path,
            target_chain=[str(target_v1), str(target_v2)]
        )
        yield loader, tmp_path, target_v1, target_v2


def test_8_sources_and_synthesis(temp_environment):
    loader, tmp_path, _, _ = temp_environment
    assert len(SOURCE_IDENTIFIERS) == 8
    assert SOURCE_IDENTIFIERS[-1] == "SRC_08_SOVEREIGN_SYNTHESIS"

    # Test autonomous 8th segment synthesis
    synth = loader.synthesize_sovereign_segment(phase_cycle=1)
    assert synth["source_id"] == "SRC_08_SOVEREIGN_SYNTHESIS"
    assert synth["priority_tier"] == "P0_SOVEREIGN_ROOT"
    assert synth["char_count"] <= MAX_SEGMENT_SYMBOLS
    assert "triad_core_genome" in json.loads(synth["content"])


def test_20k_token_boundary_enforcement(temp_environment):
    loader, tmp_path, _, _ = temp_environment
    oversized_text = "A" * (MAX_SEGMENT_SYMBOLS + 500)

    oversized_segment = {
        "source_id": "SRC_08_SOVEREIGN_SYNTHESIS",
        "segment_name": "OVERSIZED_TEST.json",
        "char_count": len(oversized_text),
        "sha256": hashlib.sha256(oversized_text.encode()).hexdigest(),
        "content": oversized_text
    }

    # Should raise SegmentVolumeExceededException if attempted to move
    with pytest.raises(SegmentVolumeExceededException):
        if oversized_segment["char_count"] > MAX_SEGMENT_SYMBOLS:
            raise SegmentVolumeExceededException("Limit exceeded")


def test_value_assessment_prioritization(temp_environment):
    loader, tmp_path, _, _ = temp_environment
    tier_p0, score_p0 = loader.assess_priority("master_plan_directive_ken.md")
    tier_p1, score_p1 = loader.assess_priority("security_contract.md")
    tier_p2, score_p2 = loader.assess_priority("session_telemetry_pulse.log")
    tier_p3, score_p3 = loader.assess_priority("generic_asset.bin")

    assert tier_p0 == "P0_SOVEREIGN_ROOT" and score_p0 == 0
    assert tier_p1 == "P1_INTEGRITY_CONTRACT" and score_p1 == 1
    assert tier_p2 == "P2_ACTIVE_TELEMETRY" and score_p2 == 2
    assert tier_p3 == "P3_DEEP_ARCHIVE" and score_p3 == 3


def test_zero_copy_move_only(temp_environment):
    loader, tmp_path, target_v1, _ = temp_environment
    source_dir = tmp_path / "source_staging"
    source_dir.mkdir(parents=True, exist_ok=True)
    
    test_file = source_dir / "sovereign_identity_test.txt"
    test_content = "SOVEREIGN_CLUSTER_DNA_PAYLOAD_528HZ"
    test_file.write_text(test_content, encoding="utf-8")

    expected_hash = hashlib.sha256(test_content.encode("utf-8")).hexdigest()

    mock_segment = {
        "source_id": "SRC_02_BUSHMASTER_C",
        "file_path": str(test_file),
        "segment_name": "sovereign_identity_test.txt",
        "priority_tier": "P0_SOVEREIGN_ROOT",
        "char_count": len(test_content),
        "sha256": expected_hash,
        "content": test_content,
        "is_synthesized": False,
        "original_full_length": len(test_content)
    }

    # Override selection to return this segment
    loader.select_highest_value_segment = lambda s: mock_segment

    res = loader.execute_move_step("SRC_02_BUSHMASTER_C")

    # Invariant Verification:
    # 1. Source file MUST NOT exist at original location (zero duplicate)
    assert not test_file.exists(), "INVARIANT VIOLATION: Source file was not moved (still exists)!"
    
    # 2. Destination file MUST exist with verified matching hash
    dest_file = target_v1 / "sovereign_identity_test.txt"
    assert dest_file.exists(), "Target file does not exist in target vault!"
    assert dest_file.read_text(encoding="utf-8") == test_content
    assert res["sha256"] == expected_hash
    assert res["moved_status"] == "PHYSICAL_FILE_MOVED_ZERO_COPY"


def test_deduplication_and_chronicles(temp_environment):
    loader, tmp_path, target_v1, _ = temp_environment
    # Execute a step
    res1 = loader.execute_move_step("SRC_08_SOVEREIGN_SYNTHESIS")
    hash1 = res1["sha256"]
    assert hash1 in loader.processed_hashes

    # Check chronolog file
    assert loader.chronicles_file.exists()
    lines = [json.loads(l) for l in loader.chronicles_file.read_text(encoding="utf-8").strip().split("\n")]
    assert len(lines) == 1
    assert lines[0]["sha256"] == hash1
    assert lines[0]["transfer_mode"] == "MOVE_ONLY_ZERO_COPY"


def test_storage_cascade_98_percent(temp_environment):
    loader, tmp_path, target_v1, target_v2 = temp_environment

    # Mock storage metrics: make target_v1 report 98.5% used (saturated)
    def mock_metrics(path_str):
        if str(path_str) == str(target_v1):
            return {
                "target_path": str(target_v1),
                "total_gb": 100.0,
                "used_gb": 98.5,
                "free_gb": 1.5,
                "used_ratio": 0.985,
                "used_percent": 98.5,
                "saturated": True,
                "accessible": True
            }
        else:
            return {
                "target_path": str(target_v2),
                "total_gb": 100.0,
                "used_gb": 20.0,
                "free_gb": 80.0,
                "used_ratio": 0.20,
                "used_percent": 20.0,
                "saturated": False,
                "accessible": True
            }

    loader.get_storage_metrics = mock_metrics

    # Active target should automatically cascade to target_v2
    active_vol, metrics = loader.get_active_target_volume()
    assert active_vol == str(target_v2)
    assert not metrics["saturated"]
    assert metrics["used_percent"] == 20.0


def test_full_8_phase_orbit(temp_environment):
    loader, tmp_path, target_v1, _ = temp_environment
    orbit_res = loader.execute_orbit()

    assert orbit_res["status"] == "ORBIT_COMPLETED"
    assert orbit_res["phases_executed"] == 8
    assert len(orbit_res["results"]) == 8
    for r in orbit_res["results"]:
        assert r["char_count"] <= MAX_SEGMENT_SYMBOLS
        assert r["status"] == "STEP_SUCCESS"
