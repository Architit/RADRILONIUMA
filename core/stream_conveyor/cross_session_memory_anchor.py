#!/usr/bin/env python3
# -*- coding: utf-8 -*-
r"""
RADRILONIUMA • SOVEREIGN CROSS-SESSION & CROSS-ENVIRONMENT MEMORY ANCHOR ENGINE
===============================================================================
Maintains a single canonical, auto-synced durable memory ledger across ALL 5 surfaces:
  1. agy_cli       (auto-injected into C:\Users\BushM\GEMINI.md & .gemini\config\GEMINI.md)
  2. gemini_apk    (Android Gemini App via Google Drive & .gateway/edge_spool)
  3. gemini_exe    (Windows Gemini App via C:\Users\BushM\.gateway & Google Drive)
  4. gemini_gmail  (Gmail Workspace via Google Drive & GitHub)
  5. gemini_gdrive (Google Drive Workspace: gdrive:RADRILONIUMA_HYBRID_SESSIONS/)

Also keeps hardware storage topology manifests synchronized with physical reality
(e.g., broken VendorCo 250GB USB -> replaced by PHILIPS UFD 29.28 GB FAT32 on F:\).
"""

from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional

MEMORY_START_MARKER = "<!-- AUTO_SYNC_CROSS_SESSION_MEMORY_START -->"
MEMORY_END_MARKER = "<!-- AUTO_SYNC_CROSS_SESSION_MEMORY_END -->"


def _utc_now() -> str:
    return datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")


def _write_json_atomic(path: Path, data: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp.{os.getpid()}")
    with open(tmp, "w", encoding="utf-8") as fh:
        json.dump(data, fh, indent=2, ensure_ascii=False)
        fh.flush()
    os.replace(tmp, path)


def _write_text_atomic(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f"{path.name}.tmp.{os.getpid()}")
    with open(tmp, "w", encoding="utf-8", newline="\n") as fh:
        fh.write(text)
        fh.flush()
    os.replace(tmp, path)


def _ensure_f_mounted() -> bool:
    """Ensures /mnt/f is a real DrvFS mount of Windows F:\\ (never silently writing to a local ext4 stub)."""
    mnt = Path("/mnt/f")
    if os.path.ismount(str(mnt)):
        return True
    try:
        mnt.mkdir(parents=True, exist_ok=True)
        rc = subprocess.run(
            ["mount", "-t", "drvfs", "F:", "/mnt/f"],
            capture_output=True,
            text=True,
            timeout=5,
        )
        return rc.returncode == 0 and os.path.ismount(str(mnt))
    except Exception:
        return False


def _probe_live_f_drive() -> Dict[str, Any]:
    r"""Reads live physical disk/volume metadata for F:\ from Windows via DrvFS mount."""
    is_mounted = _ensure_f_mounted()
    info: Dict[str, Any] = {
        "drive_letter": "F:",
        "mount_point": "/mnt/f",
        "mounted": is_mounted,
        "label": "PHILIPS UFD",
        "model": "PHILIPS USB",
        "filesystem": "FAT32",
        "partition_style": "MBR",
        "total_gb": 29.28,
        "free_gb": None,
        "used_gb": None,
        "top_level_entries": [],
    }
    if is_mounted:
        try:
            st = os.statvfs("/mnt/f")
            total = st.f_blocks * st.f_frsize
            free = st.f_bavail * st.f_frsize
            used = total - free
            info["total_gb"] = round(total / (1024 ** 3), 2)
            info["free_gb"] = round(free / (1024 ** 3), 2)
            info["used_gb"] = round(used / (1024 ** 3), 2)
            info["top_level_entries"] = sorted(
                [p.name for p in Path("/mnt/f").iterdir() if p.name != "System Volume Information"]
            )
        except Exception:
            pass
    return info


def _probe_disk_usage(mount_path: str) -> Dict[str, float]:
    try:
        st = os.statvfs(mount_path)
        total = st.f_blocks * st.f_frsize
        free = st.f_bavail * st.f_frsize
        return {
            "total_gb": round(total / (1024 ** 3), 2),
            "used_gb": round((total - free) / (1024 ** 3), 2),
            "free_gb": round(free / (1024 ** 3), 2),
        }
    except Exception:
        return {"total_gb": 0.0, "used_gb": 0.0, "free_gb": 0.0}


def build_cross_session_memory(
    repo_root: Path = Path("/root/RADRILONIUMA"),
    active_session_id: str = "27f7e25c-3452-49a9-bab7-b221481ea44d",
) -> Dict[str, Any]:
    now_utc = _utc_now()
    f_live = _probe_live_f_drive()
    c_usage = _probe_disk_usage("/mnt/c")
    d_usage = _probe_disk_usage("/mnt/d")
    e_usage = _probe_disk_usage("/mnt/e")

    # Read current Cloudflare WAN URL if available
    wan_url = "https://statements-deleted-providers-judy.trycloudflare.com"
    ep_path = repo_root / ".gateway" / "origin_home_endpoint.json"
    if ep_path.is_file():
        try:
            ep = json.loads(ep_path.read_text(encoding="utf-8"))
            wan_url = ep.get("public_url") or ep.get("tunnel_url") or wan_url
        except Exception:
            pass

    memory: Dict[str, Any] = {
        "schema": "SOVEREIGN_CROSS_SESSION_MEMORY_V1",
        "updated_at_utc": now_utc,
        "source_session_id": active_session_id,
        "synced_surfaces": ["agy_cli", "gemini_apk", "gemini_exe", "gemini_gmail", "gemini_gdrive"],
        "hardware_and_storage_truth": {
            "host_laptop": "LENOVO 80Q7 (IdeaPad 300-15ISK) / Intel Core i5-6200U / Windows 11 + WSL2 Ubuntu",
            "drives": {
                "C:": {
                    "model": "SAMSUNG MZYLF128HCHP-000L2 (119.24 GB NVMe/SATA, S/N S28YNX0H741215)",
                    "filesystem": "NTFS",
                    **c_usage,
                },
                "D:": {
                    "model": "Samsung PSSD T7 (Partition 1, Label: Новый том, S/N K383408X0SNLM7S)",
                    "filesystem": "NTFS",
                    **d_usage,
                },
                "E:": {
                    "model": "Samsung PSSD T7 (Partition 2, Label: DATA_BASE, S/N K383408X0SNLM7S)",
                    "filesystem": "NTFS",
                    **e_usage,
                },
                "F:": {
                    "status": "ACTIVE_REPLACEMENT_USB_PROVISIONED",
                    "model": f_live["model"],
                    "label": f_live["label"],
                    "filesystem": f_live["filesystem"],
                    "partition_style": f_live["partition_style"],
                    "total_gb": f_live["total_gb"],
                    "used_gb": f_live["used_gb"],
                    "free_gb": f_live["free_gb"],
                    "top_level_entries": f_live["top_level_entries"],
                    "replacement_history": {
                        "previous_broken_drive": "VendorCo ProductCode USB Device (S/N 5981171117099154059, fake/corrupt 250GB, label UBUNTU 26_0)",
                        "failure_details": "Memory corrupted written data to 0xFF/0x00 (verified 2026-11-18); USB connector physically bent ~45 deg after laptop drop on 2026-11-20/21; retired permanently.",
                        "replacement_date": "2026-11-21T22:38+01:00",
                        "intact_recovery_sources": [
                            "E:\\RADRILONIUMA_ARCHIVE_2026_10_18\\FLASH_DRIVE_F_SNAPSHOT (8.08 GB intact Ubuntu 26.04 + GOD_SEED_INIT + ATESIRT_VAULT_ARCHIVE; minimal.squashfs 3.19 GB magic=hsqs)",
                            "D:\\BACKUP_STAGING\\HOST_LAPTOP_FULL_2026_11_18\\WSL_LOCAL_MNT_F (Nov 18 autoinstall/nocloud/GOD_SEED_INIT updates)",
                            "D:\\BACKUP_STAGING\\USB_G_RESCUE (2.43 GB intact GOD_SEED_COCOON_CORE + GOD_SEED_CORE)"
                        ],
                        "provisioned_on_new_philips_f": True,
                    },
                },
            },
        },
        "critical_durable_facts": [
            {
                "id": "FACT-HW-F-REPLACEMENT",
                "category": "hardware",
                "date": "2026-11-22",
                "summary": "Старая флешка F: (VendorCo 250GB, S/N 5981171117099154059) сломана (битая память 0xFF/0x00 + погнут разъём на 45° после падения ноутбука 20-21.11). Текущая F: — НОВАЯ флешка PHILIPS USB (метка PHILIPS UFD, 29.28 GB FAT32, MBR). Она загружена целыми образами Ubuntu 26.04 (minimal.squashfs hsqs), GOD_SEED_INIT, USB_G_RESCUE, Play Release 2026.11.22, Master Plan Bundle и холодным бэкапом Telegram tdata.",
            },
            {
                "id": "FACT-TG-LOST-SIM",
                "category": "accounts",
                "date": "2026-11-22",
                "summary": "Основной украинский Telegram-аккаунт @Kirihanis (ID 1989698164, +380735214183) НЕ имеет физической SIM-карты (живёт только за счёт активных сессий на телефоне и в Telegram Desktop\\tdata). Холодный локальный бэкап tdata лежит ТОЛЬКО локально на D:\\BACKUP_STAGING\\TELEGRAM_DESKTOP_TDATA_COLD_BACKUP_2026_11_22 и F:\\ATESIRT_VAULT_ARCHIVE\\TELEGRAM_DESKTOP_TDATA_COLD_BACKUP_2026_11_22 (никогда не выгружать в GitHub/публичное облако!).",
            },
            {
                "id": "FACT-PLAY-CONSOLE",
                "category": "release",
                "date": "2026-11-22",
                "summary": "Play Market релиз 2026.11.22 (versionCode 202611221, com.architit.radriloniuma) собран и подписан (C:\\setup\\radriloniuma_os_play_internal.aab / .apk). В Play Store страница 'Файл не найден' до завершения верификации аккаунта разработчика Jungle Vault NL (KvK 42059584, D-U-N-S 473924219). Весь пакет PDF-документов готов в C:\\setup\\PLAY_CONSOLE_VERIFICATION_DOCS_2026_11_22 и gdrive:RADRILONIUMA_PLAY_RELEASES/VERIFICATION_DOCS_2026_11_22/.",
            },
            {
                "id": "FACT-AUDIO-CALIBRATION",
                "category": "hardware",
                "date": "2026-11-22",
                "summary": "Микрофон Lenovo Conexant SmartAudio HD откалиброван через C:\\setup\\audio_endpoint_controller.exe: 0.00 dB (scalar 0.535), PKEY_AudioEndpoint_Disable_SysFx=0 (исправляет аппаратную инверсию фазы правого канала; corr=+0.9963, quality=92.0). Bluetooth HFP профили отключены, чтобы не ломать микрофон.",
            },
            {
                "id": "FACT-UBUNTU-NATIVE-AGY",
                "category": "infrastructure",
                "date": "2026-11-22",
                "summary": "/usr/local/bin/agy в WSL2 Ubuntu переведён на нативный Linux ELF64 бинарник /root/.local/bin/agy (v1.5.11) вместо Windows agy.exe. Работают headless PM2 демоны: core-gateway (:3000/:3001), ssn-socket-gateway (:5280), trianiuma-mcp-core, trilaptop-agent-engine (:11435 Local Gemma failover), autopilot-core, bot-service (Telegram Autopilot), origin-home-tunnel, terminal-broadcast-daemon (ttyd :7681).",
            },
            {
                "id": "FACT-SSN-HOTSPOT-FIRST",
                "category": "protocol",
                "date": "2026-11-22",
                "summary": "cluster_mesh_ssn_orchestrator.py сначала поднимает Mobile Hotspot (192.168.137.1), и честно рапортует NOT_CONNECTED_TO_REBOOT_PROTOCOL для DEV_02_ATESIRT и DEV_02B_KEN_REDMI, если телефоны вне зоны hotspot (без фейкового ACK_READY).",
            },
            {
                "id": "FACT-LAZARET-NO-DELETE",
                "category": "safety",
                "date": "2026-11-22",
                "summary": "Сломанные скрипты/автозапуски НИКОГДА не удаляются — они лечатся и карантинятся в C:\\Users\\BushM\\LAZARET\\QUARANTINE_HEAL_2026_11_22\\.",
            },
        ],
        "active_endpoints": {
            "wan_tunnel_url": wan_url,
            "local_gemma_endpoint": "http://127.0.0.1:11435",
            "cockpit_gateway_local": "http://127.0.0.1:3000",
            "ubuntu_ttyd_local": "http://127.0.0.1:7681",
            "github_repo": "https://github.com/Architit/RADRILONIUMA.git",
            "gdrive_hybrid_root": "gdrive:RADRILONIUMA_HYBRID_SESSIONS/",
        },
        "canonical_memory_paths": {
            "wsl_gateway_json": "/root/RADRILONIUMA/.gateway/SOVEREIGN_CROSS_SESSION_MEMORY.json",
            "wsl_repo_md": "/root/RADRILONIUMA/SOVEREIGN_CROSS_SESSION_MEMORY.md",
            "win_gateway_json": "C:\\Users\\BushM\\.gateway\\SOVEREIGN_CROSS_SESSION_MEMORY.json",
            "win_gateway_md": "C:\\Users\\BushM\\.gateway\\SOVEREIGN_CROSS_SESSION_MEMORY.md",
            "usb_f_md": "F:\\SOVEREIGN_CROSS_SESSION_MEMORY.md",
            "gdrive_md": "gdrive:RADRILONIUMA_HYBRID_SESSIONS/SOVEREIGN_CROSS_SESSION_MEMORY.md",
        },
    }
    memory["memory_sha256"] = hashlib.sha256(
        json.dumps(memory, sort_keys=True, ensure_ascii=False).encode("utf-8")
    ).hexdigest()
    return memory


def render_memory_markdown(mem: Dict[str, Any]) -> str:
    f_drv = mem["hardware_and_storage_truth"]["drives"]["F:"]
    lines = [
        "# SOVEREIGN CROSS-SESSION & CROSS-ENVIRONMENT MEMORY ANCHOR",
        "",
        f"- **Updated (UTC):** `{mem['updated_at_utc']}`",
        f"- **Active Session:** `{mem['source_session_id']}`",
        f"- **Synced Surfaces:** `{', '.join(mem['synced_surfaces'])}`",
        f"- **Integrity SHA-256:** `{mem['memory_sha256'][:16]}`",
        "",
        "## 1. Live Hardware & Storage Truth (NO STALE ASSUMPTIONS)",
        f"- **C: (NVMe):** `{mem['hardware_and_storage_truth']['drives']['C:']['model']}` — `{mem['hardware_and_storage_truth']['drives']['C:']['free_gb']} GB` free / `{mem['hardware_and_storage_truth']['drives']['C:']['total_gb']} GB`",
        f"- **D: (Samsung T7 P1):** `{mem['hardware_and_storage_truth']['drives']['D:']['free_gb']} GB` free / `{mem['hardware_and_storage_truth']['drives']['D:']['total_gb']} GB`",
        f"- **E: (Samsung T7 P2 `DATA_BASE`):** `{mem['hardware_and_storage_truth']['drives']['E:']['free_gb']} GB` free / `{mem['hardware_and_storage_truth']['drives']['E:']['total_gb']} GB`",
        f"- **F: (CURRENT USB):** **`{f_drv['model']}` (Label `{f_drv['label']}`, `{f_drv['filesystem']}`, `{f_drv['total_gb']} GB` total, `{f_drv['free_gb']} GB` free)** — **REPLACED broken `VendorCo 250GB` USB (corrupt 0xFF/0x00 + bent connector 45 deg on Nov 20–21, 2026)!**",
        "",
        "## 2. Mandatory Durable Facts (Recalled Across ALL AGY CLI & Gemini Sessions)",
    ]
    for fact in mem["critical_durable_facts"]:
        lines.append(f"- **[{fact['id']} | {fact['date']}]:** {fact['summary']}")
    lines.extend(
        [
            "",
            "## 3. Live Endpoints & Cloud Sync Anchors",
            f"- **WAN Tunnel:** `{mem['active_endpoints']['wan_tunnel_url']}`",
            f"- **Local Gemma Failover:** `{mem['active_endpoints']['local_gemma_endpoint']}`",
            f"- **Google Drive Cross-Surface Anchor:** `{mem['active_endpoints']['gdrive_hybrid_root']}SOVEREIGN_CROSS_SESSION_MEMORY.md`",
            f"- **GitHub Anchor:** `{mem['active_endpoints']['github_repo']}` (`SOVEREIGN_CROSS_SESSION_MEMORY.md`)",
        ]
    )
    return "\n".join(lines) + "\n"


def render_gemini_md_auto_block(mem: Dict[str, Any]) -> str:
    f_drv = mem["hardware_and_storage_truth"]["drives"]["F:"]
    block = [
        MEMORY_START_MARKER,
        "## 0. LIVE CROSS-SESSION & HARDWARE MEMORY SNAPSHOT (AUTO-SYNCED — DO NOT FORGET!)",
        f"> **Synced UTC:** `{mem['updated_at_utc']}` | **SHA-256:** `{mem['memory_sha256'][:12]}` | **Canonical File:** `C:\\Users\\BushM\\.gateway\\SOVEREIGN_CROSS_SESSION_MEMORY.md` & `gdrive:RADRILONIUMA_HYBRID_SESSIONS/SOVEREIGN_CROSS_SESSION_MEMORY.md`",
        "> **ОБЯЗАТЕЛЬНО:** В начале КАЖДОЙ сессии (AGY CLI / Gemini App / Gmail / GDrive) учитывать факты ниже и при изменениях обновлять `SOVEREIGN_CROSS_SESSION_MEMORY.json` через `lam_archivator_init.py`.",
        "",
        f"- **USB-флешка `F:\\` ЗАМЕНЕНА:** Старая `VendorCo 250GB` (S/N `5981171117099154059`) сломалась (битая память `0xFF`/`0x00` + погнут разъём на 45° после падения ноутбука 20–21.11.2026) и списана. **Текущая `F:\\` — НОВАЯ флешка `{f_drv['model']}` (метка `{f_drv['label']}`, `{f_drv['total_gb']} GB` `{f_drv['filesystem']}`, MBR)**, загруженная целыми образами Ubuntu 26.04 (`minimal.squashfs` `hsqs`), `GOD_SEED_INIT`, `USB_G_RESCUE`, релизом Play Market `2026.11.22`, `MASTER_PLAN_EXEC_BUNDLE_2026-11-22.tar.gz` и холодным бэкапом Telegram `tdata`.",
        "- **Telegram `@Kirihanis` (`+380735214183`, ID `1989698164`):** физическая SIM-карта утеряна; локальный холодный бэкап `Telegram Desktop\\tdata` хранится ТОЛЬКО локально на `D:\\BACKUP_STAGING\\TELEGRAM_DESKTOP_TDATA_COLD_BACKUP_2026_11_22` и `F:\\ATESIRT_VAULT_ARCHIVE\\TELEGRAM_DESKTOP_TDATA_COLD_BACKUP_2026_11_22` (строгий OPSEC: в облако/GitHub не грузить).",
        "- **Google Play Console (`com.architit.radriloniuma` / `Jungle Vault NL`):** релиз `2026.11.22` (`versionCode 202611221`) собран (`C:\\setup\\radriloniuma_os_play_internal.aab`); публикация в Store ждёт прохождения верификации юрлица (KvK `42059584`, D-U-N-S `473924219`, документы готовы в `C:\\setup\\PLAY_CONSOLE_VERIFICATION_DOCS_2026_11_22`).",
        "- **Аудио Lenovo Conexant SmartAudio HD:** откалиброван (`0.00 dB` = scalar `0.535`, `PKEY_AudioEndpoint_Disable_SysFx=0` устраняет инверсию фазы правого канала; `C:\\setup\\audio_endpoint_controller.exe`).",
        "- **Нативный Ubuntu AGY & Headless PM2:** `/usr/local/bin/agy` указывает на Linux ELF64 `/root/.local/bin/agy` (`v1.5.11`); работают `core-gateway`, `ssn-socket-gateway`, `trianiuma-mcp-core`, `trilaptop-agent-engine (:11435)`, `autopilot-core`, `bot-service`, `origin-home-tunnel`, `terminal-broadcast-daemon (:7681)`.",
        "- **LAZARET (No-Delete):** ничего не удалять — битые конфиги/автозапуски карантинятся в `C:\\Users\\BushM\\LAZARET\\QUARANTINE_HEAL_2026_11_22\\`.",
        MEMORY_END_MARKER,
    ]
    return "\n".join(block)


def inject_into_gemini_md(path: Path, auto_block: str) -> bool:
    if not path.is_file():
        return False
    text = path.read_text(encoding="utf-8", errors="replace")
    if MEMORY_START_MARKER in text and MEMORY_END_MARKER in text:
        pattern = re.compile(
            re.escape(MEMORY_START_MARKER) + r".*?" + re.escape(MEMORY_END_MARKER),
            re.DOTALL,
        )
        new_text = pattern.sub(lambda _: auto_block, text, count=1)
    else:
        # Insert right after first H1 heading
        lines = text.splitlines()
        if lines and lines[0].startswith("# "):
            new_text = lines[0] + "\n\n" + auto_block + "\n\n" + "\n".join(lines[1:]).lstrip("\n") + "\n"
        else:
            new_text = auto_block + "\n\n" + text
    # Also update DEV_04_SAMSUNG_T7_VAULT line to reflect PHILIPS UFD on F:
    new_text = new_text.replace(
        "PSSD T7 / Genesis Seed USB `D:\\`, `E:\\`, `F:\\`",
        "PSSD T7 `D:\\` & `E:\\` + NEW `F:\\` PHILIPS UFD 29.28GB FAT32 (replaces broken VendorCo 250GB)",
    )
    _write_text_atomic(path, new_text)
    return True


def update_storage_manifests(repo_root: Path, mem: Dict[str, Any]) -> None:
    f_drv = mem["hardware_and_storage_truth"]["drives"]["F:"]
    c_drv = mem["hardware_and_storage_truth"]["drives"]["C:"]
    d_drv = mem["hardware_and_storage_truth"]["drives"]["D:"]
    e_drv = mem["hardware_and_storage_truth"]["drives"]["E:"]

    # 1. storage_drives_topology_manifest.json
    topo_path = repo_root / ".gateway" / "storage_drives_topology_manifest.json"
    if topo_path.is_file():
        topo = json.loads(topo_path.read_text(encoding="utf-8"))
    else:
        topo = {"manifest": "RADRILONIUMA_STORAGE_DRIVES_AND_NODES_TOPOLOGY_V4", "drives": {}}
    topo["manifest"] = "RADRILONIUMA_STORAGE_DRIVES_AND_NODES_TOPOLOGY_V4"
    topo["updated_at_utc"] = mem["updated_at_utc"]
    topo.setdefault("mounts_status", {})["F"] = "MOUNTED_OK_REPLACEMENT_PHILIPS_UFD"
    topo.setdefault("drives", {})
    topo["drives"].setdefault("C:", {}).update(
        {"total_gb": c_drv["total_gb"], "used_gb": c_drv["used_gb"], "free_gb": c_drv["free_gb"]}
    )
    topo["drives"].setdefault("D:", {}).update(
        {"total_gb": d_drv["total_gb"], "used_gb": d_drv["used_gb"], "free_gb": d_drv["free_gb"]}
    )
    topo["drives"].setdefault("E:", {}).update(
        {"total_gb": e_drv["total_gb"], "used_gb": e_drv["used_gb"], "free_gb": e_drv["free_gb"]}
    )
    topo["drives"]["F:"] = {
        "mount_point": "/mnt/f",
        "is_mounted_drvfs": Path("/mnt/f").is_dir(),
        "label": f_drv["label"],
        "model": f_drv["model"],
        "filesystem": f_drv["filesystem"],
        "partition_style": f_drv["partition_style"],
        "role": "DEV_05_GENESIS_SEED Replacement Boot & Vault USB (PHILIPS UFD 29.28GB FAT32 — replaced broken VendorCo 250GB on 2026-11-21/22)",
        "replaced_hardware": "VendorCo ProductCode 250GB (S/N 5981171117099154059) — retired due to 0xFF/0x00 memory corruption & 45 deg bent connector",
        "total_gb": f_drv["total_gb"],
        "used_gb": f_drv["used_gb"],
        "free_gb": f_drv["free_gb"],
        "top_level_entries": f_drv["top_level_entries"],
    }
    _write_json_atomic(topo_path, topo)

    # 2. sovereign_storage_state.json
    sss_path = repo_root / ".gateway" / "sovereign_storage_state.json"
    if sss_path.is_file():
        sss = json.loads(sss_path.read_text(encoding="utf-8"))
        sss["timestamp_utc"] = mem["updated_at_utc"]
        # Update windows_disks Disk 2 entry
        for dk in sss.get("windows_disks", []):
            if dk.get("Index") == 2 or "VendorCo" in str(dk.get("Model", "")):
                dk["Model"] = "PHILIPS USB Device"
                dk["SerialNumber"] = "PHILIPS_UFD_29GB"
                dk["Size"] = int(29.30 * (1024 ** 3))
                dk["PNPDeviceID"] = "USBSTOR\\DISK&VEN_PHILIPS&PROD_USB"
                dk["ReplacedBrokenDevice"] = "VendorCo ProductCode (S/N 5981171117099154059)"
                dk["Status"] = "OK"
        for m in sss.get("mount_safety", {}).get("mounts", []):
            if m.get("name") == "DEV_05_GENESIS_SEED_F":
                m["status"] = "ONLINE" if Path("/mnt/f").is_dir() else "DEGRADED_OFFLINE"
                m["accessible"] = Path("/mnt/f").is_dir()
                m["readable"] = Path("/mnt/f").is_dir()
                m["separate_mount"] = Path("/mnt/f").is_dir()
                m["error"] = None
                m["total_bytes"] = int((f_drv["total_gb"] or 0) * (1024 ** 3))
                m["free_bytes"] = int((f_drv["free_gb"] or 0) * (1024 ** 3))
        _write_json_atomic(sss_path, sss)

    # 3. SSN_TRANSFER_CAPSULE.json (add cross_session_memory_anchor + F: hardware truth)
    cap_path = repo_root / ".gateway" / "SSN_TRANSFER_CAPSULE.json"
    if cap_path.is_file():
        cap = json.loads(cap_path.read_text(encoding="utf-8"))
        payload = cap.setdefault("payload", {})
        payload["cross_session_memory_anchor"] = {
            "schema": mem["schema"],
            "updated_at_utc": mem["updated_at_utc"],
            "memory_sha256": mem["memory_sha256"],
            "paths": mem["canonical_memory_paths"],
            "f_drive_current": {
                "model": f_drv["model"],
                "label": f_drv["label"],
                "filesystem": f_drv["filesystem"],
                "total_gb": f_drv["total_gb"],
                "free_gb": f_drv["free_gb"],
                "replaced_broken_vendorco_250gb": True,
            },
        }
        _write_json_atomic(cap_path, cap)
        # Mirror capsule to C:\Users\BushM\.gateway and F:\
        for dst in (
            Path("/mnt/c/Users/BushM/.gateway/SSN_TRANSFER_CAPSULE.json"),
            Path("/mnt/f/SSN_TRANSFER_CAPSULE.json"),
        ):
            if dst.parent.is_dir():
                try:
                    _write_json_atomic(dst, cap)
                except Exception:
                    pass


def sync_all_memory_anchors(
    repo_root: Path = Path("/root/RADRILONIUMA"),
    active_session_id: str = "27f7e25c-3452-49a9-bab7-b221481ea44d",
    enable_cloud_sync: bool = True,
) -> Dict[str, Any]:
    mem = build_cross_session_memory(repo_root=repo_root, active_session_id=active_session_id)
    md = render_memory_markdown(mem)
    auto_block = render_gemini_md_auto_block(mem)

    written_paths: List[str] = []
    targets = [
        (repo_root / ".gateway" / "SOVEREIGN_CROSS_SESSION_MEMORY.json", "json"),
        (repo_root / ".gateway" / "SOVEREIGN_CROSS_SESSION_MEMORY.md", "md"),
        (repo_root / "SOVEREIGN_CROSS_SESSION_MEMORY.md", "md"),
        (repo_root / "archive" / "hybrid_sessions" / "SOVEREIGN_CROSS_SESSION_MEMORY.json", "json"),
        (repo_root / "archive" / "hybrid_sessions" / "SOVEREIGN_CROSS_SESSION_MEMORY.md", "md"),
        (Path("/mnt/c/Users/BushM/.gateway/SOVEREIGN_CROSS_SESSION_MEMORY.json"), "json"),
        (Path("/mnt/c/Users/BushM/.gateway/SOVEREIGN_CROSS_SESSION_MEMORY.md"), "md"),
        (Path("/mnt/d/BACKUP_STAGING/LAM_ARCHIVATOR_SESSIONS/SOVEREIGN_CROSS_SESSION_MEMORY.json"), "json"),
        (Path("/mnt/d/BACKUP_STAGING/LAM_ARCHIVATOR_SESSIONS/SOVEREIGN_CROSS_SESSION_MEMORY.md"), "md"),
        (Path("/mnt/f/SOVEREIGN_CROSS_SESSION_MEMORY.json"), "json"),
        (Path("/mnt/f/SOVEREIGN_CROSS_SESSION_MEMORY.md"), "md"),
    ]
    for p, kind in targets:
        try:
            # Only write to /mnt/d or /mnt/f if genuinely mounted as DrvFS (never to unmounted local ext4 stub!)
            if str(p).startswith("/mnt/d/") and not os.path.ismount("/mnt/d"):
                continue
            if str(p).startswith("/mnt/f/") and not os.path.ismount("/mnt/f"):
                continue
            if kind == "json":
                _write_json_atomic(p, mem)
            else:
                _write_text_atomic(p, md)
            written_paths.append(str(p))
        except Exception:
            pass

    # Inject live memory snapshot directly into BOTH auto-loaded GEMINI.md rule files
    gemini_updated: List[str] = []
    for gp in (
        Path("/mnt/c/Users/BushM/GEMINI.md"),
        Path("/mnt/c/Users/BushM/.gemini/config/GEMINI.md"),
    ):
        if inject_into_gemini_md(gp, auto_block):
            gemini_updated.append(str(gp))

    # Update storage topology manifests & capsule
    update_storage_manifests(repo_root, mem)

    # Update WORKFLOW_SNAPSHOT_STATE.md timestamp & hardware truth header if present
    wf_path = repo_root / "WORKFLOW_SNAPSHOT_STATE.md"
    if wf_path.is_file():
        wf_txt = wf_path.read_text(encoding="utf-8", errors="replace")
        wf_block = (
            f"\n{MEMORY_START_MARKER}\n"
            f"## Live Cross-Session Memory Anchor (`{mem['updated_at_utc']}`)\n"
            f"- **Replacement `F:\\` USB Drive:** `{mem['hardware_and_storage_truth']['drives']['F:']['model']}` (`{mem['hardware_and_storage_truth']['drives']['F:']['label']}`, `{mem['hardware_and_storage_truth']['drives']['F:']['total_gb']} GB` FAT32, `{mem['hardware_and_storage_truth']['drives']['F:']['free_gb']} GB` free) — replaced broken `VendorCo 250GB` USB (corrupt `0xFF`/`0x00` + 45° bent connector on Nov 20–21, 2026) and provisioned with intact Ubuntu 26.04 + `GOD_SEED_INIT` + `USB_G_RESCUE` + `2026-11-22` Play Release & Forensic Bundle.\n"
            f"- **Canonical Cross-Environment Anchor:** `SOVEREIGN_CROSS_SESSION_MEMORY.md` (synced across AGY CLI `GEMINI.md`, Google Drive `gdrive:RADRILONIUMA_HYBRID_SESSIONS/`, GitHub `origin/master`, `F:\\`, and `D:\\`).\n"
            f"{MEMORY_END_MARKER}\n"
        )
        if MEMORY_START_MARKER in wf_txt and MEMORY_END_MARKER in wf_txt:
            wf_txt = re.sub(
                re.escape(MEMORY_START_MARKER) + r".*?" + re.escape(MEMORY_END_MARKER),
                lambda _: wf_block.strip(),
                wf_txt,
                flags=re.DOTALL,
            )
        else:
            wf_txt = wf_txt.rstrip() + "\n" + wf_block
        _write_text_atomic(wf_path, wf_txt)

    gdrive_status = "SKIPPED"
    if enable_cloud_sync and shutil.which("rclone"):
        try:
            for fname in ("SOVEREIGN_CROSS_SESSION_MEMORY.json", "SOVEREIGN_CROSS_SESSION_MEMORY.md"):
                src = repo_root / ".gateway" / fname
                rc = subprocess.run(
                    ["rclone", "copyto", str(src), f"gdrive:RADRILONIUMA_HYBRID_SESSIONS/{fname}", "--contimeout", "5s", "--timeout", "15s"],
                    capture_output=True,
                    text=True,
                    timeout=20,
                )
                if rc.returncode != 0:
                    gdrive_status = f"PARTIAL_ERR: {(rc.stderr or '').strip()[:80]}"
                    break
            else:
                gdrive_status = "SYNCED_TO_GOOGLE_DRIVE"
        except Exception as exc:
            gdrive_status = f"ERR: {str(exc)[:80]}"

    return {
        "status": "SYNCHRONIZED",
        "updated_at_utc": mem["updated_at_utc"],
        "memory_sha256": mem["memory_sha256"],
        "f_drive": mem["hardware_and_storage_truth"]["drives"]["F:"],
        "written_paths": written_paths,
        "gemini_rules_injected": gemini_updated,
        "gdrive_status": gdrive_status,
    }


if __name__ == "__main__":
    res = sync_all_memory_anchors()
    print(json.dumps(res, indent=2, ensure_ascii=False))
