import importlib.util
import sys
import tempfile
import unittest
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
MODULE_PATH = REPO_ROOT / "scripts" / "task_spec_validator.py"
TEMPLATE_PATH = REPO_ROOT / "devkit" / "task_spec_template.yaml"
CONTRACT_PATH = REPO_ROOT / "contract" / "TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md"

_SPEC = importlib.util.spec_from_file_location("task_spec_validator", MODULE_PATH)
if _SPEC is None or _SPEC.loader is None:
    raise RuntimeError(f"Unable to load module from {MODULE_PATH}")
MODULE = importlib.util.module_from_spec(_SPEC)
sys.modules[_SPEC.name] = MODULE
_SPEC.loader.exec_module(MODULE)


class TestTaskSpecGovernance(unittest.TestCase):
    def test_template_contract_markers_present(self):
        text = TEMPLATE_PATH.read_text(encoding="utf-8")
        self.assertIn('spec_version: "1.1"', text)
        self.assertIn("derivation_only: true", text)
        self.assertIn("patch_sha256:", text)
        self.assertIn("timeout_ms:", text)
        self.assertIn("max_output_tokens:", text)

    def test_template_validates_pass(self):
        issues = MODULE.validate_file(TEMPLATE_PATH, fail_fast=False)
        self.assertEqual(issues, [])

    def test_validator_rejects_derivation_only_false(self):
        text = """
spec_version: "1.1"
goal: "x"
constraints:
  derivation_only: false
preconditions:
  - type: file_exists
    path: "./devkit/patch.sh"
artifacts:
  patch_path: "x.patch"
  patch_sha256: "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
limits:
  timeout_ms: 1000
  max_output_tokens: 100
"""
        with tempfile.NamedTemporaryFile("w+", suffix=".yaml", delete=False, encoding="utf-8") as tmp:
            tmp.write(text)
            tmp_path = Path(tmp.name)
        issues = MODULE.validate_file(tmp_path, fail_fast=False)
        tmp_path.unlink(missing_ok=True)
        self.assertIn("TASKSPEC_DERIVATION_ONLY_REQUIRED", issues)

    def test_validator_rejects_invalid_patch_hash(self):
        text = """
spec_version: "1.1"
goal: "x"
constraints:
  derivation_only: true
preconditions:
  - type: file_exists
    path: "./devkit/patch.sh"
artifacts:
  patch_path: "x.patch"
  patch_sha256: "XYZ"
limits:
  timeout_ms: 1000
  max_output_tokens: 100
"""
        with tempfile.NamedTemporaryFile("w+", suffix=".yaml", delete=False, encoding="utf-8") as tmp:
            tmp.write(text)
            tmp_path = Path(tmp.name)
        issues = MODULE.validate_file(tmp_path, fail_fast=False)
        tmp_path.unlink(missing_ok=True)
        self.assertIn("TASKSPEC_PATCH_SHA256_INVALID", issues)

    def test_validator_rejects_wrong_spec_version(self):
        text = """
spec_version: "1.0"
goal: "x"
constraints:
  derivation_only: true
preconditions:
  - type: file_exists
    path: "./devkit/patch.sh"
artifacts:
  patch_path: "x.patch"
  patch_sha256: "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
limits:
  timeout_ms: 1000
  max_output_tokens: 100
"""
        with tempfile.NamedTemporaryFile("w+", suffix=".yaml", delete=False, encoding="utf-8") as tmp:
            tmp.write(text)
            tmp_path = Path(tmp.name)
        issues = MODULE.validate_file(tmp_path, fail_fast=False)
        tmp_path.unlink(missing_ok=True)
        self.assertIn("TASKSPEC_SPEC_VERSION_INVALID", issues)

    def test_contract_mentions_fail_fast_and_error_code(self):
        text = CONTRACT_PATH.read_text(encoding="utf-8")
        self.assertIn('spec_version` with exact value `"1.1"', text)
        self.assertIn("strict YAML parsing", text)
        self.assertIn("fail-fast", text)
        self.assertIn("error_code", text)
        self.assertIn("derivation_only", text)
        self.assertIn("patch_sha256", text)


if __name__ == "__main__":
    unittest.main()
