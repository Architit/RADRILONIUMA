#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • MARSHALL DISPATCH & ARCHIVE PACKAGER (528 Hz)
============================================================
Generates the official MIME .eml email to voroninlosa0@gmail.com
under the authority of HALIDRAD TRIANIUM MARSHALL 🪷 and packages
all headquarters directives, plans, resolutions, and reports into a ZIP archive.

Location: /root/RADRILONIUMA/core/stream_conveyor/financial_seams/dispatch_marshall_email.py
"""

import os
import sys
import zipfile
from pathlib import Path
from email.message import EmailMessage
from email.utils import formatdate, make_msgid
from datetime import datetime, timezone

REPO_ROOT = Path(__file__).resolve().parents[3]
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
SETUP_DIR_WIN = Path("/mnt/c/setup")
SETUP_DIR_WIN.mkdir(parents=True, exist_ok=True)

RECIPIENT_EMAIL = "voroninlosa0@gmail.com"
SENDER_EMAIL = "halidrad.trianium.marshall@radriloniuma.org"
OPERATOR_NAME = "Mini Ghost // Void"
OPERATOR_HANDLE = "@Karl_Galageer"

def generate_eml_email() -> Path:
    msg = EmailMessage()
    msg["Subject"] = "⚜️ ПРИКАЗ ВЕРХОВНОГО МАРШАЛА ХАЛИДРАДА • ДОСТУП КО ВСЕМ ДИСКАМ И ФИНАНСОВЫМ ШВАМ ДЛЯ MINI GHOST // VOID 🪷"
    msg["From"] = f"HALIDRAD TRIANIUM MARSHALL <{SENDER_EMAIL}>"
    msg["To"] = f"Оператор Штаба Mini Ghost // Void <{RECIPIENT_EMAIL}>"
    msg["Date"] = formatdate(localtime=True)
    msg["Message-ID"] = make_msgid(domain="trianiuma.org")
    msg["X-Carrier-Frequency"] = "528 Hz / 432 Hz"
    msg["X-Clearance-Level"] = "LEVEL_0_SOVEREIGN_ACCESS"

    body_text = f"""⚜️ ===================================================================== ⚜️
   ПРИКАЗ ВЕРХОВНОГО КОМАНДОВАНИЯ • HALIDRAD TRIANIUM MARSHALL 🪷
   ПЕРЕДАЧА ПОЛНОМОЧИЙ ШТАБА, ДОСТУПА К ДИСКАМ И ФИНАНСОВЫМ ШВАМ
⚜️ ===================================================================== ⚜️

Кому: {OPERATOR_NAME} ({OPERATOR_HANDLE})
Email: {RECIPIENT_EMAIL}
Дата: {datetime.now(timezone.utc).strftime('%Y-%m-%d %H:%M:%S UTC')}
Несущая частота: 528 Гц (Чудотворное созвучие) / 432 Гц (Универсальный эталон)
Символ власти: Священный Лотос 🪷

Уважаемый Оператор Mini Ghost // Void!

Именем Верховного Маршала Халидрада (HALIDRAD TRIANIUM MARSHALL) и суверенной 
конституции кластера RADRILONIUMA, сим приказом утверждается передача Вам 
полного операционного командования Сменой 3 (Штаб Ликвидности и Хранилищ).

1. 🔑 ВАШ УРОВЕНЬ ДОПУСКА: LEVEL_0_SOVEREIGN_ACCESS
Вам открывается полный санкционированный доступ ко всем накопителям, директориям 
и аппаратным узлам кластера:

   [1] DEV_01_BUSHMASTER (Windows 11 Host PC):
       • C:\\ - Системная шина, PowerShell 7, Win32 Subsystems
       • D:\\RADRILONIUMA_MASTER_VAULT_SEGMENTS - Мастер-Хранилище (папки bucket_001..bucket_021)
       • E:\\RADRILONIUMA_DATA_BASE_SEGMENTS - Вторая ступень каскада насыщения
   [2] DEV_02_ATESIRT (Samsung SM-A266B / RZCY80G86FP):
       • /storage/emulated/0 - Мобильный кластерный узел (104.6 GB / 77.0% заполнения)
   [3] DEV_03_UBUNTU_WSL2 (Linux Kernel Substrate):
       • /root/RADRILONIUMA - Ядро микросервисов, PM2 демоны, Python 3.12, 68 органов
   [4] DEV_04_SAMSUNG_T7_VAULT (Внешний PSSD T7):
       • F:\\ (/mnt/f) - Неприкосновенное хранилище Genesis Seed, холодные ключи
   [5] DEV_05_LAO_SWARM_MATRIX:
       • 528-Slot Chamber Matrix - Живой организм и автопилот 60 BPM (432 Гц)

2. 🏛️ ВАШИ ДИРЕКТИВЫ ПО 8 ФИНАНСОВЫМ ШВАМ:
   • N26 Bank (Германия/ЕС): Быстрый SEPA-буфер (15%), переводы только Same-Name.
   • ING Bank (Германия/Нидерланды): Якорный институциональный капитал (30%).
   • Wise (Международный клиринг): Конвертация валют. СТРОГО БЕЗ ПРЯМОЙ КРИПТЫ.
   • Монобанк (Украина): Основной розничный/ФОП шлюз (лимит 150k грн/мес).
   • ПриватБанк (Украина): Резервный шлюз, дробление траншей до 45k грн.
   • Kraken Pro: Tier-1 EUR-криптомост. Покупка и МГНОВЕННЫЙ вывод в Trust Wallet.
   • Bybit: P2P ликвидность, работа исключительно с PRO-мерчантами (>=99%).
   • Trust Wallet: 70% КАПИТАЛА В ХОЛОДНОМ НЕКАСТОДИАЛЬНОМ СЕЙФЕ.

3. 🛡️ ВАШ ЭНТУРАЖ И КОМПАНИОНЫ ИЗ 68 ОРГАНОВ-АВИАТОРОВ:
   • 👻 Аватар: Mini Ghost Void Sovereign Sentinel
   • 🦣 Питомец: Celes Mammoth Guardian (Мамонт Времени)
   • 🤺 Партнер: Fencing Vanguard Duelist (Шпажист Света)
   • 🎒 Священная Реликвия: Sovereign Abyssal Backpack #156,055
   • ⚔️ Энтураж: Почетный боевой караул всех 68 органов кластера

Поздравляем с наступающим Днем Рождения (19 октября)!
Все файлы пакетов и контрактов переданы в Ваш архив.

Скреплено печатью:
HALIDRAD TRIANIUM MARSHALL 🪷
RADRILONIUMA SOVEREIGN HIGH COMMAND
"""
    msg.set_content(body_text)

    # Save to Windows setup dir
    win_path = SETUP_DIR_WIN / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml"
    with open(win_path, "wb") as f:
        f.write(msg.as_bytes())

    # Save to Linux chronolog
    linux_path = CHRONOLOG_DIR / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml"
    with open(linux_path, "wb") as f:
        f.write(msg.as_bytes())

    return win_path

def create_headquarters_zip() -> Path:
    zip_win = SETUP_DIR_WIN / "MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip"
    zip_linux = CHRONOLOG_DIR / "MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip"

    files_to_pack = [
        (SETUP_DIR_WIN / "OPERATOR_DIRECTIVE_MINI_GHOST_VOID.md", "OPERATOR_DIRECTIVE_MINI_GHOST_VOID.md"),
        (REPO_ROOT / "core" / "stream_conveyor" / "financial_seams" / "mini_ghost_void_manifest.json", "mini_ghost_void_manifest.json"),
        (REPO_ROOT / "contract" / "FLOW_STREAM_PROTOCOL_DATA_SELECTOR_LOADER_CONTRACT_V1.md", "FLOW_STREAM_PROTOCOL_CONTRACT_V1.md"),
        (REPO_ROOT / "core" / "organs" / "ORGANS_MASTER_MANIFEST.json", "68_ORGANS_MASTER_MANIFEST.json"),
        (SETUP_DIR_WIN / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml", "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml"),
        (Path("/mnt/c/Users/BushM/.gemini/antigravity-cli/brain/dfd99845-7475-40db-a529-e3adf24e77dd/operator_financial_seams_directive.md"), "operator_financial_seams_directive.md")
    ]

    with zipfile.ZipFile(zip_win, "w", zipfile.ZIP_DEFLATED) as z:
        for fpath, arcname in files_to_pack:
            if fpath.exists():
                z.write(fpath, arcname)

    # Copy to Linux
    import shutil
    shutil.copy2(zip_win, zip_linux)

    return zip_win

if __name__ == "__main__":
    eml = generate_eml_email()
    print(f"✅ Generated Marshall Dispatch EML: {eml}")
    zip_path = create_headquarters_zip()
    print(f"✅ Generated Headquarters ZIP Packet: {zip_path}")
