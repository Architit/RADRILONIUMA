#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • MARSHALL DISPATCH & ARCHIVE PACKAGER (528 Hz)
============================================================
Generates the official MIME .eml email to voroninlosa0@gmail.com
under the authority of HALIDRAD TRIANIUM MARSHALL 🪷 and packages
all headquarters directives, plans, resolutions, and reports into a ZIP archive,
syncing across Desktop, Chronolog, and Google Drive (E:\\google drive).

Location: /root/RADRILONIUMA/core/stream_conveyor/financial_seams/dispatch_marshall_email.py
"""

import os
import sys
import shutil
import zipfile
from pathlib import Path
from email.message import EmailMessage
from email.utils import formatdate, make_msgid
from datetime import datetime, timezone

REPO_ROOT = Path(__file__).resolve().parents[3]
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
SETUP_DIR_WIN = Path("/mnt/c/setup")
DESKTOP_DIR_WIN = Path("/mnt/c/Users/BushM/Desktop")
GDRIVE_E_DIR = Path("/mnt/e/google drive/TRIANIUMA_MINI_GHOST_VOID_HQ")
GDRIVE_D_DIR = Path("/mnt/d/GOOGLE_DRIVE_VAULT_MIRROR/TRIANIUMA_MINI_GHOST_VOID_HQ")

SETUP_DIR_WIN.mkdir(parents=True, exist_ok=True)
DESKTOP_DIR_WIN.mkdir(parents=True, exist_ok=True)
GDRIVE_E_DIR.mkdir(parents=True, exist_ok=True)
GDRIVE_D_DIR.mkdir(parents=True, exist_ok=True)

RECIPIENT_EMAIL = "voroninlosa0@gmail.com"
SENDER_EMAIL = "halidrad.trianium.marshall@radriloniuma.org"
OPERATOR_NAME = "Mini Ghost // Void"
OPERATOR_HANDLE = "@Karl_Galageer"
OPERATOR_RANK = "GALAGHERMARSHAL ⚜️"

def generate_eml_email() -> Path:
    msg = EmailMessage()
    msg["Subject"] = "⚜️ ПРИКАЗ ВЕРХОВНОГО МАРШАЛА ХАЛИДРАДА • ДОСТУП КО ВСЕМ ДИСКАМ И 13 ФИНАНСОВЫМ ШВАМ ДЛЯ GALAGHERMARSHAL 🪷"
    msg["From"] = f"HALIDRAD TRIANIUM MARSHALL <{SENDER_EMAIL}>"
    msg["To"] = f"Galagher-Marshall Mini Ghost // Void <{RECIPIENT_EMAIL}>"
    msg["Date"] = formatdate(localtime=True)
    msg["Message-ID"] = make_msgid(domain="trianiuma.org")
    msg["X-Carrier-Frequency"] = "528 Hz / 432 Hz"
    msg["X-Clearance-Level"] = "LEVEL_0_SOVEREIGN_ACCESS"
    msg["X-Council-Badge"] = "GALAGHERMARSHAL"

    body_text = f"""⚜️ ===================================================================== ⚜️
   ПРИКАЗ ВЕРХОВНОГО КОМАНДОВАНИЯ • HALIDRAD TRIANIUM MARSHALL 🪷
   ПЕРЕДАЧА ПОЛНОМОЧИЙ ШТАБА, ДОСТУПА К ДИСКАМ И 13 ФИНАНСОВЫМ ШВАМ
⚜️ ===================================================================== ⚜️

Кому: {OPERATOR_NAME} ({OPERATOR_HANDLE})
Ранг: {OPERATOR_RANK}
Email: {RECIPIENT_EMAIL}
Дата: {datetime.now(timezone.utc).strftime('%Y-%m-%d %H:%M:%S UTC')}
Несущая частота: 528 Гц (Чудотворное созвучие) / 432 Гц (Универсальный эталон)
Символ власти: Священный Лотос 🪷

Уважаемый Галахер-Маршал Mini Ghost // Void!

Именем Верховного Маршала Халидрада (HALIDRAD TRIANIUM MARSHALL) и суверенной 
конституции кластера RADRILONIUMA, сим указом утверждается Ваш официальный статус 
GALAGHERMARSHAL в составе Верховного Совета Штаба TRIANIUMA (15 участников) 
и передается полное верховное командование 13 Финансовыми и Корпоративными Швами!

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
   [6] GOOGLE DRIVE CLOUD VAULT:
       • https://drive.google.com/drive/my-drive
       • E:\\google drive\\TRIANIUMA_MINI_GHOST_VOID_HQ (Локальное облачное зеркало)

2. 🏛️ ВАШИ ДИРЕКТИВЫ ПО 13 ФИНАНСОВЫМ И КОРПОРАТИВНЫМ ШВАМ:
   • KvK (Нидерланды): Корпоративный реестр, BTW/VAT ID, UBO — правовой фундамент.
   • ING Bank (Нидерланды): Якорный корпоративный капитал (30%).
   • N26 Bank (Германия/ЕС): Быстрый SEPA-буфер (15%), переводы Same-Name.
   • Stripe Payments: Интернет-эквайринг, Checkout API, 2-day rolling payout на ING.
   • PayPal Europe: Цифровой кошелек и международный чекаут.
   • Visa Direct: Мгновенные выплаты на карты (push-to-card < 30 сек).
   • Mastercard Send: Трансграничные мгновенные расчеты.
   • Wise: Мультивалютный клиринг FX (СТРОГО БЕЗ ПРЯМОЙ КРИПТЫ).
   • Монобанк: Основной розничный/ФОП шлюз Украины (до 150k грн/мес).
   • ПриватБанк: Резервный шлюз, дробление траншей до 45k грн.
   • Kraken Pro: Tier-1 EUR-криптомост. Покупка и вывод в Trust Wallet.
   • Bybit: P2P ликвидность, работа исключительно с PRO-мерчантами (>=99%).
   • Trust Wallet: 70% КАПИТАЛА В ХОЛОДНОМ НЕКАСТОДИАЛЬНОМ СЕЙФЕ.

3. ⏰ ЦИРКАДНЫЙ ГРАФИК: 4 СМЕНЫ ПО 6 ЧАСОВ (24 ЧАСА):
   • Смена 1 (06:00-12:00 UTC): Утренняя Заря (ING, N26, KvK, Wise)
   • Смена 2 (12:00-18:00 UTC): Дневной Зенит (Stripe, PayPal, Visa, Mastercard, Mono, Privat)
   • Смена 3 (18:00-00:00 UTC): Вечерний Дозор (Kraken, Bybit, Trust Wallet)
   • Смена 4 (00:00-06:00 UTC): Ночной Страж (Автопилот 60 BPM, 432 Гц, DEV_05 Matrix, T7 Vault)

4. 🛡️ ВАШ ЭНТУРАЖ И КОМПАНИОНЫ ИЗ 68 ОРГАНОВ-АВИАТОРОВ:
   • 👻 Аватар: Mini Ghost Void Sovereign Sentinel
   • 🦣 Питомец: Celes Mammoth Guardian (Мамонт Времени)
   • 🤺 Партнер: Fencing Vanguard Duelist (Шпажист Света)
   • 🎒 Священная Реликвия: Sovereign Abyssal Backpack #156,055
   • ⚔️ Энтураж: Почетный боевой караул всех 68 органов кластера

Поздравляем с наступающим Днем Рождения (19 октября)!
Все файлы пакетов и контрактов переданы в Ваш облачный и локальный архив.

Скреплено печатью:
HALIDRAD TRIANIUM MARSHALL 🪷
RADRILONIUMA SOVEREIGN HIGH COMMAND
"""
    msg.set_content(body_text)

    # Save EML to C:\setup and Desktop and Chronolog and Google Drive
    eml_targets = [
        SETUP_DIR_WIN / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml",
        DESKTOP_DIR_WIN / "HALIDRAD_MARSHALL_EMAIL_DISPATCH.eml",
        CHRONOLOG_DIR / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml",
        GDRIVE_E_DIR / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml"
    ]

    for ep in eml_targets:
        with open(ep, "wb") as f:
            f.write(msg.as_bytes())

    return eml_targets[0]

def create_headquarters_zip() -> Path:
    zip_win = SETUP_DIR_WIN / "MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip"

    files_to_pack = [
        (SETUP_DIR_WIN / "OPERATOR_DIRECTIVE_MINI_GHOST_VOID.md", "OPERATOR_DIRECTIVE_MINI_GHOST_VOID.md"),
        (REPO_ROOT / "core" / "stream_conveyor" / "financial_seams" / "mini_ghost_void_manifest.json", "mini_ghost_void_manifest.json"),
        (SETUP_DIR_WIN / "RADRILONIUMA_SHIFTS_GCALENDAR.ics", "RADRILONIUMA_SHIFTS_GCALENDAR.ics"),
        (SETUP_DIR_WIN / "GOOGLE_CALENDAR_DIRECT_LINKS.html", "GOOGLE_CALENDAR_DIRECT_LINKS.html"),
        (DESKTOP_DIR_WIN / "GOOGLE_TASKS_CHECKLIST.md", "GOOGLE_TASKS_CHECKLIST.md"),
        (SETUP_DIR_WIN / "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml", "HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml"),
        (REPO_ROOT / "contract" / "FLOW_STREAM_PROTOCOL_DATA_SELECTOR_LOADER_CONTRACT_V1.md", "FLOW_STREAM_PROTOCOL_CONTRACT_V1.md"),
        (REPO_ROOT / "core" / "organs" / "ORGANS_MASTER_MANIFEST.json", "68_ORGANS_MASTER_MANIFEST.json")
    ]

    with zipfile.ZipFile(zip_win, "w", zipfile.ZIP_DEFLATED) as z:
        for fpath, arcname in files_to_pack:
            if fpath.exists():
                z.write(fpath, arcname)

    # Distribute ZIP to all key nodes
    destinations = [
        DESKTOP_DIR_WIN / "MINI_GHOST_VOID_PACKET.zip",
        CHRONOLOG_DIR / "MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip",
        GDRIVE_E_DIR / "MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip",
        GDRIVE_D_DIR / "MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip"
    ]

    for dst in destinations:
        shutil.copy2(zip_win, dst)
        print(f"✅ Synced ZIP to: {dst}")

    # Also sync unpacked docs directly into Google Drive mirror
    for fpath, arcname in files_to_pack:
        if fpath.exists():
            shutil.copy2(fpath, GDRIVE_E_DIR / arcname)
            shutil.copy2(fpath, GDRIVE_D_DIR / arcname)

    return zip_win

if __name__ == "__main__":
    eml = generate_eml_email()
    print(f"✅ Generated Marshall Dispatch EML: {eml}")
    zip_path = create_headquarters_zip()
    print(f"✅ Generated Headquarters ZIP Packet: {zip_path}")
    print("✅ All files synced to Google Drive E:\\google drive\\TRIANIUMA_MINI_GHOST_VOID_HQ")
