#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
===============================================================================
RADRILONIUMA • BIDIRECTIONAL EDGE QUERY PATHER (ANDROID <-> UBUNTU <-> AGY)
===============================================================================
Intelligent query classifier and low-latency router connecting:
  DEV_02_ATESIRT (Mobile Node) <===> DEV_03_UBUNTU_WSL2 (Kernel) <===> AGY Core
Fires synapses in TynapseNeuralMeshEngine and handles real-time execution.
"""

import os
import sys
import json
import time
import urllib.request
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any, Optional

ROOT_DIR = Path(__file__).resolve().parents[2]
CORE_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(CORE_DIR))

from edge_task_executor import EdgeTaskExecutor
from tynapse_neural_mesh_engine import TynapseNeuralMeshEngine

GATEWAY_AGY_DISPATCH_URL = "http://127.0.0.1:3001/api/agy/dispatch"

ANDROID_KEYWORDS = {
    "android", "phone", "atesirt", "battery", "screen", "display", "touch",
    "tap", "apk", "package", "getprop", "dumpsys", "telephony", "sms",
    "notification", "screenshot", "camera", "volume", "vibrate", "scrcpy"
}

UBUNTU_KEYWORDS = {
    "ubuntu", "wsl", "kernel", "pm2", "daemon", "service", "python",
    "venv", "git", "bash", "linux", "drop_caches", "ls", "grep", "cat",
    "systemctl", "cron", "apt", "fs", "storage", "mount"
}

AGY_KEYWORDS = {
    "agy", "gemini", "agent", "plan", "directive", "goal", "execute",
    "implement", "refactor", "investigate", "audit", "protocol"
}

class EdgeQueryPather:
    """Routes incoming queries and tasks to the optimal node and agent engine."""

    def __init__(self):
        self.executor = EdgeTaskExecutor()
        self.tynapse = TynapseNeuralMeshEngine()

    def route_query(self, query_text: str, source_node: str = "DEV_02_ATESIRT") -> Dict[str, Any]:
        """Classifies intent, transmits synaptic pulse, and executes the target action."""
        t_start = time.perf_counter()
        q_lower = query_text.lower().strip()
        tokens = set(q_lower.replace("/", " ").replace("-", " ").split())

        and_score = len(tokens.intersection(ANDROID_KEYWORDS))
        ubu_score = len(tokens.intersection(UBUNTU_KEYWORDS))
        agy_score = len(tokens.intersection(AGY_KEYWORDS))

        # Decision Logic
        if agy_score > 0 and (agy_score >= and_score and agy_score >= ubu_score):
            target_node = "AGY_AGENT_CORE"
            action_type = "AGY_DIRECTIVE_DISPATCH"
        elif and_score > ubu_score:
            target_node = "DEV_02_ATESIRT"
            action_type = "ANDROID_COMMAND_EXECUTION"
        elif ubu_score > and_score:
            target_node = "DEV_03_UBUNTU_WSL2"
            action_type = "UBUNTU_COMMAND_EXECUTION"
        else:
            # Default fallback based on query syntax
            if query_text.startswith("adb ") or "getprop" in query_text:
                target_node = "DEV_02_ATESIRT"
                action_type = "ANDROID_COMMAND_EXECUTION"
            else:
                target_node = "DEV_03_UBUNTU_WSL2"
                action_type = "UBUNTU_COMMAND_EXECUTION"

        # 1. Fire Synapse
        modality = "ACTION_EXECUTION" if action_type != "AGY_DIRECTIVE_DISPATCH" else "COGNITIVE_SYNTHESIS"
        pulse = self.tynapse.fire_synapse(source_node, target_node, query_text, modality=modality)

        # 2. Execute Action
        exec_result = {}
        if target_node == "DEV_02_ATESIRT":
            # Strip redundant adb prefix if present
            clean_cmd = query_text
            if clean_cmd.startswith("adb shell "):
                clean_cmd = clean_cmd[10:]
            elif clean_cmd.startswith("adb "):
                clean_cmd = clean_cmd[4:]
            exec_result = self.executor.execute_android(clean_cmd)

        elif target_node == "DEV_03_UBUNTU_WSL2":
            exec_result = self.executor.execute_ubuntu(query_text)

        elif target_node == "AGY_AGENT_CORE":
            exec_result = self._dispatch_to_agy(query_text, source=source_node)

        total_latency_ms = round((time.perf_counter() - t_start) * 1000.0, 2)

        return {
            "status": "COMPLETED",
            "source_node": source_node,
            "target_node": target_node,
            "action_type": action_type,
            "query": query_text,
            "synaptic_pulse": {
                "pulse_id": pulse["pulse_id"],
                "synapse_id": pulse["synapse_id"],
                "weight": pulse["synaptic_weight"],
                "frequency_hz": pulse["carrier_frequency_hz"]
            },
            "execution": exec_result,
            "total_latency_ms": total_latency_ms,
            "timestamp_utc": datetime.now(timezone.utc).isoformat()
        }

    def _dispatch_to_agy(self, directive: str, source: str = "DEV_02_ATESIRT") -> Dict[str, Any]:
        """Dispatches an agentic directive into the AGY core queue via Gateway."""
        payload = {
            "directive": directive,
            "source": source,
            "timestamp": datetime.now(timezone.utc).isoformat()
        }
        try:
            req = urllib.request.Request(
                GATEWAY_AGY_DISPATCH_URL,
                data=json.dumps(payload).encode("utf-8"),
                headers={"Content-Type": "application/json"},
                method="POST"
            )
            with urllib.request.urlopen(req, timeout=3.0) as resp:
                resp_data = json.loads(resp.read().decode("utf-8"))
                return {
                    "status": "DISPATCHED_TO_AGY",
                    "response": resp_data,
                    "exit_code": 0
                }
        except Exception as e:
            return {
                "status": "DISPATCH_FAILED",
                "error": str(e),
                "exit_code": 1
            }

if __name__ == "__main__":
    pather = EdgeQueryPather()
    print("⚜️ Testing Bidirectional Edge Query Pather...")
    
    r1 = pather.route_query("getprop ro.product.model", source_node="DEV_03_UBUNTU_WSL2")
    print(f"\n[Android Route] Target: {r1['target_node']}, Out: {r1['execution'].get('stdout')}, Latency: {r1['total_latency_ms']}ms")
    
    r2 = pather.route_query("uname -s", source_node="DEV_02_ATESIRT")
    print(f"\n[Ubuntu Route] Target: {r2['target_node']}, Out: {r2['execution'].get('stdout')}, Latency: {r2['total_latency_ms']}ms")
    
    r3 = pather.route_query("agy plan execute next horizon", source_node="DEV_02_ATESIRT")
    print(f"\n[AGY Route] Target: {r3['target_node']}, Status: {r3['execution'].get('status')}, Latency: {r3['total_latency_ms']}ms")
