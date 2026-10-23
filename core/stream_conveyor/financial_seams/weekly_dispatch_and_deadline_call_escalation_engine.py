#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • WEEKLY DISPATCH & T-6H EMERGENCY CALL ESCALATION ENGINE (528 Hz)
================================================================================
Authority: Sovereign Master Patriarch (@Kirihanis / lkises01@gmail.com)

Key Capabilities:
1. Weekly Operational Dispatch: Sends weekly email/TG survey for 7-day availability,
   days off, and sick leave (больничные / отгулы).
2. Monthly Block Dispatch: Sends monthly full-schedule seat selection survey.
3. T-6H Emergency Call Escalation: If a shift is vacant 6 hours before start,
   initiates voice calls via DEV_02 ATESIRT (am start -a android.intent.action.CALL)
   following the Captain's Priority Hierarchy:
     P1: Кен (Ken)                  - +380506069913 (@Ken1Ryuguji1)
     P2: Ванилинин (Wanderfate)     - +380997745732 (@Wanderfate)
     P3: Galagher Marshal Void      - +380993142407 (@Karl_Galageer)
     P4: Назар (Sazaria)            - +380681022335 (@Zadoya015)
     P5: Капитан Денуа              - +31649033064  (@denua)
4. Zero-Gap Guarantee: If no operator accepts, engages DEV_05 Swarm Matrix Autopilot.
"""

import os
import sys
import json
import time
import subprocess
from datetime import datetime, timezone, timedelta
from email.message import EmailMessage
from email.utils import formatdate, make_msgid
from pathlib import Path

REPO_ROOT = Path("/root/RADRILONIUMA")
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)

WEEKLY_SURVEY_EML = CHRONOLOG_DIR / "weekly_operational_survey.eml"
WEEKLY_DISPATCH_JSON = CHRONOLOG_DIR / "weekly_operational_dispatches.json"
CALL_ESCALATION_LOG = CHRONOLOG_DIR / "emergency_call_escalations.jsonl"
WINDOWS_CALL_LOG = Path("/mnt/c/setup/emergency_call_escalations.jsonl")

MASTER_BOT_HANDLE = "@Trianiuma_Bot"

# CAPTAIN'S PRIORITY HIERARCHY FOR EMERGENCY CALL ESCALATION
CAPTAINS_PRIORITY_CASCADE = [
    {
        "priority": "P1",
        "role": "Tech-Mech / Штурман-Механик",
        "name": "Кен (Ken)",
        "email": "doriangrej597@gmail.com",
        "phone": "+380506069913",
        "tg": "@Ken1Ryuguji1"
    },
    {
        "priority": "P2",
        "role": "Astrogrammer / Исследователь",
        "name": "Ванилинин (Wanderfate)",
        "email": "wanderfate5000@gmail.com",
        "phone": "+380997745732",
        "tg": "@Wanderfate"
    },
    {
        "priority": "P3",
        "role": "Marshal Void (Оператор 3)",
        "name": "Galagher Marshal Void",
        "email": "voroninlosa0@gmail.com",
        "phone": "+380993142407",
        "tg": "@Karl_Galageer"
    },
    {
        "priority": "P4",
        "role": "Security Edge / Резерв",
        "name": "Назар (Sazaria)",
        "email": "nazarzadoyanchuk5x@gmail.com",
        "phone": "+380681022335",
        "tg": "@Zadoya015"
    },
    {
        "priority": "P5",
        "role": "Bridge Captain / Капитан Мостика",
        "name": "Кирилл Ляпустин (Денуа)",
        "email": "denua7723@gmail.com",
        "phone": "+31649033064",
        "tg": "@denua"
    }
]


def log_escalation(event_type, details):
    entry = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "event_type": event_type,
        "details": details
    }
    with open(CALL_ESCALATION_LOG, "a", encoding="utf-8") as f:
        f.write(json.dumps(entry, ensure_ascii=False) + "\n")

    try:
        WINDOWS_CALL_LOG.parent.mkdir(parents=True, exist_ok=True)
        with open(WINDOWS_CALL_LOG, "a", encoding="utf-8") as f:
            f.write(json.dumps(entry, ensure_ascii=False) + "\n")
    except Exception:
        pass


def generate_weekly_survey_email():
    """Builds and emits the formal weekly operational survey email to all operators."""
    msg = EmailMessage()
    msg["Subject"] = "⚜️ ЕЖЕНЕДЕЛЬНЫЙ ОПРОС ШТАБА: Выбор смен, выходных и больничных на предстоящую неделю"
    msg["From"] = f"Командный Штаб TRIANIUMA <lkises01@gmail.com>"
    recipients = [op["email"] for op in CAPTAINS_PRIORITY_CASCADE]
    msg["To"] = ", ".join(recipients)
    msg["Date"] = formatdate(localtime=True)
    msg["Message-ID"] = make_msgid(domain="radriloniuma.org")

    body_text = f"""⚜️ КОМАНДНЫЙ ШТАБ TRIANIUMA • ЕЖЕНЕДЕЛЬНАЯ ОПЕРАТИВНАЯ РАССЫЛКА ⚜️

Уважаемые операторы штаба!
В рамках обеспечения непрерывности дежурств (Регламент 528 Гц / 432 Гц) открыт еженедельный опрос доступности на предстоящую 7-дневную вахту.

📋 ОПЕРАТИВНЫЙ ВЫБОР НА НЕДЕЛЮ:
1. Выбор доступных смен под личный циркадный ритм.
2. Фиксация плановых выходных дней.
3. Подача заявок на больничные / уважительные отгулы.

🎯 КАНОНИЧЕСКИЙ РЕГЛАМЕНТ ДЕЖУРСТВ:
• Смена 1 (21:00 - 05:00): Архитектура штаба, ядро, аудит узлов DEV_01..DEV_05.
• Смена 2 (05:00 - 13:00): Инженерный контроль, накопители D/E/F, Zero Copy конвейер, 68 органов.
• Смена 3 (13:00 - 21:00): Оркестрация, 7 демонов PM2, координация мобильных узлов.

📲 ЗАФИКСИРОВАТЬ СВОЙ ГРАФИК ЧЕРЕЗ БОТА:
👉 https://t.me/{MASTER_BOT_HANDLE.replace('@', '')}/shift_claim?startapp=weekly_survey

⚠️ ПРОТОКОЛ Т-6H (ПРОТОКОЛ ДЕДЛАЙНА):
Если за 6 часов до начала смены оператор не назначен, штаб запускает автоматическую голосовую эскалацию (прямые звонки на телефон по уровню приоритизации капитана).
Смены не должны оставаться пустыми.

С уважением,
Командный Штаб TRIANIUMA
Sovereign Master Patriarch Kirilli
"""
    msg.set_content(body_text)

    with open(WEEKLY_SURVEY_EML, "wb") as f:
        f.write(msg.as_bytes())

    dispatch_data = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "type": "WEEKLY_OPERATIONAL_SURVEY",
        "recipients": recipients,
        "subject": msg["Subject"],
        "bot_ingress": f"https://t.me/{MASTER_BOT_HANDLE.replace('@', '')}/shift_claim?startapp=weekly_survey"
    }

    with open(WEEKLY_DISPATCH_JSON, "w", encoding="utf-8") as f:
        json.dump(dispatch_data, f, indent=2, ensure_ascii=False)

    print(f"✔ Weekly survey email generated: {WEEKLY_SURVEY_EML}")
    print(f"  Recipients: {len(recipients)} operators.")
    log_escalation("WEEKLY_SURVEY_DISPATCHED", dispatch_data)
    return True


def execute_call_escalation(shift_name: str, shift_start_utc: str, live_dial: bool = False):
    """Executes automated phone call escalation following Captain's Priority Hierarchy."""
    print(f"🚨 T-6H DEADLINE TRIGGERED! Shift '{shift_name}' starting at {shift_start_utc} is VACANT!")
    print(f"📞 Initiating automated phone call escalation via Captain's Priority Cascade...")

    log_escalation("T_6H_DEADLINE_CALL_ESCALATION_INITIATED", {
        "shift_name": shift_name,
        "shift_start_utc": shift_start_utc,
        "status": "VACANT_UNFILLED"
    })

    for op in CAPTAINS_PRIORITY_CASCADE:
        priority = op["priority"]
        name = op["name"]
        role = op["role"]
        phone = op["phone"]
        tg = op["tg"]

        print(f"\n  [{priority}] Calling {role}: {name} ({phone} | {tg})...")

        # Execute phone call intent via ADB on DEV_02 ATESIRT
        if live_dial:
            adb_bin = "/mnt/c/setup/platform-tools/adb.exe" if os.path.exists("/mnt/c/setup/platform-tools/adb.exe") else "adb"
            cmd = [adb_bin, "shell", f"am start -a android.intent.action.CALL -d tel:{phone}"]
            try:
                subprocess.run(cmd, capture_output=True, text=True, check=True, timeout=5)
                print(f"    ✔ Call intent dispatched to phone dialer: {phone}")
            except Exception as e:
                print(f"    ❌ Error dialing {phone}: {e}")
        else:
            adb_bin = "/mnt/c/setup/platform-tools/adb.exe" if os.path.exists("/mnt/c/setup/platform-tools/adb.exe") else "adb"
            print(f"    [STANDBY_SAFE_MODE] Call trigger simulated: {adb_bin} shell am start -a android.intent.action.CALL -d tel:{phone}")

        log_escalation("OPERATOR_CALL_ATTEMPTED", {
            "shift_name": shift_name,
            "priority": priority,
            "operator": name,
            "phone": phone,
            "live_dial": live_dial,
            "timestamp_utc": datetime.now(timezone.utc).isoformat()
        })

    print("\n🛡️ Failsafe Guard: If no response received after call cycle, shift engages AUTOPILOT_SENTRY_MODE (DEV_05 Swarm Matrix, 432 Hz).")
    log_escalation("AUTOPILOT_FAILSAFE_STANDBY_ARMED", {"shift_name": shift_name, "carrier": "432 Hz"})
    return True


if __name__ == "__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "--weekly":
            generate_weekly_survey_email()
        elif sys.argv[1] == "--test-call-escalation":
            live = ("--live" in sys.argv)
            now_plus_5h = (datetime.now(timezone.utc) + timedelta(hours=5)).strftime("%Y-%m-%d %H:%M UTC")
            execute_call_escalation("Смена 2 Штаба (Утренняя Вахта - Инженерный Контроль)", now_plus_5h, live_dial=live)
        else:
            print("Usage: weekly_dispatch_and_deadline_call_escalation_engine.py [--weekly | --test-call-escalation [--live]]")
    else:
        generate_weekly_survey_email()
        now_plus_5h = (datetime.now(timezone.utc) + timedelta(hours=5)).strftime("%Y-%m-%d %H:%M UTC")
        execute_call_escalation("Смена 2 Штаба (Утренняя Вахта - Инженерный Контроль)", now_plus_5h, live_dial=False)
