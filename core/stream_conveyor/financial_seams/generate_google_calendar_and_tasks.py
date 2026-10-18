#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • GOOGLE CALENDAR & GOOGLE TASKS GENERATOR (528 Hz)
================================================================
Generates standard iCalendar (.ics), Google Tasks (JSON/CSV/MD),
and direct 1-click Google Calendar web import URLs for Operator Mini Ghost // Void.

Location: /root/RADRILONIUMA/core/stream_conveyor/financial_seams/generate_google_calendar_and_tasks.py
"""

import os
import sys
import json
import urllib.parse
from pathlib import Path
from datetime import datetime, timezone, timedelta

REPO_ROOT = Path(__file__).resolve().parents[3]
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
SETUP_DIR = Path("/mnt/c/setup")
DESKTOP_DIR = Path("/mnt/c/Users/BushM/Desktop")
OBSIDIAN_INBOX = Path("/mnt/c/Users/BushM/Documents/ObsidianVault/00-Inbox")

OPERATOR_NAME = "Mini Ghost // Void"
OPERATOR_HANDLE = "@Karl_Galageer"
OPERATOR_EMAIL = "voroninlosa0@gmail.com"

# 1. SHIFTS & EVENTS SCHEDULE
EVENTS = [
    {
        "uid": "rad-shift-03-20261018T070000Z@trianiuma.org",
        "title": "⚜️ СМЕНА #3: Прием Штаба & Контроль 8 Финансовых Швов (Mini Ghost // Void)",
        "start": "20261018T070000Z",
        "end": "20261018T150000Z",
        "start_iso": "2026-10-18T07:00:00Z",
        "end_iso": "2026-10-18T15:00:00Z",
        "location": "Командный Штаб Уровень 0 (DEV_01 Bushmaster & RADRILONIUMA Core)",
        "description": (
            "Официальная Смена #3 Оператора Mini Ghost // Void (@Karl_Galageer).\n\n"
            "ПЛАН МЕРОПРИЯТИЙ:\n"
            "1. 07:00 - 08:00: Проверка 8 финансовых институтов (N26, ING, Wise, Mono, Privat, Bybit, Kraken, Trust Wallet).\n"
            "2. 08:00 - 11:00: Мониторинг каскада диска D: (до 98%) и бакетов bucket_001..bucket_021.\n"
            "3. 11:00 - 13:00: Синхронизация 68 органов-авиаторов с GitHub / GitLab.\n"
            "4. 13:00 - 15:00: Аудит холодного сейфа Trust Wallet (70% капитала) и передача статуса.\n\n"
            "Частота: 528 Гц / 432 Гц. Допуск: LEVEL_0_SOVEREIGN_ACCESS."
        )
    },
    {
        "uid": "rad-bday-20261019T000000Z@trianiuma.org",
        "title": "🎂 ДЕНЬ РОЖДЕНИЯ ОПЕРАТОРА ШТАБА: Mini Ghost // Void 🎉🦣🤺🎒",
        "start": "20261019T000000Z",
        "end": "20261019T235959Z",
        "start_iso": "2026-10-19T00:00:00Z",
        "end_iso": "2026-10-19T23:59:59Z",
        "location": "Sovereign Cluster Celebration Grid",
        "description": (
            "Торжественный день рождения старшего оператора штаба Mini Ghost // Void (@Karl_Galageer)!\n\n"
            "Активация праздничного созвучия 528 Гц Сольфеджио.\n"
            "Энтураж и реликвии:\n"
            "• 🦣 Мамонт Времени (Celes Mammoth Guardian)\n"
            "• 🤺 Шпажист Света (Fencing Vanguard Duelist)\n"
            "• 🎒 Суверенный Рюкзак #156,055\n"
            "• 68 MCP Органов-Авиаторов в парадном строю!\n\n"
            "Поздравление от Верховного Маршала Халидрада 🪷"
        )
    },
    {
        "uid": "rad-shift-04-20261019T230000Z@trianiuma.org",
        "title": "🌙 СМЕНА #4: Ночной Дозор Ликвидности & Циркадный Аудит (432 Гц)",
        "start": "20261019T230000Z",
        "end": "20261020T060000Z",
        "start_iso": "2026-10-19T23:00:00Z",
        "end_iso": "2026-10-20T06:00:00Z",
        "location": "Командный Штаб Уровень 0 (DEV_05 Swarm Matrix / 432 Гц)",
        "description": (
            "Ночная циркадная смена оператора Mini Ghost // Void.\n"
            "Задачи:\n"
            "• Ночной аудит P2P гривны (Монобанк / ПриватБанк).\n"
            "• Сверка балансов SEPA Instant (N26 / ING / Kraken).\n"
            "• Поддержание сердечного ритма автопилота 60 BPM на частоте 432 Гц.\n"
            "• Подготовка суточного дашборда для Верховного Командования."
        )
    }
]

# 2. GOOGLE TASKS BREAKDOWN
TASKS = [
    {
        "id": "GTASK_01",
        "category": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Проверить статус 8 финансовых швов (N26, ING, Wise, Mono, Privat, Bybit, Kraken, Trust Wallet)",
        "due": "2026-10-18T08:00:00Z",
        "priority": "HIGH",
        "notes": "Команда: python3 operator_financial_seams_engine.py --status. Проверить распределение ликвидности: 70% Trust Wallet, 30% ING, 15% N26, 10% Wise, 10% Mono, 5% Privat."
    },
    {
        "id": "GTASK_02",
        "category": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Запустить монитор LIVE_DRIVE_SPACE_HUD.cmd на Рабочем столе",
        "due": "2026-10-18T08:30:00Z",
        "priority": "HIGH",
        "notes": "Убедиться, что Проводник Windows работает без зависаний, а диск D: отображает точные 307.39 GB свободного места в бакетах bucket_001..bucket_021."
    },
    {
        "id": "GTASK_03",
        "category": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Верифицировать холодное хранение Trust Wallet и изоляцию Seed-фразы",
        "due": "2026-10-18T09:00:00Z",
        "priority": "HIGH",
        "notes": "Seed-фраза должна находиться исключительно оффлайн на DEV_04_SAMSUNG_T7_VAULT в зашифрованном виде. Никаких фото и облачных копий."
    },
    {
        "id": "GTASK_04",
        "category": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Контроль заполнения диска D: до 98% с каскадом на диск E:",
        "due": "2026-10-18T11:00:00Z",
        "priority": "MEDIUM",
        "notes": "Следить за потоковым загрузчиком. При достижении 98% на томе D: каскад автоматически переключается на E:\\RADRILONIUMA_DATA_BASE_SEGMENTS."
    },
    {
        "id": "GTASK_05",
        "category": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Ревизия P2P правил на Bybit: проверка мерчантов PRO (рейтинг >= 99%)",
        "due": "2026-10-18T12:00:00Z",
        "priority": "MEDIUM",
        "notes": "При сделках UAH ↔ USDT отклонять любые переводы от третьих лиц. Совпадение ФИО на бирже и в банке строго обязательно."
    },
    {
        "id": "GTASK_06",
        "category": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Контроль лимитов Монобанка (до 150k грн/мес) и ПриватБанка (до 45k за транш)",
        "due": "2026-10-18T13:00:00Z",
        "priority": "MEDIUM",
        "notes": "Соблюдать пороговые ограничения НБУ по безналичным расчетам. Крупные входящие проводить через ФОП 3-й группы."
    },
    {
        "id": "GTASK_07",
        "category": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Соблюдение чистоты назначений в Wise (нейтральные формулировки)",
        "due": "2026-10-18T14:00:00Z",
        "priority": "MEDIUM",
        "notes": "Запрещено связывать Wise с криптобиржами напрямую. Переводы только N26/ING ↔ Wise с назначением 'Personal Transfer' / 'Software Services'."
    },
    {
        "id": "GTASK_08",
        "category": "🪷 P2_СТРАТЕГИЧЕСКИЕ_МЕРОПРИЯТИЯ",
        "title": "Открыть официальное письмо Маршала Халидрада на voroninlosa0@gmail.com",
        "due": "2026-10-18T15:00:00Z",
        "priority": "LOW",
        "notes": "Файл HALIDRAD_MARSHALL_EMAIL_DISPATCH.eml на Рабочем столе. Ознакомиться с полным реестром открытых директорий всех 5 узлов."
    },
    {
        "id": "GTASK_09",
        "category": "🪷 P2_СТРАТЕГИЧЕСКИЕ_МЕРОПРИЯТИЯ",
        "title": "Протестировать запуск Telegram-бота оператора (mini_ghost_void_bot.py)",
        "due": "2026-10-18T16:00:00Z",
        "priority": "LOW",
        "notes": "Проверить отклик команд /start, /seams, /drives в логе chronolog/mini_ghost_bot_telemetry.jsonl."
    },
    {
        "id": "GTASK_10",
        "category": "🪷 P2_СТРАТЕГИЧЕСКИЕ_МЕРОПРИЯТИЯ",
        "title": "19 Октября: Активация торжественного протокола Дня Рождения Mini Ghost // Void",
        "due": "2026-10-19T00:00:00Z",
        "priority": "MEDIUM",
        "notes": "День рождения оператора @Karl_Galageer! Парад 68 MCP органов-авиаторов, приветствие тотема Мамонта 🦣 и Шпажиста 🤺."
    }
]


def generate_ics_file() -> Path:
    now_ics = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    lines = [
        "BEGIN:VCALENDAR",
        "VERSION:2.0",
        "PRODID:-//RADRILONIUMA SOVEREIGN HIGH COMMAND//OPERATOR SHIFTS 528 HZ//RU",
        "CALSCALE:GREGORIAN",
        "METHOD:PUBLISH",
        "X-WR-CALNAME:РАДРИЛОНИУМА: График Смен & Мероприятий (Mini Ghost // Void)",
        "X-WR-TIMEZONE:UTC",
        "X-WR-CALDESC:График смен, дежурств и финансовых швов Оператора Штаба Mini Ghost // Void (@Karl_Galageer)"
    ]

    for ev in EVENTS:
        desc_escaped = ev["description"].replace("\n", "\\n").replace(",", "\\,")
        title_escaped = ev["title"].replace(",", "\\,")
        loc_escaped = ev["location"].replace(",", "\\,")

        lines.extend([
            "BEGIN:VEVENT",
            f"UID:{ev['uid']}",
            f"DTSTAMP:{now_ics}",
            f"DTSTART:{ev['start']}",
            f"DTEND:{ev['end']}",
            f"SUMMARY:{title_escaped}",
            f"LOCATION:{loc_escaped}",
            f"DESCRIPTION:{desc_escaped}",
            "STATUS:CONFIRMED",
            "CLASS:PUBLIC",
            "BEGIN:VALARM",
            "ACTION:DISPLAY",
            "DESCRIPTION:Напоминание о смене RADRILONIUMA",
            "TRIGGER:-PT15M",
            "END:VALARM",
            "END:VEVENT"
        ])

    lines.append("END:VCALENDAR")
    content = "\r\n".join(lines) + "\r\n"

    target_paths = [
        SETUP_DIR / "RADRILONIUMA_SHIFTS_GCALENDAR.ics",
        CHRONOLOG_DIR / "RADRILONIUMA_SHIFTS_GCALENDAR.ics",
        DESKTOP_DIR / "ADD_SHIFTS_TO_GOOGLE_CALENDAR.ics"
    ]

    for p in target_paths:
        try:
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text(content, encoding="utf-8")
        except Exception:
            pass

    return target_paths[0]


def generate_direct_gcal_html() -> Path:
    html_lines = [
        "<!DOCTYPE html>",
        "<html lang='ru'>",
        "<head>",
        "  <meta charset='UTF-8'>",
        "  <title>Google Calendar & Google Tasks • Mini Ghost // Void</title>",
        "  <style>",
        "    body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; background: #0b0f19; color: #e2e8f0; padding: 30px; line-height: 1.6; }",
        "    .card { background: #131b2e; border: 1px solid #1e293b; border-radius: 12px; padding: 24px; margin-bottom: 24px; box-shadow: 0 4px 12px rgba(0,0,0,0.5); }",
        "    h1, h2, h3 { color: #f59e0b; margin-top: 0; }",
        "    .btn { display: inline-block; background: #3b82f6; color: #fff; text-decoration: none; padding: 10px 18px; border-radius: 8px; font-weight: bold; margin-top: 10px; transition: 0.2s; }",
        "    .btn:hover { background: #2563eb; }",
        "    .btn-green { background: #10b981; }",
        "    .btn-green:hover { background: #059669; }",
        "    .task-item { border-left: 3px solid #38bdf8; padding-left: 12px; margin-bottom: 12px; }",
        "    .tag { display: inline-block; background: #1e293b; color: #38bdf8; padding: 2px 8px; border-radius: 4px; font-size: 12px; margin-right: 6px; }",
        "    .badge { color: #f59e0b; font-weight: bold; }",
        "  </style>",
        "</head>",
        "<body>",
        "  <h1>⚜️ РАДРИЛОНИУМА • ГРАФИК СМЕН И GOOGLE ЗАДАЧИ</h1>",
        "  <p>Оператор Штаба: <span class='badge'>Mini Ghost // Void (@Karl_Galageer)</span> | Несущая: 528 Гц / 432 Гц | Допуск: LEVEL_0</p>",
        "  <p>Все мероприятия можно добавить в свой Google Календарь в 1 клик:</p>"
    ]

    for ev in EVENTS:
        # Build Google Calendar Template URL
        params = {
            "action": "TEMPLATE",
            "text": ev["title"],
            "dates": f"{ev['start']}/{ev['end']}",
            "details": ev["description"],
            "location": ev["location"]
        }
        gcal_url = "https://calendar.google.com/calendar/render?" + urllib.parse.urlencode(params)

        html_lines.extend([
            "  <div class='card'>",
            f"    <h3>{ev['title']}</h3>",
            f"    <p><b>⏱️ Время (UTC):</b> {ev['start_iso']} — {ev['end_iso']}</p>",
            f"    <p><b>📍 Локация:</b> {ev['location']}</p>",
            f"    <p style='white-space: pre-line; color: #94a3b8;'>{ev['description']}</p>",
            f"    <a class='btn btn-green' href='{gcal_url}' target='_blank'>📅 Добавить это событие в Google Календарь в 1 клик</a>",
            "  </div>"
        ])

    html_lines.extend([
        "  <h2>📋 РАСПРЕДЕЛЕННЫЕ GOOGLE ЗАДАЧИ (10 ШТ)</h2>",
        "  <div class='card'>"
    ])

    for t in TASKS:
        html_lines.extend([
            "    <div class='task-item'>",
            f"      <span class='tag'>{t['category']}</span> <b>{t['title']}</b><br/>",
            f"      <small style='color: #64748b;'>Срок: {t['due']} | Приоритет: {t['priority']}</small><br/>",
            f"      <span style='color: #cbd5e1;'>{t['notes']}</span>",
            "    </div>"
        ])

    html_lines.extend([
        "  </div>",
        "</body>",
        "</html>"
    ])

    html_content = "\n".join(html_lines)

    target_paths = [
        SETUP_DIR / "GOOGLE_CALENDAR_DIRECT_LINKS.html",
        CHRONOLOG_DIR / "GOOGLE_CALENDAR_DIRECT_LINKS.html",
        DESKTOP_DIR / "OPEN_GOOGLE_CALENDAR_EVENTS.html"
    ]

    for p in target_paths:
        try:
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text(html_content, encoding="utf-8")
        except Exception:
            pass

    return target_paths[0]


def generate_tasks_files():
    # 1. JSON
    tasks_json_path = SETUP_DIR / "GOOGLE_TASKS_DISTRIBUTION.json"
    with open(tasks_json_path, "w", encoding="utf-8") as f:
        json.dump({"operator": OPERATOR_NAME, "telegram": OPERATOR_HANDLE, "tasks": TASKS}, f, indent=2, ensure_ascii=False)

    # 2. Markdown checklist for Obsidian
    md_lines = [
        f"# 📋 РАСПРЕДЕЛЕНИЕ GOOGLE ЗАДАЧ: {OPERATOR_NAME} ({OPERATOR_HANDLE})",
        "",
        f"> **Оператор:** `{OPERATOR_NAME}` | **Email:** `{OPERATOR_EMAIL}` | **Частота:** `528 Гц`",
        f"> **Дата генерации:** `{datetime.now(timezone.utc).isoformat()}`",
        "",
        "## 🚨 1. P0 Критические задачи смены (Immediate Action)",
        ""
    ]

    current_cat = ""
    for t in TASKS:
        cat = t["category"]
        if cat != current_cat:
            current_cat = cat
            md_lines.append(f"### {cat}\n")
        md_lines.append(f"- [ ] **{t['title']}**")
        md_lines.append(f"  - **Срок выполнения:** `{t['due']}` | **Приоритет:** `{t['priority']}`")
        md_lines.append(f"  - *Инструкция:* {t['notes']}\n")

    md_content = "\n".join(md_lines)

    obsidian_path = OBSIDIAN_INBOX / "GOOGLE_TASKS_SCHEDULE.md"
    desktop_md = DESKTOP_DIR / "GOOGLE_TASKS_CHECKLIST.md"
    setup_md = SETUP_DIR / "GOOGLE_TASKS_SCHEDULE.md"

    for p in [obsidian_path, desktop_md, setup_md]:
        try:
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text(md_content, encoding="utf-8")
        except Exception:
            pass


if __name__ == "__main__":
    ics = generate_ics_file()
    print(f"✅ Generated iCalendar (.ics): {ics}")
    html = generate_direct_gcal_html()
    print(f"✅ Generated Direct Google Calendar HTML: {html}")
    generate_tasks_files()
    print("✅ Generated Google Tasks (JSON, Markdown in Obsidian & Desktop)")
