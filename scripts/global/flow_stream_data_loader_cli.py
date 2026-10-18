#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • FLOW STREAM PROTOCOL DATA SELECTOR LOADER CLI
=============================================================
CLI management tool for executing 8-phase data orbits, stepping, and monitoring
storage saturation cascade with zero-copy MOVE ONLY guarantees.
Location: /root/RADRILONIUMA/scripts/global/flow_stream_data_loader_cli.py
"""

import os
import sys
import json
import time
import argparse
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
CORE_DIR = REPO_ROOT / "core" / "stream_conveyor"

if str(CORE_DIR) not in sys.path:
    sys.path.insert(0, str(CORE_DIR))
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))

try:
    from flow_stream_protocol_data_selector_loader import (
        FlowStreamProtocolDataSelectorLoader,
        SOURCE_IDENTIFIERS,
        MAX_SEGMENT_SYMBOLS,
        SATURATION_THRESHOLD,
        DEFAULT_TARGET_CHAIN
    )
except ImportError:
    from core.stream_conveyor.flow_stream_protocol_data_selector_loader import (
        FlowStreamProtocolDataSelectorLoader,
        SOURCE_IDENTIFIERS,
        MAX_SEGMENT_SYMBOLS,
        SATURATION_THRESHOLD,
        DEFAULT_TARGET_CHAIN
    )


def print_banner():
    print("⚜️ ===================================================================== ⚜️")
    print("   RADRILONIUMA • FLOW STREAM PROTOCOL DATA SELECTOR LOADER (528 Hz)     ")
    print("⚜️ ===================================================================== ⚜️")


def make_progress_bar(percent: float, width: int = 20) -> str:
    """Generates visual unicode progress bar."""
    filled = int(round(width * (percent / 100.0)))
    filled = min(width, max(0, filled))
    bar = "█" * filled + "░" * (width - filled)
    return f"[{bar}] {percent:.1f}%"


def cmd_status(loader: FlowStreamProtocolDataSelectorLoader):
    print_banner()
    print("CLUSTER STORAGE DASHBOARD & SATURATION CASCADE (528 Hz):\n")
    
    # 1. DEV_02_ATESIRT Storage Reading
    atesirt = loader.get_atesirt_storage_metrics()
    atesirt_bar = make_progress_bar(atesirt.get("used_percent", 0.0), 22)
    print(f"📱 [DEV_02_ATESIRT] Mobile Cluster Node ({atesirt.get('device', 'Samsung SM-A266B')}):")
    print(f"   Total Space     : {atesirt.get('total_gb')} GB")
    print(f"   Used Space      : {atesirt.get('used_gb')} GB")
    print(f"   Available Space : {atesirt.get('free_gb')} GB")
    print(f"   Dashboard Gauge : {atesirt_bar} ({atesirt.get('status')})\n")

    # 2. Host PC Volumes (C:, D:, E:, F:)
    print("💻 [DEV_01_BUSHMASTER & DEV_04_SAMSUNG_T7_VAULT] Storage Cascade:")
    for idx, tgt in enumerate(loader.target_chain):
        metrics = loader.get_storage_metrics(tgt)
        pct = metrics.get("used_percent", 0.0)
        bar = make_progress_bar(pct, 22)
        sat_mark = "🛑 [SATURATED >= 98%]" if metrics.get("saturated") else "✅ [ACTIVE / CASCADE READY]"
        print(f"  [{idx+1}] {tgt}")
        print(f"      Total: {metrics.get('total_gb')} GB | Used: {metrics.get('used_gb')} GB | Available: {metrics.get('free_gb')} GB")
        print(f"      Usage: {bar} | {sat_mark}")
    
    try:
        active_tgt, active_metrics = loader.get_active_target_volume()
        print(f"\nCurrent Active Ingestion Target : {active_tgt} ({active_metrics.get('used_percent')}%)")
    except Exception as e:
        print(f"\nActive Target Error            : {e}")

    print(f"Total Unique Ingested Segments  : {len(loader.processed_hashes)} segments in chronicles")
    print(f"Next Orbit Ingress Phase        : Phase {loader.active_phase_index + 1} ({SOURCE_IDENTIFIERS[loader.active_phase_index]})")


def cmd_step(loader: FlowStreamProtocolDataSelectorLoader, source_id: str = None):
    print_banner()
    res = loader.execute_move_step(source_id)
    emojis = res.get("emojis", "⚜️")
    kw = ", ".join(res.get("keywords", []))
    print(f"Status        : {res['status']}")
    print(f"Source        : {res['source_id']}")
    print(f"Segment Header: {emojis} {res['segment_name']}")
    print(f"Keywords      : [{kw}]")
    print(f"Symbols/Chars : {res['char_count']} (Limit <= {MAX_SEGMENT_SYMBOLS})")
    print(f"SHA-256       : {res['sha256']}")
    print(f"Target Vault  : {res['target_vault']}")
    print(f"Transfer Mode : {res['moved_status']}")
    print(f"Next Phase    : Phase {res['next_phase']}")


def cmd_orbit(loader: FlowStreamProtocolDataSelectorLoader):
    print_banner()
    print("Initiating full 8-phase cycle orbit with real-time stream headers, keywords & emojis...")
    orbit_res = loader.execute_orbit()
    print(f"\n✅ Orbit {orbit_res['orbit_cycle']} Completed Successfully!")
    print(f"Phases Executed : {orbit_res['phases_executed']} / 8")
    print(f"Total Moved     : {orbit_res['total_chars_moved']} characters/symbols\n")
    for r in orbit_res["results"]:
        emojis = r.get("emojis", "⚜️")
        kw = ", ".join(r.get("keywords", []))
        print(f"  ➜ {emojis} [{r['source_id']}] {r['segment_name']}")
        print(f"     Ключевые слова : [{kw}]")
        print(f"     Объем / Хэш    : {r['char_count']} символов | SHA: {r['sha256'][:16]}...\n")


def cmd_stream(limit: int = 20):
    """Outputs the live stream of recent segment headers, keywords, and emojis from chronicles."""
    print_banner()
    chronicle_file = REPO_ROOT / "chronolog" / "segmentation_chronicles.jsonl"
    if not chronicle_file.exists():
        print("No chronicles found yet.")
        return

    print(f"🔴 LIVE STREAM: RECENT SEGMENT HEADERS, KEYWORDS & EMOJIS (Last {limit}):\n")
    with open(chronicle_file, "r", encoding="utf-8") as f:
        lines = [l.strip() for l in f if l.strip()]

    recent = lines[-limit:]
    for line in recent:
        try:
            rec = json.loads(line)
            emojis = rec.get("emojis") or "⚜️"
            kw = ", ".join(rec.get("keywords", [])) if rec.get("keywords") else "SOVEREIGN_PAYLOAD"
            seg = rec.get("segment_name", "UNKNOWN")
            src = rec.get("source_id", "SRC")
            chars = rec.get("char_count", 0)
            sha = rec.get("sha256", "")[:12]
            ts = rec.get("timestamp_utc", "")[11:19]
            print(f"[{ts}] {emojis} [{src}] ➜ {seg}")
            print(f"         🏷️  Ключевые слова: [{kw}]")
            print(f"         📊 Объем: {chars} символов | Хэш: {sha} | Хранилище: {rec.get('target_vault')}\n")
        except Exception:
            continue


def main():
    parser = argparse.ArgumentParser(description="RADRILONIUMA Flow Stream Data Selector Loader CLI")
    parser.add_argument("--status", action="store_true", help="Display cluster storage saturation and chronicles status")
    parser.add_argument("--step", action="store_true", help="Execute single step (1 segment <= 20k tokens)")
    parser.add_argument("--source", type=str, choices=SOURCE_IDENTIFIERS, help="Specify source for step")
    parser.add_argument("--run-orbit", action="store_true", help="Execute full 8-phase cycle orbit")
    parser.add_argument("--stream", action="store_true", help="View real-time stream of segment headers, keywords and emojis")
    parser.add_argument("--limit", type=int, default=20, help="Number of stream items to view")
    parser.add_argument("--continuous", type=int, default=0, help="Run N consecutive orbits")
    parser.add_argument("--json", action="store_true", help="Output machine-readable JSON")

    args = parser.parse_args()
    loader = FlowStreamProtocolDataSelectorLoader()

    if args.status:
        cmd_status(loader)
    elif args.stream:
        cmd_stream(args.limit)
    elif args.step:
        cmd_step(loader, args.source)
    elif args.run_orbit:
        cmd_orbit(loader)
    elif args.continuous > 0:
        print_banner()
        print(f"Running {args.continuous} consecutive 8-phase orbits...")
        for i in range(args.continuous):
            print(f"\n--- Starting Orbit {i+1}/{args.continuous} ---")
            res = loader.execute_orbit()
            print(f"Orbit {i+1} finished: {res['total_chars_moved']} chars moved.")
    else:
        cmd_status(loader)


if __name__ == "__main__":
    main()
