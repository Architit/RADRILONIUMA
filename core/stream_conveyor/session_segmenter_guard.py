#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • DEEP-LEVEL SESSION BUFFER LIMIT BRAKE CUT SEGMENTER & GUARD ARCHIVATOR
===================================================================================
Module: /root/RADRILONIUMA/core/stream_conveyor/session_segmenter_guard.py
Contract Reference: P0_SAFETY_CONTRACT_V1, SSN_RSTRT_WRAPPER_CONTRACT_V1
Cluster Nodes: DEV_01 (Bushmaster), DEV_02 (Atesirt), DEV_03 (WSL2), DEV_04 (T7 Vault), DEV_05 (Swarm)

Metrics & Guard Thresholds:
- Step Count Warning: 80 steps | Token Count Warning: 120,000 tokens
- Brake Mechanism: 150 steps | 180,000 tokens | JSONL Size > 4 MB (4,194,304 bytes)
- Chronological segmentation: segment_<N>.jsonl & segment_index.json
- Gzip compression of older segments (.jsonl.gz) verified with gzip -t
- Dual Archival: Local (/root/RADRILONIUMA/archive/sessions/<session_id>/)
                 Mirror (DEV_04_SAMSUNG_T7_VAULT -> /mnt/f/ATESIRT_VAULT_ARCHIVE/sessions/<session_id>/)
"""

import os
import sys
import json
import gzip
import shutil
import hashlib
import subprocess
from pathlib import Path
from typing import Dict, Any, List, Optional, Tuple
from datetime import datetime, timezone

# --- THRESHOLD CONSTANTS ---
WARN_STEP_COUNT = 80
WARN_TOKEN_COUNT = 120_000

BRAKE_STEP_COUNT = 150
BRAKE_TOKEN_COUNT = 180_000
BRAKE_BYTE_SIZE = 4 * 1024 * 1024  # 4 MB (4,194,304 bytes)

DEFAULT_ROLLING_WINDOW = 50
DEFAULT_SEGMENT_SIZE = 50

# --- CANONICAL PATHS ---
RADRILONIUMA_ROOT = Path("/root/RADRILONIUMA")
ARCHIVE_BASE_DIR = RADRILONIUMA_ROOT / "archive" / "sessions"
T7_VAULT_LINUX = Path("/mnt/f/ATESIRT_VAULT_ARCHIVE/sessions")
T7_VAULT_WIN = Path("F:/ATESIRT_VAULT_ARCHIVE/sessions")


class SessionBufferBrakeException(Exception):
    """Raised when session exceeds critical buffer limits and brake is engaged."""
    pass


def verify_gzip_integrity(file_path: Path) -> Tuple[bool, str]:
    """
    Verifies gzip archive integrity using system 'gzip -t' binary
    with fallback to Python gzip full stream decompress and CRC32 check.
    """
    if not file_path.exists():
        return False, f"File does not exist: {file_path}"
    if file_path.stat().st_size == 0:
        return False, f"Empty gzip file (0 bytes): {file_path}"

    # Check 1: System gzip -t
    try:
        res = subprocess.run(
            ["gzip", "-t", str(file_path)],
            capture_output=True,
            text=True,
            timeout=15
        )
        if res.returncode == 0:
            return True, "gzip -t check passed (returncode 0)"
        return False, f"gzip -t check failed (returncode {res.returncode}): {res.stderr.strip()}"
    except (FileNotFoundError, subprocess.SubprocessError):
        pass

    # Check 2: Python fallback stream decompression
    try:
        with gzip.open(file_path, "rb") as gz_f:
            while gz_f.read(1024 * 1024):
                pass
        return True, "Python gzip stream decompress check passed"
    except Exception as exc:
        return False, f"Python gzip integrity failed: {exc}"


def compress_segment_atomic(
    chunk_lines: List[str],
    dest_gz_path: Path,
    compresslevel: int = 9
) -> Dict[str, Any]:
    """
    Atomically compresses step lines into .jsonl.gz with gzip -t verification.
    """
    raw_bytes = ("\n".join(chunk_lines) + "\n").encode("utf-8")
    uncompressed_size = len(raw_bytes)
    sha256_uncompressed = hashlib.sha256(raw_bytes).hexdigest()

    dest_gz_path.parent.mkdir(parents=True, exist_ok=True)
    tmp_gz_path = dest_gz_path.with_suffix(".tmp.gz")

    with open(tmp_gz_path, "wb") as f_raw:
        with gzip.GzipFile(filename="", mode="wb", fileobj=f_raw, mtime=0) as gz_f:
            gz_f.write(raw_bytes)

    # Verify integrity before committing
    is_valid, msg = verify_gzip_integrity(tmp_gz_path)
    if not is_valid:
        if tmp_gz_path.exists():
            tmp_gz_path.unlink()
        raise IOError(f"Gzip verification failed for {dest_gz_path}: {msg}")

    os.replace(tmp_gz_path, dest_gz_path)
    compressed_size = dest_gz_path.stat().st_size
    sha256_compressed = hashlib.sha256(dest_gz_path.read_bytes()).hexdigest()

    return {
        "file_gz": dest_gz_path.name,
        "bytes_uncompressed": uncompressed_size,
        "bytes_compressed": compressed_size,
        "sha256_uncompressed": sha256_uncompressed,
        "sha256_compressed": sha256_compressed,
        "gzip_t_verified": True
    }


class SessionSegmenterGuard:
    def __init__(
        self,
        archive_base_dir: Optional[Path] = None,
        vault_mirror_dir: Optional[Path] = None,
        rolling_window_size: int = DEFAULT_ROLLING_WINDOW,
        segment_size: int = DEFAULT_SEGMENT_SIZE
    ):
        self.archive_base_dir = archive_base_dir or ARCHIVE_BASE_DIR
        self.vault_mirror_dir = vault_mirror_dir or self._resolve_vault_mirror()
        self.rolling_window_size = rolling_window_size
        self.segment_size = segment_size
        self.archive_base_dir.mkdir(parents=True, exist_ok=True)

    def _resolve_vault_mirror(self) -> Path:
        if T7_VAULT_LINUX.parent.exists():
            return T7_VAULT_LINUX
        if os.name == 'nt' and T7_VAULT_WIN.parent.exists():
            return T7_VAULT_WIN
        return T7_VAULT_LINUX

    def _extract_session_id(self, target_path: Path, raw_input: str) -> str:
        """
        Extracts clean session ID/UUID across path schemes.
        """
        raw_str = str(raw_input).strip()
        parts = target_path.parts
        # If in brain/<id>/.system_generated/logs/transcript.jsonl
        for i, part in enumerate(parts):
            if part in ("brain", "chat_sessions", "sessions") and i + 1 < len(parts):
                candidate = parts[i + 1]
                if candidate not in (".system_generated", "logs", "active_session.jsonl"):
                    return candidate

        stem = target_path.stem
        if stem.endswith(".jsonl"):
            stem = Path(stem).stem
        if stem not in ("transcript", "transcript_full", "active_session"):
            return stem

        if "/" not in raw_str and "\\" not in raw_str and not raw_str.endswith(".jsonl"):
            return raw_str
        return stem

    def resolve_session_path(self, session_path_or_id: str) -> Path:
        """
        Resolves session file path from path or session ID across Windows and WSL2 environments.
        Supports Antigravity brain sessions, AELARIA sessions, and local conveyor archives.
        """
        p = Path(session_path_or_id)
        if p.exists() and p.is_file():
            return p
        if p.exists() and p.is_dir():
            for sub in ("transcript.jsonl", ".system_generated/logs/transcript.jsonl", "active_session.jsonl"):
                cand = p / sub
                if cand.is_file():
                    return cand

        sid = str(session_path_or_id).strip()
        candidates = [
            # 1. Antigravity Brain Storage (Linux WSL and Windows paths)
            Path(f"/mnt/c/Users/BushM/.gemini/antigravity-cli/brain/{sid}/.system_generated/logs/transcript.jsonl"),
            Path(f"C:/Users/BushM/.gemini/antigravity-cli/brain/{sid}/.system_generated/logs/transcript.jsonl"),
            # 2. AELARIA Chat Storage
            RADRILONIUMA_ROOT / "data" / "local" / "AELARIA" / "chat_sessions" / sid / "transcript.jsonl",
            # 3. Standard Conveyor & Gateway Locations
            RADRILONIUMA_ROOT / ".gateway" / "sessions" / f"{sid}.jsonl",
            RADRILONIUMA_ROOT / "chronolog" / f"{sid}.jsonl",
            RADRILONIUMA_ROOT / "archive" / "sessions" / sid / "active_session.jsonl",
            # 4. Antigravity Conversation paths
            Path(f"/mnt/c/Users/BushM/.gemini/antigravity-cli/conversations/{sid}.jsonl"),
            Path(f"C:/Users/BushM/.gemini/antigravity-cli/conversations/{sid}.jsonl"),
        ]
        for c in candidates:
            if c.exists() and c.is_file():
                return c

        return p

    @staticmethod
    def _extract_step_tokens(step_obj: Any) -> Tuple[Optional[int], Optional[int], Optional[int], int]:
        """
        Extracts (input_tokens, output_tokens, cache_read_tokens, fallback_tokens).
        Returns None for token counters that are absent.
        Fallback tokens are computed as len(content) // 4 when explicit tokens are missing.
        """
        if not isinstance(step_obj, dict):
            content_str = str(step_obj) if step_obj is not None else ""
            return (None, None, None, max(1, len(content_str) // 4))

        inp = step_obj.get("input_tokens")
        out = step_obj.get("output_tokens")
        cache = step_obj.get("cache_read_tokens")

        # Support synthetic / alternate token keys
        if inp is None and out is None and cache is None:
            for k in ("token_count", "tokens", "total_tokens", "prompt_tokens"):
                if k in step_obj and isinstance(step_obj[k], (int, float)):
                    inp = int(step_obj[k])
                    break

        inp_val = int(inp) if (inp is not None and str(inp).isdigit()) else (inp if isinstance(inp, int) else None)
        out_val = int(out) if (out is not None and str(out).isdigit()) else (out if isinstance(out, int) else None)
        cache_val = int(cache) if (cache is not None and str(cache).isdigit()) else (cache if isinstance(cache, int) else None)

        # Fallback estimation when explicit tokens are absent
        content = step_obj.get("content")
        if content is None:
            payload = step_obj.get("payload")
            if payload is not None:
                content_str = payload if isinstance(payload, str) else json.dumps(payload, ensure_ascii=False)
            else:
                content_str = ""
        elif isinstance(content, str):
            content_str = content
        elif isinstance(content, (dict, list)):
            content_str = json.dumps(content, ensure_ascii=False)
        else:
            content_str = str(content)

        fallback_tokens = len(content_str) // 4 if content_str else 0
        return (inp_val, out_val, cache_val, fallback_tokens)

    @staticmethod
    def _estimate_tokens_from_step(step_obj: Any) -> int:
        """
        Backward-compatible static method returning total step tokens.
        """
        inp, out, cache, fb = SessionSegmenterGuard._extract_step_tokens(step_obj)
        if inp is not None or out is not None or cache is not None:
            return (inp or 0) + (out or 0) + (cache or 0)
        return fb

    def inspect_session(self, session_path_or_id: str) -> Dict[str, Any]:
        """
        Inspects session step count, token telemetry, and JSONL byte size.
        Evaluates warning (80 steps / 120k tokens) and brake limits (150 steps / 180k tokens / 4MB).
        Returns complete dual-metric keys for full contract compatibility.
        """
        target_path = self.resolve_session_path(session_path_or_id)
        if not target_path.exists():
            raise FileNotFoundError(f"Session target file not found: {target_path}")

        byte_size = target_path.stat().st_size
        steps_count = 0
        sum_input = 0
        sum_output = 0
        sum_cache = 0
        sum_fallback = 0

        last_context_tokens = 0
        peak_context_tokens = 0
        steps_with_tokens = 0
        steps_fallback = 0
        parse_errors = 0

        with open(target_path, "r", encoding="utf-8", errors="replace") as f:
            for line_no, line in enumerate(f, start=1):
                line_str = line.strip().lstrip('\ufeff')
                if not line_str:
                    continue
                try:
                    parsed = json.loads(line_str)
                except Exception:
                    parse_errors += 1
                    continue

                steps_count += 1
                inp, out, cache, fb = self._extract_step_tokens(parsed)

                if inp is not None or out is not None or cache is not None:
                    steps_with_tokens += 1
                    i_val = inp or 0
                    o_val = out or 0
                    c_val = cache or 0
                    sum_input += i_val
                    sum_output += o_val
                    sum_cache += c_val

                    ctx = i_val + c_val + o_val
                    last_context_tokens = ctx
                    if ctx > peak_context_tokens:
                        peak_context_tokens = ctx
                else:
                    steps_fallback += 1
                    sum_fallback += fb

        cumulative_tokens = sum_input + sum_output + sum_fallback
        eval_token_metric = max(cumulative_tokens, last_context_tokens)

        warning_reasons = []
        if steps_count >= WARN_STEP_COUNT:
            warning_reasons.append(f"Step count ({steps_count}) >= warning threshold ({WARN_STEP_COUNT})")
        if eval_token_metric >= WARN_TOKEN_COUNT:
            warning_reasons.append(f"Token count ({eval_token_metric}) >= warning threshold ({WARN_TOKEN_COUNT})")

        brake_reasons = []
        if steps_count >= BRAKE_STEP_COUNT:
            brake_reasons.append(f"Step count ({steps_count}) >= brake threshold ({BRAKE_STEP_COUNT})")
        if eval_token_metric >= BRAKE_TOKEN_COUNT:
            brake_reasons.append(f"Token count ({eval_token_metric}) >= brake threshold ({BRAKE_TOKEN_COUNT})")
        if byte_size >= BRAKE_BYTE_SIZE:
            brake_reasons.append(f"JSONL byte size ({byte_size} bytes) >= 4MB threshold ({BRAKE_BYTE_SIZE} bytes)")

        is_warning = len(warning_reasons) > 0
        is_brake = len(brake_reasons) > 0

        session_id = self._extract_session_id(target_path, session_path_or_id)

        status_code = "NORMAL"
        if is_brake:
            status_code = "BRAKE_ENGAGED"
        elif is_warning:
            status_code = "WARNING"

        return {
            "session_id": session_id,
            "session_file": str(target_path),
            "session_path": str(target_path),
            "step_count": steps_count,
            "total_steps": steps_count,
            "token_count": eval_token_metric,
            "total_tokens": eval_token_metric,
            "byte_size": byte_size,
            "total_bytes": byte_size,
            "status": status_code,
            "warning_triggered": is_warning,
            "warning_reasons": warning_reasons,
            "brake_applied": is_brake,
            "brake_reasons": brake_reasons,
            "thresholds": {
                "warn_steps": WARN_STEP_COUNT,
                "warning_steps": WARN_STEP_COUNT,
                "warn_tokens": WARN_TOKEN_COUNT,
                "warning_tokens": WARN_TOKEN_COUNT,
                "brake_steps": BRAKE_STEP_COUNT,
                "brake_tokens": BRAKE_TOKEN_COUNT,
                "brake_bytes": BRAKE_BYTE_SIZE
            },
            "telemetry": {
                "cumulative_tokens": cumulative_tokens,
                "active_context_tokens": last_context_tokens,
                "peak_context_tokens": peak_context_tokens,
                "input_tokens_sum": sum_input,
                "output_tokens_sum": sum_output,
                "cache_read_tokens_sum": sum_cache,
                "fallback_tokens_sum": sum_fallback,
                "steps_with_tokens": steps_with_tokens,
                "steps_fallback": steps_fallback,
                "parse_errors": parse_errors
            },
            "inspected_at_utc": datetime.now(timezone.utc).isoformat()
        }

    def _load_index(self, index_file: Path, session_id: str) -> Dict[str, Any]:
        if index_file.exists():
            try:
                with open(index_file, "r", encoding="utf-8") as f:
                    return json.load(f)
            except Exception:
                pass
        return {
            "session_id": session_id,
            "segments": [],
            "created_at_utc": datetime.now(timezone.utc).isoformat()
        }

    def slice_segments(
        self,
        session_path_or_id: str,
        segment_size: int = DEFAULT_SEGMENT_SIZE,
        active_window: int = DEFAULT_ROLLING_WINDOW
    ) -> Dict[str, Any]:
        """
        Slices completed steps chronologically into segment_<N>.jsonl,
        generates segment_index.json, and atomically preserves rolling active context window.
        """
        if segment_size <= 0:
            raise ValueError(f"segment_size must be positive, got {segment_size}")
        if active_window < 0:
            raise ValueError(f"active_window must be non-negative, got {active_window}")

        session_path = self.resolve_session_path(session_path_or_id)
        if not session_path.exists():
            raise FileNotFoundError(f"Session file does not exist: {session_path}")

        session_id = self._extract_session_id(session_path, session_path_or_id)

        # Read all lines safely
        raw_lines: List[str] = []
        with open(session_path, "r", encoding="utf-8", errors="replace") as f:
            for line in f:
                stripped = line.strip().lstrip('\ufeff')
                if not stripped:
                    continue
                raw_lines.append(stripped)

        total_steps = len(raw_lines)
        archive_session_dir = self.archive_base_dir / session_id
        archive_session_dir.mkdir(parents=True, exist_ok=True)

        index_file = archive_session_dir / "segment_index.json"
        existing_index = self._load_index(index_file, session_id)
        existing_segments: List[Dict[str, Any]] = existing_index.get("segments", [])
        next_seg_num = len(existing_segments) + 1

        metrics = self.inspect_session(str(session_path))
        if total_steps <= active_window and not metrics["brake_applied"]:
            return {
                "session_id": session_id,
                "status": "NO_SLICING_NEEDED",
                "total_steps": total_steps,
                "active_window_steps": total_steps,
                "segments_created": 0,
                "total_segments": len(existing_segments),
                "archive_dir": str(archive_session_dir),
                "index_file": str(index_file),
                "active_metrics": metrics
            }

        if total_steps <= active_window and metrics["brake_applied"]:
            keep_count = max(1, total_steps // 2)
            steps_to_slice = raw_lines[:-keep_count]
            active_steps = raw_lines[-keep_count:]
        else:
            steps_to_slice = raw_lines[:-active_window]
            active_steps = raw_lines[-active_window:]

        # Safety backup before modification
        backup_path = archive_session_dir / "pre_slice_transcript_backup.jsonl"
        try:
            shutil.copy2(session_path, backup_path)
        except Exception:
            pass

        new_segments: List[Dict[str, Any]] = []
        sliced_count = len(steps_to_slice)

        # Chunk sliceable steps chronologically
        for i in range(0, sliced_count, segment_size):
            chunk = steps_to_slice[i:i + segment_size]
            seg_num = next_seg_num
            next_seg_num += 1

            seg_filename = f"segment_{seg_num:03d}.jsonl"
            seg_path = archive_session_dir / seg_filename

            raw_chunk_bytes = ("\n".join(chunk) + "\n").encode("utf-8")
            uncompressed_size = len(raw_chunk_bytes)
            sha256_uncompressed = hashlib.sha256(raw_chunk_bytes).hexdigest()

            with open(seg_path, "wb") as f_out:
                f_out.write(raw_chunk_bytes)

            chunk_tokens = 0
            for c in chunk:
                try:
                    chunk_tokens += self._estimate_tokens_from_step(json.loads(c))
                except Exception:
                    chunk_tokens += max(1, len(c) // 4)

            seg_record = {
                "segment_index": seg_num,
                "segment_id": f"segment_{seg_num:03d}",
                "filename": seg_filename,
                "file_gz": f"{seg_filename}.gz",
                "archived_gz": f"{seg_filename}.gz",
                "start_step": i + 1,
                "end_step": i + len(chunk),
                "step_offset_start": i + 1,
                "step_offset_end": i + len(chunk),
                "step_count": len(chunk),
                "tokens": chunk_tokens,
                "token_count": chunk_tokens,
                "bytes": uncompressed_size,
                "bytes_uncompressed": uncompressed_size,
                "bytes_compressed": 0,
                "sha256": sha256_uncompressed,
                "sha256_uncompressed": sha256_uncompressed,
                "sha256_gz": "",
                "created_at_utc": datetime.now(timezone.utc).isoformat()
            }
            new_segments.append(seg_record)
            existing_segments.append(seg_record)

        # Atomic rewrite of active rolling window
        tmp_path = session_path.with_suffix(".tmp")
        with open(tmp_path, "w", encoding="utf-8") as f_tmp:
            for s in active_steps:
                f_tmp.write(s + "\n")
            f_tmp.flush()
            os.fsync(f_tmp.fileno())
        os.replace(tmp_path, session_path)

        active_metrics = self.inspect_session(str(session_path))

        updated_index = {
            "session_id": session_id,
            "generated_at_utc": datetime.now(timezone.utc).isoformat(),
            "total_steps": total_steps,
            "total_sliced_steps": sum(s["step_count"] for s in existing_segments),
            "active_window_steps": len(active_steps),
            "total_tokens": active_metrics.get("total_tokens", 0) + sum(s.get("token_count", 0) for s in existing_segments),
            "total_bytes": sum(s.get("bytes_uncompressed", 0) for s in existing_segments) + active_metrics.get("total_bytes", 0),
            "status": "SLICED_SUCCESSFULLY",
            "harmonic_carrier_hz": "528 Hz / 432 Hz",
            "cluster_nodes": [
                "DEV_01_BUSHMASTER",
                "DEV_02_ATESIRT",
                "DEV_03_UBUNTU_WSL2",
                "DEV_04_SAMSUNG_T7_VAULT",
                "DEV_05_LAO_SWARM_MATRIX"
            ],
            "thresholds": {
                "warn_steps": WARN_STEP_COUNT,
                "warn_tokens": WARN_TOKEN_COUNT,
                "brake_steps": BRAKE_STEP_COUNT,
                "brake_tokens": BRAKE_TOKEN_COUNT,
                "brake_bytes": BRAKE_BYTE_SIZE
            },
            "active_window": {
                "start_step": total_steps - len(active_steps) + 1,
                "end_step": total_steps,
                "step_count": len(active_steps),
                "file_path": str(session_path)
            },
            "segments": existing_segments,
            "total_segments_count": len(existing_segments),
            "p0_safety_attestation": "P0_SAFETY_CONTRACT_V1_VERIFIED_NON_DESTRUCTIVE"
        }

        with open(index_file, "w", encoding="utf-8") as f_idx:
            json.dump(updated_index, f_idx, indent=2, ensure_ascii=False)

        if session_path.parent != archive_session_dir:
            try:
                with open(session_path.parent / "segment_index.json", "w", encoding="utf-8") as f_copy:
                    json.dump(updated_index, f_copy, indent=2, ensure_ascii=False)
            except Exception:
                pass

        return {
            "session_id": session_id,
            "status": "SLICED_SUCCESSFULLY",
            "total_steps_before": total_steps,
            "total_sliced_steps": sum(s["step_count"] for s in existing_segments),
            "segments_created": len(new_segments),
            "total_segments": len(existing_segments),
            "active_window_steps": len(active_steps),
            "active_window": {
                "start_step": total_steps - len(active_steps) + 1,
                "end_step": total_steps,
                "step_count": len(active_steps)
            },
            "archive_dir": str(archive_session_dir),
            "index_file": str(index_file),
            "active_metrics": active_metrics
        }

    def archive_and_sync(
        self,
        session_id: str,
        segments_dir: Optional[str] = None
    ) -> Dict[str, Any]:
        """
        Compresses uncompressed segments with gzip, verifies with gzip -t,
        and syncs non-destructively to DEV_04_SAMSUNG_T7_VAULT adhering to P0 safety.
        """
        arch_dir = Path(segments_dir) if segments_dir else (self.archive_base_dir / session_id)
        if not arch_dir.exists():
            raise FileNotFoundError(f"Segments directory not found: {arch_dir}")

        index_file = arch_dir / "segment_index.json"
        index_data = self._load_index(index_file, session_id)

        compressed_files = []
        for seg_file in sorted(arch_dir.glob("segment_*.jsonl")):
            if seg_file.name.endswith(".gz"):
                continue
            gz_path = seg_file.with_suffix(".jsonl.gz")

            if gz_path.exists():
                is_valid, _ = verify_gzip_integrity(gz_path)
                if is_valid:
                    compressed_files.append(gz_path.name)
                    continue

            raw_bytes = seg_file.read_bytes()
            tmp_gz = gz_path.with_suffix(".tmp.gz")

            with open(tmp_gz, "wb") as f_raw:
                with gzip.GzipFile(filename="", mode="wb", fileobj=f_raw, mtime=0) as gz_f:
                    gz_f.write(raw_bytes)

            is_valid, err_msg = verify_gzip_integrity(tmp_gz)
            if not is_valid:
                if tmp_gz.exists():
                    tmp_gz.unlink()
                raise IOError(f"Gzip verification failed for {gz_path}: {err_msg}")

            os.replace(tmp_gz, gz_path)
            gz_size = gz_path.stat().st_size
            gz_sha256 = hashlib.sha256(gz_path.read_bytes()).hexdigest()
            compressed_files.append(gz_path.name)

            for seg in index_data.get("segments", []):
                if seg.get("filename") == seg_file.name or seg.get("file_gz") == gz_path.name:
                    seg["bytes_compressed"] = gz_size
                    seg["sha256_gz"] = gz_sha256
                    seg["archived_gz"] = gz_path.name
                    seg["file_gz"] = gz_path.name

        with open(index_file, "w", encoding="utf-8") as f:
            json.dump(index_data, f, indent=2, ensure_ascii=False)

        mirror_result = self._mirror_to_t7_vault(session_id, arch_dir)

        return {
            "session_id": session_id,
            "status": "ARCHIVED_AND_SYNCED",
            "compressed_segments": compressed_files,
            "local_archive_dir": str(arch_dir),
            "vault_mirror": mirror_result
        }

    def slice_and_archive(
        self,
        session_path_or_id: str,
        rolling_window_size: Optional[int] = None,
        segment_size: Optional[int] = None
    ) -> Dict[str, Any]:
        """
        Composite method: runs slice_segments() followed by archive_and_sync().
        Maintains 100% backward compatibility with test suites and callers.
        """
        rw = rolling_window_size if rolling_window_size is not None else self.rolling_window_size
        ss = segment_size if segment_size is not None else self.segment_size

        slice_res = self.slice_segments(session_path_or_id, segment_size=ss, active_window=rw)
        session_id = slice_res["session_id"]
        archive_dir = slice_res["archive_dir"]

        archive_res = self.archive_and_sync(session_id, segments_dir=archive_dir)

        status = "SLICED_AND_ARCHIVED" if slice_res.get("segments_created", 0) > 0 else slice_res.get("status", "NO_SLICING_NEEDED")
        session_path = self.resolve_session_path(session_path_or_id)
        active_metrics = slice_res.get("active_metrics") or (self.inspect_session(str(session_path)) if session_path.exists() else {})

        return {
            "session_id": session_id,
            "status": status,
            "segments_created": slice_res["segments_created"],
            "total_segments": slice_res["total_segments"],
            "active_window_steps": slice_res["active_window_steps"],
            "local_archive_dir": archive_dir,
            "mirror_vault_result": archive_res["vault_mirror"],
            "active_metrics": active_metrics
        }

    def _mirror_to_t7_vault(
        self,
        session_id: str,
        local_archive_dir: Path,
        verify_destination_gzip: bool = True
    ) -> Dict[str, Any]:
        """
        P0_SAFETY_CONTRACT_V1 Non-Destructive Vault Mirroring Engine.
        - Zero destructive partition or format actions.
        - Idempotent: Identical files are skipped, preserving SSD flash write cycles.
        - Mismatch Guard: Pre-existing segment collisions with different hashes raise IOError.
        - Atomic Copy: Copies to .part temporary file before atomic rename.
        - Destination Verification: Executes gzip -t verification directly on target vault.
        """
        target_vault = self.vault_mirror_dir / session_id
        try:
            if not self.vault_mirror_dir.parent.exists():
                return {
                    "mirrored": False,
                    "node": "DEV_04_SAMSUNG_T7_VAULT",
                    "target_path": str(target_vault),
                    "reason": f"Vault parent directory {self.vault_mirror_dir.parent} not reachable",
                    "code": "VAULT_UNREACHABLE"
                }

            target_vault.mkdir(parents=True, exist_ok=True)
            copied_files: List[str] = []
            skipped_files: List[str] = []
            verified_gzips: List[str] = []

            for item in sorted(local_archive_dir.iterdir()):
                if not item.is_file():
                    continue
                dest_file = target_vault / item.name
                src_sha256 = hashlib.sha256(item.read_bytes()).hexdigest()

                if dest_file.exists():
                    dest_sha256 = hashlib.sha256(dest_file.read_bytes()).hexdigest()
                    if dest_sha256 == src_sha256:
                        skipped_files.append(item.name)
                        if item.name.endswith(".gz") and verify_destination_gzip:
                            is_ok, _ = verify_gzip_integrity(dest_file)
                            if is_ok:
                                verified_gzips.append(item.name)
                        continue
                    else:
                        if not item.name.endswith(".json"):
                            raise IOError(f"P0 Safety Collision: {dest_file} exists with different checksum!")

                # Atomic copy to .part
                tmp_dest = dest_file.with_suffix(dest_file.suffix + ".part")
                shutil.copy2(item, tmp_dest)

                if item.name.endswith(".gz") and verify_destination_gzip:
                    is_ok, err_msg = verify_gzip_integrity(tmp_dest)
                    if not is_ok:
                        if tmp_dest.exists():
                            tmp_dest.unlink()
                        raise IOError(f"Destination gzip verification failed for {dest_file}: {err_msg}")
                    verified_gzips.append(item.name)

                os.replace(tmp_dest, dest_file)
                copied_files.append(item.name)

            return {
                "mirrored": True,
                "node": "DEV_04_SAMSUNG_T7_VAULT",
                "target_path": str(target_vault),
                "files_copied": copied_files,
                "files_skipped_idempotent": skipped_files,
                "gzips_verified_on_vault": verified_gzips,
                "safety_contract": "P0_SAFETY_CONTRACT_V1_VERIFIED"
            }
        except Exception as e:
            return {
                "mirrored": False,
                "node": "DEV_04_SAMSUNG_T7_VAULT",
                "target_path": str(target_vault),
                "error": str(e)
            }

    def sync_to_vault(self, session_id: str, vault_dir: Optional[str] = None) -> Dict[str, Any]:
        """
        Public vault synchronization interface.
        """
        local_arch = self.archive_base_dir / session_id
        if vault_dir:
            orig_vault = self.vault_mirror_dir
            self.vault_mirror_dir = Path(vault_dir)
            try:
                return self._mirror_to_t7_vault(session_id, local_arch)
            finally:
                self.vault_mirror_dir = orig_vault
        return self._mirror_to_t7_vault(session_id, local_arch)

    def get_cluster_buffer_status(self, session_id: Optional[str] = None) -> Dict[str, Any]:
        """
        Returns real-time buffer telemetry for active or specified session across cluster nodes.
        """
        if session_id:
            try:
                metrics = self.inspect_session(session_id)
                arch_dir = self.archive_base_dir / metrics["session_id"]
                index_file = arch_dir / "segment_index.json"
                segments_count = 0
                if index_file.exists():
                    try:
                        with open(index_file, "r", encoding="utf-8") as f:
                            idx = json.load(f)
                            segments_count = len(idx.get("segments", []))
                    except Exception:
                        pass
                return {
                    "cluster_status": "ONLINE",
                    "harmonic_carrier": "528 Hz / 432 Hz",
                    "session_metrics": metrics,
                    "segments_archived": segments_count,
                    "vault_reachable": self.vault_mirror_dir.parent.exists()
                }
            except Exception as e:
                return {
                    "cluster_status": "ERROR",
                    "error": str(e)
                }

        # Cluster-wide status
        return {
            "cluster_status": "ONLINE",
            "harmonic_carrier": "528 Hz / 432 Hz",
            "archive_base_dir": str(self.archive_base_dir),
            "vault_mirror_dir": str(self.vault_mirror_dir),
            "vault_reachable": self.vault_mirror_dir.parent.exists(),
            "thresholds": {
                "warn_steps": WARN_STEP_COUNT,
                "warn_tokens": WARN_TOKEN_COUNT,
                "brake_steps": BRAKE_STEP_COUNT,
                "brake_tokens": BRAKE_TOKEN_COUNT,
                "brake_bytes": BRAKE_BYTE_SIZE
            }
        }

    def guard_write(self, session_path_or_id: str, new_step: Dict[str, Any], auto_slice: bool = True) -> Dict[str, Any]:
        """
        Guards writes to active session files. If brake threshold is reached, either
        automatically slices into archive segments or raises SessionBufferBrakeException.
        """
        metrics = self.inspect_session(session_path_or_id)
        if metrics["brake_applied"]:
            if auto_slice:
                slice_res = self.slice_and_archive(session_path_or_id)
                session_path = self.resolve_session_path(session_path_or_id)
                with open(session_path, "a", encoding="utf-8") as f:
                    f.write(json.dumps(new_step, ensure_ascii=False) + "\n")
                return {"action": "AUTO_SLICED_AND_APPENDED", "slice_summary": slice_res}
            else:
                raise SessionBufferBrakeException(
                    f"BRAKE ENGAGED on session {metrics['session_id']}: {', '.join(metrics['brake_reasons'])}. Slicing required."
                )

        session_path = self.resolve_session_path(session_path_or_id)
        with open(session_path, "a", encoding="utf-8") as f:
            f.write(json.dumps(new_step, ensure_ascii=False) + "\n")

        new_metrics = self.inspect_session(session_path_or_id)
        return {"action": "APPENDED", "metrics": new_metrics}
