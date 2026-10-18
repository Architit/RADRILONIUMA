#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • GOOGLE CALENDAR & GOOGLE TASKS GENERATOR (528 Hz)
================================================================
Generates standard iCalendar (.ics), Google Tasks (JSON/CSV/MD),
and direct 1-click Google Calendar web import URLs for Operator Mini Ghost // Void.
Updated with:
- 4 Circadian Shifts of 6 Hours Each (24-Hour Continuous Cycle)
- 13 Financial & Corporate Seams (Stripe, KvK, PayPal, Visa, Mastercard, N26, ING, etc.)
- Birthday Celebration Event (19 October)
- Structured Google Tasks Distribution across P0, P1, and P2 tiers.

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

# 1. 4 CIRCADIAN SHIFTS OF 6 HOURS + BIRTHDAY EVENT
EVENTS = [
    {
        "uid": "rad-shift-01-20261018T060000Z@trianiuma.org",
        "title": "🌅 СМЕНА #1 (06:00-12:00 UTC): Утренняя Заря & Открытие Банковских Коридоров ЕС",
        "start": "20261018T060000Z",
        "end": "20261018T120000Z",
        "start_iso": "2026-10-18T06:00:00Z",
        "end_iso": "2026-10-18T12:00:00Z",
        "location": "Командный Штаб Уровень 0 (DEV_01 Bushmaster & RADRILONIUMA Core)",
        "description": (
            "СМЕНА 1: Утренняя Заря (Morning Ingress & EU Banking)\n"
            "Оператор: Mini Ghost // Void (@Karl_Galageer) | 528 Гц\n\n"
            "ПЛАН МЕРОПРИЯТИЙ:\n"
            "1. 06:00 - 08:00: Открытие банковских коридоров ЕС (ING Bank N.V., N26 Bank, Wise).\n"
            "2. 08:00 - 10:00: Проверка юридического статуса KvK (Kamer van Koophandel) и BTW/VAT ID.\n"
            "3. 10:00 - 12:00: Мониторинг бакетов диска D: (bucket_001..bucket_021) и утренний клиринг SEPA Instant.\n\n"
            "Частота: 528 Гц. Допуск: LEVEL_0_SOVEREIGN_ACCESS."
        )
    },
    {
        "uid": "rad-shift-02-20261018T120000Z@trianiuma.org",
        "title": "☀️ СМЕНА #2 (12:00-18:00 UTC): Дневной Зенит & Эквайринг (Stripe, PayPal, Visa, Mastercard)",
        "start": "20261018T120000Z",
        "end": "20261018T180000Z",
        "start_iso": "2026-10-18T12:00:00Z",
        "end_iso": "2026-10-18T18:00:00Z",
        "location": "Командный Штаб Уровень 0 (DEV_01 Bushmaster & RADRILONIUMA Core)",
        "description": (
            "СМЕНА 2: Дневной Зенит (Meridian Acquiring & Retail Rails)\n"
            "Оператор: Mini Ghost // Void (@Karl_Galageer) | 528 Гц\n\n"
            "ПЛАН МЕРОПРИЯТИЙ:\n"
            "1. 12:00 - 14:00: Мониторинг эквайринга Stripe и PayPal (роллинг-выплаты на ING Corporate IBAN).\n"
            "2. 14:00 - 16:00: Контроль card rails (Visa Direct & Mastercard Send push-to-card выплаты).\n"
            "3. 16:00 - 18:00: Украинский розничный клиринг: Монобанк (до 150k грн/мес), ПриватБанк (дробление до 45k).\n\n"
            "Частота: 528 Гц. Допуск: LEVEL_0_SOVEREIGN_ACCESS."
        )
    },
    {
        "uid": "rad-shift-03-20261018T180000Z@trianiuma.org",
        "title": "🌆 СМЕНА #3 (18:00-00:00 UTC): Вечерний Дозор Ликвидности & Сейф Trust Wallet",
        "start": "20261018T180000Z",
        "end": "20261019T000000Z",
        "start_iso": "2026-10-18T18:00:00Z",
        "end_iso": "2026-10-19T00:00:00Z",
        "location": "Командный Штаб Уровень 0 (DEV_01 Bushmaster & RADRILONIUMA Core)",
        "description": (
            "СМЕНА 3: Вечерний Дозор Ликвидности (Sunset Liquidity Guard & Cold Vault)\n"
            "Оператор: Mini Ghost // Void (@Karl_Galageer) | 528 Гц\n\n"
            "ПЛАН МЕРОПРИЯТИЙ:\n"
            "1. 18:00 - 20:00: Биржевой мост Kraken Pro EUR -> Спот криптоактивы (BTC/ETH/USDT).\n"
            "2. 20:00 - 22:00: P2P ликвидность на Bybit (сделки строго с PRO-мерчантами >= 99%).\n"
            "3. 22:00 - 00:00: Перевод свободной ликвидности в Trust Wallet (70% в холодном хранилище).\n\n"
            "Частота: 528 Гц. Допуск: LEVEL_0_SOVEREIGN_ACCESS."
        )
    },
    {
        "uid": "rad-shift-04-20261019T000000Z@trianiuma.org",
        "title": "🌙 СМЕНА #4 (00:00-06:00 UTC): Ночной Страж & Циркадный Автопилот (432 Гц)",
        "start": "20261019T000000Z",
        "end": "20261019T060000Z",
        "start_iso": "2026-10-19T00:00:00Z",
        "end_iso": "2026-10-19T06:00:00Z",
        "location": "Командный Штаб Уровень 0 (DEV_05 Swarm Matrix / 432 Гц)",
        "description": (
            "СМЕНА 4: Ночной Страж (Deep Night Circadian 432 Hz)\n"
            "Оператор: Mini Ghost // Void (@Karl_Galageer) | 432 Гц\n\n"
            "ПЛАН МЕРОПРИЯТИЙ:\n"
            "1. 00:00 - 02:00: Контроль сердечного ритма кластера 60 BPM на несущей 432 Гц.\n"
            "2. 02:00 - 04:00: Проверка дисковых кэшей и дефрагментация бакетов дисков D: и E:.\n"
            "3. 04:00 - 06:00: Защита холодного хранилища DEV_04 T7 Vault и передача смены на Смену #1.\n\n"
            "Частота: 432 Гц. Допуск: LEVEL_0_SOVEREIGN_ACCESS."
        )
    },
    {
        "uid": "rad-bday-20261019T000000Z@trianiuma.org",
        "title": "🎂 ДЕНЬ РОЖДЕНИЯ ОПЕРАТОРА ШТАБА: Mini Ghost // Void 🎉🦣🤺🎒",
        "start": "20261019T000000Z",
        "end": "20261019T235959Z",
        "start_iso": "2026-10-19T00:00:00Z",
        "end_iso": "2026-10-19T235959Z",
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
    }
]

# 2. STRUCTURED GOOGLE TASKS (14 TASKS ACROSS 4 SHIFTS)
TASKS = [
    # P0 Critical (Immediate)
    {
        "id": "TASK_01_SEAMS_STATUS",
        "list": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Проверить статус 13 финансовых и корпоративных швов",
        "notes": "Команда: python3 operator_financial_seams_engine.py --status. Проверить распределение ликвидности: 70% Trust Wallet, 30% ING, 15% N26, 10% Wise, 10% Mono, 5% Privat, 5% Stripe, 5% PayPal.",
        "due": "2026-10-18T07:00:00Z",
        "priority": "HIGH"
    },
    {
        "id": "TASK_02_KVK_CORPORATE_SPINE",
        "list": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Верифицировать корпоративную привязку KvK (Нидерланды) к ING и Stripe",
        "notes": "Проверить актуальность KvK-номера, BTW-ID (VAT) и UBO-регистрации для корпоративного счета ING Bank N.V. и шлюза Stripe Payments.",
        "due": "2026-10-18T08:00:00Z",
        "priority": "HIGH"
    },
    {
        "id": "TASK_03_STRIPE_PAYPAL_ACQUIRING",
        "list": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Проверить эквайринг Stripe и PayPal (роллинг-выплаты и Stripe Radar)",
        "notes": "Настроить автоматический вывод (2-day rolling payout) со Stripe на ING Corporate IBAN. Контролировать уровень споров Stripe Radar < 0.75%.",
        "due": "2026-10-18T08:30:00Z",
        "priority": "HIGH"
    },
    {
        "id": "TASK_04_DRIVE_SPACE_HUD",
        "list": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Запустить монитор LIVE_DRIVE_SPACE_HUD.cmd на Рабочем столе",
        "notes": "Убедиться, что Проводник Windows работает без зависаний, а диск D: отображает точные 307.39 GB свободного места в бакетах bucket_001..bucket_021.",
        "due": "2026-10-18T09:00:00Z",
        "priority": "HIGH"
    },
    {
        "id": "TASK_05_TRUST_WALLET_COLD",
        "list": "🚨 P0_КРИТИЧЕСКИЕ_ЗАДАЧИ_СМЕНЫ",
        "title": "Верифицировать холодное хранение Trust Wallet и изоляцию Seed-фразы",
        "notes": "Seed-фраза должна находиться исключительно оффлайн на DEV_04_SAMSUNG_T7_VAULT в зашифрованном виде. Никаких фото и облачных копий.",
        "due": "2026-10-18T09:30:00Z",
        "priority": "HIGH"
    },

    # P1 Operational (Daily Routing)
    {
        "id": "TASK_06_CARD_NETWORK_RAILS",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Контроль card rails: Visa Direct и Mastercard Send для мгновенных выплат",
        "notes": "Проверить работу моментальных выплат (push-to-card < 30 сек) на карты Wise Visa, Monobank Mastercard и Bybit Card.",
        "due": "2026-10-18T13:00:00Z",
        "priority": "MEDIUM"
    },
    {
        "id": "TASK_07_ING_N26_CLEARING",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Контроль европейского фиата: ING Bank (якорь 30%) и N26 (буфер 15%)",
        "notes": "Проверить балансы SEPA Instant, отсутствие несогласованных запросов финмониторинга, регламент Same-Name Transfers.",
        "due": "2026-10-18T14:00:00Z",
        "priority": "MEDIUM"
    },
    {
        "id": "TASK_08_DRIVE_CASCADE_98",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Контроль заполнения диска D: до 98% с каскадом на диск E:",
        "notes": "Следить за потоковым загрузчиком. При достижении 98% на томе D: каскад автоматически переключается на E:\\RADRILONIUMA_DATA_BASE_SEGMENTS.",
        "due": "2026-10-18T15:00:00Z",
        "priority": "MEDIUM"
    },
    {
        "id": "TASK_09_BYBIT_P2P_RULES",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Ревизия P2P правил на Bybit: проверка мерчантов PRO (рейтинг >= 99%)",
        "notes": "При сделках UAH ↔ USDT отклонять любые переводы от третьих лиц. Совпадение ФИО на бирже и в банке строго обязательно.",
        "due": "2026-10-18T16:00:00Z",
        "priority": "MEDIUM"
    },
    {
        "id": "TASK_10_MONO_PRIVAT_LIMITS",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Контроль лимитов Монобанка (до 150k грн/мес) и ПриватБанка (до 45k за транш)",
        "notes": "Соблюдать пороговые ограничения НБУ по безналичным расчетам. Крупные входящие проводить через ФОП 3-й группы.",
        "due": "2026-10-18T17:00:00Z",
        "priority": "MEDIUM"
    },
    {
        "id": "TASK_11_WISE_CLEAN_REMITTANCE",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Соблюдение чистоты назначений в Wise (нейтральные формулировки)",
        "notes": "Запрещено связывать Wise с криптобиржами напрямую. Переводы только N26/ING ↔ Wise с назначением 'Personal Transfer' / 'Software Services'.",
        "due": "2026-10-18T18:00:00Z",
        "priority": "MEDIUM"
    },
    {
        "id": "TASK_12_KRAKEN_INSTITUTIONAL",
        "list": "⚙️ P1_ОПЕРАЦИОННАЯ_ДЕЯТЕЛЬНОСТЬ",
        "title": "Вечерний клиринг Kraken Pro EUR -> Спот криптоактивы и Trust Wallet",
        "notes": "Провести плановую конвертацию EUR в USDT/BTC/ETH и немедленный вывод в Trust Wallet. Нулевой остаток на бирже на ночь.",
        "due": "2026-10-18T20:00:00Z",
        "priority": "MEDIUM"
    },

    # P2 Strategic & Celebration
    {
        "id": "TASK_13_HALIDRAD_EMAIL",
        "list": "🪷 P2_СТРАТЕГИЧЕСКИЕ_МЕРОПРИЯТИЯ",
        "title": "Открыть официальное письмо Маршала Халидрада на voroninlosa0@gmail.com",
        "notes": "Файл HALIDRAD_MARSHALL_EMAIL_DISPATCH.eml на Рабочем столе. Ознакомиться с полным реестром открытых директорий всех 5 узлов.",
        "due": "2026-10-18T21:00:00Z",
        "priority": "LOW"
    },
    {
        "id": "TASK_14_BOT_TESTING",
        "list": "🪷 P2_СТРАТЕГИЧЕСКИЕ_МЕРОПРИЯТИЯ",
        "title": "Протестировать запуск Telegram-бота оператора (mini_ghost_void_bot.py)",
        "notes": "Проверить отклик команд /status, /seams, /shifts, /drives в логе chronolog/mini_ghost_bot_telemetry.jsonl.",
        "due": "2026-10-18T22:00:00Z",
        "priority": "LOW"
    },
    {
        "id": "TASK_15_BIRTHDAY_PROTOCOL",
        "list": "🪷 P2_СТРАТЕГИЧЕСКИЕ_МЕРОПРИЯТИЯ",
        "title": "19 Октября: Активация торжественного протокола Дня Рождения Mini Ghost // Void",
        "notes": "День рождения оператора @Karl_Galageer! Парад 68 MCP органов-авиаторов, приветствие тотема Мамонта 🦣 и Шпажиста 🤺.",
        "due": "2026-10-19T00:00:00Z",
        "priority": "HIGH"
    }
]


def make_google_calendar_url(event: dict) -> str:
    base = "https://calendar.google.com/calendar/render"
    params = {
        "action": "TEMPLATE",
        "text": event["title"],
        "dates": f"{event['start']}/{event['end']}",
        "details": event["description"],
        "location": event["location"]
    }
    return f"{base}?{urllib.parse.urlencode(params)}"


def generate_ics(events: list) -> str:
    lines = [
        "BEGIN:VCALENDAR",
        "VERSION:2.0",
        "PRODID:-//RADRILONIUMA//Sovereign Operator Shift Roster//RU",
        "CALSCALE:GREGORIAN",
        "METHOD:PUBLISH",
        "X-WR-CALNAME:РАДРИЛОНИУМА: График 4 Смен по 6 Часов (Mini Ghost // Void)",
        "X-WR-TIMEZONE:UTC",
        "X-WR-CALDESC:График непрерывного циркадного дежурства (4 смены по 6 часов) и контроль 13 финансовых швов кластера RADRILONIUMA."
    ]

    for ev in events:
        desc_escaped = ev['description'].replace('\n', '\\n')
        lines.extend([
            "BEGIN:VEVENT",
            f"UID:{ev['uid']}",
            f"DTSTAMP:{datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')}",
            f"DTSTART:{ev['start']}",
            f"DTEND:{ev['end']}",
            f"SUMMARY:{ev['title']}",
            f"DESCRIPTION:{desc_escaped}",
            f"LOCATION:{ev['location']}",
            "STATUS:CONFIRMED",
            "TRANSP:OPAQUE",
            "END:VEVENT"
        ])

    lines.append("END:VCALENDAR")
    return "\r\n".join(lines)


def generate_html_preview(events: list, tasks: list) -> str:
    cards = []
    for ev in events:
        url = make_google_calendar_url(ev)
        cards.append(f"""  <div class='card'>
    <h3>{ev['title']}</h3>
    <p><b>⏱️ Время (UTC):</b> {ev['start_iso']} — {ev['end_iso']}</p>
    <p><b>📍 Локация:</b> {ev['location']}</p>
    <p style='white-space: pre-line; color: #94a3b8;'>{ev['description']}</p>
    <a class='btn btn-green' href='{url}' target='_blank'>📅 Добавить это событие в Google Календарь в 1 клик</a>
  </div>""")

    task_cards = []
    for t in tasks:
        p_color = "#ef4444" if t["priority"] == "HIGH" else "#f59e0b" if t["priority"] == "MEDIUM" else "#10b981"
        task_cards.append(f"""    <div class='task-item'>
      <span class='tag'>{t['list']}</span> <b>{t['title']}</b><br/>
      <small style='color: #64748b;'>Срок: {t['due']} | Приоритет: <span style='color:{p_color}'>{t['priority']}</span></small><br/>
      <span style='color: #cbd5e1;'>{t['notes']}</span>
    </div>""")

    html = f"""<!DOCTYPE html>
<html lang='ru'>
<head>
  <meta charset='UTF-8'>
  <title>Google Calendar & Google Tasks • Mini Ghost // Void (4 смены по 6 часов)</title>
  <style>
    body {{ font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; background: #0b0f19; color: #e2e8f0; padding: 30px; line-height: 1.6; max-width: 1000px; margin: 0 auto; }}
    .card {{ background: #131b2e; border: 1px solid #1e293b; border-radius: 12px; padding: 24px; margin-bottom: 24px; box-shadow: 0 4px 12px rgba(0,0,0,0.5); }}
    h1, h2, h3 {{ color: #f59e0b; margin-top: 0; }}
    .btn {{ display: inline-block; background: #3b82f6; color: #fff; text-decoration: none; padding: 10px 18px; border-radius: 8px; font-weight: bold; margin-top: 10px; transition: 0.2s; }}
    .btn:hover {{ background: #2563eb; }}
    .btn-green {{ background: #10b981; }}
    .btn-green:hover {{ background: #059669; }}
    .task-item {{ border-left: 3px solid #38bdf8; padding-left: 12px; margin-bottom: 14px; background: rgba(30, 41, 59, 0.4); padding: 10px 14px; border-radius: 0 8px 8px 0; }}
    .tag {{ display: inline-block; background: #1e293b; color: #38bdf8; padding: 2px 8px; border-radius: 4px; font-size: 12px; margin-right: 6px; font-weight: bold; }}
    .badge {{ color: #f59e0b; font-weight: bold; }}
    .header-box {{ border-bottom: 2px solid #334155; padding-bottom: 16px; margin-bottom: 24px; }}
  </style>
</head>
<body>
  <div class='header-box'>
    <h1>⚜️ РАДРИЛОНИУМА • ЦИРКАДНЫЙ ГРАФИК: 4 СМЕНЫ ПО 6 ЧАСОВ</h1>
    <p>Оператор Штаба: <span class='badge'>Mini Ghost // Void ({OPERATOR_HANDLE})</span> | Email: <span class='badge'>{OPERATOR_EMAIL}</span></p>
    <p>Контроль: <span class='badge'>13 Финансовых и Корпоративных Швов</span> (+Stripe, +KvK, +PayPal, +Visa, +Mastercard) | Несущая: 528 Гц / 432 Гц</p>
  </div>

  <h2>📅 1. ГРАФИК СМЕН И МЕРОПРИЯТИЙ (ДОБАВИТЬ В GOOGLE CALENDAR В 1 КЛИК)</h2>
  {"".join(cards)}

  <h2>📋 2. РАСПРЕДЕЛЕННЫЕ GOOGLE ЗАДАЧИ ({len(tasks)} ЗАДАЧ)</h2>
  <div class='card'>
    {"".join(task_cards)}
  </div>
</body>
</html>"""
    return html


def generate_markdown_tasks(tasks: list) -> str:
    md = [
        f"# 📋 РАСПРЕДЕЛЕНИЕ GOOGLE ЗАДАЧ: {OPERATOR_NAME} ({OPERATOR_HANDLE})",
        "",
        f"> **Оператор:** `{OPERATOR_NAME}` | **Email:** `{OPERATOR_EMAIL}` | **Частота:** `528 Гц`",
        f"> **Модель графика:** `4 смены по 6 часов (24 часа)` | **Швы:** `13 институтов (+Stripe, +KvK, +PayPal, +Visa, +Mastercard)`",
        f"> **Дата генерации:** `{datetime.now(timezone.utc).isoformat()}`",
        "",
        "## 🚨 1. P0 Критические задачи смены (Immediate Action)",
        ""
    ]

    current_list = ""
    for t in tasks:
        if t["list"] != current_list:
            current_list = t["list"]
            md.append(f"\n### {current_list}\n")

        p_mark = "HIGH" if t["priority"] == "HIGH" else "MEDIUM" if t["priority"] == "MEDIUM" else "LOW"
        md.append(f"- [ ] **{t['title']}**")
        md.append(f"  - **Срок выполнения:** `{t['due']}` | **Приоритет:** `{p_mark}`")
        md.append(f"  - *Инструкция:* {t['notes']}\n")

    return "\n".join(md)


def main():
    print("⚜️ Generating Google Calendar (.ics) and Tasks for Mini Ghost // Void (4x6h Shifts)...")

    # 1. Generate ICS content
    ics_content = generate_ics(EVENTS)

    # 2. Generate HTML preview with 1-click Google Calendar links
    html_content = generate_html_preview(EVENTS, TASKS)

    # 3. Generate Markdown tasks checklist
    md_tasks = generate_markdown_tasks(TASKS)

    # 4. Generate JSON tasks
    json_tasks = json.dumps({
        "operator": OPERATOR_NAME,
        "email": OPERATOR_EMAIL,
        "shift_model": "4_SHIFTS_X_6_HOURS",
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "tasks": TASKS,
        "events": EVENTS
    }, indent=2, ensure_ascii=False)

    # Write files to C:\setup and Desktop and Chronolog
    targets = [
        (SETUP_DIR / "RADRILONIUMA_SHIFTS_GCALENDAR.ics", ics_content),
        (SETUP_DIR / "GOOGLE_CALENDAR_DIRECT_LINKS.html", html_content),
        (DESKTOP_DIR / "ADD_SHIFTS_TO_GOOGLE_CALENDAR.ics", ics_content),
        (DESKTOP_DIR / "OPEN_GOOGLE_CALENDAR_EVENTS.html", html_content),
        (DESKTOP_DIR / "GOOGLE_TASKS_CHECKLIST.md", md_tasks),
        (OBSIDIAN_INBOX / "GOOGLE_TASKS_SCHEDULE.md", md_tasks),
        (CHRONOLOG_DIR / "RADRILONIUMA_SHIFTS_GCALENDAR.ics", ics_content),
        (CHRONOLOG_DIR / "GOOGLE_CALENDAR_DIRECT_LINKS.html", html_content),
        (CHRONOLOG_DIR / "GOOGLE_TASKS_DISTRIBUTION.json", json_tasks)
    ]

    for p, content in targets:
        try:
            p.parent.mkdir(parents=True, exist_ok=True)
            with open(p, "w", encoding="utf-8") as f:
                f.write(content)
            print(f"✅ Generated: {p}")
        except Exception as e:
            print(f"⚠️ Error writing {p}: {e}")

    print("\n🎉 Все мероприятия 4 смен по 6 часов и 15 Google Задач успешно сгенерированы!")


if __name__ == "__main__":
    main()
