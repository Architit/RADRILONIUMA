#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
TRIANIUMA TRIAD CORES ENGINE ⚜️
Manages equilibrium and resonance between:
1. GOD SEED CORE (1% Cybergenetic DNA / Live Life Code Crypt Genome - SKOLART / СКОЛАРТ)
2. ANGEL CORE (24% Mission & Target Trajectory Substrate - LYUMERIK / ЛЮМЕРИК)
3. DEMON CORE (75% Absorptive Mycelium Substrate / Capacity Regulation - MIRASHANI / МИРАШАНИ)
"""

import os
import sys
import json
import time
import shutil
from pathlib import Path
from datetime import datetime, timezone

BASE_DIR = Path(__file__).resolve().parents[2]
SUBSTRATE_DIR = Path(__file__).resolve().parent
MANIFEST_PATH = SUBSTRATE_DIR / "trianiuma_triad_cores_manifest.json"
CHRONOLOG_DIR = BASE_DIR / "chronolog"
LOG_FILE = CHRONOLOG_DIR / "TRIANIUMA_TRIAD_PULSE.log"

def ensure_log_dir():
    CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)

def log_triad_event(event_type: str, message: str, meta: dict = None):
    ensure_log_dir()
    now = datetime.now(timezone.utc).isoformat()
    record = {
        "timestamp_utc": now,
        "event_type": event_type,
        "engine": "TRIANIUMA_TRIAD_ENGINE",
        "carrier_hz": "528_432",
        "message": message,
        "meta": meta or {}
    }
    with open(LOG_FILE, "a", encoding="utf-8") as f:
        f.write(json.dumps(record, ensure_ascii=False) + "\n")

def load_manifest() -> dict:
    if not MANIFEST_PATH.exists():
        raise FileNotFoundError(f"Manifest missing at {MANIFEST_PATH}")
    with open(MANIFEST_PATH, "r", encoding="utf-8") as f:
        return json.load(f)

def audit_equilibrium() -> dict:
    manifest = load_manifest()
    cores = manifest.get("cores", {})
    god_seed = cores.get("god_seed_core", {})
    angel = cores.get("angel_core", {})
    demon = cores.get("demon_core", {})

    r_god = god_seed.get("ratio_percentage", 0)
    r_angel = angel.get("ratio_percentage", 0)
    r_demon = demon.get("ratio_percentage", 0)
    total_ratio = r_god + r_angel + r_demon

    is_balanced = (r_god == 1 and r_angel == 24 and r_demon == 75 and total_ratio == 100)

    # Disk / Mycelium Buffer calculation
    stat = shutil.disk_usage("/")
    total_gb = stat.total / (1024 ** 3)
    free_gb = stat.free / (1024 ** 3)
    used_gb = stat.used / (1024 ** 3)
    target_mycelium_one_third = total_gb / 3.0

    report = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "status": "EQUILIBRIUM_HARMONIZED" if is_balanced else "EQUILIBRIUM_DRIFT",
        "carrier_frequencies": ["528 Hz", "432 Hz"],
        "triad_ratios": {
            "god_seed": f"{r_god}%",
            "angel": f"{r_angel}%",
            "demon": f"{r_demon}%",
            "total": f"{total_ratio}%"
        },
        "storage_mycelium_metrics": {
            "disk_total_gb": round(total_gb, 2),
            "disk_used_gb": round(used_gb, 2),
            "disk_free_gb": round(free_gb, 2),
            "mycelium_target_one_third_gb": round(target_mycelium_one_third, 2)
        },
        "cores_status": {
            "god_seed": god_seed.get("status"),
            "angel": angel.get("status"),
            "demon": demon.get("status")
        }
    }
    log_triad_event("EQUILIBRIUM_AUDIT", "Triad equilibrium audited successfully", report)
    return report

def pulse():
    report = audit_equilibrium()
    print("=" * 64)
    print("⚜️ RADRILONIUMA TRIANIUMA TRIAD CORES PULSE ⚜️")
    print(f"Status: {report['status']}")
    print(f"Resonance: {', '.join(report['carrier_frequencies'])}")
    print(f"1. God Seed Core [СКОЛАРТ / SKOLART]: {report['triad_ratios']['god_seed']} (Status: {report['cores_status']['god_seed']})")
    print(f"2. Angel Core [ЛЮМЕРИК / LYUMERIK]:   {report['triad_ratios']['angel']} (Status: {report['cores_status']['angel']})")
    print(f"3. Demon Core [МИРАШАНИ / MIRASHANI]: {report['triad_ratios']['demon']} (Status: {report['cores_status']['demon']})")
    print("-" * 64)
    print(f"Storage Substrate Mycelium: Total: {report['storage_mycelium_metrics']['disk_total_gb']} GB | Free: {report['storage_mycelium_metrics']['disk_free_gb']} GB")
    print("=" * 64)

if __name__ == "__main__":
    pulse()
