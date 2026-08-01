# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Feature 5: Target Task Heal Manager Active Node Scan
- Coverage: Tier 1 (≥5 tests) & Tier 2 (≥5 boundary tests)
- Spec: Target Task Heal Manager Active Node Scan via lam_target_task_heal_manager/manager.py
"""

import json
import pytest
from pathlib import Path
from lam_target_task_heal_manager.manager import (
    load_amc_graph,
    load_queue,
    scan_organ,
    init_heal_manager,
    main as manager_main,
)

# -----------------------------------------------------------------------------
# TIER 1: FEATURE COVERAGE TESTS (HAPPY PATH)
# -----------------------------------------------------------------------------

def test_tier1_f5_manager_module_imports():
    """Tier 1: Verify manager module functions are importable and callable."""
    assert callable(load_amc_graph)
    assert callable(load_queue)
    assert callable(scan_organ)
    assert callable(init_heal_manager)
    assert callable(manager_main)

def test_tier1_f5_scan_organ_online_status(tmp_path):
    """Tier 1: Verify scan_organ returns ONLINE when directory and identity/devkit files exist."""
    organ_dir = tmp_path / "TEST_ORGAN"
    organ_dir.mkdir(parents=True, exist_ok=True)
    (organ_dir / "IDENTITY.md").write_text("System ID: TEST-01", encoding="utf-8")
    devkit_dir = organ_dir / "devkit"
    devkit_dir.mkdir(parents=True, exist_ok=True)
    (devkit_dir / "bootstrap.sh").write_text("#!/bin/bash", encoding="utf-8")
    (devkit_dir / "patch.sh").write_text("#!/bin/bash", encoding="utf-8")

    result = scan_organ({"path": str(organ_dir)})
    assert result["status"] == "ONLINE"
    assert result["identity"] is True
    assert result["bootstrap"] is True
    assert result["patch"] is True

def test_tier1_f5_init_heal_manager_engines(project_root):
    """Tier 1: Verify init_heal_manager initializes all 5 prediction & fulfillment engines."""
    engines = init_heal_manager()
    expected_engines = [
        "multi_device_engine",
        "reactive_engine",
        "task_engine",
        "schedule_engine",
        "evolution_engine",
    ]
    for eng_name in expected_engines:
        assert eng_name in engines, f"Engine {eng_name} missing from init_heal_manager result"
        assert engines[eng_name] is not None

def test_tier1_f5_manager_main_execution(project_root):
    """Tier 1: Verify running manager.py main() executes without throwing unhandled exceptions."""
    try:
        manager_main()
    except Exception as e:
        pytest.fail(f"manager_main() raised unhandled exception: {e}")

def test_tier1_f5_target_tasks_md_generation(project_root):
    """Tier 1: Verify TARGET_TASKS.md is regenerated with expected section headers."""
    target_md = project_root / "lam_target_task_heal_manager" / "TARGET_TASKS.md"
    assert target_md.exists(), "TARGET_TASKS.md must exist after main execution"

    content = target_md.read_text(encoding="utf-8")
    required_sections = [
        "SOVEREIGN FOREST",
        "ACTIVE CAMPAIGN STATUS",
        "SYSTEM HEALING MISSIONS",
        "SOVEREIGN FOREST ORGAN STATES",
    ]
    for sec in required_sections:
        assert sec in content, f"TARGET_TASKS.md missing required section: {sec}"


# -----------------------------------------------------------------------------
# TIER 2: BOUNDARY & EDGE CASE TESTS
# -----------------------------------------------------------------------------

def test_tier2_f5_scan_organ_missing_path():
    """Tier 2: Verify scan_organ returns MISSING_PATH when path key is absent or empty."""
    res1 = scan_organ({})
    assert res1["status"] == "MISSING_PATH"

    res2 = scan_organ({"path": ""})
    assert res2["status"] == "MISSING_PATH"

def test_tier2_f5_scan_organ_nonexistent_directory(tmp_path):
    """Tier 2: Verify scan_organ returns OFFLINE when directory path does not exist."""
    non_existent = tmp_path / "NON_EXISTENT_ORGAN_PATH"
    res = scan_organ({"path": str(non_existent)})
    assert res["status"] == "OFFLINE"
    assert res["identity"] is False
    assert res["bootstrap"] is False
    assert res["patch"] is False

def test_tier2_f5_scan_organ_missing_bootstrap_or_patch(tmp_path):
    """Tier 2: Verify scan_organ detects missing bootstrap or patch files in ONLINE organ."""
    organ_dir = tmp_path / "INCOMPLETE_ORGAN"
    organ_dir.mkdir(parents=True, exist_ok=True)
    (organ_dir / "IDENTITY.md").write_text("System ID: INC-01", encoding="utf-8")

    res = scan_organ({"path": str(organ_dir)})
    assert res["status"] == "ONLINE"
    assert res["identity"] is True
    assert res["bootstrap"] is False
    assert res["patch"] is False

def test_tier2_f5_load_queue_file_handling(monkeypatch, tmp_path):
    """Tier 2: Verify load_queue returns default item structure when queue.json is missing."""
    non_existent_queue = tmp_path / "missing_queue.json"
    import lam_target_task_heal_manager.manager as heal_manager
    monkeypatch.setattr(heal_manager, "QUEUE_FILE", non_existent_queue)

    queue_data = load_queue()
    assert isinstance(queue_data, dict)
    assert "items" in queue_data
    assert queue_data["items"] == []

def test_tier2_f5_failed_queue_task_remediation_generation(monkeypatch, tmp_path):
    """Tier 2: Verify manager generates FAILED QUEUE TASKS section when errors exist in queue."""
    tmp_queue = tmp_path / "queue.json"
    failed_payload = {
        "items": [
            {
                "id": "task_fail_123",
                "status": "error",
                "error_msg": "Simulated hardware link error",
                "payload": {"owner": "EVOL-01", "intent": "run_evolution_sweep"},
            }
        ]
    }
    tmp_queue.write_text(json.dumps(failed_payload), encoding="utf-8")

    import lam_target_task_heal_manager.manager as heal_manager
    monkeypatch.setattr(heal_manager, "QUEUE_FILE", tmp_queue)

    target_md = tmp_path / "TARGET_TASKS.md"
    monkeypatch.setattr(heal_manager, "TARGET_TASKS_FILE", target_md)

    manager_main()
    assert target_md.exists()
    content = target_md.read_text(encoding="utf-8")
    assert "FAILED QUEUE TASKS" in content
    assert "task_fail_123" in content
