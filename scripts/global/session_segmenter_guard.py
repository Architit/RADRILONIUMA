#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • SESSION SEGMENTER GUARD & ARCHIVATOR CLI
=========================================================
CLI tool for session buffer monitoring, brake enforcement, chronological slicing,
gzip compression with gzip -t verification, and non-destructive P0 vault mirroring.
Location: /root/RADRILONIUMA/scripts/global/session_segmenter_guard.py
"""

import os
import sys
import json
import argparse
from pathlib import Path
from typing import List

# Setup sys.path for core module resolution
SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
CORE_DIR = REPO_ROOT / "core" / "stream_conveyor"
if str(CORE_DIR) not in sys.path:
    sys.path.insert(0, str(CORE_DIR))
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))

try:
    from session_segmenter_guard import (
        SessionSegmenterGuard,
        SessionBufferBrakeException,
        WARN_STEP_COUNT,
        WARN_TOKEN_COUNT,
        BRAKE_STEP_COUNT,
        BRAKE_TOKEN_COUNT,
        BRAKE_BYTE_SIZE,
        DEFAULT_ROLLING_WINDOW,
        DEFAULT_SEGMENT_SIZE
    )
except ImportError:
    from core.stream_conveyor.session_segmenter_guard import (
        SessionSegmenterGuard,
        SessionBufferBrakeException,
        WARN_STEP_COUNT,
        WARN_TOKEN_COUNT,
        BRAKE_STEP_COUNT,
        BRAKE_TOKEN_COUNT,
        BRAKE_BYTE_SIZE,
        DEFAULT_ROLLING_WINDOW,
        DEFAULT_SEGMENT_SIZE
    )


def print_banner():
    print("⚜️ ===================================================================== ⚜️")
    print("     RADRILONIUMA • SESSION SEGMENTER GUARD & ARCHIVATOR (528 Hz)        ")
    print("⚜️ ===================================================================== ⚜️")


def print_inspect_banner(metrics: dict):
    print_banner()
    print(f"Session Target   : {metrics.get('session_file', 'unknown')}")
    print(f"Session ID       : {metrics.get('session_id', 'unknown')}")
    print(f"Step Count       : {metrics.get('step_count', 0)} (Warn: {metrics['thresholds']['warn_steps']}, Brake: {metrics['thresholds']['brake_steps']})")
    print(f"Token Count      : {metrics.get('token_count', 0)} (Warn: {metrics['thresholds']['warn_tokens']}, Brake: {metrics['thresholds']['brake_tokens']})")
    print(f"Byte Size        : {metrics.get('byte_size', 0)} bytes (Brake: {metrics['thresholds']['brake_bytes']} bytes)")
    print(f"Status           : {metrics.get('status', 'UNKNOWN')}")
    if metrics.get("warning_triggered"):
        print(f"⚠️  WARNINGS     : {', '.join(metrics.get('warning_reasons', []))}")
    if metrics.get("brake_applied"):
        print(f"🛑 BRAKE ACTIVE  : {', '.join(metrics.get('brake_reasons', []))}")


def print_segment_summary(result: dict):
    print_banner()
    print(f"Session ID       : {result.get('session_id')}")
    print(f"Status           : {result.get('status')}")
    print(f"Segments Created : {result.get('segments_created')}")
    print(f"Total Segments   : {result.get('total_segments')}")
    print(f"Active Steps Kept: {result.get('active_window_steps')}")
    print(f"Archive Directory: {result.get('local_archive_dir', result.get('archive_dir'))}")
    if "mirror_vault_result" in result:
        print(f"Vault Sync       : {result['mirror_vault_result']}")
    elif "vault_sync" in result:
        print(f"Vault Sync       : {result['vault_sync']}")


def print_sync_summary(result: dict):
    print_banner()
    print(f"Target Node      : {result.get('node', 'DEV_04_SAMSUNG_T7_VAULT')}")
    print(f"Mirrored Status  : {'SUCCESS' if result.get('mirrored') else 'FAILED'}")
    print(f"Target Path      : {result.get('target_path')}")
    if result.get("files_copied"):
        print(f"Files Copied     : {', '.join(result['files_copied'])}")
    if result.get("files_skipped_idempotent"):
        print(f"Files Skipped    : {len(result['files_skipped_idempotent'])} (Idempotent Zero-Overwrite)")
    if result.get("gzips_verified_on_vault"):
        print(f"Gzips Verified   : {len(result['gzips_verified_on_vault'])} (gzip -t OK)")
    if result.get("reason"):
        print(f"Notice           : {result['reason']}")
    if result.get("error"):
        print(f"Error            : {result['error']}")


def print_status_summary(result: dict):
    print_banner()
    print(f"Cluster Status   : {result.get('cluster_status')}")
    print(f"Resonance        : {result.get('harmonic_carrier', '528 Hz / 432 Hz')}")
    if "session_metrics" in result:
        m = result["session_metrics"]
        print(f"Active Session   : {m.get('session_id')}")
        print(f"Step Count       : {m.get('step_count')}")
        print(f"Token Count      : {m.get('token_count')}")
        print(f"Status           : {m.get('status')}")
    print(f"Vault Reachable  : {result.get('vault_reachable')}")


def preprocess_cli_args(args_list: List[str]) -> List[str]:
    """
    Normalizes legacy CLI arguments into subcommand syntax while maintaining
    full backward compatibility.
    """
    if not args_list:
        return args_list
    first_arg = args_list[0]
    subcmds = {"inspect", "segment", "sync", "status", "-h", "--help"}
    if first_arg in subcmds:
        return args_list

    is_segment = False
    is_status = False
    is_check = False
    filtered: List[str] = []

    i = 0
    while i < len(args_list):
        arg = args_list[i]
        if arg == "--check":
            is_check = True
            i += 1
        elif arg == "--segment":
            is_segment = True
            i += 1
        elif arg == "-s" and (i + 1 == len(args_list) or args_list[i + 1].startswith("-")):
            # Standalone -s treated as legacy segment flag
            is_segment = True
            i += 1
        elif arg == "--status":
            is_status = True
            i += 1
        else:
            filtered.append(arg)
            i += 1

    if is_status:
        if filtered and not filtered[0].startswith("-"):
            session_val = filtered.pop(0)
            return ["status", "--session", session_val] + filtered
        return ["status"] + filtered
    elif is_segment:
        return ["segment"] + filtered
    else:
        return ["inspect"] + filtered


def main():
    parser = argparse.ArgumentParser(
        description="RADRILONIUMA • Session Segmenter Guard & Archivator CLI"
    )
    subparsers = parser.add_subparsers(dest="subcommand", help="Available subcommands")

    # inspect
    p_insp = subparsers.add_parser("inspect", help="Inspect session metrics and check thresholds")
    p_insp.add_argument("session", help="Session ID or JSONL file path")
    p_insp.add_argument("--json", action="store_true", help="Output JSON")

    # segment
    p_seg = subparsers.add_parser("segment", help="Perform chronological slicing and archival")
    p_seg.add_argument("session", help="Session ID or JSONL file path")
    p_seg.add_argument("--rolling-window", "-w", type=int, default=DEFAULT_ROLLING_WINDOW, help="Rolling window size")
    p_seg.add_argument("--segment-size", "-s", type=int, default=DEFAULT_SEGMENT_SIZE, help="Step count per segment")
    p_seg.add_argument("--no-sync", action="store_true", help="Skip DEV_04 vault sync")
    p_seg.add_argument("--json", action="store_true", help="Output JSON")

    # sync
    p_sync = subparsers.add_parser("sync", help="Sync archive to DEV_04_SAMSUNG_T7_VAULT")
    p_sync.add_argument("session", help="Session ID to sync")
    p_sync.add_argument("--vault-dir", help="Custom vault mirror path")
    p_sync.add_argument("--verify", action="store_true", default=True, help="Verify gzip -t on destination")
    p_sync.add_argument("--json", action="store_true", help="Output JSON")

    # status
    p_stat = subparsers.add_parser("status", help="Return active session monitor status")
    p_stat.add_argument("--session", "-s", help="Optional specific session ID")
    p_stat.add_argument("--json", action="store_true", help="Output JSON")

    normalized_args = preprocess_cli_args(sys.argv[1:])
    args = parser.parse_args(normalized_args)

    if not args.subcommand:
        parser.print_help()
        sys.exit(1)

    guard = SessionSegmenterGuard()

    try:
        if args.subcommand == "inspect":
            metrics = guard.inspect_session(args.session)
            if args.json:
                print(json.dumps(metrics, indent=2))
            else:
                print_inspect_banner(metrics)
            if metrics["status"] == "BRAKE_ENGAGED":
                sys.exit(2)
            elif metrics["status"] == "WARNING":
                sys.exit(1)
            else:
                sys.exit(0)

        elif args.subcommand == "segment":
            if getattr(args, "no_sync", False):
                res = guard.slice_segments(args.session, segment_size=args.segment_size, active_window=args.rolling_window)
            else:
                res = guard.slice_and_archive(args.session, rolling_window_size=args.rolling_window, segment_size=args.segment_size)

            if args.json:
                print(json.dumps(res, indent=2))
            else:
                print_segment_summary(res)
            sys.exit(0)

        elif args.subcommand == "sync":
            sync_res = guard.archive_and_sync(args.session)
            if getattr(args, "vault_dir", None):
                sync_res["vault_mirror"] = guard.sync_to_vault(args.session, vault_dir=args.vault_dir)

            if args.json:
                print(json.dumps(sync_res, indent=2))
            else:
                print_sync_summary(sync_res.get("vault_mirror", sync_res))
            # If mirrored is explicitly False with an error code, return non-zero
            vault_info = sync_res.get("vault_mirror", {})
            if vault_info.get("code") == "VAULT_UNREACHABLE":
                sys.exit(0)  # Graceful non-zero unmounted handling
            sys.exit(0 if vault_info.get("mirrored", True) else 1)

        elif args.subcommand == "status":
            status_res = guard.get_cluster_buffer_status(session_id=getattr(args, "session", None))
            if args.json:
                print(json.dumps(status_res, indent=2))
            else:
                print_status_summary(status_res)
            sys.exit(0)

    except Exception as e:
        if getattr(args, "json", False):
            print(json.dumps({"error": str(e)}))
        else:
            print(f"❌ Error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
