#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • CANONICAL HEADQUARTERS SHIFT SEAT-SELECTION ENGINE (528 Hz)
==========================================================================
Authority: Sovereign Master Patriarch (@Kirihanis / lkises01@gmail.com)
Model: Airline Seat Map / Cinema Hall Interactive Reservation Paradigm

CANONICAL HEADQUARTERS SHIFTS (NO FINANCIAL/CRYPTO JUNK):
- Смена 1 (21:00 - 05:00): Ночной Дозор / Архитектура Штаба (Ядро, аудит узлов, выпуск директив, репозитории).
- Смена 2 (05:00 - 13:00): Утренняя Вахта / Инженерный Контроль (Накопители D/E/F, конвейер Zero Copy, 68 органов, ADB сокеты).
- Смена 3 (13:00 - 21:00): Дневной Дозор / Оркестрация и Связность (Демоны PM2, задачи кластера, тестирование узлов).
"""

import os
import sys
import json
import time
import calendar
import subprocess
from datetime import datetime, timezone, timedelta
from pathlib import Path

REPO_ROOT = Path("/root/RADRILONIUMA")
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)

SEAT_MAP_FILE = CHRONOLOG_DIR / "MONTHLY_SHIFT_SEAT_MAP.json"
SEAT_MAP_HTML = CHRONOLOG_DIR / "MONTHLY_SHIFT_SEAT_MAP.html"
WINDOWS_SEAT_MAP_FILE = Path("/mnt/c/setup/monthly_shift_seat_map.json")
WINDOWS_SEAT_MAP_HTML = Path("/mnt/c/setup/monthly_shift_seat_map.html")
LEDGER_FILE = CHRONOLOG_DIR / "monthly_shift_booking_ledger.jsonl"
TELEGRAM_DISPATCH_FILE = CHRONOLOG_DIR / "telegram_monthly_seat_dispatches.json"

MASTER_BOT_HANDLE = "@Trianiuma_Bot"
BOT_MINIAPP_BASE_URL = f"https://t.me/{MASTER_BOT_HANDLE.replace('@', '')}/shift_claim?startapp="

# CANONICAL 3-SHIFT HEADQUARTERS CIRCADIAN SCHEDULE (8 hours each)
SLOT_DEFINITIONS = [
    {
        "slot": 1,
        "name": "Смена 1 Штаба (Ночной Дозор - Архитектура)",
        "start_time": "21:00",
        "end_time": "05:00",
        "duration_hours": 8,
        "color_index": 10,
        "required_profile": "ARCHITECTURE_AND_CORE",
        "focus": "Архитектура штаба, установка и настройка компонентов ядра, выпуск директив, аудит репозиториев и целостности узлов DEV_01..DEV_05."
    },
    {
        "slot": 2,
        "name": "Смена 2 Штаба (Утренняя Вахта - Инженерный Контроль)",
        "start_time": "05:00",
        "end_time": "13:00",
        "duration_hours": 8,
        "color_index": 10,
        "required_profile": "HARDWARE_AND_PIPELINE",
        "focus": "Контроль накопителей D, E, F, мониторинг конвейера данных Zero Copy, синхронизация 68 органов кластера, удержание сокетов ADB/USB-C."
    },
    {
        "slot": 3,
        "name": "Смена 3 Штаба (Дневной Дозор - Оркестрация)",
        "start_time": "13:00",
        "end_time": "21:00",
        "duration_hours": 8,
        "color_index": 10,
        "required_profile": "ORCHESTRATION_AND_SERVICES",
        "focus": "Контроль 7 демонов PM2, сопровождение задач кластера, координация мобильных узлов, тестирование компонентов и связь с операторами."
    }
]

# Canonical Communities for Shift Broadcasting
TELEGRAM_COMMUNITIES = [
    {"chat_id": -1002353574081, "name": "RADRILONIUMA🌱", "type": "GROUP_CHAT"},
    {"chat_id": -1002781324076, "name": "Ušumgal⚜", "type": "GROUP_CHAT"},
    {"chat_id": -1004428138289, "name": "The Last Ray", "type": "GROUP_CHAT"},
    {"chat_id": -1002971920850, "name": "Alnovum Almere 🇺🇦🇳🇱", "type": "GROUP_CHAT"}
]

OPERATORS_DB = {
    "doriangrej597@gmail.com": {
        "name": "Кен (Ken)",
        "tg": "@Ken1Ryuguji1",
        "tier": "LVL_2_COPILOT",
        "profiles": ["HARDWARE_AND_PIPELINE", "ORCHESTRATION_AND_SERVICES"]
    },
    "denua7723@gmail.com": {
        "name": "Кирилл Ляпустин (Капитан)",
        "tg": "@denua",
        "tier": "LVL_2_COPILOT",
        "profiles": ["ARCHITECTURE_AND_CORE", "ORCHESTRATION_AND_SERVICES"]
    },
    "voroninlosa0@gmail.com": {
        "name": "Galagher Marshal Void (Mini Ghost)",
        "tg": "@Karl_Galageer",
        "tier": "LVL_2_COPILOT",
        "profiles": ["ARCHITECTURE_AND_CORE", "HARDWARE_AND_PIPELINE"]
    },
    "wanderfate5000@gmail.com": {
        "name": "Ванилинин (Wanderfate)",
        "tg": "@Wanderfate",
        "tier": "LVL_1_APPRENTICE",
        "profiles": ["ARCHITECTURE_AND_CORE"]
    }
}


def log_ledger(event_type, details):
    entry = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "event_type": event_type,
        "details": details
    }
    with open(LEDGER_FILE, "a", encoding="utf-8") as f:
        f.write(json.dumps(entry, ensure_ascii=False) + "\n")


def generate_monthly_seat_map(year: int, month: int):
    """Generates the clean monthly seat map for the 3 canonical HQ shifts."""
    num_days = calendar.monthrange(year, month)[1]
    month_name = calendar.month_name[month]

    seat_map = {
        "year": year,
        "month": month,
        "month_name": month_name,
        "total_days": num_days,
        "total_seats": num_days * len(SLOT_DEFINITIONS),
        "vacant_seats": num_days * len(SLOT_DEFINITIONS),
        "reserved_seats": 0,
        "days": {}
    }

    for day in range(1, num_days + 1):
        day_date = datetime(year, month, day, tzinfo=timezone.utc)
        day_str = day_date.strftime("%Y-%m-%d")
        weekday_name = day_date.strftime("%A")

        seat_map["days"][day_str] = {
            "day": day,
            "weekday": weekday_name,
            "slots": {}
        }

        for s_def in SLOT_DEFINITIONS:
            seat_map["days"][day_str]["slots"][str(s_def["slot"])] = {
                "slot_id": f"{day_str}_S{s_def['slot']}",
                "name": s_def["name"],
                "hours": f"{s_def['start_time']} - {s_def['end_time']}",
                "status": "VACANT_SEAT",
                "booked_by": None,
                "operator_email": None,
                "focus": s_def["focus"],
                "supervision_mode": "AUTOPILOT_CO_PILOT_READY"
            }

    return seat_map


def load_or_init_seat_map(year: int, month: int):
    seat_map = generate_monthly_seat_map(year, month)
    save_seat_map(seat_map)
    return seat_map


def save_seat_map(seat_map):
    with open(SEAT_MAP_FILE, "w", encoding="utf-8") as f:
        json.dump(seat_map, f, indent=2, ensure_ascii=False)

    try:
        WINDOWS_SEAT_MAP_FILE.parent.mkdir(parents=True, exist_ok=True)
        with open(WINDOWS_SEAT_MAP_FILE, "w", encoding="utf-8") as f:
            json.dump(seat_map, f, indent=2, ensure_ascii=False)
    except Exception:
        pass

    render_seat_map_html(seat_map)


def render_seat_map_html(seat_map):
    """Renders visual Cinema / Airline Seat-Chart HTML for canonical shifts."""
    html = f"""<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<title>⚜️ RADRILONIUMA • Дежурства Штаба: {seat_map['month_name']} {seat_map['year']}</title>
<style>
  body {{ background: #070c14; color: #e2e8f0; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, monospace; margin: 0; padding: 20px; }}
  h1 {{ color: #00f0ff; text-align: center; font-size: 24px; margin-bottom: 5px; }}
  .sub {{ text-align: center; color: #94a3b8; font-size: 14px; margin-bottom: 20px; }}
  .legend {{ display: flex; justify-content: center; gap: 20px; margin-bottom: 25px; }}
  .legend-item {{ display: flex; align-items: center; gap: 8px; font-size: 13px; }}
  .box {{ width: 18px; height: 18px; border-radius: 4px; }}
  .box-vacant {{ background: #039be5; }}
  .box-reserved {{ background: #0b8043; }}
  .grid {{ display: grid; grid-template-columns: repeat(auto-fill, minmax(320px, 1fr)); gap: 15px; }}
  .day-card {{ background: #0f172a; border: 1px solid #1e293b; border-radius: 8px; padding: 12px; }}
  .day-header {{ font-weight: bold; font-size: 15px; color: #38bdf8; margin-bottom: 10px; display: flex; justify-content: space-between; }}
  .slot-btn {{ display: block; width: 100%; text-align: left; padding: 10px; margin-bottom: 8px; border-radius: 6px; border: none; font-size: 12px; cursor: pointer; transition: 0.2s; }}
  .slot-btn.vacant {{ background: #0284c7; color: #fff; }}
  .slot-btn.vacant:hover {{ background: #0369a1; }}
  .slot-btn.reserved {{ background: #059669; color: #fff; cursor: default; }}
  .slot-time {{ font-weight: bold; margin-right: 8px; color: #fde047; }}
  .slot-name {{ font-weight: 600; display: block; margin-top: 2px; }}
  .slot-focus {{ font-size: 11px; color: #cbd5e1; margin-top: 4px; display: block; }}
  .operator {{ font-weight: bold; font-size: 12px; color: #a7f3d0; float: right; }}
</style>
</head>
<body>
  <h1>⚜️ ДЕЖУРСТВА КОМАНДНОГО ШТАБА RADRILONIUMA ⚜️</h1>
  <div class="sub">Сетка выбора дежурств: <b>{seat_map['month_name']} {seat_map['year']}</b> | Свободно мест: {seat_map['vacant_seats']} / {seat_map['total_seats']}</div>
  <div class="legend">
    <div class="legend-item"><div class="box box-vacant"></div> Открытая смена (Свободно к выбору)</div>
    <div class="legend-item"><div class="box box-reserved"></div> Смена подтверждена оператором</div>
  </div>
  <div class="grid">
"""
    for day_str, day_data in seat_map["days"].items():
        html += f"""    <div class="day-card">
      <div class="day-header"><span>День {day_data['day']} ({day_data['weekday'][:3]})</span><span style="font-size:12px;color:#64748b;">{day_str}</span></div>
"""
        for slot_num, s_info in day_data["slots"].items():
            is_res = (s_info["status"] == "RESERVED")
            css_cls = "reserved" if is_res else "vacant"
            op_label = f"<span class='operator'>✔ {s_info['booked_by']}</span>" if is_res else "<span class='operator'>[ВЫБРАТЬ]</span>"
            html += (
                f"""      <div class="slot-btn {css_cls}">"""
                f"""<span class="slot-time">{s_info['hours']}</span>{op_label}"""
                f"""<span class="slot-name">{s_info['name']}</span>"""
                f"""<span class="slot-focus">{s_info['focus']}</span>"""
                f"""</div>\n"""
            )
        html += "    </div>\n"

    html += """  </div>
</body>
</html>
"""
    with open(SEAT_MAP_HTML, "w", encoding="utf-8") as f:
        f.write(html)
    try:
        with open(WINDOWS_SEAT_MAP_HTML, "w", encoding="utf-8") as f:
            f.write(html)
    except Exception:
        pass


def build_monthly_telegram_announcements(seat_map):
    """Generates broadcast payload for Telegram communities with direct Mini App seat selection button."""
    month_str = f"{seat_map['month_name']} {seat_map['year']}"
    miniapp_link = f"{BOT_MINIAPP_BASE_URL}month_{seat_map['year']}_{seat_map['month']:02d}"

    message = (
        f"🎟️ **ОТКРЫТО БРОНИРОВАНИЕ СМЕН ШТАБА: {month_str.upper()}** ⚜️\n\n"
        f"Командный Штаб TRIANIUMA открывает окно дежурств на предстоящий месяц.\n\n"
        f"🎯 **РЕГЛАМЕНТ ДЕЖУРСТВ ШТАБА (3 смены по 8ч):**\n"
        f"• **Смена 1 (21:00 - 05:00):** Архитектура штаба, ядро, аудит узлов, выпуск директив, репозитории.\n"
        f"• **Смена 2 (05:00 - 13:00):** Инженерный контроль, накопители D/E/F, конвейер Zero Copy, 68 органов, ADB сокеты.\n"
        f"• **Смена 3 (13:00 - 21:00):** Оркестрация, демоны PM2, задачи кластера, тестирование узлов.\n\n"
        f"📊 **Сетка свободных мест:** {seat_map['vacant_seats']} мест открыто к выбору.\n"
        f"🛫 **Модель:** Выбор окон как покупка билетов. Каждый оператор бронирует свои дни.\n\n"
        f"📲 **Интерактивная карта мест в Sovereign Master Bot:**\n"
        f"👉 [🎟️ ВЫБРАТЬ СВОИ СМЕНЫ В @Trianiuma_Bot]({miniapp_link})\n\n"
        f"🛡️ **Правило:** Каждая смена создаётся как изолированное атомарное событие. Никаких бесконечных серий."
    )

    dispatches = []
    for comm in TELEGRAM_COMMUNITIES:
        dispatches.append({
            "target_chat_id": comm["chat_id"],
            "target_name": comm["name"],
            "month_block": f"{seat_map['year']}-{seat_map['month']:02d}",
            "bot_authority": MASTER_BOT_HANDLE,
            "miniapp_link": miniapp_link,
            "message": message,
            "timestamp_utc": datetime.now(timezone.utc).isoformat()
        })

    with open(TELEGRAM_DISPATCH_FILE, "w", encoding="utf-8") as f:
        json.dump(dispatches, f, indent=2, ensure_ascii=False)

    print(f"  [Telegram Broadcast] Generated {len(dispatches)} canonical HQ shift broadcasts.")


def book_seat(operator_email: str, year: int, month: int, day: int, slot: int):
    """Books a specific seat in the monthly grid and instantiates a DISCRETE SINGLE EVENT in Google Calendar."""
    seat_map = load_or_init_seat_map(year, month)
    day_str = f"{year}-{month:02d}-{day:02d}"

    if day_str not in seat_map["days"]:
        print(f"❌ Error: Date {day_str} not in seat map.")
        return False

    day_slots = seat_map["days"][day_str]["slots"]
    if str(slot) not in day_slots:
        print(f"❌ Error: Slot {slot} not found.")
        return False

    target_slot = day_slots[str(slot)]
    if target_slot["status"] == "RESERVED":
        print(f"❌ Error: Slot {day_str} Slot {slot} is already booked by {target_slot['booked_by']}!")
        return False

    op_info = OPERATORS_DB.get(operator_email)
    if not op_info:
        print(f"❌ Error: Operator {operator_email} not recognized in operator registry.")
        return False

    s_def = next((s for s in SLOT_DEFINITIONS if s["slot"] == slot), None)
    req_profile = s_def["required_profile"]
    if req_profile not in op_info.get("profiles", []):
        print(f"⛔ Error: Operator lacks required profile: {req_profile}")
        return False

    start_hour, start_min = map(int, s_def["start_time"].split(":"))
    dt_start = datetime(year, month, day, start_hour, start_min, tzinfo=timezone.utc)
    dt_end = dt_start + timedelta(hours=s_def["duration_hours"])

    start_ms = int(dt_start.timestamp() * 1000)
    end_ms = int(dt_end.timestamp() * 1000)

    # Clean title without colons (to prevent adb content insert split errors)
    raw_title = f"{s_def['name']} - {op_info['name']}"
    safe_title = raw_title.replace(":", " -").replace("'", "").replace('"', "")
    raw_desc = f"Дежурство {op_info['name']} ({operator_email}). Задачи - {s_def['focus']}. Статус - ПОДТВЕРЖДЕНО."
    clean_desc = raw_desc.replace(":", " -").replace("'", "").replace('"', "").replace("\n", " ")

    shell_cmd = (
        f"content insert --uri content://com.android.calendar/events "
        f"--bind calendar_id:i:36 "
        f"--bind 'title:s:{safe_title}' "
        f"--bind 'description:s:{clean_desc}' "
        f"--bind dtstart:l:{start_ms} "
        f"--bind dtend:l:{end_ms} "
        f"--bind allDay:i:0 "
        f"--bind eventTimezone:s:Europe/Amsterdam "
        f"--bind eventColor_index:i:10 "
        f"--bind 'eventLocation:s:Alnovum Almere' "
        f"--bind hasAlarm:i:1"
    )

    cmd = ["adb", "shell", shell_cmd]
    try:
        subprocess.run(cmd, capture_output=True, text=True, check=True)
        print(f"✔ Discrete event instantiated in Google Calendar for {day_str} {s_def['start_time']}!")
    except Exception as e:
        print(f"❌ Error instantiating event in calendar: {e}")
        return False

    # Insert Attendee
    safe_op_name = op_info["name"].replace("'", "").replace('"', "")
    shell_att = (
        f"content insert --uri content://com.android.calendar/attendees "
        f"--bind attendeeEmail:s:{operator_email} "
        f"--bind 'attendeeName:s:{safe_op_name}' "
        f"--bind attendeeStatus:i:1 "
        f"--bind attendeeType:i:1 "
        f"--bind attendeeRelationship:i:1"
    )
    subprocess.run(["adb", "shell", shell_att], capture_output=True)

    # Update Seat Map
    target_slot["status"] = "RESERVED"
    target_slot["booked_by"] = op_info["name"]
    target_slot["operator_email"] = operator_email
    target_slot["booked_at_utc"] = datetime.now(timezone.utc).isoformat()
    seat_map["vacant_seats"] -= 1
    seat_map["reserved_seats"] += 1

    save_seat_map(seat_map)
    print(f"🎉 SEAT CONFIRMED: {day_str} {s_def['name']} booked by {op_info['name']} ({operator_email})!")
    log_ledger("SEAT_BOOKED_CONFIRMED", {
        "date": day_str,
        "slot": slot,
        "shift_name": s_def["name"],
        "operator": op_info,
        "email": operator_email
    })
    return True


if __name__ == "__main__":
    now = datetime.now(timezone.utc)
    target_year = now.year
    target_month = now.month

    if len(sys.argv) > 1:
        if sys.argv[1] == "--book" and len(sys.argv) >= 7:
            op_em = sys.argv[2]
            y = int(sys.argv[3])
            m = int(sys.argv[4])
            d = int(sys.argv[5])
            s = int(sys.argv[6])
            book_seat(op_em, y, m, d, s)
        elif sys.argv[1] == "--next-month":
            next_m = 11 if target_month == 10 else (target_month % 12 + 1)
            next_y = target_year if next_m > target_month else target_year + 1
            s_map = load_or_init_seat_map(next_y, next_m)
            build_monthly_telegram_announcements(s_map)
            print(f"⚜️ Initialized Canonical HQ Shifts for {s_map['month_name']} {s_map['year']}.")
        else:
            print("Usage: monthly_seat_selection_booking_engine.py [--book <email> <year> <month> <day> <slot> | --next-month]")
    else:
        s_map = load_or_init_seat_map(target_year, target_month)
        build_monthly_telegram_announcements(s_map)
        print(f"⚜️ Canonical HQ Shift Engine Active: {s_map['month_name']} {s_map['year']}")
        print(f"Vacant Seats: {s_map['vacant_seats']} / {s_map['total_seats']}")
        print(f"Visual HTML Map: {SEAT_MAP_HTML}")
