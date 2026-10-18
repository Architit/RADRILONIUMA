#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
===============================================================================
RADRILONIUMA • AGY EDGE SESSION MANAGER & INITIALIZER (AGY CLI SSN INIT)
===============================================================================
Connects DEV_02_ATESIRT (Android Edge Node) to active AGY CLI sessions.
Manages session initiation, directive ingestion, and M49 cascade lifecycle.
"""

import os
import sys
import json
import time
import subprocess
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any

ROOT_DIR = Path(__file__).resolve().parents[2]
CORE_DIR = ROOT_DIR / "core" / "neural_cluster_pipeline"
GATEWAY_DIR = ROOT_DIR / ".gateway"
STATE_FILE = GATEWAY_DIR / "agy_edge_session_state.json"
GATEWAY_DIR.mkdir(parents=True, exist_ok=True)
sys.path.insert(0, str(CORE_DIR))

from edge_query_pather import EdgeQueryPather

class AgyEdgeSessionManager:
    """Orchestrates Edge Node AGY CLI session initialization and lifecycle."""

    def __init__(self):
        self.pather = EdgeQueryPather()
        self.session_id = f"ssn-edge-{datetime.now(timezone.utc).strftime('%Y%m%d-%H%M%S')}"

    def init_session(self, initiator: str = "DEV_02_ATESIRT") -> Dict[str, Any]:
        """Initializes a linked AGY session across the Edge Node and Kernel."""
        t_start = time.perf_counter()

        # 1. Verify Atesirt Home Node reverse tunnels
        res_tunnel = subprocess.run(["adb", "-s", "RZCY80G86FP", "reverse", "tcp:3001", "tcp:3001"], capture_output=True, text=True)
        tunnel_ok = res_tunnel.returncode == 0

        # 2. Transmit initial handshake pulse
        pulse = self.pather.route_query("agy ssn init: Sovereign Edge Node Atesirt Connected", source_node=initiator)

        duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)

        state = {
            "session_id": self.session_id,
            "initiator_node": initiator,
            "participating_nodes": [
                "DEV_01_BUSHMASTER",
                "DEV_02_ATESIRT",
                "DEV_03_UBUNTU_WSL2"
            ],
            "reverse_tunnel_3001_active": tunnel_ok,
            "handshake_pulse": pulse["synaptic_pulse"],
            "dispatch_status": pulse["execution"].get("status", "SUCCESS"),
            "session_mode": "AGY_INTERACTIVE_EDGE_DISPATCH",
            "gateway_ingress_endpoint": "http://127.0.0.1:3001/api/edge/query",
            "carrier_frequency_hz": 528.0,
            "status": "INITIALIZED_AND_LISTENING",
            "created_utc": datetime.now(timezone.utc).isoformat(),
            "last_pulse_utc": datetime.now(timezone.utc).isoformat()
        }

        try:
            STATE_FILE.write_text(json.dumps(state, indent=2, ensure_ascii=False), encoding="utf-8")
        except Exception:
            pass

        return state

    def handle_incoming_query(self, query: str, source: str = "DEV_02_ATESIRT") -> Dict[str, Any]:
        """Dispatches an incoming query through the Edge Query Pather."""
        return self.pather.route_query(query, source_node=source)

if __name__ == "__main__":
    manager = AgyEdgeSessionManager()
    res = manager.init_session("DEV_02_ATESIRT")
    print("⚜️ [AGY EDGE SESSION] Session initialized successfully:")
    print(json.dumps(res, indent=2, ensure_ascii=False))
