#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • COMPREHENSIVE TEST SUITE: SESSION SEGMENTER GUARD & ARCHIVATOR
=============================================================================
Path: /root/RADRILONIUMA/tests/test_session_segmenter_guard.py
Milestone: M1 (Session Buffer Limit Brake Cut Segmenter & Guard Archivator - R1)
Contract: P0_SAFETY_CONTRACT_V1, PROJECT.md Interface Contracts

Coverage:
1. Normal session inspection (step count, token count, JSONL size)
2. Warning threshold on step count (80 steps)
3. Warning threshold on token count (120k tokens)
4. Brake threshold on step count (150 steps)
5. Brake threshold on token count (180k tokens)
6. Brake threshold on file size (>4MB)
7. Chronological step slicing & rolling context window preservation
8. Gzip compression (.jsonl.gz) and gzip -t integrity verification
9. segment_index.json comprehensive schema & sha256 checksums
10. DEV_04_SAMSUNG_T7_VAULT P0 non-destructive sync & idempotency
11. Graceful degradation when vault is unmounted/unreachable
12. CLI subcommands execution (inspect, segment, sync, status)
13. Active write guard brake enforcement & auto-slicing
"""

import os
import sys
import json
import gzip
import shutil
import hashlib
import tempfile
import subprocess
from pathlib import Path
import pytest

from core.stream_conveyor.session_segmenter_guard import (
    SessionSegmenterGuard,
    SessionBufferBrakeException,
    verify_gzip_integrity,
    compress_segment_atomic,
    WARN_STEP_COUNT,
    WARN_TOKEN_COUNT,
    BRAKE_STEP_COUNT,
    BRAKE_TOKEN_COUNT,
    BRAKE_BYTE_SIZE
)


@pytest.fixture
def temp_env():
    tmp_dir = Path(tempfile.mkdtemp(prefix="radr_guard_test_"))
    archive_dir = tmp_dir / "archive"
    vault_dir = tmp_dir / "vault" / "ATESIRT_VAULT_ARCHIVE" / "sessions"
    vault_dir.mkdir(parents=True, exist_ok=True)

    yield {
        "root": tmp_dir,
        "archive": archive_dir,
        "vault": vault_dir
    }
    shutil.rmtree(tmp_dir, ignore_errors=True)


def test_guard_normal_session(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_file = temp_env["root"] / "test_normal.jsonl"
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(10):
            f.write(json.dumps({"step_index": i, "input_tokens": 80, "output_tokens": 20, "content": f"Normal step {i}"}) + "\n")

    metrics = guard.inspect_session(str(session_file))
    assert metrics["step_count"] == 10
    assert metrics["total_steps"] == 10
    assert metrics["status"] == "NORMAL"
    assert not metrics.get("warning_triggered", False)
    assert not metrics.get("brake_applied", False)


def test_guard_warning_threshold_steps(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_file = temp_env["root"] / "test_warning_steps.jsonl"
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(WARN_STEP_COUNT):
            f.write(json.dumps({"step_index": i, "input_tokens": 100, "output_tokens": 50, "content": f"Warning step {i}"}) + "\n")

    metrics = guard.inspect_session(str(session_file))
    step_cnt = metrics.get("step_count") or metrics.get("total_steps")
    assert step_cnt == WARN_STEP_COUNT
    assert metrics["status"] == "WARNING"
    assert metrics.get("warning_triggered", True)
    assert not metrics.get("brake_applied", False)
    assert any("warning threshold" in r for r in metrics["warning_reasons"])


def test_guard_warning_threshold_tokens(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_file = temp_env["root"] / "test_warning_tokens.jsonl"
    # 10 steps with 10,000 input + 2,001 output tokens = 120,010 tokens >= WARN_TOKEN_COUNT (120,000)
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(10):
            f.write(json.dumps({"step_index": i, "input_tokens": 10000, "output_tokens": 2001}) + "\n")

    metrics = guard.inspect_session(str(session_file))
    assert metrics["status"] == "WARNING"
    assert metrics.get("warning_triggered", True)
    assert metrics["token_count"] >= WARN_TOKEN_COUNT


def test_guard_brake_threshold_steps(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_file = temp_env["root"] / "test_brake_steps.jsonl"
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(BRAKE_STEP_COUNT):
            f.write(json.dumps({"step_index": i, "input_tokens": 50, "output_tokens": 50}) + "\n")

    metrics = guard.inspect_session(str(session_file))
    step_cnt = metrics.get("step_count") or metrics.get("total_steps")
    assert step_cnt == BRAKE_STEP_COUNT
    assert metrics["status"] == "BRAKE_ENGAGED"
    assert metrics.get("brake_applied", True)
    assert any("brake threshold" in r for r in metrics["brake_reasons"])


def test_guard_brake_threshold_tokens(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_file = temp_env["root"] / "test_brake_tokens.jsonl"
    # Single step with 185,000 input + 5,000 output tokens = 190,000 tokens >= BRAKE_TOKEN_COUNT (180,000)
    with open(session_file, "w", encoding="utf-8") as f:
        f.write(json.dumps({"step_index": 0, "input_tokens": 185000, "output_tokens": 5000}) + "\n")

    metrics = guard.inspect_session(str(session_file))
    assert metrics["status"] == "BRAKE_ENGAGED"
    assert metrics.get("brake_applied", True)
    assert metrics["token_count"] >= BRAKE_TOKEN_COUNT


def test_guard_brake_threshold_bytes(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_file = temp_env["root"] / "test_brake_bytes.jsonl"
    chunk = ("x" * 1024 * 1024)
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(5):
            f.write(json.dumps({"step_index": i, "payload": chunk}) + "\n")

    metrics = guard.inspect_session(str(session_file))
    assert metrics["byte_size"] >= BRAKE_BYTE_SIZE
    assert metrics["status"] == "BRAKE_ENGAGED"
    assert metrics.get("brake_applied", True)
    assert any("4MB threshold" in r for r in metrics["brake_reasons"])


def test_guard_slicing_and_dual_archival(temp_env):
    rolling_window = 20
    seg_size = 25
    total_steps = 70

    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"],
        rolling_window_size=rolling_window,
        segment_size=seg_size
    )

    session_id = "test_slice_ssn_01"
    session_file = temp_env["root"] / f"{session_id}.jsonl"

    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(total_steps):
            f.write(json.dumps({"step": i + 1, "tokens": 200, "payload": f"Step payload {i + 1}"}) + "\n")

    result = guard.slice_and_archive(
        session_path_or_id=str(session_file),
        rolling_window_size=rolling_window,
        segment_size=seg_size
    )

    assert result["status"] == "SLICED_AND_ARCHIVED"
    assert result["active_window_steps"] == rolling_window
    assert result["segments_created"] == 2  # (70 - 20) = 50 steps / 25 = 2 segments

    # Check local archive
    arch_dir = temp_env["archive"] / session_id
    assert arch_dir.exists()
    assert (arch_dir / "segment_001.jsonl.gz").exists()
    assert (arch_dir / "segment_002.jsonl.gz").exists()
    assert (arch_dir / "segment_index.json").exists()

    # Verify gzip contents with gzip -t
    for seg_name in ("segment_001.jsonl.gz", "segment_002.jsonl.gz"):
        seg_p = arch_dir / seg_name
        is_valid, msg = verify_gzip_integrity(seg_p)
        assert is_valid, f"Gzip verification failed on {seg_name}: {msg}"

    # Verify segment_index.json
    with open(arch_dir / "segment_index.json", "r", encoding="utf-8") as idx_f:
        idx_data = json.load(idx_f)
        assert idx_data["session_id"] == session_id
        assert idx_data["total_sliced_steps"] == 50
        assert idx_data["active_window_steps"] == rolling_window
        assert len(idx_data["segments"]) == 2

    # Check T7 Vault Mirror
    vault_mirror = temp_env["vault"] / session_id
    assert vault_mirror.exists()
    assert (vault_mirror / "segment_001.jsonl.gz").exists()
    assert (vault_mirror / "segment_002.jsonl.gz").exists()
    assert (vault_mirror / "segment_index.json").exists()

    # Verify gzip -t on Vault Mirror
    for seg_name in ("segment_001.jsonl.gz", "segment_002.jsonl.gz"):
        vseg_p = vault_mirror / seg_name
        is_valid, msg = verify_gzip_integrity(vseg_p)
        assert is_valid, f"Gzip verification failed on vault {seg_name}: {msg}"

    # Check original session file rolling active window
    with open(session_file, "r", encoding="utf-8") as f:
        remaining_lines = [l.strip() for l in f if l.strip()]
        assert len(remaining_lines) == rolling_window
        first_active = json.loads(remaining_lines[0])
        assert first_active["step"] == 51


def test_gzip_integrity_verification(temp_env):
    # Test valid gzip
    valid_gz = temp_env["root"] / "valid.jsonl.gz"
    res = compress_segment_atomic(['{"step": 1}', '{"step": 2}'], valid_gz)
    assert res["gzip_t_verified"] is True
    assert valid_gz.exists()

    is_valid, msg = verify_gzip_integrity(valid_gz)
    assert is_valid is True
    assert "passed" in msg

    # Test corrupted gzip
    corrupt_gz = temp_env["root"] / "corrupt.jsonl.gz"
    corrupt_gz.write_bytes(b"\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\x00corrupt_payload_here")
    is_corrupt_valid, corrupt_msg = verify_gzip_integrity(corrupt_gz)
    assert is_corrupt_valid is False
    assert "failed" in corrupt_msg or "error" in corrupt_msg.lower()


def test_p0_vault_mirror_idempotency_and_safety(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_id = "test_p0_idempotency_ssn"
    local_arch = temp_env["archive"] / session_id
    local_arch.mkdir(parents=True, exist_ok=True)

    gz_file = local_arch / "segment_001.jsonl.gz"
    compress_segment_atomic(['{"step": 1, "test": "p0"}'], gz_file)

    # Initial sync
    res1 = guard._mirror_to_t7_vault(session_id, local_arch)
    assert res1["mirrored"] is True
    assert "segment_001.jsonl.gz" in res1["files_copied"]

    vault_file = temp_env["vault"] / session_id / "segment_001.jsonl.gz"
    assert vault_file.exists()
    mtime_first = vault_file.stat().st_mtime

    # Perform second sync (idempotent - should skip existing identical file)
    res2 = guard._mirror_to_t7_vault(session_id, local_arch)
    assert res2["mirrored"] is True
    assert "segment_001.jsonl.gz" in res2["files_skipped_idempotent"]
    mtime_second = vault_file.stat().st_mtime
    assert mtime_first == mtime_second  # Proves zero overwrite / flash cell endurance preservation


def test_vault_unreachable_graceful_handling(temp_env):
    unreachable_vault = temp_env["root"] / "nonexistent_usb_device" / "vault" / "sessions"
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=unreachable_vault
    )
    session_id = "test_unreachable_ssn"
    local_arch = temp_env["archive"] / session_id
    local_arch.mkdir(parents=True, exist_ok=True)
    compress_segment_atomic(['{"step": 1}'], local_arch / "segment_001.jsonl.gz")

    # Mirroring should not crash with unhandled exception, must return mirrored: False
    res = guard._mirror_to_t7_vault(session_id, local_arch)
    assert res["mirrored"] is False
    assert res.get("code") == "VAULT_UNREACHABLE" or "error" in res or "reason" in res


def test_segment_index_schema_completeness(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"]
    )
    session_id = "test_schema_completeness_ssn"
    session_file = temp_env["root"] / f"{session_id}.jsonl"

    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(60):
            f.write(json.dumps({"step_index": i + 1, "input_tokens": 100, "output_tokens": 50, "content": f"Schema test step {i + 1}"}) + "\n")

    res = guard.slice_segments(str(session_file), segment_size=20, active_window=20)
    assert res["status"] == "SLICED_SUCCESSFULLY"

    # Compress segments and update index
    guard.archive_and_sync(session_id)

    index_path = temp_env["archive"] / session_id / "segment_index.json"
    assert index_path.exists()

    with open(index_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    # Validate root fields
    expected_root_keys = [
        "session_id", "generated_at_utc", "total_steps", "total_tokens",
        "total_bytes", "status", "harmonic_carrier_hz", "cluster_nodes",
        "thresholds", "active_window", "segments", "p0_safety_attestation"
    ]
    for key in expected_root_keys:
        assert key in data, f"Missing root key in segment_index.json: {key}"

    # Validate active window dict
    assert "start_step" in data["active_window"]
    assert "end_step" in data["active_window"]
    assert data["active_window"]["step_count"] == 20

    # Validate segments list
    assert len(data["segments"]) == 2  # (60 - 20) / 20 = 2 segments
    for seg in data["segments"]:
        assert "segment_index" in seg
        assert "filename" in seg
        assert "archived_gz" in seg
        assert "start_step" in seg
        assert "end_step" in seg
        assert "step_count" in seg
        assert "sha256" in seg
        assert "sha256_gz" in seg
        assert len(seg["sha256"]) == 64
        assert len(seg["sha256_gz"]) == 64


def test_cli_subcommands_invocation(temp_env):
    cli_script = Path(__file__).parents[1] / "scripts" / "global" / "session_segmenter_guard.py"

    # 1. Test CLI inspect on normal session
    norm_file = temp_env["root"] / "cli_norm.jsonl"
    with open(norm_file, "w", encoding="utf-8") as f:
        for i in range(5):
            f.write(json.dumps({"step_index": i, "input_tokens": 10}) + "\n")

    cmd_insp = [sys.executable, str(cli_script), "inspect", str(norm_file), "--json"]
    p_insp = subprocess.run(cmd_insp, capture_output=True, text=True)
    assert p_insp.returncode == 0
    data_insp = json.loads(p_insp.stdout)
    assert data_insp["status"] == "NORMAL"

    # 2. Test CLI inspect on brake session
    brake_file = temp_env["root"] / "cli_brake.jsonl"
    with open(brake_file, "w", encoding="utf-8") as f:
        for i in range(BRAKE_STEP_COUNT):
            f.write(json.dumps({"step_index": i, "input_tokens": 10}) + "\n")

    p_brake = subprocess.run([sys.executable, str(cli_script), "inspect", str(brake_file), "--json"], capture_output=True, text=True)
    assert p_brake.returncode == 2
    data_brake = json.loads(p_brake.stdout)
    assert data_brake["status"] == "BRAKE_ENGAGED"

    # 3. Test CLI legacy --check flag mapping
    p_check = subprocess.run([sys.executable, str(cli_script), str(norm_file), "--check", "--json"], capture_output=True, text=True)
    assert p_check.returncode == 0
    data_check = json.loads(p_check.stdout)
    assert data_check["status"] == "NORMAL"

    # 4. Test CLI status subcommand
    p_status = subprocess.run([sys.executable, str(cli_script), "status", "--json"], capture_output=True, text=True)
    assert p_status.returncode == 0
    data_status = json.loads(p_status.stdout)
    assert data_status["cluster_status"] == "ONLINE"


def test_guard_write_brake_enforcement(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"],
        rolling_window_size=10,
        segment_size=10
    )
    session_file = temp_env["root"] / "test_guard_write.jsonl"
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(BRAKE_STEP_COUNT):
            f.write(json.dumps({"step": i, "tokens": 100}) + "\n")

    # With auto_slice=False, should raise SessionBufferBrakeException
    with pytest.raises(SessionBufferBrakeException):
        guard.guard_write(str(session_file), {"step": 999, "tokens": 100}, auto_slice=False)

    # With auto_slice=True, should automatically slice and allow append
    res = guard.guard_write(str(session_file), {"step": 999, "tokens": 100}, auto_slice=True)
    assert res["action"] == "AUTO_SLICED_AND_APPENDED"
    # Sliced buffer, active window kept (10) + 1 appended step = 11
    with open(session_file, "r", encoding="utf-8") as f:
        lines = [l.strip() for l in f if l.strip()]
        assert len(lines) == 11


def test_guard_slice_when_steps_less_than_window_no_brake(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"],
        rolling_window_size=50
    )
    session_file = temp_env["root"] / "test_no_brake_small.jsonl"
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(15):
            f.write(json.dumps({"step": i, "tokens": 10}) + "\n")

    res = guard.slice_segments(str(session_file), active_window=50)
    assert res["status"] == "NO_SLICING_NEEDED"
    assert res["segments_created"] == 0
    # Original file must NOT be cleared
    with open(session_file, "r", encoding="utf-8") as f:
        lines = [l.strip() for l in f if l.strip()]
        assert len(lines) == 15


def test_guard_slice_when_steps_less_than_window_with_brake(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"],
        rolling_window_size=50,
        segment_size=5
    )
    session_file = temp_env["root"] / "test_brake_small.jsonl"
    # 20 steps with 10,000 tokens each = 200,000 tokens >= 180,000 (brake)
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(20):
            f.write(json.dumps({"step": i + 1, "tokens": 10000}) + "\n")

    res = guard.slice_segments(str(session_file), segment_size=5, active_window=50)
    assert res["status"] == "SLICED_SUCCESSFULLY"
    assert res["segments_created"] >= 1
    # Kept half (10 steps) in active window
    assert res["active_window_steps"] == 10
    with open(session_file, "r", encoding="utf-8") as f:
        lines = [l.strip() for l in f if l.strip()]
        assert len(lines) == 10


def test_dual_format_jsonl_and_gz_present(temp_env):
    guard = SessionSegmenterGuard(
        archive_base_dir=temp_env["archive"],
        vault_mirror_dir=temp_env["vault"],
        rolling_window_size=10,
        segment_size=10
    )
    session_file = temp_env["root"] / "test_dual_format.jsonl"
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(30):
            f.write(json.dumps({"step": i + 1, "tokens": 50}) + "\n")

    res = guard.slice_and_archive(str(session_file), rolling_window_size=10, segment_size=10)
    assert res["status"] == "SLICED_AND_ARCHIVED"

    arch_dir = temp_env["archive"] / "test_dual_format"
    # Verify both uncompressed .jsonl and compressed .jsonl.gz exist
    assert (arch_dir / "segment_001.jsonl").exists()
    assert (arch_dir / "segment_001.jsonl.gz").exists()
    assert (arch_dir / "segment_002.jsonl").exists()
    assert (arch_dir / "segment_002.jsonl.gz").exists()

    # Verify both in vault mirror
    vault_dir = temp_env["vault"] / "test_dual_format"
    assert (vault_dir / "segment_001.jsonl").exists()
    assert (vault_dir / "segment_001.jsonl.gz").exists()
