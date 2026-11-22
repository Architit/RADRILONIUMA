#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • UNSLEEPERSMORTALGUARD & GOD SEED EYE TRINITY TELEMETRY DAEMON
=============================================================================
Continuous lightweight headless watchdog (PM2 daemon `unsleepers-mortal-guard`):
  1. Guards core local services (:3000 core-gateway, :5280 ssn-socket-gateway,
     :11435 local Gemma failover, :7681 ubuntu ttyd) and auto-restarts any stopped PM2 process.
  2. Guards external storage DrvFS mounts (/mnt/d, /mnt/e, /mnt/f PHILIPS UFD).
  3. Refreshes .gateway/sleep_protocol_state.json, .gateway/unsleepers_mortal_guard_state.json,
     and .gateway/god_seed_eye_trinity_state.json (Eye 1: DEV_01/Cockpit, Eye 2: DEV_02_ATESIRT,
     Eye 3: DEV_02B_KEN_REDMI & Cloudflare WAN Tunnel).
"""

from __future__ import annotations

import json
import os
import subprocess
import sys
import time
import urllib.request
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict

REPO_ROOT = Path("/root/RADRILONIUMA")
GW_DIR = REPO_ROOT / ".gateway"
GUARD_STATE_FILE = GW_DIR / "unsleepers_mortal_guard_state.json"
TRINITY_STATE_FILE = GW_DIR / "god_seed_eye_trinity_state.json"
SLEEP_STATE_FILE = GW_DIR / "sleep_protocol_state.json"

CORE_PM2_DAEMONS = [
    "core-gateway",
    "ssn-socket-gateway",
    "trianiuma-mcp-core",
    "trilaptop-agent-engine",
    "autopilot-core",
    "bot-service",
    "origin-home-tunnel",
    "terminal-broadcast-daemon",
]

ENDPOINTS = {
    "core_gateway_3000": "http://127.0.0.1:3000/api/ubuntu/session?mode=guest",
    "local_gemma_11435": "http://127.0.0.1:11435/health",
    "ubuntu_ttyd_7681": "http://127.0.0.1:7681/",
}


def _utc_now() -> str:
    return datetime.now(timezone.utc).isoformat()


def _write_json_atomic(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp.{os.getpid()}")
    with open(tmp, "w", encoding="utf-8") as fh:
        json.dump(data, fh, indent=2, ensure_ascii=False)
        fh.flush()
    os.replace(tmp, path)


def _http_probe(url: str, timeout: float = 2.0) -> Dict[str, Any]:
    t0 = time.time()
    try:
        req = urllib.request.Request(url, method="GET")
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            return {"ok": resp.status < 500, "http_status": resp.status, "latency_ms": round((time.time() - t0) * 1000, 1)}
    except Exception as exc:
        return {"ok": False, "error": str(exc)[:100], "latency_ms": round((time.time() - t0) * 1000, 1)}


def _check_pm2_and_heal() -> Dict[str, Any]:
    status_map: Dict[str, str] = {}
    restarted = []
    try:
        res = subprocess.run(["pm2", "jlist"], capture_output=True, text=True, timeout=8)
        if res.returncode == 0 and res.stdout.strip():
            procs = json.loads(res.stdout)
            for p in procs:
                name = p.get("name", "")
                st = p.get("pm2_env", {}).get("status", "unknown")
                status_map[name] = st
                if name in CORE_PM2_DAEMONS and st != "online":
                    subprocess.run(["pm2", "restart", name], capture_output=True, timeout=10)
                    restarted.append(name)
    except Exception as exc:
        return {"error": str(exc)[:100], "daemons": status_map, "auto_healed": restarted}
    online_core = sum(1 for d in CORE_PM2_DAEMONS if status_map.get(d) == "online")
    return {
        "core_online": online_core,
        "core_expected": len(CORE_PM2_DAEMONS),
        "all_core_online": online_core == len(CORE_PM2_DAEMONS),
        "daemons": status_map,
        "auto_healed": restarted,
    }


def _check_mounts() -> Dict[str, Any]:
    out = {}
    for letter, mnt in (("C:", "/mnt/c"), ("D:", "/mnt/d"), ("E:", "/mnt/e"), ("F:", "/mnt/f")):
        ism = os.path.ismount(mnt)
        if letter == "F:" and not ism:
            try:
                subprocess.run(["mount", "-t", "drvfs", "F:", "/mnt/f"], capture_output=True, timeout=4)
                ism = os.path.ismount(mnt)
            except Exception:
                pass
        free_gb = None
        total_gb = None
        if ism:
            try:
                sv = os.statvfs(mnt)
                total_gb = round((sv.f_blocks * sv.f_frsize) / (1024 ** 3), 2)
                free_gb = round((sv.f_bavail * sv.f_frsize) / (1024 ** 3), 2)
            except Exception:
                pass
        out[letter] = {"mount": mnt, "mounted": ism, "total_gb": total_gb, "free_gb": free_gb}
    return out


def run_cycle(cycle_num: int) -> Dict[str, Any]:
    now = _utc_now()
    pm2_info = _check_pm2_and_heal()
    ep_info = {k: _http_probe(u) for k, u in ENDPOINTS.items()}
    mounts = _check_mounts()

    # Read latest SSN cascade & origin tunnel state for Eye Trinity
    ssn_state = {}
    if (GW_DIR / "ssn_cascade_state.json").is_file():
        try:
            ssn_state = json.loads((GW_DIR / "ssn_cascade_state.json").read_text(encoding="utf-8"))
        except Exception:
            pass
    wan_url = None
    if (GW_DIR / "origin_home_endpoint.json").is_file():
        try:
            ep = json.loads((GW_DIR / "origin_home_endpoint.json").read_text(encoding="utf-8"))
            wan_url = ep.get("public_url") or ep.get("tunnel_url")
        except Exception:
            pass

    peers = ssn_state.get("peer_status", {})
    trinity_doc = {
        "schema": "GOD_SEED_EYE_TRINITY_V1",
        "status": "ACTIVE_WATCHING",
        "updated_at_utc": now,
        "cycle": cycle_num,
        "eyes": {
            "eye_1_host_bushmaster_cockpit": {
                "node": "DEV_01_BUSHMASTER / DEV_03_UBUNTU_WSL2",
                "status": "ONLINE" if ep_info["core_gateway_3000"]["ok"] else "DEGRADED",
                "endpoints": ep_info,
                "storage_f_philips_ufd": mounts.get("F:"),
            },
            "eye_2_mobile_atesirt": {
                "node": "DEV_02_ATESIRT (Samsung SM-A266B)",
                "status": peers.get("DEV_02_ATESIRT", {}).get("status", "UNKNOWN"),
                "connected_to_reboot_protocol": peers.get("DEV_02_ATESIRT", {}).get("connected_to_reboot_protocol", False),
            },
            "eye_3_ken_and_wan_mesh": {
                "node": "DEV_02B_KEN_REDMI + Cloudflare WAN Tunnel",
                "ken_status": peers.get("DEV_02B_KEN_REDMI", {}).get("status", "UNKNOWN"),
                "wan_tunnel_url": wan_url,
                "wan_status": "ONLINE" if pm2_info["daemons"].get("origin-home-tunnel") == "online" else "OFFLINE",
            },
        },
    }
    _write_json_atomic(TRINITY_STATE_FILE, trinity_doc)

    guard_doc = {
        "schema": "UNSLEEPERS_MORTAL_GUARD_V1",
        "status": "ARMED_ACTIVE" if pm2_info.get("all_core_online") else "HEALING_DEGRADED",
        "updated_at_utc": now,
        "cycle": cycle_num,
        "pm2_watchdog": pm2_info,
        "http_probes": ep_info,
        "mounts": mounts,
        "trinity_state_file": str(TRINITY_STATE_FILE),
    }
    _write_json_atomic(GUARD_STATE_FILE, guard_doc)

    # Refresh sleep_protocol_state.json timestamp & mode
    sleep_doc = {}
    if SLEEP_STATE_FILE.is_file():
        try:
            sleep_doc = json.loads(SLEEP_STATE_FILE.read_text(encoding="utf-8"))
        except Exception:
            sleep_doc = {}
    sleep_doc["timestamp_utc"] = now
    sleep_doc["unsleepers_mortal_guard"] = "ARMED_ACTIVE"
    sleep_doc["execution_mode"] = "LOCAL_AUTONOMOUS_UNSLEEP_GUARD"
    _write_json_atomic(SLEEP_STATE_FILE, sleep_doc)

    # Mirror summary to Windows .gateway if accessible
    win_gw = Path("/mnt/c/Users/BushM/.gateway")
    if win_gw.is_dir():
        try:
            _write_json_atomic(win_gw / "unsleepers_mortal_guard_state.json", guard_doc)
            _write_json_atomic(win_gw / "god_seed_eye_trinity_state.json", trinity_doc)
        except Exception:
            pass
    return {"guard": guard_doc, "trinity": trinity_doc}


if __name__ == "__main__":
    once = "--once" in sys.argv
    interval = 45
    cycle = 0
    while True:
        cycle += 1
        res = run_cycle(cycle)
        if once:
            print(json.dumps(res, indent=2, ensure_ascii=False))
            break
        time.sleep(interval)
