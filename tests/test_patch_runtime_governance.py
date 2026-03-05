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
        run(["git", "add", "a.txt"], self.repo)
        run(["git", "commit", "-m", "init"], self.repo)

    def tearDown(self) -> None:
        self.tmpdir.cleanup()

    def test_patch_apply_success_with_sha256(self) -> None:
        target = self.repo / "a.txt"
        target.write_text("hello world\n", encoding="utf-8")
        patch = run(["git", "diff"], self.repo).stdout
        patch_path = self.repo / "change.patch"
        patch_path.write_text(patch, encoding="utf-8")
        run(["git", "checkout", "--", "a.txt"], self.repo)

        digest = hashlib.sha256(patch_path.read_bytes()).hexdigest()
        res = run(["bash", str(PATCH_SH), "--file", str(patch_path), "--sha256", digest], self.repo)
        self.assertEqual(res.returncode, 0, msg=res.stderr + res.stdout)
        self.assertIn("status=success", res.stdout)
        staged = run(["git", "diff", "--cached", "--name-only"], self.repo).stdout
        self.assertIn("a.txt", staged)

    def test_integrity_mismatch_fails_fast(self) -> None:
        target = self.repo / "a.txt"
        target.write_text("hello mismatch\n", encoding="utf-8")
        patch = run(["git", "diff"], self.repo).stdout
        patch_path = self.repo / "mismatch.patch"
        patch_path.write_text(patch, encoding="utf-8")
        run(["git", "checkout", "--", "a.txt"], self.repo)
        res = run(["bash", str(PATCH_SH), "--file", str(patch_path), "--sha256", "0" * 64], self.repo)
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=integrity_mismatch", res.stdout)
        self.assertIn("error_code=PATCH_SHA256_MISMATCH", res.stdout)

    def test_conflict_detected_precheck_keeps_tree_clean(self) -> None:
        bad_patch = self.repo / "bad.patch"
        bad_patch.write_text("not-a-valid-patch\n", encoding="utf-8")
        res = run(["bash", str(PATCH_SH), "--file", str(bad_patch)], self.repo)
        self.assertNotEqual(res.returncode, 0)
        self.assertIn("status=conflict_detected", res.stdout)
        worktree_clean = run(["git", "diff", "--quiet"], self.repo).returncode
        index_clean = run(["git", "diff", "--cached", "--quiet"], self.repo).returncode
        self.assertEqual(worktree_clean, 0)
        self.assertEqual(index_clean, 0)


if __name__ == "__main__":
    unittest.main()
