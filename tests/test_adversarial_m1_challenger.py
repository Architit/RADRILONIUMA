#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • ADVERSARIAL CHALLENGER VERIFICATION SUITE
Target: Milestone M1 (Session Buffer Limit Brake Cut Segmenter & Guard Archivator)
Agent: challenger_m1_2
Focus Areas:
1. P0 Safety: No destructive partition writes; strict collision protection on DEV_04.
2. Vault Sync Idempotency: Zero re-writes, preservation of flash write endurance.
3. Brake Thresholds: Exact boundary precision (80/120k warn, 150/180k/>4MB brake).
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
def adv_env():
    tmp_dir = Path(tempfile.mkdtemp(prefix="adv_m1_test_"))
    archive_dir = tmp_dir / "archive" / "sessions"
    vault_dir = tmp_dir / "vault" / "ATESIRT_VAULT_ARCHIVE" / "sessions"
    archive_dir.mkdir(parents=True, exist_ok=True)
    vault_dir.mkdir(parents=True, exist_ok=True)

    yield {
        "root": tmp_dir,
        "archive": archive_dir,
        "vault": vault_dir
    }
    shutil.rmtree(tmp_dir, ignore_errors=True)


# ==============================================================================
# SECTION 1: P0 SAFETY ADVERSARIAL TESTS
# ==============================================================================

def test_p0_safety_collision_blocks_overwrite_differing_gz(adv_env):
    """
    CRITICAL P0 SAFETY CHECK:
    If DEV_04 already contains a segment archive (.jsonl.gz) with differing content,
    the sync engine MUST NOT overwrite it. The differing file on DEV_04 must remain
    byte-for-byte intact, and the operation must fail / raise collision error.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )
    session_id = "p0_collision_test_ssn"

    # 1. Create local archive with segment_001.jsonl.gz
    local_dir = adv_env["archive"] / session_id
    local_dir.mkdir(parents=True, exist_ok=True)
    local_gz = local_dir / "segment_001.jsonl.gz"
    compress_segment_atomic(['{"step": 1, "content": "local source data"}'], local_gz)
    local_sha256 = hashlib.sha256(local_gz.read_bytes()).hexdigest()

    # 2. Plant pre-existing conflicting file on DEV_04 vault
    vault_dir = adv_env["vault"] / session_id
    vault_dir.mkdir(parents=True, exist_ok=True)
    vault_gz = vault_dir / "segment_001.jsonl.gz"
    compress_segment_atomic(['{"step": 1, "content": "PRE-EXISTING SACRED VAULT DATA DO NOT OVERWRITE"}'], vault_gz)
    sacred_bytes = vault_gz.read_bytes()
    sacred_sha256 = hashlib.sha256(sacred_bytes).hexdigest()

    assert local_sha256 != sacred_sha256, "Hashes must differ for collision test"

    # 3. Attempt sync
    sync_result = guard.sync_to_vault(session_id)

    # 4. Verify P0 invariant: sync reported failure and sacred file was NOT modified
    assert sync_result["mirrored"] is False
    assert "collision" in sync_result.get("error", "").lower()

    # Empirical check on DEV_04
    current_vault_bytes = vault_gz.read_bytes()
    assert current_vault_bytes == sacred_bytes, "VIOLATION: Differing vault file was modified or overwritten!"
    assert hashlib.sha256(current_vault_bytes).hexdigest() == sacred_sha256


def test_p0_safety_collision_blocks_overwrite_differing_jsonl(adv_env):
    """
    Verify that uncompressed .jsonl files with differing checksums are also blocked.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )
    session_id = "p0_jsonl_collision_ssn"

    local_dir = adv_env["archive"] / session_id
    local_dir.mkdir(parents=True, exist_ok=True)
    (local_dir / "segment_001.jsonl").write_text('{"step": 1, "v": "new"}', encoding="utf-8")

    vault_dir = adv_env["vault"] / session_id
    vault_dir.mkdir(parents=True, exist_ok=True)
    vault_file = vault_dir / "segment_001.jsonl"
    vault_file.write_text('{"step": 1, "v": "sacred"}', encoding="utf-8")
    sacred_content = vault_file.read_text(encoding="utf-8")

    sync_result = guard.sync_to_vault(session_id)
    assert sync_result["mirrored"] is False
    assert vault_file.read_text(encoding="utf-8") == sacred_content


def test_p0_safety_vault_unreachable_no_side_effects(adv_env):
    """
    Verify that if the vault path parent does not exist (unmounted external drive),
    sync fails gracefully with code VAULT_UNREACHABLE without throwing unhandled exceptions.
    """
    unmounted_vault = adv_env["root"] / "nonexistent_f_drive" / "ATESIRT_VAULT_ARCHIVE" / "sessions"
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=unmounted_vault
    )
    session_id = "p0_unmounted_test_ssn"
    local_dir = adv_env["archive"] / session_id
    local_dir.mkdir(parents=True, exist_ok=True)
    compress_segment_atomic(['{"step": 1}'], local_dir / "segment_001.jsonl.gz")

    result = guard.sync_to_vault(session_id)
    assert result["mirrored"] is False
    assert result.get("code") == "VAULT_UNREACHABLE"


# ==============================================================================
# SECTION 2: VAULT SYNC IDEMPOTENCY ADVERSARIAL TESTS
# ==============================================================================

def test_vault_sync_idempotency_multirun_flash_endurance(adv_env):
    """
    Verify that repeated sync runs NEVER re-copy identical files:
    - Run 1: initial copy (files_copied populated).
    - Run 2: idempotent skip (files_copied empty, files_skipped_idempotent populated).
    - Run 3: idempotent skip.
    - Destination file mtime must remain unchanged across runs 2 and 3.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )
    session_id = "idempotency_multirun_ssn"
    local_dir = adv_env["archive"] / session_id
    local_dir.mkdir(parents=True, exist_ok=True)

    compress_segment_atomic(['{"step": 1}'], local_dir / "segment_001.jsonl.gz")
    compress_segment_atomic(['{"step": 2}'], local_dir / "segment_002.jsonl.gz")
    (local_dir / "segment_index.json").write_text('{"session_id": "test", "segments": []}', encoding="utf-8")

    # Run 1: Initial Sync
    r1 = guard.sync_to_vault(session_id)
    assert r1["mirrored"] is True
    assert set(r1["files_copied"]) == {"segment_001.jsonl.gz", "segment_002.jsonl.gz", "segment_index.json"}
    assert len(r1["files_skipped_idempotent"]) == 0

    vault_seg1 = adv_env["vault"] / session_id / "segment_001.jsonl.gz"
    vault_seg2 = adv_env["vault"] / session_id / "segment_002.jsonl.gz"
    vault_idx = adv_env["vault"] / session_id / "segment_index.json"

    mtime_seg1_r1 = vault_seg1.stat().st_mtime_ns
    mtime_seg2_r1 = vault_seg2.stat().st_mtime_ns
    mtime_idx_r1 = vault_idx.stat().st_mtime_ns

    # Run 2: Repeat Sync Immediately
    r2 = guard.sync_to_vault(session_id)
    assert r2["mirrored"] is True
    assert len(r2["files_copied"]) == 0, f"Expected 0 files copied on run 2, got: {r2['files_copied']}"
    assert set(r2["files_skipped_idempotent"]) == {"segment_001.jsonl.gz", "segment_002.jsonl.gz", "segment_index.json"}

    # Mtimes must not have changed
    assert vault_seg1.stat().st_mtime_ns == mtime_seg1_r1, "Flash wear violation: segment_001 mtime changed!"
    assert vault_seg2.stat().st_mtime_ns == mtime_seg2_r1, "Flash wear violation: segment_002 mtime changed!"
    assert vault_idx.stat().st_mtime_ns == mtime_idx_r1, "Flash wear violation: segment_index mtime changed!"

    # Run 3: Repeat Sync a Third Time
    r3 = guard.sync_to_vault(session_id)
    assert r3["mirrored"] is True
    assert len(r3["files_copied"]) == 0
    assert set(r3["files_skipped_idempotent"]) == {"segment_001.jsonl.gz", "segment_002.jsonl.gz", "segment_index.json"}
    assert vault_seg1.stat().st_mtime_ns == mtime_seg1_r1


def test_vault_sync_incremental_addition_skips_existing(adv_env):
    """
    Verify that when a new segment is added locally, only the new segment is copied;
    the previously copied segments are skipped.
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )
    session_id = "incremental_sync_ssn"
    local_dir = adv_env["archive"] / session_id
    local_dir.mkdir(parents=True, exist_ok=True)

    compress_segment_atomic(['{"step": 1}'], local_dir / "segment_001.jsonl.gz")
    r1 = guard.sync_to_vault(session_id)
    assert "segment_001.jsonl.gz" in r1["files_copied"]

    # Now add segment_002
    compress_segment_atomic(['{"step": 2}'], local_dir / "segment_002.jsonl.gz")
    r2 = guard.sync_to_vault(session_id)
    assert "segment_002.jsonl.gz" in r2["files_copied"]
    assert "segment_001.jsonl.gz" in r2["files_skipped_idempotent"]


# ==============================================================================
# SECTION 3: BRAKE THRESHOLD PRECISION ADVERSARIAL TESTS
# ==============================================================================

def test_brake_threshold_step_boundaries(adv_env):
    """
    Verify exact step count boundary behavior:
    - 79 steps: NORMAL (not warning)
    - 80 steps: WARNING (not brake)
    - 149 steps: WARNING (not brake)
    - 150 steps: BRAKE_ENGAGED
    - 151 steps: BRAKE_ENGAGED
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )

    def make_steps_file(count: int, name: str) -> Path:
        p = adv_env["root"] / name
        with open(p, "w", encoding="utf-8") as f:
            for i in range(count):
                f.write(json.dumps({"step": i, "input_tokens": 10}) + "\n")
        return p

    # 79 steps -> NORMAL
    m79 = guard.inspect_session(str(make_steps_file(79, "s79.jsonl")))
    assert m79["step_count"] == 79
    assert m79["status"] == "NORMAL"
    assert m79["warning_triggered"] is False
    assert m79["brake_applied"] is False

    # 80 steps -> WARNING
    m80 = guard.inspect_session(str(make_steps_file(80, "s80.jsonl")))
    assert m80["step_count"] == 80
    assert m80["status"] == "WARNING"
    assert m80["warning_triggered"] is True
    assert m80["brake_applied"] is False

    # 149 steps -> WARNING
    m149 = guard.inspect_session(str(make_steps_file(149, "s149.jsonl")))
    assert m149["step_count"] == 149
    assert m149["status"] == "WARNING"
    assert m149["warning_triggered"] is True
    assert m149["brake_applied"] is False

    # 150 steps -> BRAKE_ENGAGED
    m150 = guard.inspect_session(str(make_steps_file(150, "s150.jsonl")))
    assert m150["step_count"] == 150
    assert m150["status"] == "BRAKE_ENGAGED"
    assert m150["brake_applied"] is True

    # 151 steps -> BRAKE_ENGAGED
    m151 = guard.inspect_session(str(make_steps_file(151, "s151.jsonl")))
    assert m151["step_count"] == 151
    assert m151["status"] == "BRAKE_ENGAGED"
    assert m151["brake_applied"] is True


def test_brake_threshold_token_boundaries(adv_env):
    """
    Verify exact token count boundary behavior:
    - 119,999 tokens: NORMAL
    - 120,000 tokens: WARNING
    - 179,999 tokens: WARNING
    - 180,000 tokens: BRAKE_ENGAGED
    - 180,001 tokens: BRAKE_ENGAGED
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )

    def make_token_file(tokens: int, name: str) -> Path:
        p = adv_env["root"] / name
        with open(p, "w", encoding="utf-8") as f:
            f.write(json.dumps({"step": 1, "input_tokens": tokens, "output_tokens": 0}) + "\n")
        return p

    # 119,999 tokens -> NORMAL
    m119k = guard.inspect_session(str(make_token_file(119_999, "t119k.jsonl")))
    assert m119k["token_count"] == 119_999
    assert m119k["status"] == "NORMAL"
    assert m119k["warning_triggered"] is False
    assert m119k["brake_applied"] is False

    # 120,000 tokens -> WARNING
    m120k = guard.inspect_session(str(make_token_file(120_000, "t120k.jsonl")))
    assert m120k["token_count"] == 120_000
    assert m120k["status"] == "WARNING"
    assert m120k["warning_triggered"] is True
    assert m120k["brake_applied"] is False

    # 179,999 tokens -> WARNING
    m179k = guard.inspect_session(str(make_token_file(179_999, "t179k.jsonl")))
    assert m179k["token_count"] == 179_999
    assert m179k["status"] == "WARNING"
    assert m179k["warning_triggered"] is True
    assert m179k["brake_applied"] is False

    # 180,000 tokens -> BRAKE_ENGAGED
    m180k = guard.inspect_session(str(make_token_file(180_000, "t180k.jsonl")))
    assert m180k["token_count"] == 180_000
    assert m180k["status"] == "BRAKE_ENGAGED"
    assert m180k["brake_applied"] is True

    # 180,001 tokens -> BRAKE_ENGAGED
    m180k1 = guard.inspect_session(str(make_token_file(180_001, "t180k1.jsonl")))
    assert m180k1["token_count"] == 180_001
    assert m180k1["status"] == "BRAKE_ENGAGED"
    assert m180k1["brake_applied"] is True


def test_brake_threshold_byte_size_boundaries(adv_env):
    """
    Verify exact byte size boundary behavior:
    4MB = 4,194,304 bytes
    - 4,194,303 bytes (and steps < 80, tokens < 120k) -> NORMAL
    - 4,194,304 bytes (exactly 4MB) -> BRAKE_ENGAGED
    - 4,194,305 bytes (> 4MB) -> BRAKE_ENGAGED
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )

    def make_sized_file(target_bytes: int, name: str) -> Path:
        p = adv_env["root"] / name
        prefix = '{"step": 1, "input_tokens": 10, "payload": "'
        suffix = '"}\n'
        needed_padding = target_bytes - len(prefix.encode("utf-8")) - len(suffix.encode("utf-8"))
        assert needed_padding > 0, "target_bytes too small"
        with open(p, "wb") as f:
            f.write(prefix.encode("utf-8"))
            f.write(b"x" * needed_padding)
            f.write(suffix.encode("utf-8"))
        assert p.stat().st_size == target_bytes, f"Expected {target_bytes}, got {p.stat().st_size}"
        return p

    # 4MB - 1 byte = 4,194,303 bytes
    p_sub = make_sized_file(BRAKE_BYTE_SIZE - 1, "b_sub.jsonl")
    m_sub = guard.inspect_session(str(p_sub))
    assert m_sub["byte_size"] == BRAKE_BYTE_SIZE - 1
    # tokens are small (explicit input_tokens: 10 overrides fallback)
    assert m_sub["status"] == "NORMAL"
    assert m_sub["brake_applied"] is False

    # exactly 4MB = 4,194,304 bytes
    p_exact = make_sized_file(BRAKE_BYTE_SIZE, "b_exact.jsonl")
    m_exact = guard.inspect_session(str(p_exact))
    assert m_exact["byte_size"] == BRAKE_BYTE_SIZE
    assert m_exact["status"] == "BRAKE_ENGAGED"
    assert m_exact["brake_applied"] is True
    assert any("4MB threshold" in r for r in m_exact["brake_reasons"])

    # 4MB + 1 byte = 4,194,305 bytes
    p_plus = make_sized_file(BRAKE_BYTE_SIZE + 1, "b_plus.jsonl")
    m_plus = guard.inspect_session(str(p_plus))
    assert m_plus["byte_size"] == BRAKE_BYTE_SIZE + 1
    assert m_plus["status"] == "BRAKE_ENGAGED"
    assert m_plus["brake_applied"] is True


def test_adversarial_token_telemetry_resilience(adv_env):
    """
    Stress-test token extraction with adversarial payloads:
    1. String token counts: "input_tokens": "5000"
    2. Alternate keys: "tokens", "total_tokens", "prompt_tokens"
    3. Missing token fields (fallback len // 4)
    4. Corrupted JSON lines mixed with valid lines
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"]
    )
    p = adv_env["root"] / "adv_tokens.jsonl"
    with open(p, "w", encoding="utf-8") as f:
        # String tokens
        f.write(json.dumps({"step": 1, "input_tokens": "2000", "output_tokens": "500"}) + "\n")
        # Alternate keys
        f.write(json.dumps({"step": 2, "total_tokens": 3000}) + "\n")
        f.write(json.dumps({"step": 3, "prompt_tokens": 4000}) + "\n")
        # Corrupted line
        f.write("CORRUPT_NOT_JSON_DATA_HERE\n")
        # Empty line
        f.write("\n")
        # Fallback payload (1000 chars -> 250 tokens)
        f.write(json.dumps({"step": 4, "content": "a" * 1000}) + "\n")

    metrics = guard.inspect_session(str(p))
    assert metrics["step_count"] == 4  # 4 valid lines
    assert metrics["telemetry"]["parse_errors"] == 1  # 1 corrupt line
    assert metrics["telemetry"]["steps_with_tokens"] == 3
    assert metrics["telemetry"]["steps_fallback"] == 1
    # 2500 + 3000 + 4000 + 250 = 9750 tokens
    assert metrics["token_count"] == 9750


def test_adversarial_guard_write_auto_slice_recovery(adv_env):
    """
    Test guard_write under stress:
    Fill session to 150 steps, attempt guard_write:
    - auto_slice=False raises SessionBufferBrakeException
    - auto_slice=True automatically slices, shrinks active window to 50, appends step,
      leaving active file with 51 steps (status NORMAL).
    """
    guard = SessionSegmenterGuard(
        archive_base_dir=adv_env["archive"],
        vault_mirror_dir=adv_env["vault"],
        rolling_window_size=50,
        segment_size=50
    )
    p = adv_env["root"] / "guard_stress.jsonl"
    with open(p, "w", encoding="utf-8") as f:
        for i in range(150):
            f.write(json.dumps({"step": i + 1, "input_tokens": 10}) + "\n")

    # auto_slice=False -> raises SessionBufferBrakeException
    with pytest.raises(SessionBufferBrakeException) as exc_info:
        guard.guard_write(str(p), {"step": 151, "input_tokens": 10}, auto_slice=False)
    assert "BRAKE ENGAGED" in str(exc_info.value)

    # auto_slice=True -> auto slices into archive and resets active buffer
    res = guard.guard_write(str(p), {"step": 151, "input_tokens": 10}, auto_slice=True)
    assert res["action"] == "AUTO_SLICED_AND_APPENDED"

    # Active file should now have 50 retained + 1 new = 51 steps
    with open(p, "r", encoding="utf-8") as f:
        lines = [l.strip() for l in f if l.strip()]
        assert len(lines) == 51

    # New inspection should report NORMAL status (51 steps < 80 warn threshold)
    new_metrics = guard.inspect_session(str(p))
    assert new_metrics["step_count"] == 51
    assert new_metrics["status"] == "NORMAL"
    assert new_metrics["brake_applied"] is False
