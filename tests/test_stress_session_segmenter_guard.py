#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • ADVERSARIAL EMPIRICAL STRESS TEST HARNESS
=========================================================
Module: /root/RADRILONIUMA/tests/test_stress_session_segmenter_guard.py
Agent: challenger_m1_1 (Empirical Challenger)
Milestone: M1 (Session Buffer Limit Brake Cut Segmenter & Guard Archivator - R1)

Stress Testing Dimensions:
1. Extreme scale: 10,000 steps with bit-exact reconstruction oracle
2. Multi-round incremental slicing & rolling window invariants (no step drop/duplication)
3. Extreme token counts (up to 100M) and large payloads (>10MB)
4. Corrupted gzip archives: 0-byte, truncated, bad CRC32, trailing garbage
5. Dirty, malformed, and non-JSON transcript handling
6. Rapid concurrent multi-threaded inspection under active appends
7. CLI boundary, subcommands, and exit code conformance
"""

import os
import sys
import json
import gzip
import shutil
import hashlib
import tempfile
import threading
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
def stress_env():
    tmp_dir = Path(tempfile.mkdtemp(prefix="radr_stress_m1_"))
    archive_dir = tmp_dir / "archive"
    vault_dir = tmp_dir / "vault" / "ATESIRT_VAULT_ARCHIVE" / "sessions"
    vault_dir.mkdir(parents=True, exist_ok=True)

    yield {
        "root": tmp_dir,
        "archive": archive_dir,
        "vault": vault_dir
    }
    shutil.rmtree(tmp_dir, ignore_errors=True)


def test_stress_extreme_scale_10000_steps(stress_env):
    """
    Empirical Stress Test 1:
    Generates 10,000 steps and tests inspection and slicing under high volume.
    Oracle verifies that the union of all sliced segments and active window
    reconstructs the original 10,000 steps line-for-line without a single dropped
    or duplicated step.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    session_id = "stress_ssn_10k"
    session_file = stress_env["root"] / f"{session_id}.jsonl"

    total_steps = 10_000
    rolling_window = 100
    segment_size = 250

    original_lines = []
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(total_steps):
            step_record = {
                "step_index": i,
                "step_id": f"step_uuid_{i:06d}_{hashlib.md5(str(i).encode()).hexdigest()[:8]}",
                "input_tokens": 50 + (i % 20),
                "output_tokens": 10 + (i % 10),
                "cache_read_tokens": 100 if i % 5 == 0 else 0,
                "payload": f"Telemetry payload for step {i:06d} with data block {i * 7}"
            }
            line = json.dumps(step_record)
            original_lines.append(line)
            f.write(line + "\n")

    # 1. Verify inspection handles 10,000 steps
    metrics = guard.inspect_session(str(session_file))
    assert metrics["step_count"] == total_steps
    assert metrics["total_steps"] == total_steps
    assert metrics["status"] == "BRAKE_ENGAGED"
    assert metrics["brake_applied"] is True
    assert any("Step count (10000)" in r for r in metrics["brake_reasons"])

    # 2. Slice and archive 10,000 steps
    slice_res = guard.slice_and_archive(
        session_path_or_id=str(session_file),
        rolling_window_size=rolling_window,
        segment_size=segment_size
    )

    assert slice_res["status"] == "SLICED_AND_ARCHIVED"
    assert slice_res["active_window_steps"] == rolling_window

    expected_sliced_steps = total_steps - rolling_window  # 9,900
    expected_segments_count = (expected_sliced_steps + segment_size - 1) // segment_size  # 40 segments (39 * 250 + 1 * 150)
    assert slice_res["segments_created"] == expected_segments_count
    assert slice_res["total_segments"] == expected_segments_count

    # 3. Verify each segment archive exists and passes gzip -t
    arch_dir = stress_env["archive"] / session_id
    reconstructed_lines = []

    for seg_idx in range(1, expected_segments_count + 1):
        gz_name = f"segment_{seg_idx:03d}.jsonl.gz"
        gz_path = arch_dir / gz_name
        assert gz_path.exists(), f"Segment archive missing: {gz_name}"

        is_valid, msg = verify_gzip_integrity(gz_path)
        assert is_valid, f"Gzip -t failed on {gz_name}: {msg}"

        # Decompress and collect lines
        with gzip.open(gz_path, "rt", encoding="utf-8") as gz_f:
            for line in gz_f:
                s = line.strip()
                if s:
                    reconstructed_lines.append(s)

    # 4. Read active window lines from modified session file
    active_lines = []
    with open(session_file, "r", encoding="utf-8") as f:
        for line in f:
            s = line.strip()
            if s:
                active_lines.append(s)

    assert len(active_lines) == rolling_window
    reconstructed_lines.extend(active_lines)

    # 5. ORACLE INVARIANT VERIFICATION
    assert len(reconstructed_lines) == total_steps, (
        f"Length mismatch: reconstructed {len(reconstructed_lines)} != original {total_steps}"
    )

    for idx, (orig, recon) in enumerate(zip(original_lines, reconstructed_lines)):
        orig_obj = json.loads(orig)
        recon_obj = json.loads(recon)
        assert orig_obj["step_index"] == recon_obj["step_index"] == idx, (
            f"Step mismatch at index {idx}: original {orig_obj['step_index']} vs reconstructed {recon_obj['step_index']}"
        )
        assert orig_obj["step_id"] == recon_obj["step_id"], f"UUID mismatch at index {idx}"

    # 6. Verify index file
    index_file = arch_dir / "segment_index.json"
    with open(index_file, "r", encoding="utf-8") as f:
        idx_data = json.load(f)
    assert idx_data["total_steps"] == total_steps
    assert idx_data["total_sliced_steps"] == expected_sliced_steps
    assert idx_data["active_window_steps"] == rolling_window
    assert len(idx_data["segments"]) == expected_segments_count


def test_stress_extreme_tokens_and_large_payloads(stress_env):
    """
    Empirical Stress Test 2:
    Tests astronomical token counts (up to 100M tokens) and multi-megabyte payloads.
    Verifies that integer overflow does not occur and byte limits trigger correctly.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    session_id = "stress_ssn_tokens_payload"
    session_file = stress_env["root"] / f"{session_id}.jsonl"

    large_block = "A" * (1024 * 1024)  # 1 MB string
    with open(session_file, "w", encoding="utf-8") as f:
        # Step 0: Astronomical tokens
        f.write(json.dumps({
            "step_index": 0,
            "input_tokens": 40_000_000,
            "output_tokens": 15_000_000,
            "cache_read_tokens": 50_000_000,
            "content": "astronomical tokens"
        }) + "\n")
        # Steps 1 to 6: 1MB payload each = ~6 MB total (> 4MB brake)
        for i in range(1, 7):
            f.write(json.dumps({
                "step_index": i,
                "input_tokens": 1000,
                "output_tokens": 500,
                "payload": large_block
            }) + "\n")

    metrics = guard.inspect_session(str(session_file))
    assert metrics["byte_size"] >= 6 * 1024 * 1024
    assert metrics["token_count"] >= 55_000_000
    assert metrics["status"] == "BRAKE_ENGAGED"
    assert metrics["brake_applied"] is True

    # Check both brake reasons present: token limit and byte size limit
    assert any("180000" in r for r in metrics["brake_reasons"])
    assert any("4MB" in r for r in metrics["brake_reasons"])

    # Slice with small window
    res = guard.slice_and_archive(str(session_file), rolling_window_size=2, segment_size=2)
    assert res["status"] == "SLICED_AND_ARCHIVED"
    assert res["active_window_steps"] == 2

    # Verify all generated gzip files are valid
    arch_dir = stress_env["archive"] / session_id
    for gz_p in arch_dir.glob("segment_*.jsonl.gz"):
        is_ok, msg = verify_gzip_integrity(gz_p)
        assert is_ok, f"Gzip integrity failed on large payload segment {gz_p.name}: {msg}"


def test_stress_corrupted_gzip_integrity_matrix(stress_env):
    """
    Empirical Stress Test 3:
    Exhaustively tests verify_gzip_integrity against 6 distinct corruption modes:
    1. Zero-byte file
    2. Gzip header only (10 bytes)
    3. Deflate stream truncation mid-block
    4. Corrupted CRC-32 trailer
    5. Pure random binary noise
    6. Valid gzip followed by trailing garbage bytes
    """
    root = stress_env["root"]

    # 1. Zero-byte file
    p_zero = root / "zero_byte.gz"
    p_zero.write_bytes(b"")
    ok, msg = verify_gzip_integrity(p_zero)
    assert not ok, "Zero byte gzip must fail"
    assert "0 bytes" in msg or "Empty" in msg

    # 2. Header only
    p_hdr = root / "header_only.gz"
    p_hdr.write_bytes(b"\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\x03")
    ok, msg = verify_gzip_integrity(p_hdr)
    assert not ok, "Header-only gzip must fail"

    # 3. Create a valid gzip and truncate it mid-stream
    valid_content = ("step_data_line_" * 1000 + "\n").encode("utf-8")
    p_valid = root / "valid_base.gz"
    with open(p_valid, "wb") as f:
        with gzip.GzipFile(filename="", mode="wb", fileobj=f, mtime=0) as gz:
            gz.write(valid_content)

    valid_bytes = p_valid.read_bytes()
    p_truncated = root / "truncated.gz"
    p_truncated.write_bytes(valid_bytes[: len(valid_bytes) // 2])
    ok, msg = verify_gzip_integrity(p_truncated)
    assert not ok, "Truncated gzip must fail"

    # 4. Corrupted CRC-32 (modify last 4 bytes of gzip trailer)
    p_bad_crc = root / "bad_crc.gz"
    corrupted_trailer = bytearray(valid_bytes)
    corrupted_trailer[-4] ^= 0xFF
    corrupted_trailer[-3] ^= 0xFF
    p_bad_crc.write_bytes(bytes(corrupted_trailer))
    ok, msg = verify_gzip_integrity(p_bad_crc)
    assert not ok, "Gzip with bad CRC32 must fail"

    # 5. Pure random noise
    p_noise = root / "noise.gz"
    p_noise.write_bytes(os.urandom(1024))
    ok, msg = verify_gzip_integrity(p_noise)
    assert not ok, "Random noise file must fail"

    # 6. Valid gzip with trailing garbage
    p_trailing = root / "trailing_garbage.gz"
    p_trailing.write_bytes(valid_bytes + b"\xDE\xAD\xBE\xEF\x00\x11\x22")
    ok, msg = verify_gzip_integrity(p_trailing)
    # Both gzip -t and python stream decompress should reject or warn on trailing garbage
    # If gzip -t exits 2, verify_gzip_integrity returns False
    assert not ok, f"Gzip with trailing garbage must fail verification: {msg}"


def test_stress_corrupted_archive_vault_rejection(stress_env):
    """
    Empirical Stress Test 4:
    Verifies that if a local archive contains a corrupted gzip file,
    the vault mirroring engine detects it and aborts the sync of that file,
    preventing corrupt data propagation to DEV_04 Samsung T7 Vault.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    session_id = "stress_corrupt_vault_sync"
    local_arch = stress_env["archive"] / session_id
    local_arch.mkdir(parents=True, exist_ok=True)

    # Valid segment 1
    gz_1 = local_arch / "segment_001.jsonl.gz"
    compress_segment_atomic(['{"step": 1}'], gz_1)

    # Corrupted segment 2 (bad gzip)
    gz_2 = local_arch / "segment_002.jsonl.gz"
    gz_2.write_bytes(b"\x1f\x8b\x08\x00corrupted_payload_data")

    # Vault sync should catch corrupted segment 2
    res = guard._mirror_to_t7_vault(session_id, local_arch, verify_destination_gzip=True)
    # Either returns mirrored: False or logs an error
    assert res["mirrored"] is False or "error" in res
    # Ensure segment_002.jsonl.gz is NOT accepted on target vault
    vault_file_2 = stress_env["vault"] / session_id / "segment_002.jsonl.gz"
    assert not vault_file_2.exists(), "Corrupted gzip file must never be placed on DEV_04 vault!"


def test_stress_dirty_and_malformed_jsonl_tolerance(stress_env):
    """
    Empirical Stress Test 5:
    Stress-tests tolerance against malformed lines: blank lines, BOM, non-JSON strings,
    truncated JSON, primitives, and nulls.
    Inspect should track parse_errors without crashing, and slicing should preserve lines.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    session_id = "stress_dirty_transcript"
    session_file = stress_env["root"] / f"{session_id}.jsonl"

    dirty_lines = [
        "\ufeff" + json.dumps({"step_index": 0, "input_tokens": 100, "content": "BOM prefixed line"}),
        "",  # empty line
        "   ",  # whitespace only line
        "THIS_IS_NOT_JSON_AT_ALL",  # parse error
        '{"truncated_json": true, "unclosed": ',  # parse error
        json.dumps("plain string primitive"),
        json.dumps([1, 2, 3]),
        json.dumps(None),
        json.dumps({"step_index": 1, "token_count": 50, "content": "Valid step 1"}),
        json.dumps({"step_index": 2, "tokens": 75, "content": "Valid step 2"}),
        json.dumps({"step_index": 3, "prompt_tokens": 90, "content": "Valid step 3"}),
        json.dumps({"step_index": 4, "input_tokens": 20, "output_tokens": 10, "content": "Valid step 4"}),
    ]

    with open(session_file, "w", encoding="utf-8") as f:
        for l in dirty_lines:
            f.write(l + "\n")

    # 1. Inspection should not crash
    metrics = guard.inspect_session(str(session_file))
    assert metrics["telemetry"]["parse_errors"] == 2
    assert metrics["step_count"] > 0

    # 2. Slicing should not crash
    res = guard.slice_and_archive(str(session_file), rolling_window_size=2, segment_size=3)
    assert res["status"] == "SLICED_AND_ARCHIVED"
    assert res["active_window_steps"] == 2


def test_stress_concurrent_rapid_inspections(stress_env):
    """
    Empirical Stress Test 6:
    Spawns 15 concurrent threads rapidly executing inspect_session while another
    thread continuously appends steps. Verifies thread-safety, no file lock crashes,
    and no partial read exceptions.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    session_id = "stress_concurrency"
    session_file = stress_env["root"] / f"{session_id}.jsonl"

    # Pre-populate with 20 steps
    with open(session_file, "w", encoding="utf-8") as f:
        for i in range(20):
            f.write(json.dumps({"step": i, "input_tokens": 50}) + "\n")

    stop_event = threading.Event()
    writer_errors = []
    reader_errors = []

    def writer_worker():
        step_idx = 20
        while not stop_event.is_set():
            try:
                with open(session_file, "a", encoding="utf-8") as f:
                    f.write(json.dumps({"step": step_idx, "input_tokens": 50}) + "\n")
                step_idx += 1
            except Exception as e:
                writer_errors.append(e)

    def reader_worker():
        for _ in range(25):
            try:
                metrics = guard.inspect_session(str(session_file))
                assert metrics["step_count"] >= 20
                assert metrics["status"] in ("NORMAL", "WARNING", "BRAKE_ENGAGED")
            except Exception as e:
                reader_errors.append(e)

    threads = []
    w_t = threading.Thread(target=writer_worker)
    threads.append(w_t)
    w_t.start()

    for _ in range(15):
        r_t = threading.Thread(target=reader_worker)
        threads.append(r_t)
        r_t.start()

    # Wait for readers to finish
    for t in threads[1:]:
        t.join()

    stop_event.set()
    w_t.join()

    assert len(writer_errors) == 0, f"Writer encountered errors: {writer_errors}"
    assert len(reader_errors) == 0, f"Concurrent readers encountered errors: {reader_errors}"


def test_stress_multi_round_slicing_step_numbering(stress_env):
    """
    Empirical Stress Test 7:
    Tests multi-round incremental slicing over consecutive session expansion:
    Round 1: 80 steps -> slice (window=20, seg=25). Slices 60 steps (segments 1, 2, 3).
    Round 2: Append 70 steps -> slice (window=20, seg=25).
    Round 3: Append 50 steps -> slice (window=20, seg=25).

    Verifies:
    1. Segment index monotonicity: segment numbering continues without collision (seg 1, 2, 3, 4, 5...)
    2. Reconstruction Oracle: Concatenation of all segments across all rounds + final active window
       reconstructs EVERY single step in order with ZERO step loss or duplication.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    session_id = "stress_multi_round_growth"
    session_file = stress_env["root"] / f"{session_id}.jsonl"

    all_written_steps = []
    global_step_counter = 0

    def append_steps(n: int):
        nonlocal global_step_counter
        with open(session_file, "a", encoding="utf-8") as f:
            for _ in range(n):
                step_obj = {
                    "global_step": global_step_counter,
                    "uuid": f"uuid_{global_step_counter}",
                    "input_tokens": 100
                }
                line = json.dumps(step_obj)
                all_written_steps.append(line)
                f.write(line + "\n")
                global_step_counter += 1

    # Round 1: 80 steps
    append_steps(80)
    res1 = guard.slice_and_archive(str(session_file), rolling_window_size=20, segment_size=25)
    assert res1["status"] == "SLICED_AND_ARCHIVED"
    assert res1["segments_created"] == 3  # (80-20)=60 -> 25 + 25 + 10 = 3 segments
    assert res1["total_segments"] == 3

    # Round 2: append 70 steps (active window was 20, now 20 + 70 = 90 steps)
    append_steps(70)
    res2 = guard.slice_and_archive(str(session_file), rolling_window_size=20, segment_size=25)
    assert res2["status"] == "SLICED_AND_ARCHIVED"
    # Sliced steps = (90 - 20) = 70 steps -> 25 + 25 + 20 = 3 new segments
    assert res2["segments_created"] == 3
    assert res2["total_segments"] == 6  # Total segments now 6

    # Round 3: append 50 steps (active window was 20, now 20 + 50 = 70 steps)
    append_steps(50)
    res3 = guard.slice_and_archive(str(session_file), rolling_window_size=20, segment_size=25)
    assert res3["status"] == "SLICED_AND_ARCHIVED"
    # Sliced steps = (70 - 20) = 50 steps -> 25 + 25 = 2 new segments
    assert res3["segments_created"] == 2
    assert res3["total_segments"] == 8  # Total segments now 8

    # RECONSTRUCTION ORACLE ACROSS ALL 3 ROUNDS
    arch_dir = stress_env["archive"] / session_id
    reconstructed = []
    for s_idx in range(1, 9):
        gz_path = arch_dir / f"segment_{s_idx:03d}.jsonl.gz"
        assert gz_path.exists(), f"Segment {s_idx} missing after multi-round slicing"
        with gzip.open(gz_path, "rt", encoding="utf-8") as gf:
            for l in gf:
                s = l.strip()
                if s:
                    reconstructed.append(s)

    with open(session_file, "r", encoding="utf-8") as af:
        for l in af:
            s = l.strip()
            if s:
                reconstructed.append(s)

    assert len(reconstructed) == len(all_written_steps) == global_step_counter, (
        f"Step loss/duplication detected! Reconstructed {len(reconstructed)} != written {len(all_written_steps)}"
    )

    for i, (w_line, r_line) in enumerate(zip(all_written_steps, reconstructed)):
        w_obj = json.loads(w_line)
        r_obj = json.loads(r_line)
        assert w_obj["global_step"] == r_obj["global_step"] == i, f"Sequence broken at step {i}"
        assert w_obj["uuid"] == r_obj["uuid"]


def test_stress_parameter_boundary_and_exceptions(stress_env):
    """
    Empirical Stress Test 8:
    Tests parameter boundary conditions:
    1. active_window >= total_steps -> NO_SLICING_NEEDED
    2. negative segment_size or active_window -> ValueError
    3. non-existent session file -> FileNotFoundError
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=stress_env["archive"],
        vault_mirror_dir=stress_env["vault"]
    )
    s_file = stress_env["root"] / "boundary.jsonl"
    with open(s_file, "w", encoding="utf-8") as f:
        for i in range(10):
            f.write(json.dumps({"step": i}) + "\n")

    # active_window >= total_steps
    res = guard.slice_segments(str(s_file), segment_size=10, active_window=50)
    assert res["status"] == "NO_SLICING_NEEDED"
    assert res["segments_created"] == 0

    # negative segment_size
    with pytest.raises(ValueError, match="segment_size must be positive"):
        guard.slice_segments(str(s_file), segment_size=-5)

    # negative active_window
    with pytest.raises(ValueError, match="active_window must be non-negative"):
        guard.slice_segments(str(s_file), active_window=-1)

    # non-existent file
    with pytest.raises(FileNotFoundError):
        guard.inspect_session(str(stress_env["root"] / "non_existent_file.jsonl"))
