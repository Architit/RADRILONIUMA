# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Feature 4: Governance Preflight Smoke Tests
- Coverage: Tier 1 (≥5 tests) & Tier 2 (≥5 boundary tests)
- Spec: Governance Preflight Smoke Tests execution via scripts/test_entrypoint.sh & scripts/task_spec_validator.py
"""

import os
import sys
import subprocess
import pytest
from pathlib import Path

# Prevent recursive execution into e2e test suite when invoking test_entrypoint.sh
SUBPROCESS_ENV = {**os.environ, "PYTEST_ADDOPTS": "-p no:cacheprovider --ignore=tests/e2e"}

# -----------------------------------------------------------------------------
# TIER 1: FEATURE COVERAGE TESTS (HAPPY PATH)
# -----------------------------------------------------------------------------

def test_tier1_f4_test_entrypoint_script_exists_and_executable(project_root):
    """Tier 1: Verify scripts/test_entrypoint.sh exists and is executable."""
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    assert entrypoint.exists(), "scripts/test_entrypoint.sh must exist"
    assert (entrypoint.stat().st_mode & 0o111) != 0, "scripts/test_entrypoint.sh must be executable"

def test_tier1_f4_task_spec_validator_valid_spec(project_root):
    """Tier 1: Verify scripts/task_spec_validator.py validates devkit/task_spec_template.yaml."""
    validator = project_root / "scripts" / "task_spec_validator.py"
    template = project_root / "devkit" / "task_spec_template.yaml"
    assert validator.exists(), "scripts/task_spec_validator.py must exist"
    assert template.exists(), "devkit/task_spec_template.yaml must exist"

    cmd = [sys.executable, str(validator), "--file", str(template)]
    res = subprocess.run(cmd, capture_output=True, text=True)
    assert res.returncode == 0, f"Task spec validator failed on template: {res.stderr or res.stdout}"

def test_tier1_f4_governance_mode_invocation(project_root):
    """Tier 1: Verify bash scripts/test_entrypoint.sh --governance returns exit code 0."""
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    cmd = [str(entrypoint), "--governance"]
    res = subprocess.run(cmd, cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res.returncode == 0, f"--governance execution failed: {res.stderr or res.stdout}"

def test_tier1_f4_preflight_mode_invocation(project_root):
    """Tier 1: Verify bash scripts/test_entrypoint.sh --preflight runs cleanly."""
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    cmd = [str(entrypoint), "--preflight"]
    res = subprocess.run(cmd, cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res.returncode in (0, 5), f"--preflight execution failed: {res.stderr or res.stdout}"

def test_tier1_f4_unit_only_mode_invocation(project_root):
    """Tier 1: Verify bash scripts/test_entrypoint.sh --unit-only returns exit code 0."""
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    cmd = [str(entrypoint), "--unit-only"]
    res = subprocess.run(cmd, cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res.returncode == 0, f"--unit-only execution failed: {res.stderr or res.stdout}"


# -----------------------------------------------------------------------------
# TIER 2: BOUNDARY & EDGE CASE TESTS
# -----------------------------------------------------------------------------

def test_tier2_f4_invalid_cli_flag(project_root):
    """Tier 2: Verify test_entrypoint.sh exits with code 2 when given an invalid flag."""
    entrypoint = project_root / "scripts" / "test_entrypoint.sh"
    cmd = [str(entrypoint), "--invalid-unsupported-flag"]
    res = subprocess.run(cmd, cwd=str(project_root), env=SUBPROCESS_ENV, capture_output=True, text=True)
    assert res.returncode == 2, "Invalid flag should exit with status code 2"
    assert "usage:" in res.stdout or "usage:" in res.stderr

def test_tier2_f4_validator_malformed_yaml(project_root, tmp_path):
    """Tier 2: Verify task_spec_validator.py rejects malformed YAML file."""
    validator = project_root / "scripts" / "task_spec_validator.py"
    bad_yaml = tmp_path / "bad_spec.yaml"
    bad_yaml.write_text("spec_version: [unclosed list, foo: bar", encoding="utf-8")

    cmd = [sys.executable, str(validator), "--file", str(bad_yaml)]
    res = subprocess.run(cmd, capture_output=True, text=True)
    assert res.returncode != 0, "Validator must fail on malformed YAML"

def test_tier2_f4_validator_missing_file(project_root, tmp_path):
    """Tier 2: Verify task_spec_validator.py handles non-existent file cleanly."""
    validator = project_root / "scripts" / "task_spec_validator.py"
    missing = tmp_path / "does_not_exist.yaml"

    cmd = [sys.executable, str(validator), "--file", str(missing)]
    res = subprocess.run(cmd, capture_output=True, text=True)
    assert res.returncode != 0, "Validator must fail when file does not exist"

def test_tier2_f4_validator_missing_required_spec_fields(project_root, tmp_path):
    """Tier 2: Verify validator fails when YAML lacks required VAVIMA spec fields."""
    validator = project_root / "scripts" / "task_spec_validator.py"
    incomplete_yaml = tmp_path / "incomplete_spec.yaml"
    incomplete_yaml.write_text("goal: 'Incomplete spec without version or id'", encoding="utf-8")

    cmd = [sys.executable, str(validator), "--file", str(incomplete_yaml)]
    res = subprocess.run(cmd, capture_output=True, text=True)
    assert res.returncode != 0, "Validator must fail when required fields are missing"

def test_tier2_f4_validator_forbidden_code_injection(project_root, tmp_path):
    """Tier 2: Verify validator fails when spec violates security constraints."""
    validator = project_root / "scripts" / "task_spec_validator.py"
    injected_yaml = tmp_path / "injected_spec.yaml"
    content = """spec_version: "1.1"
task_id: "test_injected"
goal: "Execute unauthorized command"
constraints:
  derivation_only: false
  code_injection_forbidden: false
"""
    injected_yaml.write_text(content, encoding="utf-8")

    cmd = [sys.executable, str(validator), "--file", str(injected_yaml)]
    res = subprocess.run(cmd, capture_output=True, text=True)
    assert res.returncode != 0, "Validator must reject spec violating derivation_only constraint"
