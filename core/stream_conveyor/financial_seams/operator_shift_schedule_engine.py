#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • 7-DAY 4-SHIFT CIRCADIAN MATRIX & EMPTY SHIFT DISPATCHER (528 Hz)
================================================================================
Location: /root/RADRILONIUMA/core/stream_conveyor/financial_seams/operator_shift_schedule_engine.py

Functionality:
1. Builds full 7-day schedule (28 shifts of 6h each: 2026-10-18 to 2026-10-24).
2. Audits operator responses ("ДА" / ACCEPTED vs VACANT).
3. Detects vacant shifts and maps available candidate operators.
4. Generates formal requirement letters to Telegram and Gmail demanding operators
   select their weekly shifts.
5. Emits Google Calendar direct 1-click links, iCalendar (.ics), and HTML reports.
6. Replicates packages to Chronolog, Desktop, Setup, and Google Drive.
"""

import os
import sys
import json
import shutil
import urllib.parse
from pathlib import Path
from email.message import EmailMessage
from email.utils import formatdate, make_msgid
from datetime import datetime, timezone, timedelta

REPO_ROOT = Path("/root/RADRILONIUMA")
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)

DESKTOP_DIR = Path("/mnt/c/Users/BushM/Desktop")
SETUP_DIR = Path("/mnt/c/setup")
GDRIVE_DIR = Path("/mnt/e/google drive/TRIANIUMA_MINI_GHOST_VOID_HQ")

TELEMETRY_LOG = CHRONOLOG_DIR / "mini_ghost_bot_telemetry.jsonl"
OUTPUT_ICS = CHRONOLOG_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.ics"
OUTPUT_HTML = CHRONOLOG_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.html"
OUTPUT_EML = CHRONOLOG_DIR / "OPERATOR_VACANT_SHIFTS_DISPATCH.eml"
OUTPUT_JSON = CHRONOLOG_DIR / "OPERATOR_VACANT_SHIFTS_TELEGRAM.json"

SHIFT_DEFINITIONS = [
    {
        "shift_index": 1,
        "name": "Смена 1: Утренняя Заря (Morning Ingress & EU Banking)",
        "start_utc": "06:00",
        "end_utc": "12:00",
        "duration_hours": 6,
        "resonance": "528 Hz",
        "primary_conduits": ["ing", "n26", "kvk", "wise"],
        "focus": "Европейский фиат, открытие банковских коридоров (ING, N26, KvK, Wise), утренний клиринг SEPA, запуск потоковых загрузчиков."
    },
    {
        "shift_index": 2,
        "name": "Смена 2: Дневной Зенит (Meridian Acquiring & Retail Rails)",
        "start_utc": "12:00",
        "end_utc": "18:00",
        "duration_hours": 6,
        "resonance": "528 Hz",
        "primary_conduits": ["stripe", "paypal", "visa", "mastercard", "monobank", "privatbank"],
        "focus": "Эквайринг и биллинг (Stripe, PayPal, Visa, Mastercard rails), украинский фиат (Монобанк, ПриватБанк), обработка P2P Bybit."
    },
    {
        "shift_index": 3,
        "name": "Смена 3: Вечерний Дозор (Sunset Liquidity Guard & Cold Vault)",
        "start_utc": "18:00",
        "end_utc": "00:00",
        "duration_hours": 6,
        "resonance": "528 Hz",
        "primary_conduits": ["kraken", "bybit", "trustwallet"],
        "focus": "Биржевой мост Kraken EUR -> Crypto, фиксация прибыли, вывод свободной ликвидности в Trust Wallet (70% холодное хранилище)."
    },
    {
        "shift_index": 4,
        "name": "Смена 4: Ночной Страж (Deep Night Circadian & Autopilot)",
        "start_utc": "00:00",
        "end_utc": "06:00",
        "duration_hours": 6,
        "resonance": "432 Hz",
        "primary_conduits": ["trustwallet", "t7_vault", "autopilot_core", "swarm_matrix"],
        "focus": "Автопилот кластера 60 BPM (DEV_05 Swarm Matrix, 432 Гц), дефрагментация бакетов дисков D: и E:, проверка кэшей ядра, защита Seed на DEV_04 T7 Vault."
    }
]

OPERATORS_ROSTER = {
    "Mini Ghost // Void": {
        "handle": "@Karl_Galageer",
        "email": "voroninlosa0@gmail.com",
        "rank": "GALAGHERMARSHAL",
        "badges": ["🦣", "🤺", "🎒 #156,055"],
        "birthday": "19 October"
    },
    "Кен": {
        "handle": "@Ken_Redmi_Tech",
        "email": "ken.redmi@radriloniuma.org",
        "rank": "TECH OFFICER",
        "badges": ["🔧", "⚡"],
        "birthday": "Unknown"
    },
    "Wanderfate": {
        "handle": "@Wanderfate_Astral",
        "email": "wanderfate@radriloniuma.org",
        "rank": "VANGUARD_OPERATOR",
        "badges": ["🌌", "🔭"],
        "birthday": "Unknown"
    }
}


def build_7day_schedule():
    """Generates the full 28-shift schedule starting 2026-10-18."""
    start_date = datetime(2026, 10, 18, tzinfo=timezone.utc)
    all_shifts = []

    for day_idx in range(7):
        cur_day = start_date + timedelta(days=day_idx)
        cur_date_str = cur_day.strftime("%Y-%m-%d")
        day_name = cur_day.strftime("%A")

        for s_def in SHIFT_DEFINITIONS:
            s_idx = s_def["shift_index"]
            uid = f"rad-shift-{cur_date_str}-s{s_idx}@trianiuma.org"

            # Parse start and end times
            sh, sm = map(int, s_def["start_utc"].split(":"))
            eh, em = map(int, s_def["end_utc"].split(":"))

            start_dt = cur_day.replace(hour=sh, minute=sm, second=0)
            if eh == 0 and em == 0:
                end_dt = (cur_day + timedelta(days=1)).replace(hour=0, minute=0, second=0)
            else:
                end_dt = cur_day.replace(hour=eh, minute=em, second=0)

            # Determine assignment and acceptance status
            assigned_operator = None
            operator_handle = None
            accepted_status = "PENDING_CONFIRMATION"

            if cur_date_str == "2026-10-18":
                if s_idx in (1, 2):
                    assigned_operator = "Mini Ghost // Void"
                    operator_handle = "@Karl_Galageer"
                    accepted_status = "ACCEPTED_YES"
                elif s_idx == 3:
                    assigned_operator = "Wanderfate"
                    operator_handle = "@Wanderfate_Astral"
                    accepted_status = "ACCEPTED_YES"
                elif s_idx == 4:
                    assigned_operator = "Кен"
                    operator_handle = "@Ken_Redmi_Tech"
                    accepted_status = "ACCEPTED_YES"
            elif cur_date_str == "2026-10-19" and s_idx == 1:
                assigned_operator = "Mini Ghost // Void"
                operator_handle = "@Karl_Galageer"
                accepted_status = "ACCEPTED_YES"  # Birthday Ingress shift
            else:
                assigned_operator = "VACANT_SLOT"
                operator_handle = "NONE"
                accepted_status = "VACANT"

            all_shifts.append({
                "uid": uid,
                "date": cur_date_str,
                "day_of_week": day_name,
                "shift_index": s_idx,
                "name": s_def["name"],
                "start_utc": start_dt.strftime("%Y%m%dT%H%M%SZ"),
                "end_utc": end_dt.strftime("%Y%m%dT%H%M%SZ"),
                "start_iso": start_dt.isoformat(),
                "end_iso": end_dt.isoformat(),
                "time_window": f"{s_def['start_utc']} - {s_def['end_utc']} UTC",
                "assigned_operator": assigned_operator,
                "operator_handle": operator_handle,
                "accepted_status": accepted_status,
                "resonance": s_def["resonance"],
                "focus": s_def["focus"],
                "primary_conduits": s_def["primary_conduits"]
            })

    return all_shifts


def make_google_calendar_url(shift: dict) -> str:
    base = "https://calendar.google.com/calendar/render"
    title = f"⚜️ {shift['name']} [{shift['accepted_status']}]"
    details = (
        f"RADRILONIUMA CIRCADIAN SHIFT #{shift['shift_index']}\n"
        f"Дата: {shift['date']} ({shift['day_of_week']})\n"
        f"Оператор: {shift['assigned_operator']} ({shift['operator_handle']})\n"
        f"Статус: {shift['accepted_status']}\n"
        f"Несущая частота: {shift['resonance']}\n\n"
        f"Фокус смены:\n{shift['focus']}\n\n"
        f"Шлюзы: {', '.join(shift['primary_conduits'])}\n"
        f"Регламент: 6 часов непрерывного дежурства. Для принятия нажмите 'Да' в календаре."
    )
    params = {
        "action": "TEMPLATE",
        "text": title,
        "dates": f"{shift['start_utc']}/{shift['end_utc']}",
        "details": details,
        "location": "Командный Штаб TRIANIUMA (DEV_01 Bushmaster / DEV_03 WSL2)"
    }
    return f"{base}?{urllib.parse.urlencode(params)}"


def generate_ics(shifts: list) -> str:
    lines = [
        "BEGIN:VCALENDAR",
        "VERSION:2.0",
        "PRODID:-//RADRILONIUMA//7-Day 4-Shift Circadian Matrix//RU",
        "CALSCALE:GREGORIAN",
        "METHOD:PUBLISH",
        "X-WR-CALNAME:РАДРИЛОНИУМА: График 7 Дней / 4 Смены по 6 Часов (528 Гц)",
        "X-WR-TIMEZONE:UTC",
        "X-WR-CALDESC:Полная матрица 28 смен на 7 дней кластера RADRILONIUMA. Операторы: Mini Ghost // Void, Кен, Wanderfate."
    ]

    for s in shifts:
        desc = (
            f"Смена #{s['shift_index']} ({s['time_window']})\\n"
            f"Оператор: {s['assigned_operator']} ({s['operator_handle']})\\n"
            f"Статус: {s['accepted_status']}\\n"
            f"Несущая: {s['resonance']}\\n"
            f"Фокус: {s['focus']}\\n"
            f"Шлюзы: {', '.join(s['primary_conduits'])}"
        )
        lines.extend([
            "BEGIN:VEVENT",
            f"UID:{s['uid']}",
            f"DTSTAMP:{datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')}",
            f"DTSTART:{s['start_utc']}",
            f"DTEND:{s['end_utc']}",
            f"SUMMARY:⚜️ {s['name']} [{s['accepted_status']}]",
            f"DESCRIPTION:{desc}",
            "LOCATION:Командный Штаб TRIANIUMA (DEV_01 Bushmaster)",
            "STATUS:CONFIRMED" if s['accepted_status'] == 'ACCEPTED_YES' else "TENTATIVE",
            "TRANSP:OPAQUE",
            "END:VEVENT"
        ])

    lines.append("END:VCALENDAR")
    return "\r\n".join(lines)


def generate_html_dashboard(shifts: list) -> str:
    vacant_count = sum(1 for s in shifts if s["accepted_status"] == "VACANT")
    accepted_count = sum(1 for s in shifts if s["accepted_status"] == "ACCEPTED_YES")

    rows_html = []
    for s in shifts:
        badge_color = "#22c55e" if s["accepted_status"] == "ACCEPTED_YES" else "#ef4444"
        badge_text = "✅ ПОДТВЕРЖДЕНО (ДА)" if s["accepted_status"] == "ACCEPTED_YES" else "⚠️ ВАКАНТНО (ТРЕБУЕТСЯ ВЫБОР)"
        gcal_url = make_google_calendar_url(s)

        row = f"""
        <tr style="border-bottom: 1px solid #1f2937; background: {'#111827' if s['shift_index'] % 2 == 0 else '#0b0f19'};">
            <td style="padding: 10px; font-weight: bold; color: #60a5fa;">{s['date']}<br><span style="font-size: 11px; color: #9ca3af;">{s['day_of_week']}</span></td>
            <td style="padding: 10px; color: #e5e7eb;"><strong>Смена #{s['shift_index']}</strong><br><span style="font-size: 11px; color: #10b981;">{s['time_window']}</span></td>
            <td style="padding: 10px; color: #f3f4f6;">{s['name']}</td>
            <td style="padding: 10px; color: #fbbf24;">{s['assigned_operator']}<br><span style="font-size: 11px; color: #9ca3af;">{s['operator_handle']}</span></td>
            <td style="padding: 10px;"><span style="display: inline-block; padding: 4px 8px; border-radius: 4px; font-size: 11px; font-weight: bold; background: {badge_color}22; color: {badge_color}; border: 1px solid {badge_color};">{badge_text}</span></td>
            <td style="padding: 10px; text-align: center;"><a href="{gcal_url}" target="_blank" style="display: inline-block; padding: 6px 12px; background: #2563eb; color: #ffffff; text-decoration: none; border-radius: 4px; font-size: 12px; font-weight: bold;">Добавить в Google Календарь</a></td>
        </tr>
        """
        rows_html.append(row)

    html = f"""<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>РАДРИЛОНИУМА • График 7 Дней / 4 Смены по 6 Часов (528 Гц)</title>
    <style>
        body {{ font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #030712; color: #f3f4f6; margin: 0; padding: 24px; }}
        .container {{ max-width: 1300px; margin: 0 auto; background: #111827; border: 1px solid #374151; border-radius: 12px; padding: 24px; box-shadow: 0 10px 25px rgba(0,0,0,0.5); }}
        h1 {{ color: #10b981; font-size: 24px; margin-top: 0; }}
        .stats-grid {{ display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px; }}
        .stat-card {{ background: #1f2937; padding: 16px; border-radius: 8px; border-left: 4px solid #10b981; }}
        .stat-val {{ font-size: 24px; font-weight: bold; color: #ffffff; }}
        .stat-lbl {{ font-size: 12px; color: #9ca3af; text-transform: uppercase; margin-top: 4px; }}
        table {{ width: 100%; border-collapse: collapse; margin-top: 16px; font-size: 13px; }}
        th {{ background: #1f2937; padding: 12px; text-align: left; color: #9ca3af; text-transform: uppercase; font-size: 11px; letter-spacing: 0.05em; }}
    </style>
</head>
<body>
    <div class="container">
        <h1>⚜️ РАДРИЛОНИУМА: Матрица 7 Дней / 4 Смены по 6 Часов (28 Смен)</h1>
        <p style="color: #9ca3af; font-size: 14px;">Непрерывный 24-часовой циркадный цикл (4 смены по 6 часов). Несущая 528 Гц / 432 Гц. Штаб TRIANIUMA.</p>
        
        <div class="stats-grid">
            <div class="stat-card" style="border-left-color: #3b82f6;">
                <div class="stat-val">28</div>
                <div class="stat-lbl">Всего Смен на Неделю</div>
            </div>
            <div class="stat-card" style="border-left-color: #22c55e;">
                <div class="stat-val">{accepted_count}</div>
                <div class="stat-lbl">Подтверждено (Нажали ДА)</div>
            </div>
            <div class="stat-card" style="border-left-color: #ef4444;">
                <div class="stat-val">{vacant_count}</div>
                <div class="stat-lbl">Вакантные Смены (Требуется Выбор)</div>
            </div>
            <div class="stat-card" style="border-left-color: #eab308;">
                <div class="stat-val">3</div>
                <div class="stat-lbl">Ключевых Оператора (Штаб)</div>
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Дата / День</th>
                    <th>Смена / Окно (UTC)</th>
                    <th>Наименование & Задачи</th>
                    <th>Оператор</th>
                    <th>Статус Отметки</th>
                    <th>Действие</th>
                </tr>
            </thead>
            <tbody>
                {''.join(rows_html)}
            </tbody>
        </table>
    </div>
</body>
</html>"""
    return html


def generate_email_dispatch(shifts: list) -> Path:
    """Generates the official RFC-822 requirement email demanding operators choose shifts."""
    vacant_shifts = [s for s in shifts if s["accepted_status"] == "VACANT"]
    accepted_shifts = [s for s in shifts if s["accepted_status"] == "ACCEPTED_YES"]

    msg = EmailMessage()
    msg["Subject"] = f"🚨 ТРЕБОВАНИЕ ШТАБА TRIANIUMA: Выбрать Смены на Неделю (7 Дней, 4 Смены по 6 Часов) [528 Hz]"
    msg["From"] = "halidrad.trianium.marshall@radriloniuma.org"
    msg["To"] = "voroninlosa0@gmail.com, ken.redmi@radriloniuma.org, wanderfate@radriloniuma.org"
    msg["Cc"] = "denua7723@gmail.com, Trianiuma-CORE@outlook.com"
    msg["Date"] = formatdate(localtime=True)
    msg["Message-ID"] = make_msgid(domain="trianiuma.org")

    plain_text = (
        "⚜️ ДИРЕКТИВА ШТАБА TRIANIUMA • ТРЕБОВАНИЕ ВЫБОРА РАБОЧИХ СМЕН ⚜️\n\n"
        "Уважаемые операторы кластера: Mini Ghost // Void, Кен, Wanderfate!\n\n"
        f"В системе сформирован непрерывный график на 7 дней (28 смен по 6 часов).\n"
        f"Текущий статус:\n"
        f"- Подтверждено операторами (нажали ДА): {len(accepted_shifts)} смен.\n"
        f"- Вакантно (требует немедленного распределения): {len(vacant_shifts)} смен.\n\n"
        "ТРЕБОВАНИЕ:\n"
        "Каждому свободному оператору необходимо открыть прикрепленный график или перейти по ссылкам,\n"
        "выбрать удобные окна смен на 7 дней и подтвердить участие нажатием 'Да' в календаре и ответом в Telegram/Gmail.\n\n"
        "Модель смен: 4 смены в сутки по 6 часов (06:00-12:00, 12:00-18:00, 18:00-00:00, 00:00-06:00 UTC).\n"
        "Несущая частота: 528 Гц / 432 Гц.\n"
        "Верховный Маршал Халидрад 🪷"
    )
    msg.set_content(plain_text)

    vacant_table_rows = "".join([
        f"<tr>"
        f"<td style='padding:6px;border:1px solid #374151;'>{s['date']} ({s['day_of_week'][:3]})</td>"
        f"<td style='padding:6px;border:1px solid #374151;'>Смена #{s['shift_index']} ({s['time_window']})</td>"
        f"<td style='padding:6px;border:1px solid #374151;'>{s['name']}</td>"
        f"<td style='padding:6px;border:1px solid #374151;text-align:center;'><a href='{make_google_calendar_url(s)}' style='color:#38bdf8;font-weight:bold;'>[Занять Смену (Да)]</a></td>"
        f"</tr>"
        for s in vacant_shifts[:12]
    ])

    html_content = f"""<html>
<body style="font-family: Arial, sans-serif; background-color: #030712; color: #f3f4f6; padding: 20px;">
    <div style="max-width: 800px; margin: 0 auto; background: #111827; border: 1px solid #374151; border-radius: 8px; padding: 20px;">
        <h2 style="color: #10b981; margin-top: 0;">⚜️ ДИРЕКТИВА ШТАБА TRIANIUMA: ВЫБОР СМЕН НА НЕДЕЛЮ (7 ДНЕЙ)</h2>
        <p><strong>Адресаты:</strong> Mini Ghost // Void (@Karl_Galageer), Кен, Wanderfate</p>
        <p><strong>Несущая частота:</strong> 528 Hz / 432 Hz | <strong>Метаболический пульс:</strong> 60 BPM</p>
        <hr style="border: 0; border-top: 1px solid #374151; margin: 15px 0;">
        <p>Внимание! На неделю с 2026-10-18 по 2026-10-24 сформирована матрица непрерывного дежурства: <strong>28 смен по 6 часов</strong>.</p>
        <p style="color: #ef4444; font-weight: bold;">Обнаружено {len(vacant_shifts)} свободных смен, требующих операторского закрепления.</p>
        
        <table style="width: 100%; border-collapse: collapse; font-size: 12px; margin: 15px 0;">
            <tr style="background: #1f2937; color: #9ca3af;">
                <th style="padding: 6px; border: 1px solid #374151;">Дата</th>
                <th style="padding: 6px; border: 1px solid #374151;">Окно Смены</th>
                <th style="padding: 6px; border: 1px solid #374151;">Направление</th>
                <th style="padding: 6px; border: 1px solid #374151;">Выбор в Календаре</th>
            </tr>
            {vacant_table_rows}
        </table>

        <div style="background: #1f2937; padding: 12px; border-radius: 6px; border-left: 4px solid #38bdf8; margin-top: 15px;">
            <strong>ИНСТРУКЦИЯ ПО ЗАКРЕПЛЕНИЮ СМЕНЫ:</strong>
            <ol style="margin: 5px 0 0 20px; padding: 0;">
                <li>Выберите желаемые окна смен и нажмите <strong>[Занять Смену (Да)]</strong>.</li>
                <li>В открывшемся Google Календаре нажмите <strong>Сохранить</strong> и отметьте статус <strong>"Да" (Принято)</strong>.</li>
                <li>Отправьте подтверждение в Telegram бот <code>@Karl_Galageer</code> или ответным письмом.</li>
                <li>Первый подтвердивший оператор получает приоритетное назначение на сессию SLI Remote Control.</li>
            </ol>
        </div>
        <p style="margin-top: 20px; font-size: 11px; color: #9ca3af;">Скреплено печатью верховного штаба TRIANIUMA • 528 Гц Сольфеджио.</p>
    </div>
</body>
</html>"""
    msg.add_alternative(html_content, subtype="html")

    with open(OUTPUT_EML, "wb") as f:
        f.write(msg.as_bytes())

    return OUTPUT_EML


def generate_telegram_json_dispatch(shifts: list) -> Path:
    """Generates the Telegram message JSON payload for the bot dispatcher."""
    vacant_shifts = [s for s in shifts if s["accepted_status"] == "VACANT"]
    accepted_shifts = [s for s in shifts if s["accepted_status"] == "ACCEPTED_YES"]

    text_msg = (
        "⚜️ *ТРЕБОВАНИЕ ШТАБА TRIANIUMA: ВЫБОР РАБОЧИХ СМЕН НА НЕДЕЛЮ* ⚜️\n\n"
        f"📅 Период: 2026-10-18 — 2026-10-24 (7 дней)\n"
        f"🕒 Модель: 4 смены в сутки по 6 часов (всего 28 смен)\n"
        f"✅ Принято операторами: {len(accepted_shifts)} смен\n"
        f"⚠️ Свободных смен: {len(vacant_shifts)} смен\n\n"
        "*Операторы штаба:*\n"
        "• Mini Ghost // Void (@Karl_Galageer) — 🦣🤺🎒\n"
        "• Кен (@Ken_Redmi_Tech) — 🔧⚡\n"
        "• Wanderfate (@Wanderfate_Astral) — 🌌🔭\n\n"
        "*Инструкция:* Откройте календарь, выберите свои смены на 7 дней и нажмите 'Да'.\n"
        "Оператор, первым закрывший окно смены, получает доступ к сессии /device remote control через QR-код!"
    )

    payload = {
        "event": "OPERATOR_VACANT_SHIFTS_TELEGRAM_DISPATCH",
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "carrier_frequency": "528 Hz",
        "message": text_msg,
        "recipients": ["@Karl_Galageer", "@Ken_Redmi_Tech", "@Wanderfate_Astral"],
        "total_shifts": len(shifts),
        "accepted_count": len(accepted_shifts),
        "vacant_count": len(vacant_shifts),
        "vacant_shifts": [
            {
                "date": s["date"],
                "day": s["day_of_week"],
                "shift": s["shift_index"],
                "time": s["time_window"],
                "focus": s["focus"][:80] + "...",
                "gcal_url": make_google_calendar_url(s)
            }
            for s in vacant_shifts
        ]
    }

    with open(OUTPUT_JSON, "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2, ensure_ascii=False)

    return OUTPUT_JSON


def main():
    print("=" * 70)
    print("⚜️ [SHIFT MATRIX] Generating 7-Day 4-Shift Circadian Schedule (528 Hz)...")
    print("=" * 70)

    shifts = build_7day_schedule()
    ics_content = generate_ics(shifts)
    with open(OUTPUT_ICS, "w", encoding="utf-8") as f:
        f.write(ics_content)
    print(f"✅ [ICS] Saved 28-shift calendar to: {OUTPUT_ICS}")

    html_content = generate_html_dashboard(shifts)
    with open(OUTPUT_HTML, "w", encoding="utf-8") as f:
        f.write(html_content)
    print(f"✅ [HTML] Saved visual schedule dashboard to: {OUTPUT_HTML}")

    eml_path = generate_email_dispatch(shifts)
    print(f"✅ [GMAIL] Generated requirement dispatch email to: {eml_path}")

    json_path = generate_telegram_json_dispatch(shifts)
    print(f"✅ [TELEGRAM] Generated requirement dispatch JSON to: {json_path}")

    # Replicate to Desktop and Setup
    if DESKTOP_DIR.exists():
        shutil.copy2(OUTPUT_HTML, DESKTOP_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.html")
        shutil.copy2(OUTPUT_ICS, DESKTOP_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.ics")
        shutil.copy2(OUTPUT_EML, DESKTOP_DIR / "OPERATOR_VACANT_SHIFTS_DISPATCH.eml")
        print("✅ [REPLICATION] Replicated schedule, ICS, and EML to Windows Desktop.")

    if SETUP_DIR.exists():
        shutil.copy2(OUTPUT_HTML, SETUP_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.html")
        shutil.copy2(OUTPUT_ICS, SETUP_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.ics")
        print("✅ [REPLICATION] Replicated schedule to C:\\setup.")

    try:
        if GDRIVE_DIR.exists():
            shutil.copy2(OUTPUT_HTML, GDRIVE_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.html")
            shutil.copy2(OUTPUT_ICS, GDRIVE_DIR / "RADRILONIUMA_7DAY_4SHIFTS_SCHEDULE.ics")
            shutil.copy2(OUTPUT_EML, GDRIVE_DIR / "OPERATOR_VACANT_SHIFTS_DISPATCH.eml")
            print("✅ [REPLICATION] Replicated schedule to Google Drive mirror.")
    except Exception as e:
        print(f"⚠️ [REPLICATION] Google Drive mirror skipped: {e}")

    # Record telemetry
    with open(TELEMETRY_LOG, "a", encoding="utf-8") as f:
        entry = {
            "timestamp_utc": datetime.now(timezone.utc).isoformat(),
            "event": "SHIFT_SCHEDULE_MATRIX_GENERATED",
            "total_shifts": len(shifts),
            "vacant_count": sum(1 for s in shifts if s["accepted_status"] == "VACANT"),
            "accepted_count": sum(1 for s in shifts if s["accepted_status"] == "ACCEPTED_YES"),
            "resonance": "528 Hz"
        }
        f.write(json.dumps(entry, ensure_ascii=False) + "\n")

    print("\n⚜️ [SHIFT MATRIX] 7-Day 4-Shift Matrix & Operator Dispatch completely ready!")
    print("=" * 70)


if __name__ == "__main__":
    main()
