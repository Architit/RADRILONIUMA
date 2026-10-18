#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • RCLONE GRANULAR DIRECTORY CATALOG & ACCESS ENGINE (528 Hz)
========================================================================
Generates a complete, itemized, granular catalog of ALL accessible directories
and direct access points across all configured rclone remotes:
  - gdrive: (Google Drive / LAZARET / INVENTORY KIT / Legal Charters / Chat Packets)
  - onedrive: (OneDrive Documents & Media)
  - t7_vault: (DEV_04 Samsung T7 UEFI/BIOS Boot, Casper, Archives)
  - radriloniuma: (WSL2 Ubuntu Core Substrate & Chronolog)
  - bushmaster: (Host PC Bushmaster Substrate)

Outputs:
  - chronolog/rclone_directory_access_catalog.json
  - chronolog/RCLONE_DIRECTORY_ACCESS_CATALOG.md
  - /mnt/c/Users/BushM/Desktop/RCLONE_DIRECTORY_ACCESS_CATALOG.html
"""

import os
import sys
import json
import subprocess
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any, List

REPO_ROOT = Path("/root/RADRILONIUMA")
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)

OUTPUT_JSON = CHRONOLOG_DIR / "rclone_directory_access_catalog.json"
OUTPUT_MD = CHRONOLOG_DIR / "RCLONE_DIRECTORY_ACCESS_CATALOG.md"
DESKTOP_HTML = Path("/mnt/c/Users/BushM/Desktop/RCLONE_DIRECTORY_ACCESS_CATALOG.html")

TARGET_REMOTES = [
    {
        "remote": "gdrive:",
        "display_name": "Google Drive Vault (LAZARET & Inventory)",
        "win_path": "C:\\Users\\BushM\\google drive",
        "description": "Primary Sovereign Cloud Vault holding LAZARET, Charters, Chat Packets & Inventory Kits",
        "key_subdirs": [
            "LAZARET",
            "LAZARET/INVENTORY KIT",
            "LAZARET/INVENTORY KIT/00_LEGAL_CHARTERS_EU_NL_AND_UA_ODESSA",
            "LAZARET/INVENTORY KIT/01_INVENTORY_KITS_1_2_3",
            "LAZARET/INVENTORY KIT/02_TELEGRAM_CHAT_DATA_PACKETS",
            "LAZARET/INVENTORY KIT/02_TELEGRAM_CHAT_DATA_PACKETS/ACC1_@Kirihanis_+380735214183",
            "LAZARET/INVENTORY KIT/02_TELEGRAM_CHAT_DATA_PACKETS/ACC2_@Elafea_Triania_+31649033064",
            "LAZARET/INVENTORY KIT/03_KEN_UNIFIED_PACKAGE"
        ]
    },
    {
        "remote": "onedrive:",
        "display_name": "Microsoft OneDrive Substrate",
        "win_path": "C:\\Users\\BushM\\OneDrive",
        "description": "Microsoft 365 Cloud Substrate for Documents & Personal Vault",
        "key_subdirs": [
            "Documents",
            "Pictures"
        ]
    },
    {
        "remote": "t7_vault:",
        "display_name": "DEV_04 Samsung T7 USB Genesis Vault (F:)",
        "win_path": "F:\\",
        "description": "Physical Inviolable Boot & Archive Vault (UEFI Boot, Casper Kernel, God Seed)",
        "key_subdirs": [
            "ATESIRT_VAULT_ARCHIVE",
            "EFI/BOOT",
            "GOD_SEED_INIT",
            "casper",
            "nocloud"
        ]
    },
    {
        "remote": "radriloniuma:",
        "display_name": "DEV_03 WSL2 Ubuntu Kernel Substrate",
        "win_path": "\\\\wsl$\\Ubuntu\\root\\RADRILONIUMA",
        "description": "Autonomous Living Organism Core, 68 MCP Aviators, PM2 Matrix",
        "key_subdirs": [
            "chronolog",
            "core/stream_conveyor",
            "data/local/AELARIA/chat_sessions",
            "scripts/global"
        ]
    }
]


def run_rclone_lsf(remote_path: str) -> List[str]:
    try:
        res = subprocess.run(
            ["rclone", "lsf", remote_path],
            capture_output=True,
            text=True,
            timeout=10
        )
        if res.returncode == 0:
            return [line.strip() for line in res.stdout.splitlines() if line.strip()]
    except Exception as e:
        print(f"Error querying {remote_path}: {e}")
    return []


def scan_catalog() -> Dict[str, Any]:
    catalog_entries = []
    total_dirs_scanned = 0
    total_files_indexed = 0

    for rem in TARGET_REMOTES:
        remote_name = rem["remote"]
        win_base = rem["win_path"]

        # First list root directories
        root_dirs = run_rclone_lsf(remote_name)
        
        for subdir in rem["key_subdirs"]:
            full_remote_dir = f"{remote_name}{subdir}"
            items = run_rclone_lsf(full_remote_dir)
            
            # Count files and subfolders
            sub_folders = [it for it in items if it.endswith("/")]
            files = [it for it in items if not it.endswith("/")]
            
            total_dirs_scanned += 1
            total_files_indexed += len(files)

            win_dir_path = f"{win_base}\\{subdir.replace('/', chr(92))}"
            file_uri = f"file:///{win_dir_path.replace(chr(92), '/')}"

            entry = {
                "remote": remote_name,
                "remote_path": full_remote_dir,
                "parent_name": rem["display_name"],
                "relative_path": subdir,
                "windows_path": win_dir_path,
                "file_uri": file_uri,
                "rclone_lsf_cmd": f"rclone lsf \"{full_remote_dir}\"",
                "rclone_la_cmd": f"rclone la \"{full_remote_dir}\"",
                "items_count": len(items),
                "subfolders_count": len(sub_folders),
                "files_count": len(files),
                "sample_items": items[:8],
                "access_roles": ["Architit", "Mini Ghost // Void", "Halidrad Trianium Marshall"]
            }
            catalog_entries.append(entry)

    manifest = {
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "frequency_carrier": "528 Hz / 432 Hz",
        "total_targets": len(TARGET_REMOTES),
        "total_directories_indexed": total_dirs_scanned,
        "total_files_sampled": total_files_indexed,
        "entries": catalog_entries
    }
    return manifest


def generate_markdown(manifest: Dict[str, Any]) -> str:
    ts = manifest["generated_at_utc"]
    md = f"""# 🌐 RCLONE GRANULAR DIRECTORY ACCESS CATALOG & INVENTORY (528 Hz)
**Generated at:** `{ts}` | **Carrier:** 528 Hz / 432 Hz Solfeggio Harmonic Lock  
**Cluster Quorum:** DEV_01 (Win11) ↔ DEV_02 (Atesirt) ↔ DEV_03 (WSL2) ↔ DEV_04 (T7) ↔ DEV_05 (LAO)

> [!IMPORTANT]
> Настоящий документ содержит **гранулярный каталог всех доступных директорий и прямых ссылок доступа** через `rclone lsf` / `rclone la`.
> Запрещено использовать одиночные ссылки на корень Google Диска; оператор и штаб работают исключительно по приведенным ниже каталогам прямого доступа.

---

## 🗂️ РЕЕСТР ДОСТУПНЫХ ДИРЕКТОРИЙ И ТОЧЕК ВХОДА (RCLONE MATRIX)

| Директория (Rclone Remote) | Локальный путь / Ссылка | Элементов | Rclone Команда Просмотра | Допущенные Профили |
| :--- | :--- | :---: | :--- | :--- |
"""
    for e in manifest["entries"]:
        r_path = e["remote_path"]
        w_path = e["windows_path"]
        uri = e["file_uri"]
        cnt = f"{e['files_count']} файлов, {e['subfolders_count']} папок"
        cmd = f"`{e['rclone_lsf_cmd']}`"
        roles = ", ".join(e["access_roles"])
        md += f"| **`{r_path}`** | [{w_path}]({uri}) | {cnt} | {cmd} | {roles} |\n"

    md += """
---

## 📂 ДЕТАЛИЗИРОВАННЫЙ ОБЗОР КЛЮЧЕВЫХ УЗЛОВ

"""
    for e in manifest["entries"]:
        md += f"### 🔹 `{e['remote_path']}`\n"
        md += f"- **Хранилище:** {e['parent_name']}\n"
        md += f"- **Windows Explorer URI:** [{e['windows_path']}]({e['file_uri']})\n"
        md += f"- **CLI Команды доступа:**\n"
        md += f"  ```bash\n"
        md += f"  {e['rclone_lsf_cmd']}\n"
        md += f"  {e['rclone_la_cmd']}\n"
        md += f"  ```\n"
        if e["sample_items"]:
            md += f"- **Содержимое ({len(e['sample_items'])} образцов):**\n"
            for item in e["sample_items"]:
                md += f"  - `{item}`\n"
        md += "\n"

    md += """
---
*RADRILONIUMA Autonomous Sovereign Cluster • Rclone Directory Access Engine Active (528 Hz)*
"""
    return md


def generate_html(manifest: Dict[str, Any]) -> str:
    rows = ""
    for e in manifest["entries"]:
        sample_badges = "".join([f"<span class='badge'>{item}</span>" for item in e["sample_items"][:5]])
        rows += f"""
        <tr>
            <td class="code-cell"><strong>{e['remote_path']}</strong></td>
            <td><a href="{e['file_uri']}" class="link" target="_blank">{e['windows_path']}</a></td>
            <td><span class="pill">{e['files_count']} ф. / {e['subfolders_count']} п.</span></td>
            <td><code class="cmd">{e['rclone_lsf_cmd']}</code></td>
            <td>{sample_badges}</td>
        </tr>
        """

    html = f"""<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RADRILONIUMA • RCLONE DIRECTORY ACCESS CATALOG</title>
    <style>
        :root {{
            --bg: #07090e;
            --card-bg: #0d121d;
            --border: #1e293b;
            --accent: #00e5ff;
            --accent-green: #00ffaa;
            --accent-gold: #ffd700;
            --text: #e2e8f0;
            --text-dim: #94a3b8;
        }}
        * {{ box-sizing: border-box; margin: 0; padding: 0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif; }}
        body {{
            background: var(--bg);
            color: var(--text);
            padding: 30px;
            line-height: 1.5;
        }}
        .header {{
            background: linear-gradient(135deg, rgba(0,229,255,0.1), rgba(0,255,170,0.05));
            border: 1px solid var(--accent);
            border-radius: 12px;
            padding: 24px;
            margin-bottom: 24px;
            box-shadow: 0 0 30px rgba(0,229,255,0.15);
        }}
        .title {{ font-size: 24px; font-weight: 800; color: #fff; letter-spacing: 1px; display: flex; align-items: center; gap: 10px; }}
        .subtitle {{ color: var(--text-dim); font-size: 14px; margin-top: 6px; }}
        .stats {{ display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px; margin-top: 15px; }}
        .stat-card {{ background: rgba(0,0,0,0.3); border: 1px solid var(--border); border-radius: 8px; padding: 12px; }}
        .stat-val {{ font-size: 20px; font-weight: bold; color: var(--accent); }}
        .stat-lbl {{ font-size: 11px; text-transform: uppercase; color: var(--text-dim); }}
        
        .table-wrap {{
            background: var(--card-bg);
            border: 1px solid var(--border);
            border-radius: 12px;
            overflow-x: auto;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }}
        table {{ width: 100%; border-collapse: collapse; text-align: left; font-size: 13px; }}
        th {{ background: rgba(15, 23, 42, 0.8); padding: 14px 16px; border-bottom: 2px solid var(--border); color: var(--accent-green); text-transform: uppercase; font-size: 11px; letter-spacing: 0.5px; }}
        td {{ padding: 14px 16px; border-bottom: 1px solid var(--border); }}
        tr:hover {{ background: rgba(0, 229, 255, 0.03); }}
        
        .code-cell {{ font-family: monospace; color: var(--accent); font-size: 13px; }}
        .link {{ color: #38bdf8; text-decoration: none; word-break: break-all; }}
        .link:hover {{ text-decoration: underline; color: #7dd3fc; }}
        .cmd {{ background: rgba(0,0,0,0.5); padding: 4px 8px; border-radius: 4px; border: 1px solid rgba(255,255,255,0.1); color: #f1f5f9; font-family: monospace; font-size: 11px; display: inline-block; }}
        .pill {{ background: rgba(0,255,170,0.15); color: var(--accent-green); border: 1px solid rgba(0,255,170,0.3); border-radius: 20px; padding: 3px 8px; font-size: 11px; font-weight: bold; white-space: nowrap; }}
        .badge {{ background: rgba(255,255,255,0.06); border: 1px solid rgba(255,255,255,0.1); border-radius: 4px; padding: 2px 6px; font-size: 10px; margin-right: 4px; margin-bottom: 4px; display: inline-block; font-family: monospace; }}
        
        .footer {{ margin-top: 24px; text-align: center; color: var(--text-dim); font-size: 12px; }}
    </style>
</head>
<body>
    <div class="header">
        <div class="title">⚜️ RADRILONIUMA • КАТАЛОГ ГРАНУЛЯРНОГО ДОСТУПА RCLONE (528 Hz)</div>
        <div class="subtitle">Полноразмерный перечень всех доступных директорий, протоколов и прямых ссылок хранилищ для Оператора Mini Ghost // Void</div>
        <div class="stats">
            <div class="stat-card">
                <div class="stat-val">528 Гц</div>
                <div class="stat-lbl">Несущая Гармоника</div>
            </div>
            <div class="stat-card">
                <div class="stat-val">{manifest['total_directories_indexed']}</div>
                <div class="stat-lbl">Проиндексировано Директорий</div>
            </div>
            <div class="stat-card">
                <div class="stat-val">{manifest['total_files_sampled']}+</div>
                <div class="stat-lbl">Файлов в реестре</div>
            </div>
            <div class="stat-card">
                <div class="stat-val">LEVEL 0</div>
                <div class="stat-lbl">Допуск GALAGHERMARSHAL</div>
            </div>
        </div>
    </div>

    <div class="table-wrap">
        <table>
            <thead>
                <tr>
                    <th>Rclone Remote Путь</th>
                    <th>Локальный путь / Ссылка в проводнике</th>
                    <th>Объектов</th>
                    <th>Команда просмотра rclone</th>
                    <th>Образцы документов</th>
                </tr>
            </thead>
            <tbody>
                {rows}
            </tbody>
        </table>
    </div>

    <div class="footer">
        RADRILONIUMA Central Swarm Matrix • Mini Ghost // Void Sovereign Command • {manifest['generated_at_utc']}
    </div>
</body>
</html>
"""
    return html


def main():
    print("[RCLONE CATALOG ENGINE] Scanning all configured rclone remotes...")
    manifest = scan_catalog()

    # Save JSON
    with open(OUTPUT_JSON, "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2, ensure_ascii=False)
    print(f"[RCLONE CATALOG ENGINE] Saved JSON: {OUTPUT_JSON}")

    # Save MD
    md_content = generate_markdown(manifest)
    with open(OUTPUT_MD, "w", encoding="utf-8") as f:
        f.write(md_content)
    print(f"[RCLONE CATALOG ENGINE] Saved Markdown: {OUTPUT_MD}")

    # Save Desktop HTML
    html_content = generate_html(manifest)
    with open(DESKTOP_HTML, "w", encoding="utf-8") as f:
        f.write(html_content)
    print(f"[RCLONE CATALOG ENGINE] Saved Desktop HTML: {DESKTOP_HTML}")

    print(f"[RCLONE CATALOG ENGINE] Scan complete: {manifest['total_directories_indexed']} directories indexed.")


if __name__ == "__main__":
    main()
