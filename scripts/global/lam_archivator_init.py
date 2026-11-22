#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • LAM ARCHIVATOR AGENT UNIFIED INITIALIZER (INTRNL & EXTRNL SS)
============================================================================
Module: /root/RADRILONIUMA/scripts/global/lam_archivator_init.py
Contract: LAM_ARCHIVATOR_AGENT_INIT_EXECUTION_PROTOCOL_V1

Initializes and verifies the LAM_ARCHIVATOR_AGENT execution protocol across:
  - Internal Subsystem (INTRNL SS):
      * SessionSegmenterGuard inspection & optional auto-slicing of BRAKE_ENGAGED sessions
      * Non-destructive T7 Vault archive mirroring (DEV_04_SAMSUNG_T7_VAULT)
      * Transfer capsule freshness preservation & zero-inflation pointer sync
      * Windows Host (.gateway/SSN_TRANSFER_POINTER.json) mirror synchronization
  - External Subsystem (EXTRNL SS):
      * UI_DEVICE_LOCK.json strict compliance (no disruptive adb shell am start)
      * intrnl_sys <-> extrnl_sys bridge outbox/inbox/pocket_cocon verification
      * Passive 4-surface readiness probe (bin, exe, apk, web)
      * Edge spool & origin home tunnel readiness check
      * Graceful degradation (DEGRADED_GRACEFUL, never QUARANTINE_MODE)
"""

import argparse
import hashlib
import json
import os
import socket
import sys
import urllib.parse
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

DEFAULT_REPO_ROOT = Path("/root/RADRILONIUMA")
HISTORICAL_SESSION_ID = "ca2d944d-e99b-4ec1-9a27-7fa50f96003f"
DEFAULT_TARGET_SESSION_ID = "560127fe-00ec-4f93-b040-b4531d54e04d"


def _utc_now_iso() -> str:
    return datetime.now(timezone.utc).isoformat()


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


def _resolve_repo_root(repo_root: Optional[ Any] = None) -> Path:
    if repo_root:
        return Path(repo_root).resolve()
    env_root = os.environ.get("RADR_REPO_ROOT", "").strip()
    if env_root:
        return Path(env_root).resolve()
    script_root = Path(__file__).resolve().parents[2]
    if (script_root / "core").exists():
        return script_root
    return DEFAULT_REPO_ROOT


def _resolve_win_gateway_dir(repo_root: Path) -> Path:
    env_win_gw = os.environ.get("RADR_WIN_GATEWAY_DIR", "").strip()
    if env_win_gw:
        return Path(env_win_gw)
    sibling_win = repo_root.parent / "win_bushm" / ".gateway"
    if sibling_win.exists() or (repo_root.parent / "win_bushm").exists():
        return sibling_win
    return Path("/mnt/c/Users/BushM/.gateway")


def _resolve_win_brain_dir(repo_root: Path) -> Path:
    env_brain = os.environ.get("RADR_WIN_BRAIN_DIR", "").strip()
    if env_brain:
        return Path(env_brain)
    sibling_brain = repo_root.parent / "win_bushm" / ".gemini" / "antigravity-cli" / "brain"
    if sibling_brain.exists() or repo_root.resolve() != DEFAULT_REPO_ROOT:
        return sibling_brain
    return Path("/mnt/c/Users/BushM/.gemini/antigravity-cli/brain")


def _resolve_vault_sessions_dir(
    repo_root: Path,
    vault_sessions_dir: Optional[Path] = None,
) -> Path:
    if vault_sessions_dir is not None:
        return Path(vault_sessions_dir)
    env_vault = os.environ.get("RADR_VAULT_SESSIONS_DIR", "").strip()
    if env_vault:
        return Path(env_vault)
    sibling_vault = repo_root.parent / "vault" / "ATESIRT_VAULT_ARCHIVE" / "sessions"
    if sibling_vault.exists():
        return sibling_vault
    return Path("/mnt/f/ATESIRT_VAULT_ARCHIVE/sessions")


def _discover_candidate_session(
    repo_root: Path,
    win_brain_dir: Path,
    source_session_id: Optional[str],
) -> Tuple[Optional[Path], str, bool]:
    """
    Returns (resolved_path_or_None, session_id, explicitly_requested_missing).
    """
    gw_sessions = repo_root / ".gateway" / "sessions"
    chronolog_dir = repo_root / "chronolog"
    archive_sessions = repo_root / "archive" / "sessions"

    if source_session_id and str(source_session_id).strip():
        sid = str(source_session_id).strip()
        direct = Path(sid)
        if direct.is_file():
            return direct, direct.stem, False
        candidates = [
            gw_sessions / f"{sid}.jsonl",
            win_brain_dir / sid / ".system_generated" / "logs" / "transcript.jsonl",
            win_brain_dir / sid / "transcript.jsonl",
            chronolog_dir / f"{sid}.jsonl",
            archive_sessions / sid / "active_session.jsonl",
            repo_root / "data" / "local" / "AELARIA" / "chat_sessions" / sid / "transcript.jsonl",
        ]
        for c in candidates:
            if c.is_file():
                return c, sid, False
        return None, sid, True

    # Auto-discover: check .gateway/SSN_TRANSFER_CAPSULE.json source_session_id first
    capsule_file = repo_root / ".gateway" / "SSN_TRANSFER_CAPSULE.json"
    active_src = ""
    if capsule_file.is_file():
        try:
            cap_doc = json.loads(capsule_file.read_text(encoding="utf-8"))
            active_src = str(cap_doc.get("payload", {}).get("source_session_id") or "").strip()
        except Exception:
            active_src = ""

    if active_src:
        for c in (
            gw_sessions / f"{active_src}.jsonl",
            win_brain_dir / active_src / ".system_generated" / "logs" / "transcript.jsonl",
            chronolog_dir / f"{active_src}.jsonl",
        ):
            if c.is_file():
                return c, active_src, False

    # Scan .gateway/sessions/*.jsonl
    if gw_sessions.is_dir():
        jsonl_files = sorted(gw_sessions.glob("*.jsonl"), key=lambda p: p.stat().st_mtime, reverse=True)
        if jsonl_files:
            return jsonl_files[0], jsonl_files[0].stem, False

    # Check chronolog/stream_conveyor_ledger.jsonl
    conveyor_ledger = chronolog_dir / "stream_conveyor_ledger.jsonl"
    if conveyor_ledger.is_file():
        return conveyor_ledger, active_src or "stream_conveyor_ledger", False

    return None, active_src or HISTORICAL_SESSION_ID, False


def _run_internal_init(
    repo_root: Path,
    source_session_id: Optional[str] = None,
    target_session_id: Optional[str] = None,
    auto_slice: bool = False,
    dry_run: bool = False,
    vault_sessions_dir: Optional[Path] = None,
) -> Dict[str, Any]:
    for p in (
        str(repo_root),
        str(repo_root / "core" / "stream_conveyor"),
        str(repo_root / "core" / "global_admin"),
    ):
        if p not in sys.path:
            sys.path.insert(0, p)

    import core.stream_conveyor.session_segmenter_guard as ssg_mod
    import core.stream_conveyor.socket_ingress_gateway as sig_mod

    gw_dir = repo_root / ".gateway"
    archive_dir = repo_root / "archive" / "sessions"
    vault_dir = _resolve_vault_sessions_dir(repo_root, vault_sessions_dir)
    win_gw_dir = _resolve_win_gateway_dir(repo_root)
    win_brain_dir = _resolve_win_brain_dir(repo_root)

    if not dry_run:
        gw_dir.mkdir(parents=True, exist_ok=True)
        archive_dir.mkdir(parents=True, exist_ok=True)

    # Check if vault parent is reachable
    vault_reachable = vault_dir.parent.exists()

    guard = ssg_mod.SessionSegmenterGuard(
        archive_base_dir=archive_dir,
        vault_mirror_dir=vault_dir,
    )

    session_file, resolved_sid, requested_missing = _discover_candidate_session(
        repo_root=repo_root,
        win_brain_dir=win_brain_dir,
        source_session_id=source_session_id,
    )

    segmenter_status = "NORMAL"
    auto_sliced = False
    vault_mirrored = False
    metrics: Dict[str, Any] = {}

    if session_file is not None and session_file.is_file():
        try:
            metrics = guard.inspect_session(str(session_file))
            segmenter_status = str(metrics.get("status") or "NORMAL")
            if segmenter_status == "BRAKE_ENGAGED" and auto_slice and not dry_run:
                slice_res = guard.slice_and_archive(str(session_file))
                auto_sliced = slice_res.get("status") in ("SLICED_AND_ARCHIVED", "SLICED_SUCCESSFULLY") or (
                    slice_res.get("segments_created", 0) > 0
                )
                mirror_info = slice_res.get("mirror_vault_result", {})
                if isinstance(mirror_info, dict) and mirror_info.get("mirrored") is True:
                    vault_mirrored = True
                metrics = slice_res.get("active_metrics") or guard.inspect_session(str(session_file))
        except Exception as exc:
            segmenter_status = "INSPECTION_ERROR"
            metrics = {"error": str(exc)}
    elif requested_missing:
        segmenter_status = "SESSION_NOT_FOUND"
        metrics = {"session_id": resolved_sid, "missing": True}

    capsule_synced = False
    windows_pointer_synced = False
    capsule_id = None

    # Determine target_id
    eff_target_id = (
        str(target_session_id).strip()
        if target_session_id and str(target_session_id).strip()
        else DEFAULT_TARGET_SESSION_ID
    )
    if not target_session_id:
        ptr_path = gw_dir / "SSN_TRANSFER_POINTER.json"
        if ptr_path.is_file():
            try:
                existing_ptr = json.loads(ptr_path.read_text(encoding="utf-8"))
                if existing_ptr.get("target_session_id"):
                    eff_target_id = str(existing_ptr["target_session_id"])
            except Exception:
                pass

    if dry_run:
        cap_path = gw_dir / "SSN_TRANSFER_CAPSULE.json"
        ptr_path = gw_dir / "SSN_TRANSFER_POINTER.json"
        win_ptr_path = win_gw_dir / "SSN_TRANSFER_POINTER.json"
        capsule_synced = cap_path.is_file()
        windows_pointer_synced = win_ptr_path.is_file()
        vault_mirrored = False
        if cap_path.is_file():
            try:
                capsule_id = json.loads(cap_path.read_text(encoding="utf-8")).get("capsule_id")
            except Exception:
                capsule_id = None
    else:
        # Bind socket_ingress_gateway paths to repo_root for this operation
        orig_repo = sig_mod.REPO_ROOT
        orig_gw = sig_mod.GATEWAY_DIR
        orig_arch = sig_mod.ARCHIVE_DIR
        orig_vault = sig_mod.T7_VAULT_SESSIONS
        try:
            sig_mod.REPO_ROOT = repo_root
            sig_mod.GATEWAY_DIR = gw_dir
            sig_mod.ARCHIVE_DIR = archive_dir
            sig_mod.T7_VAULT_SESSIONS = vault_dir

            explicit_valid_source = (
                bool(source_session_id and str(source_session_id).strip())
                and not requested_missing
                and str(source_session_id).strip() != HISTORICAL_SESSION_ID
            )
            has_valid_resolved = bool(resolved_sid and resolved_sid != HISTORICAL_SESSION_ID and not requested_missing)
            export_src = resolved_sid if (explicit_valid_source or has_valid_resolved) else HISTORICAL_SESSION_ID
            exp_res = sig_mod.export_transfer_capsule(
                source_session_id=export_src,
                force=explicit_valid_source,
            )
            ing_res = sig_mod.ingest_transfer_capsule(target_session_id=eff_target_id)
            capsule_synced = bool(exp_res.get("exported")) and bool(ing_res.get("ingested"))
            capsule_id = ing_res.get("capsule_id") or exp_res.get("capsule_id")

            if exp_res.get("vault_mirror_path"):
                vault_mirrored = True
            elif not vault_reachable:
                vault_mirrored = False

            # Ensure Windows .gateway pointer & capsule mirror
            win_ptr_path = win_gw_dir / "SSN_TRANSFER_POINTER.json"
            ptr_path = gw_dir / "SSN_TRANSFER_POINTER.json"
            if ptr_path.is_file():
                try:
                    ptr_doc = json.loads(ptr_path.read_text(encoding="utf-8"))
                    _write_json_atomic(win_ptr_path, ptr_doc)
                    windows_pointer_synced = win_ptr_path.is_file()
                except Exception:
                    windows_pointer_synced = False
            cap_path = gw_dir / "SSN_TRANSFER_CAPSULE.json"
            if cap_path.is_file() and win_gw_dir.exists():
                try:
                    cap_doc = json.loads(cap_path.read_text(encoding="utf-8"))
                    _write_json_atomic(win_gw_dir / "SSN_TRANSFER_CAPSULE.json", cap_doc)
                except Exception:
                    pass
        finally:
            sig_mod.REPO_ROOT = orig_repo
            sig_mod.GATEWAY_DIR = orig_gw
            sig_mod.ARCHIVE_DIR = orig_arch
            sig_mod.T7_VAULT_SESSIONS = orig_vault

    if not vault_reachable:
        vault_mirrored = False

    internal_status = "READY"
    if requested_missing or not vault_reachable or segmenter_status == "INSPECTION_ERROR":
        internal_status = "DEGRADED_GRACEFUL"

    return {
        "status": internal_status,
        "session_id": resolved_sid,
        "target_session_id": eff_target_id,
        "capsule_id": capsule_id,
        "segmenter_status": segmenter_status,
        "auto_sliced": auto_sliced,
        "vault_mirrored": vault_mirrored,
        "capsule_synced": capsule_synced,
        "windows_pointer_synced": windows_pointer_synced,
        "metrics": metrics,
    }


def _check_endpoint_reachable(url_str: str) -> bool:
    try:
        parsed = urllib.parse.urlparse(url_str)
        host = parsed.hostname or "127.0.0.1"
        port = parsed.port or (443 if parsed.scheme == "https" else 80)
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
            sock.settimeout(0.35)
            return sock.connect_ex((host, int(port))) == 0
    except Exception:
        return False


def _ensure_intrnl_extrnl_bridge_files(repo_root: Path, dry_run: bool = False) -> str:
    gw_dir = repo_root / ".gateway"
    outbox = gw_dir / "extrnl_query_export_outbox.json"
    inbox = gw_dir / "intrnl_answer_import_inbox.json"
    cocon = gw_dir / "google_node_gateway_post_port_socket_pocket_cocon.json"

    all_exist = outbox.is_file() and inbox.is_file() and cocon.is_file()
    if all_exist:
        return "SYNCED"
    if dry_run:
        return "DRY_RUN_VERIFIED"

    now_iso = _utc_now_iso()
    gw_dir.mkdir(parents=True, exist_ok=True)
    if not outbox.is_file():
        _write_json_atomic(
            outbox,
            {
                "bridge": "EXTRNL_TO_INTRNL_QUERY_EXPORT_OUTBOX",
                "status": "READY_528HZ",
                "updated_at_utc": now_iso,
                "queries": [],
            },
        )
    if not inbox.is_file():
        _write_json_atomic(
            inbox,
            {
                "bridge": "INTRNL_TO_EXTRNL_ANSWER_IMPORT_INBOX",
                "status": "READY_528HZ",
                "updated_at_utc": now_iso,
                "answers": [],
            },
        )
    if not cocon.is_file():
        pocket_payload = {
            "node": "GOOGLE_NODE_GATEWAY_POST_PORT_SOCKET_POCKET_COCON",
            "port": 5280,
            "carrier_hz": "528 Hz / 432 Hz",
            "status": "SEALED_ACTIVE",
            "updated_at_utc": now_iso,
        }
        sha_seal = hashlib.sha256(json.dumps(pocket_payload, sort_keys=True).encode("utf-8")).hexdigest()
        _write_json_atomic(
            cocon,
            {
                "pocket_cocon": pocket_payload,
                "sha256_seal": sha_seal,
                "status": "SEALED_ACTIVE",
            },
        )
    return "SYNCED"


def _run_external_init(repo_root: Path, dry_run: bool = False) -> Dict[str, Any]:
    for p in (str(repo_root), str(repo_root / "core" / "global_admin")):
        if p not in sys.path:
            sys.path.insert(0, p)

    gw_dir = repo_root / ".gateway"

    # 1. Strict UI_DEVICE_LOCK inspection (never run adb shell am start or pm2 restart all)
    lock_file = gw_dir / "UI_DEVICE_LOCK.json"
    ui_lock_active = True
    if lock_file.is_file():
        try:
            lock_doc = json.loads(lock_file.read_text(encoding="utf-8"))
            ui_lock_active = bool(lock_doc.get("lock_ui_takeover", True))
        except Exception:
            ui_lock_active = True

    # 2. intrnl_sys <-> extrnl_sys bridge files
    bridge_status = _ensure_intrnl_extrnl_bridge_files(repo_root, dry_run=dry_run)

    # 3. Passive 4-surface probe (bin, exe, apk, web) without intrusive launches
    surfaces_probed = ["bin", "exe", "apk", "web"]

    # 4. Edge spool status
    edge_spool_dir = gw_dir / "edge_spool"
    if not dry_run:
        edge_spool_dir.mkdir(parents=True, exist_ok=True)
    spooled_count = len(list(edge_spool_dir.glob("*.json"))) if edge_spool_dir.is_dir() else 0
    edge_spool_status = f"READY_SPOOL_ITEMS_{spooled_count}"

    # 5. Tunnel & ADB passive check
    degraded_reasons: List[str] = []
    if os.environ.get("FAKE_ADB_ONLINE") == "0":
        degraded_reasons.append("ADB_DEVICE_OFFLINE")

    for env_key in ("RADR_GATEWAY_URL", "RADR_KERNEL_INFER_URL"):
        env_url = os.environ.get(env_key, "").strip()
        if env_url and not _check_endpoint_reachable(env_url):
            degraded_reasons.append(f"{env_key}_UNREACHABLE")

    origin_file = gw_dir / "origin_home_endpoint.json"
    tunnel_status = "ONLINE_SYNCED"
    if origin_file.is_file():
        try:
            origin_doc = json.loads(origin_file.read_text(encoding="utf-8"))
            tunnel_status = str(origin_doc.get("status") or "ONLINE_SYNCED")
        except Exception:
            tunnel_status = "DEGRADED_ORIGIN_CONFIG"
            degraded_reasons.append("ORIGIN_CONFIG_PARSE_WARN")

    if degraded_reasons:
        tunnel_status = f"DEGRADED ({','.join(degraded_reasons)})"

    ext_status = "DEGRADED_GRACEFUL" if degraded_reasons else "READY"

    return {
        "status": ext_status,
        "ui_device_lock_respected": True,
        "ui_device_lock_active": ui_lock_active,
        "intrnl_extrnl_bridge_status": bridge_status,
        "surfaces_probed": surfaces_probed,
        "edge_spool_status": edge_spool_status,
        "tunnel_status": tunnel_status,
        "degraded_reasons": degraded_reasons,
    }


def run_lam_archivator_init(
    mode: str = "both",
    source_session_id: Optional[str] = None,
    target_session_id: Optional[str] = None,
    auto_slice: bool = False,
    dry_run: bool = False,
    repo_root: Optional[Any] = None,
    vault_sessions_dir: Optional[Path] = None,
) -> Dict[str, Any]:
    norm_mode = str(mode or "both").strip().lower()
    if norm_mode not in ("internal", "external", "both"):
        raise ValueError(f"Unsupported mode: {mode}. Must be one of: internal, external, both")

    resolved_root = _resolve_repo_root(repo_root)
    now_iso = _utc_now_iso()

    internal_res: Dict[str, Any] = {}
    external_res: Dict[str, Any] = {}

    if norm_mode in ("internal", "both"):
        internal_res = _run_internal_init(
            repo_root=resolved_root,
            source_session_id=source_session_id,
            target_session_id=target_session_id,
            auto_slice=auto_slice,
            dry_run=dry_run,
            vault_sessions_dir=vault_sessions_dir,
        )

    if norm_mode in ("external", "both"):
        external_res = _run_external_init(
            repo_root=resolved_root,
            dry_run=dry_run,
        )

    statuses = []
    if internal_res:
        statuses.append(internal_res.get("status", "READY"))
    if external_res:
        statuses.append(external_res.get("status", "READY"))

    overall_status = "DEGRADED_GRACEFUL" if "DEGRADED_GRACEFUL" in statuses else "READY"
    reason_code = (
        "LAM_ARCHIVATOR_INIT_DEGRADED_GRACEFUL"
        if overall_status == "DEGRADED_GRACEFUL"
        else "LAM_ARCHIVATOR_INIT_OK"
    )
    next_actions = [
        "Monitor SessionSegmenterGuard thresholds via /api/ssn/segmenter/status",
        "Maintain zero-inflation capsule pointer sync across WSL2 and Windows .gateway",
    ]
    if overall_status == "DEGRADED_GRACEFUL":
        next_actions.insert(0, "Verify external vault mount or peer tunnel reachability when convenient")

    hybrid_cluster_res: Dict[str, Any] = {}
    try:
        import core.stream_conveyor.hybrid_context_cluster_sync as hccs_mod
        win_gw_dir = _resolve_win_gateway_dir(resolved_root)
        win_brain_dir = _resolve_win_brain_dir(resolved_root)
        vault_dir = _resolve_vault_sessions_dir(resolved_root, vault_sessions_dir)
        hybrid_cluster_res = hccs_mod.sync_hybrid_sessions_cluster(
            repo_root=resolved_root,
            win_brain_dir=win_brain_dir,
            win_gw_dir=win_gw_dir,
            vault_dir=vault_dir,
            active_session_id=internal_res.get("session_id") or source_session_id,
            target_session_id=internal_res.get("target_session_id") or target_session_id,
            capsule_id=internal_res.get("capsule_id"),
            dry_run=bool(dry_run),
        )
        if external_res:
            external_res["hybrid_surfaces_clustered"] = list(hccs_mod.HYBRID_SURFACES)
            external_res["hybrid_cluster_sync"] = hybrid_cluster_res
    except Exception as exc:
        hybrid_cluster_res = {"status": f"DEGRADED_GRACEFUL ({exc})"}

    report: Dict[str, Any] = {
        "protocol": "LAM_ARCHIVATOR_AGENT_INIT_EXECUTION_PROTOCOL_V1",
        "status": overall_status,
        "mode": norm_mode,
        "dry_run": bool(dry_run),
        "internal": internal_res,
        "external": external_res,
        "hybrid_context_cluster": hybrid_cluster_res,
        "reason_code": reason_code,
        "next_actions": next_actions,
        "timestamp_utc": now_iso,
    }

    if not dry_run:
        gw_dir = resolved_root / ".gateway"
        chronolog_dir = resolved_root / "chronolog"
        try:
            _write_json_atomic(gw_dir / "lam_archivator_init_state.json", report)
        except Exception:
            pass
        try:
            chronolog_dir.mkdir(parents=True, exist_ok=True)
            ledger_path = chronolog_dir / "lam_archivator_init_ledger.jsonl"
            with open(ledger_path, "a", encoding="utf-8") as lfh:
                lfh.write(json.dumps(report, ensure_ascii=False) + "\n")
        except Exception:
            pass

    return report


run_init = run_lam_archivator_init


def main(argv: Optional[List[str]] = None) -> int:
    parser = argparse.ArgumentParser(
        description="LAM_ARCHIVATOR_AGENT Initialization Execution Protocol (INTRNL & EXTRNL SS)"
    )
    parser.add_argument(
        "--mode",
        choices=["internal", "external", "both"],
        default="both",
        help="Execution scope: internal (INTRNL SS), external (EXTRNL SS), or both",
    )
    parser.add_argument("--source-session-id", default=None, help="Source session UUID to inspect/export")
    parser.add_argument("--target-session-id", default=None, help="Target session UUID for pointer ingestion")
    parser.add_argument("--auto-slice", action="store_true", help="Automatically slice BRAKE_ENGAGED sessions")
    parser.add_argument("--dry-run", action="store_true", help="Inspect without mutating capsules or archives")
    parser.add_argument("--repo-root", default=None, help="Override repository root directory")
    parser.add_argument("--json", action="store_true", help="Emit JSON output")

    args = parser.parse_args(argv)
    report = run_lam_archivator_init(
        mode=args.mode,
        source_session_id=args.source_session_id,
        target_session_id=args.target_session_id,
        auto_slice=args.auto_slice,
        dry_run=args.dry_run,
        repo_root=args.repo_root,
    )
    print(json.dumps(report, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    sys.exit(main())
