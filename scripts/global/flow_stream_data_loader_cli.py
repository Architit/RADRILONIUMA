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


def cmd_status(loader: FlowStreamProtocolDataSelectorLoader):
    print_banner()
    print("Storage Target Cascade & Saturation Status:")
    for idx, tgt in enumerate(loader.target_chain):
        metrics = loader.get_storage_metrics(tgt)
        sat_mark = "🛑 [SATURATED >= 98%]" if metrics.get("saturated") else "✅ [ACTIVE/AVAILABLE]"
        print(f"  [{idx+1}] {tgt}")
        print(f"      Total: {metrics.get('total_gb')} GB | Used: {metrics.get('used_gb')} GB ({metrics.get('used_percent')}%) | Free: {metrics.get('free_gb')} GB | {sat_mark}")
    
    try:
        active_tgt, active_metrics = loader.get_active_target_volume()
        print(f"\nCurrent Active Target : {active_tgt} ({active_metrics.get('used_percent')}%)")
    except Exception as e:
        print(f"\nActive Target Error   : {e}")

    print(f"Total Unique Hashes   : {len(loader.processed_hashes)} segments in chronicles")
    print(f"Next Orbit Phase      : Phase {loader.active_phase_index + 1} ({SOURCE_IDENTIFIERS[loader.active_phase_index]})")


def cmd_step(loader: FlowStreamProtocolDataSelectorLoader, source_id: str = None):
    print_banner()
    res = loader.execute_move_step(source_id)
    print(f"Status        : {res['status']}")
    print(f"Source        : {res['source_id']}")
    print(f"Segment Name  : {res['segment_name']}")
    print(f"Symbols/Chars : {res['char_count']} (Limit <= {MAX_SEGMENT_SYMBOLS})")
    print(f"SHA-256       : {res['sha256']}")
    print(f"Target Vault  : {res['target_vault']}")
    print(f"Transfer Mode : {res['moved_status']}")
    print(f"Next Phase    : Phase {res['next_phase']}")


def cmd_orbit(loader: FlowStreamProtocolDataSelectorLoader):
    print_banner()
    print("Initiating full 8-phase cycle orbit...")
    orbit_res = loader.execute_orbit()
    print(f"\n✅ Orbit {orbit_res['orbit_cycle']} Completed Successfully!")
    print(f"Phases Executed : {orbit_res['phases_executed']} / 8")
    print(f"Total Moved     : {orbit_res['total_chars_moved']} characters/symbols")
    for r in orbit_res["results"]:
        print(f"  ➜ [{r['source_id']}] -> {r['segment_name']} ({r['char_count']} chars, hash: {r['sha256'][:8]}...)")


def main():
    parser = argparse.ArgumentParser(description="RADRILONIUMA Flow Stream Data Selector Loader CLI")
    parser.add_argument("--status", action="store_true", help="Display cluster storage saturation and chronicles status")
    parser.add_argument("--step", action="store_true", help="Execute single step (1 segment <= 20k tokens)")
    parser.add_argument("--source", type=str, choices=SOURCE_IDENTIFIERS, help="Specify source for step")
    parser.add_argument("--run-orbit", action="store_true", help="Execute full 8-phase cycle orbit")
    parser.add_argument("--continuous", type=int, default=0, help="Run N consecutive orbits")
    parser.add_argument("--json", action="store_true", help="Output machine-readable JSON")

    args = parser.parse_args()
    loader = FlowStreamProtocolDataSelectorLoader()

    if args.status:
        cmd_status(loader)
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
