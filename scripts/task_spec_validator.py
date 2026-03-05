#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
import subprocess
from pathlib import Path
from typing import Any

try:
    import yaml  # type: ignore
except ModuleNotFoundError:  # pragma: no cover - covered via runtime fallback path
    yaml = None


ERRORS = {
    "yaml_parse_failed": "TASKSPEC_YAML_PARSE_FAILED",
    "invalid_root_type": "TASKSPEC_INVALID_ROOT_TYPE",
    "invalid_spec_version": "TASKSPEC_SPEC_VERSION_INVALID",
    "missing_goal": "TASKSPEC_MISSING_GOAL",
    "derivation_only": "TASKSPEC_DERIVATION_ONLY_REQUIRED",
    "missing_preconditions": "TASKSPEC_PRECONDITIONS_MISSING",
    "missing_patch_path": "TASKSPEC_PATCH_PATH_MISSING",
    "invalid_patch_sha256": "TASKSPEC_PATCH_SHA256_INVALID",
    "missing_limits": "TASKSPEC_LIMITS_MISSING",
}


def _parse_yaml(path: Path) -> Any:
    text = path.read_text(encoding="utf-8")
    if yaml is not None:
        try:
            return yaml.safe_load(text)
        except yaml.YAMLError as exc:
            raise ValueError(f"{ERRORS['yaml_parse_failed']}:{exc}") from exc

    # Fallback backend when current interpreter lacks PyYAML.
    py = (
        "import json,sys,yaml\n"
        "data=yaml.safe_load(sys.stdin.read())\n"
        "print(json.dumps(data))\n"
    )
    proc = subprocess.run(
        ["python3", "-c", py],
        input=text,
        capture_output=True,
        text=True,
        check=False,
    )
    if proc.returncode != 0:
        stderr = proc.stderr.strip() or proc.stdout.strip() or "yaml backend unavailable"
        raise ValueError(f"{ERRORS['yaml_parse_failed']}:{stderr}")
    try:
        return json.loads(proc.stdout)
    except json.JSONDecodeError as exc:
        raise ValueError(f"{ERRORS['yaml_parse_failed']}:{exc}") from exc


def _validate_task_spec_dict(data: Any) -> list[str]:
    issues: list[str] = []
    if not isinstance(data, dict):
        return [ERRORS["invalid_root_type"]]

    if str(data.get("spec_version")) != "1.1":
        issues.append(ERRORS["invalid_spec_version"])

    goal = data.get("goal")
    if not isinstance(goal, str) or not goal.strip() or "\n" in goal:
        issues.append(ERRORS["missing_goal"])

    constraints = data.get("constraints")
    if not isinstance(constraints, dict) or constraints.get("derivation_only") is not True:
        issues.append(ERRORS["derivation_only"])

    preconditions = data.get("preconditions")
    if not isinstance(preconditions, list) or not preconditions:
        issues.append(ERRORS["missing_preconditions"])
    else:
        if any(not isinstance(item, dict) or not item.get("type") for item in preconditions):
            issues.append(ERRORS["missing_preconditions"])

    artifacts = data.get("artifacts")
    if not isinstance(artifacts, dict) or not isinstance(artifacts.get("patch_path"), str) or not artifacts.get(
        "patch_path", ""
    ).strip():
        issues.append(ERRORS["missing_patch_path"])
    patch_sha256 = artifacts.get("patch_sha256") if isinstance(artifacts, dict) else None
    if not isinstance(patch_sha256, str) or not re.fullmatch(r"[a-f0-9]{64}", patch_sha256):
        issues.append(ERRORS["invalid_patch_sha256"])

    limits = data.get("limits")
    timeout_ms = limits.get("timeout_ms") if isinstance(limits, dict) else None
    max_output_tokens = limits.get("max_output_tokens") if isinstance(limits, dict) else None
    if (
        not isinstance(limits, dict)
        or not isinstance(timeout_ms, int)
        or timeout_ms <= 0
        or not isinstance(max_output_tokens, int)
        or max_output_tokens <= 0
    ):
        issues.append(ERRORS["missing_limits"])

    return issues


def validate_file(path: Path, fail_fast: bool = True) -> list[str]:
    if not path.exists() or not path.is_file():
        return [f"TASKSPEC_FILE_MISSING:{path}"]
    try:
        data = _parse_yaml(path)
    except ValueError as exc:
        return [str(exc).split(":", 1)[0]]

    issues = _validate_task_spec_dict(data)
    if fail_fast and issues:
        return [issues[0]]
    return issues


def _self_test() -> int:
    valid_raw = """
spec_version: "1.1"
goal: "ok"
constraints:
  derivation_only: true
preconditions:
  - type: file_exists
    path: "./devkit/patch.sh"
artifacts:
  patch_path: "x.patch"
  patch_sha256: "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
limits:
  timeout_ms: 1
  max_output_tokens: 1
"""
    invalid_raw = """
spec_version: "1.0"
goal: ""
constraints:
  derivation_only: false
preconditions: []
artifacts:
  patch_path: ""
  patch_sha256: "not-a-hash"
limits: {}
"""
    if yaml is not None:
        valid = yaml.safe_load(valid_raw)
        invalid = yaml.safe_load(invalid_raw)
    else:
        tmp_valid = Path("/tmp/radr_phaseA_validator_selftest_valid.yaml")
        tmp_invalid = Path("/tmp/radr_phaseA_validator_selftest_invalid.yaml")
        tmp_valid.write_text(valid_raw, encoding="utf-8")
        tmp_invalid.write_text(invalid_raw, encoding="utf-8")
        try:
            valid = _parse_yaml(tmp_valid)
            invalid = _parse_yaml(tmp_invalid)
        finally:
            tmp_valid.unlink(missing_ok=True)
            tmp_invalid.unlink(missing_ok=True)

    ok_issues = _validate_task_spec_dict(valid)
    bad_issues = _validate_task_spec_dict(invalid)
    if ok_issues:
        print("SELFTEST_FAIL_VALID", ",".join(ok_issues))
        return 1
    if not bad_issues:
        print("SELFTEST_FAIL_INVALID")
        return 1
    print("SELFTEST_OK")
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description="Task Spec validator (Phase A contract).")
    parser.add_argument("--file", default="devkit/task_spec_template.yaml", help="Path to Task Spec YAML file.")
    parser.add_argument("--fail-fast", action="store_true", help="Stop on first violation (default behavior).")
    parser.add_argument("--no-fail-fast", action="store_true", help="Return all violations.")
    parser.add_argument("--self-test", action="store_true", help="Run internal validator self-test.")
    args = parser.parse_args()

    if args.self_test:
        return _self_test()

    fail_fast = True
    if args.no_fail_fast:
        fail_fast = False
    elif args.fail_fast:
        fail_fast = True

    issues = validate_file(Path(args.file), fail_fast=fail_fast)
    if issues:
        for code in issues:
            print(f"error_code={code}")
        return 1

    print("status=PASS")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
