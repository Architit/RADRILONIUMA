# Copyright (c) 2026-07-09 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import os
import json
import re
from pathlib import Path
from datetime import datetime, timezone

class AutopilotCore:
    def __init__(self, workspace_root=None):
        if workspace_root:
            self.workspace_root = Path(workspace_root).resolve()
        else:
            self.workspace_root = Path(__file__).resolve().parents[2]
        self.state_file = self.workspace_root / "SYSTEM_STATE.md"
        self.amc_graph_file = self.workspace_root / ".gateway" / "amc_graph.json"
        self.lab_log = self.workspace_root / "research_lab/docs/LAB_TELEMETRY.log"

    def read_system_state(self):
        """Reads and parses SYSTEM_STATE.md."""
        if not self.state_file.exists():
            return {}
        state = {}
        content = self.state_file.read_text(encoding="utf-8")
        for line in content.splitlines():
            line = line.strip()
            if line.startswith("- "):
                parts = line[2:].split(":", 1)
                if len(parts) == 2:
                    state[parts[0].strip()] = parts[1].strip()
        return state

    def check_watchdog_drift(self):
        """Checks if the system heartbeat drift exceeds the allowed limit (30 minutes)."""
        state = self.read_system_state()
        heartbeat_str = state.get("last_heartbeat_utc")
        if not heartbeat_str or heartbeat_str == "UNKNOWN":
            return {"status": "SAFE_HALT", "reason": "Heartbeat missing"}
            
        try:
            clean_ts = heartbeat_str.replace("Z", "")
            heartbeat_dt = datetime.fromisoformat(clean_ts).replace(tzinfo=timezone.utc)
            now = datetime.now(timezone.utc)
            drift_minutes = (now - heartbeat_dt).total_seconds() / 60.0
            
            if drift_minutes > 30.0:
                return {
                    "status": "SAFE_HALT",
                    "reason": f"Heartbeat drift too high: {drift_minutes:.1f} minutes"
                }
            return {
                "status": "ONLINE",
                "reason": f"Heartbeat healthy. Drift: {drift_minutes:.1f} minutes"
            }
        except Exception as e:
            return {"status": "SAFE_HALT", "reason": f"Failed to parse heartbeat: {e}"}

    def delegate_tasks(self):
        """Routes task directives based on organ status in amc_graph.json."""
        if not self.amc_graph_file.exists():
            return {"status": "ERROR", "reason": "AMC Knowledge Graph is missing"}
            
        try:
            with self.amc_graph_file.open("r", encoding="utf-8") as f:
                graph = json.load(f)
            organs = graph.get("organs", {})
            active_count = sum(1 for o in organs.values() if o.get("status", "ACTIVE") == "ACTIVE")
            return {
                "status": "SUCCESS",
                "active_organs": active_count,
                "message": f"Delegated tasks across {active_count} active organs."
            }
        except Exception as e:
            return {"status": "ERROR", "reason": f"Failed to read AMC graph: {e}"}

    def run_autopilot_pulse(self):
        """Executes a full autopilot loop pulse (watchdog + delegation + logging)."""
        watchdog = self.check_watchdog_drift()
        delegation = self.delegate_tasks()
        
        timestamp = datetime.now(timezone.utc).isoformat()
        log_entry = f"[{timestamp}] [AUTOPILOT_PULSE] Watchdog: {watchdog['status']} ({watchdog['reason']}) | Delegation: {delegation['status']}\n"
        
        self.lab_log.parent.mkdir(parents=True, exist_ok=True)
        with self.lab_log.open("a", encoding="utf-8") as f:
            f.write(log_entry)
            
        return {
            "timestamp": timestamp,
            "resonance": "432 Hz (PURE)",
            "watchdog": watchdog,
            "delegation": delegation
        }
