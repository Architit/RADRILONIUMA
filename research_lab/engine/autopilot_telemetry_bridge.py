#!/usr/bin/env python3
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import os
import subprocess
from datetime import datetime

class AutopilotTelemetryBridge:
    """Links Autopilot Heartbeat to Research Lab Telemetry."""
    def __init__(self):
        self.root_dir = "/home/architit/LAM_CORE/RADRILONIUMA"
        self.state_file = os.path.join(self.root_dir, "SYSTEM_STATE.md")
        self.lab_log = os.path.join(self.root_dir, "research_lab/docs/LAB_TELEMETRY.log")
        self.nexus_log = os.path.join(self.root_dir, "gov/report/telemetry_nexus.log")

    def get_last_heartbeat(self):
        try:
            with open(self.state_file, "r") as f:
                for line in f:
                    if "last_heartbeat_utc:" in line:
                        return line.split(":", 1)[1].strip()
        except Exception:
            return "UNKNOWN"
        return "NOT_FOUND"

    def sync_telemetry(self):
        heartbeat = self.get_last_heartbeat()
        timestamp = datetime.now(datetime.UTC).isoformat()
        
        entry = f"[{timestamp}] [AUTOPILOT_BRIDGE] Heartbeat Synced: {heartbeat}\n"
        
        with open(self.lab_log, "a") as f:
            f.write(entry)
        
        print(f"[BRIDGE] Telemetry sync complete. Heartbeat: {heartbeat}")

if __name__ == "__main__":
    bridge = AutopilotTelemetryBridge()
    bridge.sync_telemetry()
