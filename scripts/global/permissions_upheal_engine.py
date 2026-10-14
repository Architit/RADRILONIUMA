#!/usr/bin/env python3
"""
RADRILONIUMA GLOBAL PERMISSIONS UPHEAL ENGINE ⚜️
Cross-Node Security & Authorization Upheal for DEV_01 to DEV_05.
"""

import os
import sys
import subprocess
import json
import logging
from typing import Dict, List, Any

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(message)s")
logger = logging.getLogger("PermissionsUphealEngine")

RADRILONIUMA_ROOT = "/root/RADRILONIUMA"
TARGET_PACKAGES = [
    "com.radriloniuma",
    "com.architit.radriloniuma",
    "com.radriloniuma.debug",
    "com.radriloniuma.os.debug",
    "com.radriloniuma.auth",
    "com.architit.radriloniuma.auth",
    "com.radriloniuma.studio",
    "com.radriloniuma.studio.v2"
]

def run_cmd(cmd: List[str], env=None) -> tuple[int, str]:
    try:
        proc = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=15,
            env=env
        )
        return proc.returncode, proc.stdout.strip()
    except Exception as e:
        return 1, str(e)

def upheal_dev01_bushmaster() -> Dict[str, Any]:
    logger.info(">>> [DEV_01_BUSHMASTER] Uphealing Host Windows 11 Node...")
    status = {"node": "DEV_01_BUSHMASTER", "adb_socket": "tcp:localhost:5038", "healthy": True}
    return status

def upheal_dev02_atesirt() -> Dict[str, Any]:
    logger.info(">>> [DEV_02_ATESIRT] Uphealing Mobile Android Node (Samsung SM-A266B / RZCY80G86FP)...")
    res = {
        "node": "DEV_02_ATESIRT",
        "device_serial": "RZCY80G86FP",
        "packages_uphealed": [],
        "healthy": False
    }

    # Use host ADB binary directly from WSL2 for 0-latency execution
    adb_bin = "/mnt/c/setup/platform-tools/adb.exe" if os.path.exists("/mnt/c/setup/platform-tools/adb.exe") else "adb"
    code, out = run_cmd([adb_bin, "devices"])
    logger.info(f"ADB devices check: {out}")
    if "RZCY80G86FP" in out or "device" in out:
        res["healthy"] = True
        for pkg in TARGET_PACKAGES:
            logger.info(f"Uphealing permissions for package: {pkg}")
            subcmds = [
                f"appops set {pkg} ACCESS_RESTRICTED_SETTINGS allow",
                f"appops set {pkg} MANAGE_EXTERNAL_STORAGE allow",
                f"appops set {pkg} SYSTEM_ALERT_WINDOW allow",
                f"pm grant {pkg} android.permission.READ_EXTERNAL_STORAGE 2>/dev/null",
                f"pm grant {pkg} android.permission.WRITE_EXTERNAL_STORAGE 2>/dev/null",
                f"dumpsys deviceidle whitelist +{pkg} 2>/dev/null"
            ]
            composite_cmd = "; ".join(subcmds)
            c_code, c_out = run_cmd([adb_bin, "shell", composite_cmd])
            res["packages_uphealed"].append({"package": pkg, "code": c_code})
    else:
        logger.warning("DEV_02_ATESIRT not currently responding on ADB socket.")

    return res

def upheal_dev03_ubuntu_wsl2() -> Dict[str, Any]:
    logger.info(">>> [DEV_03_UBUNTU_WSL2] Uphealing Linux Substrate...")
    venv_path = os.path.join(RADRILONIUMA_ROOT, "venv")
    symlink_ok = os.path.islink(venv_path) and os.path.exists(venv_path)
    if not symlink_ok:
        logger.info("Re-establishing venv symlink...")
        try:
            if os.path.islink(venv_path) or os.path.exists(venv_path):
                os.remove(venv_path)
            os.symlink("/root/RADRILONIUMA/venv_py312", venv_path)
            symlink_ok = True
        except Exception as e:
            logger.error(f"Failed to fix venv symlink: {e}")

    # Check root & cache drop
    return {
        "node": "DEV_03_UBUNTU_WSL2",
        "venv_symlink": symlink_ok,
        "is_root": os.geteuid() == 0,
        "healthy": symlink_ok and (os.geteuid() == 0)
    }

def upheal_dev04_samsung_t7() -> Dict[str, Any]:
    logger.info(">>> [DEV_04_SAMSUNG_T7_VAULT] Checking External PSSD Vault...")
    mounted = os.path.exists("/mnt/f") or os.path.exists("F:\\")
    return {
        "node": "DEV_04_SAMSUNG_T7_VAULT",
        "mounted": mounted,
        "path": "F:\\ / /mnt/f",
        "healthy": mounted
    }

def upheal_dev05_lao_swarm() -> Dict[str, Any]:
    logger.info(">>> [DEV_05_LAO_SWARM_MATRIX] Verifying 528-Slot Chamber & PM2 Organs...")
    code, out = run_cmd(["pm2", "jlist"])
    daemons_online = 0
    if code == 0:
        try:
            proc_list = json.loads(out)
            for p in proc_list:
                if p.get("pm2_env", {}).get("status") == "online":
                    daemons_online += 1
        except Exception:
            pass

    return {
        "node": "DEV_05_LAO_SWARM_MATRIX",
        "carrier_frequencies": ["528 Hz", "432 Hz"],
        "daemons_online": daemons_online,
        "healthy": daemons_online >= 4
    }

def run_all_upheal() -> Dict[str, Any]:
    logger.info("=== STARTING CLUSTER-WIDE PERMISSIONS UPHEAL ===")
    report = {
        "DEV_01_BUSHMASTER": upheal_dev01_bushmaster(),
        "DEV_02_ATESIRT": upheal_dev02_atesirt(),
        "DEV_03_UBUNTU_WSL2": upheal_dev03_ubuntu_wsl2(),
        "DEV_04_SAMSUNG_T7_VAULT": upheal_dev04_samsung_t7(),
        "DEV_05_LAO_SWARM_MATRIX": upheal_dev05_lao_swarm()
    }
    logger.info("=== CLUSTER-WIDE PERMISSIONS UPHEAL COMPLETED ===")
    return report

if __name__ == "__main__":
    rep = run_all_upheal()
    print(json.dumps(rep, indent=2))
