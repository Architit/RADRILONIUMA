#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
===============================================================================
RADRILONIUMA • EDGE NODE TASK EXECUTOR (EDGE NODE CMD TASK EXCTN)
===============================================================================
Executes commands and tasks across DEV_02_ATESIRT (Android) and DEV_03_UBUNTU_WSL2.
Manages execution queues, timeouts, output buffers, and telemetry ledgers.
"""

import os
import sys
import json
import time
import uuid
import subprocess
import threading
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any, List, Optional

ROOT_DIR = Path(__file__).resolve().parents[2]
CHRONOLOG_DIR = ROOT_DIR / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)
LEDGER_FILE = CHRONOLOG_DIR / "edge_execution_ledger.jsonl"

ANDROID_SERIAL = "RZCY80G86FP"

class EdgeTaskExecutor:
    """Dispatches and manages execution on Edge Node (Android) and Linux Substrate (Ubuntu)."""

    def __init__(self, android_serial: str = ANDROID_SERIAL):
        self.android_serial = android_serial
        self.active_tasks: Dict[str, Dict[str, Any]] = {}
        self._lock = threading.Lock()

    def execute_android(self, command: str, timeout_sec: int = 15) -> Dict[str, Any]:
        """Executes a command directly on DEV_02_ATESIRT via ADB shell."""
        t_start = time.perf_counter()
        task_id = f"task-and-{uuid.uuid4().hex[:8]}"

        adb_cmd = ["adb", "-s", self.android_serial, "shell", command]
        try:
            res = subprocess.run(adb_cmd, capture_output=True, text=True, timeout=timeout_sec)
            duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)
            stdout = res.stdout.strip()
            stderr = res.stderr.strip()
            status = "SUCCESS" if res.returncode == 0 else "FAILED"

            task_record = {
                "task_id": task_id,
                "node": "DEV_02_ATESIRT",
                "command": command,
                "exit_code": res.returncode,
                "status": status,
                "duration_ms": duration_ms,
                "stdout": stdout,
                "stderr": stderr,
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            }
        except subprocess.TimeoutExpired:
            duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)
            task_record = {
                "task_id": task_id,
                "node": "DEV_02_ATESIRT",
                "command": command,
                "exit_code": -1,
                "status": "TIMEOUT",
                "duration_ms": duration_ms,
                "stdout": "",
                "stderr": f"Command timed out after {timeout_sec}s",
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            }
        except Exception as e:
            duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)
            task_record = {
                "task_id": task_id,
                "node": "DEV_02_ATESIRT",
                "command": command,
                "exit_code": -1,
                "status": "ERROR",
                "duration_ms": duration_ms,
                "stdout": "",
                "stderr": str(e),
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            }

        self._record_ledger(task_record)
        return task_record

    def execute_ubuntu(self, command: str, timeout_sec: int = 15, cwd: Optional[str] = None) -> Dict[str, Any]:
        """Executes a command locally on DEV_03_UBUNTU_WSL2."""
        t_start = time.perf_counter()
        task_id = f"task-ubu-{uuid.uuid4().hex[:8]}"
        work_dir = cwd or str(ROOT_DIR)

        try:
            res = subprocess.run(command, shell=True, capture_output=True, text=True, timeout=timeout_sec, cwd=work_dir)
            duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)
            stdout = res.stdout.strip()
            stderr = res.stderr.strip()
            status = "SUCCESS" if res.returncode == 0 else "FAILED"

            task_record = {
                "task_id": task_id,
                "node": "DEV_03_UBUNTU_WSL2",
                "command": command,
                "cwd": work_dir,
                "exit_code": res.returncode,
                "status": status,
                "duration_ms": duration_ms,
                "stdout": stdout,
                "stderr": stderr,
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            }
        except subprocess.TimeoutExpired:
            duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)
            task_record = {
                "task_id": task_id,
                "node": "DEV_03_UBUNTU_WSL2",
                "command": command,
                "cwd": work_dir,
                "exit_code": -1,
                "status": "TIMEOUT",
                "duration_ms": duration_ms,
                "stdout": "",
                "stderr": f"Command timed out after {timeout_sec}s",
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            }
        except Exception as e:
            duration_ms = round((time.perf_counter() - t_start) * 1000.0, 2)
            task_record = {
                "task_id": task_id,
                "node": "DEV_03_UBUNTU_WSL2",
                "command": command,
                "cwd": work_dir,
                "exit_code": -1,
                "status": "ERROR",
                "duration_ms": duration_ms,
                "stdout": "",
                "stderr": str(e),
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            }

        self._record_ledger(task_record)
        return task_record

    def _record_ledger(self, record: Dict[str, Any]):
        with self._lock:
            try:
                with open(LEDGER_FILE, "a", encoding="utf-8") as f:
                    f.write(json.dumps(record, ensure_ascii=False) + "\n")
            except Exception:
                pass

    def test_both_nodes(self) -> Dict[str, Any]:
        """Runs a health check command across both nodes."""
        and_res = self.execute_android("getprop ro.product.model")
        ubu_res = self.execute_ubuntu("uname -r")
        return {
            "test": "EDGE_TASK_EXECUTOR_TEST",
            "android_node": and_res,
            "ubuntu_node": ubu_res,
            "all_healthy": and_res["status"] == "SUCCESS" and ubu_res["status"] == "SUCCESS"
        }

if __name__ == "__main__":
    executor = EdgeTaskExecutor()
    res = executor.test_both_nodes()
    print(json.dumps(res, indent=2, ensure_ascii=False))
