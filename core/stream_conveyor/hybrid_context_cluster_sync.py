#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • LAM ARCHIVATOR HYBRID MULTI-ENVIRONMENT CONTEXT CLUSTERING & SYNC ENGINE
=======================================================================================
Clusters session context data packets across all hybrid Google/Gemini environments:
  1. agy_cli       (Antigravity CLI / bin)
  2. gemini_apk    (Android Gemini App / apk)
  3. gemini_exe    (Windows Desktop Gemini App / exe)
  4. gemini_gmail  (Gemini in Gmail Workspace / gmail)
  5. gemini_gdrive (Gemini in Google Drive Workspace / gdrive)

For every active/discovered session across all environments:
  - Creates a dedicated per-session directory:
      * /root/RADRILONIUMA/archive/hybrid_sessions/<surface>/<session_id>/
      * C:\\Users\\BushM\\.gateway\\hybrid_sessions\\<surface>\\<session_id>\\
      * /mnt/f/ATESIRT_VAULT_ARCHIVE/hybrid_sessions/<surface>/<session_id>/ (if mounted)
      * /mnt/d/BACKUP_STAGING/LAM_ARCHIVATOR_SESSIONS/<surface>/<session_id>/ (if mounted)
  - Writes deterministic clustered context artifacts inside each session folder:
      * session_manifest.json
      * context_packets_cluster.json
      * hybrid_capability_bridge.json
      * transfer_pointer.json
  - Synchronizes each session folder to:
      * Google Drive (via rclone -> gdrive:RADRILONIUMA_HYBRID_SESSIONS/<surface>/<session_id>/)
      * GitHub Archive (via git commit & push -> origin archive/hybrid_sessions/<surface>/<session_id>/)
"""

from __future__ import annotations

import hashlib
import json
import os
import shutil
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

HYBRID_SURFACES = (
    "agy_cli",
    "gemini_apk",
    "gemini_exe",
    "gemini_gmail",
    "gemini_gdrive",
)

CAPABILITY_MATRIX: Dict[str, Dict[str, Any]] = {
    "agy_cli": {
        "surface_id": "agy_cli",
        "legacy_code": "bin",
        "native_capabilities": [
            "local_shell_execution_powershell_bash",
            "filesystem_read_write_edit",
            "wsl2_ubuntu_kernel_substrate",
            "mcp_server_orchestration_68_organs",
            "chrome_devtools_cdp_automation",
            "adb_hardware_mesh_control",
            "sqlite_wal_sovereign_vault",
            "git_github_rclone_sync",
        ],
        "bridged_to_surfaces": ["gemini_apk", "gemini_exe", "gemini_gmail", "gemini_gdrive"],
        "ingress_endpoint": "http://127.0.0.1:5280/v1/google-node-gateway/input-point/import",
        "outbox_bridge": ".gateway/extrnl_query_export_outbox.json",
        "inbox_bridge": ".gateway/intrnl_answer_import_inbox.json",
    },
    "gemini_apk": {
        "surface_id": "gemini_apk",
        "legacy_code": "apk",
        "package": "com.google.android.apps.bard",
        "native_capabilities": [
            "android_live_voice_barge_in",
            "mobile_camera_screen_vision_stream",
            "google_assistant_system_intents",
            "mobile_notifications_and_clipboard_toast",
        ],
        "bridged_to_surfaces": ["agy_cli", "gemini_exe", "gemini_gmail", "gemini_gdrive"],
        "spool_dir": ".gateway/edge_spool",
    },
    "gemini_exe": {
        "surface_id": "gemini_exe",
        "legacy_code": "exe",
        "app_id": "com.google.gemini.windows",
        "native_capabilities": [
            "windows_desktop_pwa_overlay",
            "desktop_clipboard_and_drag_drop",
            "google_account_extensions_workspace",
        ],
        "bridged_to_surfaces": ["agy_cli", "gemini_apk", "gemini_gmail", "gemini_gdrive"],
    },
    "gemini_gmail": {
        "surface_id": "gemini_gmail",
        "legacy_code": "web_gmail",
        "native_capabilities": [
            "gmail_thread_summarization_and_search",
            "email_draft_generation_and_legal_dispatch",
            "workspace_contact_and_attachment_context",
        ],
        "bridged_to_surfaces": ["agy_cli", "gemini_apk", "gemini_exe", "gemini_gdrive"],
    },
    "gemini_gdrive": {
        "surface_id": "gemini_gdrive",
        "legacy_code": "web_gdrive",
        "native_capabilities": [
            "google_drive_document_grounding",
            "cross_session_cloud_folder_indexing",
            "pdf_sheets_docs_semantic_retrieval",
        ],
        "bridged_to_surfaces": ["agy_cli", "gemini_apk", "gemini_exe", "gemini_gmail"],
    },
}


def _utc_now_iso() -> str:
    return datetime.now(timezone.utc).isoformat()


def _sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _sha256_json(obj: Any) -> str:
    return _sha256_bytes(json.dumps(obj, sort_keys=True, ensure_ascii=False).encode("utf-8"))


def _write_json_atomic(path: Path, data: Any) -> None:
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp_path = path.with_name(f"{path.name}.tmp.{os.getpid()}")
    try:
        with open(tmp_path, "w", encoding="utf-8") as fh:
            json.dump(data, fh, indent=2, ensure_ascii=False)
            fh.flush()
        os.replace(tmp_path, path)
    finally:
        if tmp_path.exists():
            try:
                tmp_path.unlink()
            except OSError:
                pass


def _cluster_transcript_into_packets(
    session_id: str,
    surface: str,
    transcript_path: Optional[Path],
    packet_step_window: int = 25,
) -> Dict[str, Any]:
    """
    Clusters a session's JSONL transcript or event spool into deterministic
    context packets (each covering up to `packet_step_window` steps) with SHA-256 seals.
    """
    packets: List[Dict[str, Any]] = []
    total_steps = 0
    total_bytes = 0
    total_input_tokens = 0
    total_output_tokens = 0

    lines: List[str] = []
    if transcript_path and transcript_path.is_file():
        try:
            total_bytes = transcript_path.stat().st_size
            raw_text = transcript_path.read_text(encoding="utf-8", errors="replace")
            lines = [ln for ln in raw_text.splitlines() if ln.strip()]
        except Exception:
            lines = []

    total_steps = len(lines)
    if total_steps == 0:
        pkt_payload = {
            "packet_id": f"PKT-{session_id[:8].upper()}-0001",
            "session_id": session_id,
            "surface": surface,
            "step_start": 0,
            "step_end": 0,
            "step_count": 0,
            "input_tokens": 0,
            "output_tokens": 0,
            "state": "INITIALIZED_EMPTY_OR_METADATA_ONLY",
        }
        pkt_payload["packet_sha256"] = _sha256_json(pkt_payload)
        packets.append(pkt_payload)
    else:
        for idx in range(0, total_steps, packet_step_window):
            chunk = lines[idx : idx + packet_step_window]
            chunk_in_tok = 0
            chunk_out_tok = 0
            roles_seen: List[str] = []
            for ln in chunk:
                try:
                    doc = json.loads(ln)
                    if isinstance(doc, dict):
                        chunk_in_tok += int(doc.get("input_tokens") or doc.get("usage", {}).get("input_tokens") or 0)
                        chunk_out_tok += int(doc.get("output_tokens") or doc.get("usage", {}).get("output_tokens") or 0)
                        r = str(doc.get("role") or doc.get("type") or "").strip()
                        if r and r not in roles_seen:
                            roles_seen.append(r)
                except Exception:
                    pass
            total_input_tokens += chunk_in_tok
            total_output_tokens += chunk_out_tok
            pkt_num = (idx // packet_step_window) + 1
            chunk_hash = _sha256_bytes("\n".join(chunk).encode("utf-8", errors="replace"))
            pkt = {
                "packet_id": f"PKT-{session_id[:8].upper()}-{pkt_num:04d}",
                "session_id": session_id,
                "surface": surface,
                "step_start": idx + 1,
                "step_end": idx + len(chunk),
                "step_count": len(chunk),
                "input_tokens": chunk_in_tok,
                "output_tokens": chunk_out_tok,
                "roles": roles_seen[:8],
                "payload_sha256": chunk_hash,
            }
            packets.append(pkt)

    cluster_doc = {
        "schema": "LAM_ARCHIVATOR_CONTEXT_PACKET_CLUSTER_V2",
        "session_id": session_id,
        "surface": surface,
        "clustered_at_utc": _utc_now_iso(),
        "total_steps": total_steps,
        "total_bytes": total_bytes,
        "total_input_tokens": total_input_tokens,
        "total_output_tokens": total_output_tokens,
        "packet_step_window": packet_step_window,
        "packet_count": len(packets),
        "packets": packets,
    }
    cluster_doc["cluster_merkle_sha256"] = _sha256_json([p.get("payload_sha256") or p.get("packet_sha256") for p in packets])
    return cluster_doc


def discover_all_hybrid_sessions(
    repo_root: Path,
    win_brain_dir: Path,
    win_gw_dir: Path,
    active_session_id: Optional[str] = None,
) -> List[Dict[str, Any]]:
    """
    Discovers all sessions across AGY CLI brain directories, .gateway/sessions,
    .gateway/edge_spool, and hybrid surface state files.
    """
    discovered: Dict[Tuple[str, str], Dict[str, Any]] = {}

    # 1. AGY CLI sessions in C:\Users\BushM\.gemini\antigravity-cli\brain\<sid>
    if win_brain_dir.is_dir():
        all_children = [
            c for c in win_brain_dir.iterdir()
            if c.is_dir() and not c.name.startswith(".")
        ]
        all_children.sort(key=lambda p: p.stat().st_mtime if p.exists() else 0, reverse=True)
        for child in all_children:
            sid = child.name
            t_path = child / ".system_generated" / "logs" / "transcript.jsonl"
            if not t_path.is_file():
                t_path = child / "transcript.jsonl"
            discovered[("agy_cli", sid)] = {
                "surface": "agy_cli",
                "session_id": sid,
                "transcript_path": t_path if t_path.is_file() else None,
                "source_dir": str(child),
            }

    # 2. Gateway sessions (.gateway/sessions/*.jsonl)
    gw_sessions = repo_root / ".gateway" / "sessions"
    if gw_sessions.is_dir():
        for jf in sorted(gw_sessions.glob("*.jsonl"), key=lambda p: p.stat().st_mtime, reverse=True):
            sid = jf.stem
            if ("agy_cli", sid) not in discovered:
                discovered[("agy_cli", sid)] = {
                    "surface": "agy_cli",
                    "session_id": sid,
                    "transcript_path": jf,
                    "source_dir": str(gw_sessions),
                }

    # 3. Ensure active_session_id is always registered under agy_cli
    if active_session_id and ("agy_cli", active_session_id) not in discovered:
        discovered[("agy_cli", active_session_id)] = {
            "surface": "agy_cli",
            "session_id": active_session_id,
            "transcript_path": None,
            "source_dir": str(gw_sessions),
        }

    # 4. Android Gemini APK edge_spool & surface sessions
    edge_spool = repo_root / ".gateway" / "edge_spool"
    apk_sid = f"apk-bridge-{active_session_id or 'global'}"
    discovered[("gemini_apk", apk_sid)] = {
        "surface": "gemini_apk",
        "session_id": apk_sid,
        "transcript_path": None,
        "source_dir": str(edge_spool),
    }

    # 5. Windows Desktop Gemini EXE surface session
    exe_sid = f"exe-bridge-{active_session_id or 'global'}"
    discovered[("gemini_exe", exe_sid)] = {
        "surface": "gemini_exe",
        "session_id": exe_sid,
        "transcript_path": None,
        "source_dir": str(win_gw_dir),
    }

    # 6. Gemini in Gmail Workspace surface session
    gmail_sid = f"gmail-bridge-{active_session_id or 'global'}"
    discovered[("gemini_gmail", gmail_sid)] = {
        "surface": "gemini_gmail",
        "session_id": gmail_sid,
        "transcript_path": None,
        "source_dir": str(repo_root / ".gateway" / "hybrid_surfaces" / "gemini_gmail"),
    }

    # 7. Gemini in Google Drive Workspace surface session
    gdrive_sid = f"gdrive-bridge-{active_session_id or 'global'}"
    discovered[("gemini_gdrive", gdrive_sid)] = {
        "surface": "gemini_gdrive",
        "session_id": gdrive_sid,
        "transcript_path": None,
        "source_dir": str(repo_root / ".gateway" / "hybrid_surfaces" / "gemini_gdrive"),
    }

    return list(discovered.values())


def sync_hybrid_sessions_cluster(
    repo_root: Path,
    win_brain_dir: Path,
    win_gw_dir: Path,
    vault_dir: Path,
    active_session_id: Optional[str],
    target_session_id: Optional[str],
    capsule_id: Optional[str],
    dry_run: bool = False,
    enable_cloud_push: Optional[bool] = None,
) -> Dict[str, Any]:
    """
    Creates a dedicated per-session directory for every discovered chat session across
    all 5 hybrid environments, clusters context packets, generates the cross-surface
    capability bridge, mirrors to Windows & hardware vaults, and syncs to Google Drive
    (rclone gdrive:) and GitHub Archive (git commit & push origin).
    """
    now_iso = _utc_now_iso()
    sessions = discover_all_hybrid_sessions(
        repo_root=repo_root,
        win_brain_dir=win_brain_dir,
        win_gw_dir=win_gw_dir,
        active_session_id=active_session_id,
    )

    hybrid_archive_root = repo_root / "archive" / "hybrid_sessions"
    win_hybrid_root = win_gw_dir / "hybrid_sessions"
    vault_hybrid_root = (vault_dir.parent / "hybrid_sessions") if (vault_dir.parent.exists() and (not str(vault_dir).startswith("/mnt/f") or os.path.ismount("/mnt/f"))) else None
    d_staging_root = Path("/mnt/d/BACKUP_STAGING/LAM_ARCHIVATOR_SESSIONS") if Path("/mnt/d").is_dir() else None

    if enable_cloud_push is None:
        # Run live rclone/git cloud push only on the real production repository when not in dry_run
        enable_cloud_push = (not dry_run) and (repo_root.resolve() == Path("/root/RADRILONIUMA"))

    session_records: List[Dict[str, Any]] = []
    surfaces_clustered: Dict[str, int] = {s: 0 for s in HYBRID_SURFACES}

    for item in sessions:
        surface = item["surface"]
        sid = item["session_id"]
        t_path: Optional[Path] = item.get("transcript_path")
        surfaces_clustered[surface] = surfaces_clustered.get(surface, 0) + 1

        session_dir = hybrid_archive_root / surface / sid
        win_session_dir = win_hybrid_root / surface / sid

        # Fast incremental cache check: if session_manifest.json already exists with matching byte size & mtime_ns
        # (and is not the currently active session), reuse existing manifest in <0.1ms without re-reading over DrvFS
        existing_manifest_path = session_dir / "session_manifest.json"
        t_size = 0
        t_mtime_ns = 0
        if t_path and t_path.is_file():
            try:
                st = t_path.stat()
                t_size = st.st_size
                t_mtime_ns = st.st_mtime_ns
            except Exception:
                pass
        if (
            not dry_run
            and sid != active_session_id
            and existing_manifest_path.is_file()
            and (session_dir / "context_packets_cluster.json").is_file()
            and (session_dir / "hybrid_capability_bridge.json").is_file()
        ):
            try:
                cached_manifest = json.loads(existing_manifest_path.read_text(encoding="utf-8"))
                if cached_manifest.get("total_bytes") == t_size and cached_manifest.get("transcript_mtime_ns") == t_mtime_ns:
                    session_records.append(cached_manifest)
                    continue
            except Exception:
                pass

        cluster_doc = _cluster_transcript_into_packets(
            session_id=sid,
            surface=surface,
            transcript_path=t_path,
        )

        bridge_doc = {
            "schema": "LAM_HYBRID_CAPABILITY_BRIDGE_V2",
            "session_id": sid,
            "primary_surface": surface,
            "linked_active_agy_session_id": active_session_id,
            "target_handoff_session_id": target_session_id,
            "capsule_id": capsule_id,
            "synchronized_at_utc": now_iso,
            "surface_capabilities": CAPABILITY_MATRIX.get(surface, {}),
            "global_capability_matrix": CAPABILITY_MATRIX,
            "cross_surface_context_merkle_sha256": cluster_doc["cluster_merkle_sha256"],
        }

        manifest_doc = {
            "schema": "LAM_HYBRID_SESSION_DIRECTORY_MANIFEST_V2",
            "session_id": sid,
            "surface": surface,
            "created_or_updated_at_utc": now_iso,
            "source_dir": item.get("source_dir"),
            "transcript_present": bool(t_path and t_path.is_file()),
            "transcript_mtime_ns": t_mtime_ns,
            "total_steps": cluster_doc["total_steps"],
            "total_bytes": cluster_doc["total_bytes"],
            "packet_count": cluster_doc["packet_count"],
            "cluster_merkle_sha256": cluster_doc["cluster_merkle_sha256"],
            "archive_paths": {
                "repo_github_archive_dir": str(session_dir),
                "windows_gateway_dir": str(win_session_dir),
                "gdrive_remote_dir": f"gdrive:RADRILONIUMA_HYBRID_SESSIONS/{surface}/{sid}",
                "github_remote_path": f"archive/hybrid_sessions/{surface}/{sid}",
            },
        }

        pointer_doc = {
            "session_id": sid,
            "surface": surface,
            "linked_active_session_id": active_session_id,
            "target_session_id": target_session_id,
            "capsule_id": capsule_id,
            "cluster_merkle_sha256": cluster_doc["cluster_merkle_sha256"],
            "updated_at_utc": now_iso,
        }

        if not dry_run:
            session_dir.mkdir(parents=True, exist_ok=True)
            _write_json_atomic(session_dir / "session_manifest.json", manifest_doc)
            _write_json_atomic(session_dir / "context_packets_cluster.json", cluster_doc)
            _write_json_atomic(session_dir / "hybrid_capability_bridge.json", bridge_doc)
            _write_json_atomic(session_dir / "transfer_pointer.json", pointer_doc)

            # Mirror to Windows .gateway/hybrid_sessions/<surface>/<sid>
            try:
                win_session_dir.mkdir(parents=True, exist_ok=True)
                _write_json_atomic(win_session_dir / "session_manifest.json", manifest_doc)
                _write_json_atomic(win_session_dir / "context_packets_cluster.json", cluster_doc)
                _write_json_atomic(win_session_dir / "hybrid_capability_bridge.json", bridge_doc)
                _write_json_atomic(win_session_dir / "transfer_pointer.json", pointer_doc)
            except Exception:
                pass

            # Mirror to F:\ vault if mounted
            if vault_hybrid_root is not None:
                try:
                    v_dir = vault_hybrid_root / surface / sid
                    v_dir.mkdir(parents=True, exist_ok=True)
                    _write_json_atomic(v_dir / "session_manifest.json", manifest_doc)
                    _write_json_atomic(v_dir / "context_packets_cluster.json", cluster_doc)
                    _write_json_atomic(v_dir / "hybrid_capability_bridge.json", bridge_doc)
                except Exception:
                    pass

            # Mirror to D:\ staging vault if mounted
            if d_staging_root is not None:
                try:
                    d_dir = d_staging_root / surface / sid
                    d_dir.mkdir(parents=True, exist_ok=True)
                    _write_json_atomic(d_dir / "session_manifest.json", manifest_doc)
                    _write_json_atomic(d_dir / "context_packets_cluster.json", cluster_doc)
                    _write_json_atomic(d_dir / "hybrid_capability_bridge.json", bridge_doc)
                except Exception:
                    pass

        session_records.append(manifest_doc)

    # Write global hybrid capability & session cluster registry in .gateway
    global_index = {
        "schema": "LAM_ARCHIVATOR_HYBRID_CLUSTER_INDEX_V2",
        "synchronized_at_utc": now_iso,
        "active_session_id": active_session_id,
        "target_session_id": target_session_id,
        "capsule_id": capsule_id,
        "total_sessions_clustered": len(session_records),
        "surfaces_clustered": surfaces_clustered,
        "capability_matrix": CAPABILITY_MATRIX,
        "sessions": session_records,
    }
    if not dry_run:
        _write_json_atomic(repo_root / ".gateway" / "HYBRID_CAPABILITY_BRIDGE_MANIFEST.json", global_index)
        _write_json_atomic(hybrid_archive_root / "hybrid_cluster_index.json", global_index)
        try:
            _write_json_atomic(win_gw_dir / "HYBRID_CAPABILITY_BRIDGE_MANIFEST.json", global_index)
        except Exception:
            pass

    # Update & mirror canonical cross-session memory anchor (only on production repo when not dry_run)
    cross_memory_status = None
    if not dry_run and repo_root.resolve() == Path("/root/RADRILONIUMA"):
        try:
            from core.stream_conveyor.cross_session_memory_anchor import sync_all_memory_anchors
            cross_memory_status = sync_all_memory_anchors(
                repo_root=repo_root,
                active_session_id=active_session_id or "27f7e25c-3452-49a9-bab7-b221481ea44d",
                enable_cloud_sync=bool(enable_cloud_push),
            )
        except Exception as exc:
            cross_memory_status = {"status": f"DEFERRED: {str(exc)[:80]}"}

    # Synchronize per-session directories to Google Drive (gdrive:) and GitHub Archive (origin)
    gdrive_sync_status = "SKIPPED_DRY_RUN" if dry_run else "LOCAL_STAGED"
    github_sync_status = "SKIPPED_DRY_RUN" if dry_run else "LOCAL_STAGED"
    gdrive_remote_target = "gdrive:RADRILONIUMA_HYBRID_SESSIONS"
    github_commit_sha = None

    if enable_cloud_push and hybrid_archive_root.is_dir():
        # 1. Google Drive rclone sync
        if shutil.which("rclone"):
            try:
                rc = subprocess.run(
                    [
                        "rclone",
                        "copy",
                        str(hybrid_archive_root),
                        gdrive_remote_target,
                        "--transfers",
                        "4",
                        "--checkers",
                        "4",
                        "--contimeout",
                        "5s",
                        "--timeout",
                        "15s",
                    ],
                    capture_output=True,
                    text=True,
                    timeout=25,
                )
                if rc.returncode == 0:
                    gdrive_sync_status = "SYNCED_TO_GOOGLE_DRIVE"
                else:
                    gdrive_sync_status = f"STAGED_LOCAL_GDRIVE_DEFERRED ({(rc.stderr or '').strip()[:80]})"
            except Exception as exc:
                gdrive_sync_status = f"STAGED_LOCAL_GDRIVE_DEFERRED ({str(exc)[:60]})"

        # 2. GitHub archive commit & push
        if shutil.which("git") and (repo_root / ".git").exists():
            try:
                subprocess.run(
                    ["git", "-C", str(repo_root), "add", "archive/hybrid_sessions"],
                    capture_output=True,
                    text=True,
                    timeout=10,
                )
                diff_rc = subprocess.run(
                    ["git", "-C", str(repo_root), "diff", "--cached", "--quiet", "--", "archive/hybrid_sessions"],
                    capture_output=True,
                    timeout=5,
                )
                if diff_rc.returncode != 0:
                    subprocess.run(
                        [
                            "git",
                            "-C",
                            str(repo_root),
                            "commit",
                            "-m",
                            f"chore(lam-archivator): sync hybrid session clusters [{active_session_id or 'global'}]",
                            "--",
                            "archive/hybrid_sessions",
                        ],
                        capture_output=True,
                        text=True,
                        timeout=15,
                    )
                rev_rc = subprocess.run(
                    ["git", "-C", str(repo_root), "rev-parse", "--short", "HEAD"],
                    capture_output=True,
                    text=True,
                    timeout=5,
                )
                if rev_rc.returncode == 0:
                    github_commit_sha = rev_rc.stdout.strip()
                push_rc = subprocess.run(
                    ["git", "-C", str(repo_root), "push", "origin", "HEAD"],
                    capture_output=True,
                    text=True,
                    timeout=20,
                )
                if push_rc.returncode == 0:
                    github_sync_status = f"COMMITTED_AND_PUSHED_GITHUB ({github_commit_sha})"
                else:
                    github_sync_status = f"COMMITTED_LOCAL_GIT_ARCHIVE ({github_commit_sha})"
            except Exception as exc:
                github_sync_status = f"STAGED_GIT_ARCHIVE ({str(exc)[:60]})"

    return {
        "status": "SYNCHRONIZED" if not dry_run else "DRY_RUN_READY",
        "total_sessions_clustered": len(session_records),
        "surfaces_clustered": surfaces_clustered,
        "per_session_directories_root": str(hybrid_archive_root),
        "windows_mirror_root": str(win_hybrid_root),
        "gdrive_remote_target": gdrive_remote_target,
        "gdrive_sync_status": gdrive_sync_status,
        "github_archive_path": "archive/hybrid_sessions",
        "github_commit_sha": github_commit_sha,
        "github_sync_status": github_sync_status,
        "capability_bridge_manifest": str(repo_root / ".gateway" / "HYBRID_CAPABILITY_BRIDGE_MANIFEST.json"),
        "cross_session_memory_anchor": cross_memory_status,
    }
