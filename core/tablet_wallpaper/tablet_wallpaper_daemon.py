#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA TABLET WALLPAPER SLIDESHOW DAEMON
=============================================
Orchestrates continuous 1-minute roll updates for Android Tablet (DEV_04_EDGE_DROID).
Cadence:
- Every 1 Minute Roll Update
- 4 Weeks Lunar Cycle
- 7 Days Diurnal Planetary Spectrum
- 4 Seasons Equinox/Solstice Quarters
- 128-Year Sovereign Epoch
"""

import os
import sys
import time
import shutil
import subprocess
from pathlib import Path
from datetime import datetime, timezone

ROOT_DIR = Path(__file__).resolve().parents[2]
ADMIN_DIR = ROOT_DIR / "core" / "global_admin"
WALLPAPER_DIR = ROOT_DIR / "core" / "tablet_wallpaper"
CONVEYOR_DIR = ROOT_DIR / "core" / "stream_conveyor"
CHRONOLOG_DIR = ROOT_DIR / "chronolog"
DATA_DIR = ROOT_DIR / "data" / "wallpapers"

sys.path.insert(0, str(ADMIN_DIR))
sys.path.insert(0, str(WALLPAPER_DIR))
sys.path.insert(0, str(CONVEYOR_DIR))

from captains_bridge_engine import CaptainsOrbitalEngine
from data_stream_pipeline_bus import DataStreamPipelineBus

WIN_PICTURES = Path("/mnt/c/Users/BushM/Pictures")
SSD_VAULT_WALLPAPER = Path("/mnt/e/COCOON_PARALLEL_SESSIONS/cocoon_android/wallpapers")
ROLL_LOG = CHRONOLOG_DIR / "tablet_wallpaper_rolls.jsonl"

class TabletWallpaperSlideshowDaemon:
    def __init__(self):
        self.engine = CaptainsOrbitalEngine(width=2560, height=1600)
        self.bus = DataStreamPipelineBus()
        SSD_VAULT_WALLPAPER.mkdir(parents=True, exist_ok=True)
        WIN_PICTURES.mkdir(parents=True, exist_ok=True)

    def execute_one_roll(self) -> dict:
        """Executes a single 1-minute roll update across all targets."""
        now_utc = datetime.now(timezone.utc).isoformat()
        
        # 1. Procedural generation
        res = self.engine.render_and_save()
        img_path = Path(res["image_path"])
        metadata = res["metadata"]

        # 2. Replicate to Windows Host & Samsung SSD 1TB
        try:
            shutil.copy2(img_path, WIN_PICTURES / "Radriloniuma_Tablet_Wallpaper.png")
            shutil.copy2(img_path, SSD_VAULT_WALLPAPER / "current_wallpaper.png")
            shutil.copy2(img_path.with_suffix(".json"), SSD_VAULT_WALLPAPER / "current_wallpaper.json")
            # Apply to Windows Desktop and notify Windows Terminal
            ps_exe = "/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe"
            if Path(ps_exe).exists():
                subprocess.run([
                    ps_exe, "-NoProfile", "-ExecutionPolicy", "Bypass",
                    "-File", "C:/setup/set_desktop_wallpaper.ps1"
                ], capture_output=True, timeout=10)
        except Exception as e:
            metadata["replication_warning"] = str(e)

        # 3. Stream through Data Conveyor Bus
        bus_event = {
            "device": "DEV_04_EDGE_DROID",
            "roll_timestamp_utc": now_utc,
            "era_year": metadata["chronos"]["epoch_era"]["current_era_year"],
            "season": metadata["chronos"]["season"]["name"],
            "week": metadata["chronos"]["week_cycle"]["week_number"],
            "day": metadata["chronos"]["day"]["name"],
            "minute_tick": metadata["chronos"]["epoch_era"]["discrete_minute_tick"],
            "palette": metadata["palette"]
        }
        self.bus.ingest_stream("ubuntu", bus_event, event_type="TABLET_WALLPAPER_ROLL", target_node="ORGAN_23_EDGE_DROID")
        self.bus.pump_conveyor(max_packets=5)

        # 4. Attempt ADB Push if Android Tablet is physically connected
        adb_status = "NO_DEVICE"
        try:
            adb_out = subprocess.run(["adb", "devices"], capture_output=True, text=True, timeout=3).stdout
            if "device\n" in adb_out:
                subprocess.run(["adb", "shell", "mkdir", "-p", "/sdcard/Pictures/Radriloniuma/"], timeout=5)
                subprocess.run(["adb", "push", str(img_path), "/sdcard/Pictures/Radriloniuma/current_wallpaper.png"], timeout=10)
                adb_status = "PUSHED_TO_ANDROID_TABLET"
        except Exception:
            adb_status = "ADB_DISCONNECTED"

        metadata["adb_status"] = adb_status

        # 5. Record to Chronolog
        import json
        with open(ROLL_LOG, "a", encoding="utf-8") as f:
            f.write(json.dumps({
                "timestamp_utc": now_utc,
                "minute_tick": metadata["chronos"]["epoch_era"]["discrete_minute_tick"],
                "season": metadata["chronos"]["season"]["name"],
                "adb_status": adb_status
            }) + "\n")

        return {
            "status": "ROLL_SUCCESS",
            "timestamp_utc": now_utc,
            "era_year": f"{metadata['chronos']['epoch_era']['current_era_year']} / 128",
            "season": metadata["chronos"]["season"]["name"],
            "week": metadata["chronos"]["week_cycle"]["week_number"],
            "day": metadata["chronos"]["day"]["name"],
            "adb_status": adb_status
        }

    def start_slideshow_loop(self):
        """Continuous background loop triggering roll update every 60 seconds."""
        print("=== TABLET WALLPAPER SLIDESHOW DAEMON STARTED (60s Interval) ===")
        while True:
            t0 = time.time()
            try:
                res = self.execute_one_roll()
                print(f"[{res['timestamp_utc']}] Wallpaper Roll OK -> Season: {res['season']} | Year: {res['era_year']} | ADB: {res['adb_status']}")
            except Exception as e:
                print(f"Error during wallpaper roll: {e}")
            
            # Sleep until next minute boundary
            elapsed = time.time() - t0
            sleep_time = max(1.0, 60.0 - elapsed)
            time.sleep(sleep_time)

if __name__ == "__main__":
    daemon = TabletWallpaperSlideshowDaemon()
    if "--daemon" in sys.argv:
        daemon.start_slideshow_loop()
    else:
        res = daemon.execute_one_roll()
        print("Single Roll Test Completed:")
        print(res)
