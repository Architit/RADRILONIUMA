import hashlib
import subprocess
import tempfile
import unittest
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
PATCH_SH = REPO_ROOT / "devkit" / "patch.sh"


def run(cmd: list[str], cwd: Path) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, cwd=cwd, text=True, capture_output=True, check=False)


class TestPatchRuntimeGovernance(unittest.TestCase):
    def setUp(self) -> None:
        self.tmpdir = tempfile.TemporaryDirectory()
        self.repo = Path(self.tmpdir.name)
        run(["git", "init"], self.repo)
        run(["git", "config", "user.email", "phaseb@test.local"], self.repo)
        run(["git", "config", "user.name", "phaseb-test"], self.repo)
        (self.repo / "a.txt").write_text("hello\n", encoding="utf-8")
        (self.repo / "task_spec.yaml").write_text("spec_version: '1.1'\n", encoding="utf-8")
        run(["git", "add", "a.txt", "task_spec.yaml"], self.repo)
        run(["git", "commit", "-m", "init"], self.repo)

    def tearDown(self) -> None:
        self.tmpdir.cleanup()

    def _prepare_patch(self, new_content: str, patch_name: str) -> Path:
        target = self.repo / "a.txt"
        target.write_text(new_content, encoding="utf-8")
        patch = run(["git", "diff"], self.repo).stdout
        patch_path = self.repo / patch_name
        patch_path.write_text(patch, encoding="utf-8")
        run(["git", "checkout", "--", "a.txt"], self.repo)
        return patch_path

    def test_patch_apply_success_with_mandatory_integrity_and_trace(self) -> None:
        patch_path = self._prepare_patch("hello world\n", "change.patch")
        digest = hashlib.sha256(patch_path.read_bytes()).hexdigest()
        res = run(
            [
                "bash",
                str(PATCH_SH),
                "--file",
                str(patch_path),
                "--sha256",
                digest,
                "--task-id",
                "phaseB_test_success",
                "--spec-file",
                "task_spec.yaml",
            ],
            self.repo,
        )
        self.assertEqual(res.returncode, 0, msg=res.stderr + res.stdout)
        self.assertIn("status=success", res.stdout)
        self.assertIn("error_code=NONE", res.stdout)
        self.assertIn("trace: task_id=phaseB_test_success", res.stdout)
        self.assertIn("apply_result=success", res.stdout)
        self.assertIn("commit_ref=", res.stdout)
        staged = run(["git", "diff", "--cached", "--name-only"], self.repo).stdout
        self.assertIn("a.txt", staged)

    def test_missing_sha256_is_rejected(self) -> None:
        patch_path = self._prepare_patch("hello no sha\n", "missing_sha.patch")
        res = run(
            ["bash", str(PATCH_SH), "--file", str(patch_path), "--task-id", "phaseB_test_missing_sha"],
            self.repo,
        )
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=precondition_failed", res.stdout)
        self.assertIn("error_code=PATCH_SHA256_REQUIRED", res.stdout)

    def test_missing_task_id_is_rejected(self) -> None:
        patch_path = self._prepare_patch("hello no task\n", "missing_task.patch")
        digest = hashlib.sha256(patch_path.read_bytes()).hexdigest()
        res = run(
            [
                "bash",
                str(PATCH_SH),
                "--file",
                str(patch_path),
                "--sha256",
                digest,
                "--spec-file",
                "task_spec.yaml",
            ],
            self.repo,
        )
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=precondition_failed", res.stdout)
        self.assertIn("error_code=PATCH_TASK_ID_REQUIRED", res.stdout)

    def test_missing_spec_file_is_rejected(self) -> None:
        patch_path = self._prepare_patch("hello no spec\n", "missing_spec.patch")
        digest = hashlib.sha256(patch_path.read_bytes()).hexdigest()
        res = run(
            [
                "bash",
                str(PATCH_SH),
                "--file",
                str(patch_path),
                "--sha256",
                digest,
                "--task-id",
                "phaseB_test_missing_spec",
            ],
            self.repo,
        )
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=precondition_failed", res.stdout)
        self.assertIn("error_code=PATCH_SPEC_FILE_REQUIRED", res.stdout)

    def test_integrity_mismatch_fails_fast(self) -> None:
        patch_path = self._prepare_patch("hello mismatch\n", "mismatch.patch")
        res = run(
            [
                "bash",
                str(PATCH_SH),
                "--file",
                str(patch_path),
                "--sha256",
                "0" * 64,
                "--task-id",
                "phaseB_test_mismatch",
                "--spec-file",
                "task_spec.yaml",
            ],
            self.repo,
        )
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=integrity_mismatch", res.stdout)
        self.assertIn("error_code=PATCH_SHA256_MISMATCH", res.stdout)
        self.assertIn("apply_result=integrity_mismatch", res.stdout)

    def test_conflict_detected_precheck_keeps_tree_clean(self) -> None:
        bad_patch = self.repo / "bad.patch"
        bad_patch.write_text("not-a-valid-patch\n", encoding="utf-8")
        digest = hashlib.sha256(bad_patch.read_bytes()).hexdigest()
        res = run(
            [
                "bash",
                str(PATCH_SH),
                "--file",
                str(bad_patch),
                "--sha256",
                digest,
                "--task-id",
                "phaseB_test_conflict",
                "--spec-file",
                "task_spec.yaml",
            ],
            self.repo,
        )
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=conflict_detected", res.stdout)
        self.assertIn("error_code=PATCH_CONFLICT_DETECTED", res.stdout)
        self.assertIn("apply_result=conflict_detected", res.stdout)
        worktree_clean = run(["git", "diff", "--quiet"], self.repo).returncode
        index_clean = run(["git", "diff", "--cached", "--quiet"], self.repo).returncode
        self.assertEqual(worktree_clean, 0)
        self.assertEqual(index_clean, 0)


if __name__ == "__main__":
    unittest.main()
