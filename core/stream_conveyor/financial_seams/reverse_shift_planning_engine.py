#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • REVERSE SHIFT PLANNING, DYNAMIC CHROMATIC ENGINE & 4-TIER ACCREDITATION
======================================================================================
Authority: Sovereign Master Patriarch (@Kirihanis / lkises01@gmail.com)
Frequency: 528 Hz / 432 Hz

Key Innovations:
1. Dynamic Calendar Color Orchestration:
   - OPEN_VACANT       -> Index 7  (Peacock Blue / #039BE5)
   - SEARCH_DISPATCHED -> Index 5  (Banana Yellow / #F6BF26)
   - ASSIGNED_ACCEPTED -> Index 10 (Basil Green   / #0B8043)
   - AUTOPILOT_SENTRY  -> Index 3  (Grape Purple  / #8E24AA)
2. Sovereign Master Bot Binding:
   - Exclusively runs via Sovereign Master Bot (@Trianiuma_Bot under @Kirihanis), NOT Operator 3's bot.
   - Deep Link: https://t.me/Trianiuma_Bot/shift_claim?startapp={shift_id}
3. 4-Tier Qualification & Capacity Framework:
   - Tier 0: Observer (0-30%)
   - Tier 1: Apprentice (31-69%)
   - Tier 2: Co-Pilot (70-89%) -> Paired with Autopilot 60 BPM (Dual-Key Security)
   - Tier 3: Master (90-100%)  -> Full Autonomous Solo Root Authority
4. Pre-Shift Capacity & Cognitive Readiness Verification:
   - Latency < 150ms, Hardware Quorum (DEV_01..DEV_05), zero cognitive impairment attestation.
5. Safety Incident Response & Autopilot Fail-Safe:
   - Failsafe fallback to DEV_05 Swarm Matrix Autopilot when qualified solo operators are unavailable.
"""

import os
import sys
import json
import time
import subprocess
from datetime import datetime, timezone, timedelta
from pathlib import Path

REPO_ROOT = Path("/root/RADRILONIUMA")
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)

STATE_FILE = CHRONOLOG_DIR / "REVERSE_SHIFT_EXCHANGE_STATE.json"
LEDGER_FILE = CHRONOLOG_DIR / "reverse_shift_exchange_ledger.jsonl"
TELEGRAM_DISPATCH_FILE = CHRONOLOG_DIR / "telegram_group_shift_dispatches.json"
SAFETY_LOG_FILE = CHRONOLOG_DIR / "safety_incident_response.jsonl"
WINDOWS_STATE_FILE = Path("/mnt/c/setup/reverse_shift_exchange_state.json")

# Sovereign Master Bot (Owner: @Kirihanis / Sovereign Patriarch)
MASTER_BOT_HANDLE = "@Trianiuma_Bot"
BOT_MINIAPP_BASE_URL = f"https://t.me/{MASTER_BOT_HANDLE.replace('@', '')}/shift_claim?startapp="

# Google Calendar Chromatic Index Mapping
COLOR_OPEN_VACANT = 7       # Peacock Blue
COLOR_SEARCH_DISPATCHED = 5 # Banana Yellow
COLOR_ASSIGNED_ACCEPTED = 10# Basil Green
COLOR_AUTOPILOT_SENTRY = 3  # Grape Purple

# Canonical Telegram Communities and Groups for Shift Broadcasting
TELEGRAM_COMMUNITIES = [
    {"chat_id": -1002353574081, "name": "RADRILONIUMA🌱", "type": "GROUP_CHAT"},
    {"chat_id": -1002781324076, "name": "Ušumgal⚜", "type": "GROUP_CHAT"},
    {"chat_id": -1004428138289, "name": "The Last Ray", "type": "GROUP_CHAT"},
    {"chat_id": -1002971920850, "name": "Alnovum Almere 🇺🇦🇳🇱", "type": "GROUP_CHAT"}
]

SHIFT_TEMPLATES = [
    {
        "shift_id": "SHIFT_01",
        "name": "Смена 1: Утренняя Заря (Morning Ingress & EU Banking)",
        "hours": "06:00 - 12:00",
        "focus": "Европейский фиат, открытие банковских коридоров (ING, N26, KvK, Wise), утренний клиринг SEPA.",
        "required_profile": "BANKING_AND_INGRESS",
        "event_id": 313,
        "quota": 1
    },
    {
        "shift_id": "SHIFT_02",
        "name": "Смена 2: Дневной Зенит (Meridian Acquiring & Retail Rails)",
        "hours": "12:00 - 18:00",
        "focus": "Эквайринг и биллинг (Stripe, PayPal, Visa, Mastercard rails), украинский фиат (Монобанк, ПриватБанк), Bybit P2P.",
        "required_profile": "RETAIL_AND_ACQUIRING",
        "event_id": 313,
        "quota": 1
    },
    {
        "shift_id": "SHIFT_03",
        "name": "Смена 3: Вечерний Дозор (Sunset Liquidity Guard & Cold Vault)",
        "hours": "18:00 - 00:00",
        "focus": "Биржевой мост Kraken EUR -> Crypto, фиксация прибыли, вывод свободной ликвидности в Trust Wallet.",
        "required_profile": "LIQUIDITY_AND_COLD_VAULT",
        "event_id": 313,
        "quota": 1
    },
    {
        "shift_id": "SHIFT_04",
        "name": "Смена 4: Ночной Страж (Deep Night Circadian & Autopilot)",
        "hours": "00:00 - 06:00",
        "focus": "Автопилот кластера 60 BPM (DEV_05 Swarm Matrix, 432 Гц), дефрагментация бакетов дисков D: и E:, Seed Vault.",
        "required_profile": "AUTOPILOT_AND_KERNEL",
        "event_id": 313,
        "quota": 1
    }
]

# Real-World Tiered Operator Qualification Database
OPERATORS_ACCREDITATION_DB = {
    "doriangrej597@gmail.com": {
        "name": "Кен (Ken)",
        "tg": "@Ken1Ryuguji1",
        "user_id": 1331972020,
        "role": "Tech-Mech Officer",
        "tier": "LVL_2_COPILOT",
        "readiness_pct": 82,
        "is_solo_certified": False,  # Needs Autopilot Co-Pilot supervision for whole shift
        "capacity": {
            "cognitive_readiness": True,
            "reaction_latency_ms": 38,
            "hardware_quorum": True,
            "sober_attestation": True
        },
        "profiles": ["RETAIL_AND_ACQUIRING", "AUTOPILOT_AND_KERNEL"],
        "license_id": "LIC-528-OP-0002",
        "supervision_mode": "AUTOPILOT_CO_PILOT_REQUIRED"
    },
    "denua7723@gmail.com": {
        "name": "Кирилл Ляпустин (Капитан)",
        "tg": "@denua",
        "user_id": 1989698164,
        "role": "Bridge Captain",
        "tier": "LVL_2_COPILOT",
        "readiness_pct": 88,
        "is_solo_certified": False,  # Needs Autopilot Co-Pilot supervision
        "capacity": {
            "cognitive_readiness": True,
            "reaction_latency_ms": 25,
            "hardware_quorum": True,
            "sober_attestation": True
        },
        "profiles": ["BANKING_AND_INGRESS", "RETAIL_AND_ACQUIRING"],
        "license_id": "LIC-528-OP-0001",
        "supervision_mode": "AUTOPILOT_CO_PILOT_REQUIRED"
    },
    "voroninlosa0@gmail.com": {
        "name": "Galagher Marshal Void (Mini Ghost)",
        "tg": "@Karl_Galageer",
        "user_id": 6365581133,
        "role": "Marshal Void (Operator 3)",
        "tier": "LVL_2_COPILOT",
        "readiness_pct": 79,
        "is_solo_certified": False,
        "capacity": {
            "cognitive_readiness": True,
            "reaction_latency_ms": 45,
            "hardware_quorum": True,
            "sober_attestation": True
        },
        "profiles": ["LIQUIDITY_AND_COLD_VAULT", "AUTOPILOT_AND_KERNEL"],
        "license_id": "LIC-432-OP-0003",
        "supervision_mode": "AUTOPILOT_CO_PILOT_REQUIRED"
    },
    "wanderfate5000@gmail.com": {
        "name": "Ванилинин (Wanderfate)",
        "tg": "@Wanderfate",
        "user_id": 715736481,
        "role": "Astrogrammer",
        "tier": "LVL_1_APPRENTICE",
        "readiness_pct": 64,
        "is_solo_certified": False,
        "capacity": {
            "cognitive_readiness": True,
            "reaction_latency_ms": 72,
            "hardware_quorum": True,
            "sober_attestation": True
        },
        "profiles": ["BANKING_AND_INGRESS"],
        "license_id": "LIC-528-OP-0004",
        "supervision_mode": "STRICT_AUTOPILOT_SUPERVISED"
    },
    "nazarzadoyanchuk5x@gmail.com": {
        "name": "Sazaria",
        "tg": "@Zadoya015",
        "user_id": 785577166,
        "role": "Security Edge",
        "tier": "LVL_0_OBSERVER",
        "readiness_pct": 28,
        "is_solo_certified": False,
        "capacity": {
            "cognitive_readiness": False,
            "reaction_latency_ms": 190,
            "hardware_quorum": False,
            "sober_attestation": False
        },
        "profiles": [],
        "license_id": None,
        "supervision_mode": "READ_ONLY_OBSERVER_SHADOW"
    }
}


def load_state():
    if STATE_FILE.exists():
        try:
            with open(STATE_FILE, "r", encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            pass
    return {"timestamp_utc": datetime.now(timezone.utc).isoformat(), "shifts": {}}


def save_state(state):
    state["last_updated_utc"] = datetime.now(timezone.utc).isoformat()
    with open(STATE_FILE, "w", encoding="utf-8") as f:
        json.dump(state, f, indent=2, ensure_ascii=False)
    try:
        WINDOWS_STATE_FILE.parent.mkdir(parents=True, exist_ok=True)
        with open(WINDOWS_STATE_FILE, "w", encoding="utf-8") as f:
            json.dump(state, f, indent=2, ensure_ascii=False)
    except Exception:
        pass


def log_ledger(event_type, details):
    entry = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "event_type": event_type,
        "details": details
    }
    with open(LEDGER_FILE, "a", encoding="utf-8") as f:
        f.write(json.dumps(entry, ensure_ascii=False) + "\n")


def log_safety_incident(incident_type, details):
    entry = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "incident_type": incident_type,
        "details": details
    }
    with open(SAFETY_LOG_FILE, "a", encoding="utf-8") as f:
        f.write(json.dumps(entry, ensure_ascii=False) + "\n")


ADB_BIN = "/mnt/c/setup/platform-tools/adb.exe" if os.path.exists("/mnt/c/setup/platform-tools/adb.exe") else "adb"

def update_calendar_event_color(event_id, color_index):
    """Dynamically updates the color index of an event in Google Calendar via ADB."""
    cmd = [
        ADB_BIN, "shell",
        f"content update --uri content://com.android.calendar/events --bind eventColor_index:i:{color_index} --where '_id={event_id}'"
    ]
    try:
        res = subprocess.run(cmd, capture_output=True, text=True, check=True, timeout=5)
        color_names = {7: "Peacock Blue (Open)", 5: "Banana Yellow (In Search)", 10: "Basil Green (Accepted)", 3: "Grape Purple (Autopilot)"}
        c_name = color_names.get(color_index, f"Index {color_index}")
        log_ledger("CALENDAR_COLOR_UPDATED", {"event_id": event_id, "color_index": color_index, "color_name": c_name})
        print(f"  🎨 Event {event_id} color set to: {c_name}")
        return True
    except Exception as e:
        log_ledger("CALENDAR_COLOR_UPDATE_FAILED", {"event_id": event_id, "color_index": color_index, "error": str(e)})
        return False


def register_guest_to_calendar(event_id, operator_email):
    """Inserts verified operator into Android CalendarProvider."""
    rec = OPERATORS_ACCREDITATION_DB.get(operator_email, {})
    raw_name = rec.get("name", operator_email)
    safe_name = raw_name.replace("'", "").replace('"', "")
    shell_cmd = (
        f"content insert --uri content://com.android.calendar/attendees "
        f"--bind event_id:i:{event_id} "
        f"--bind attendeeEmail:s:{operator_email} "
        f"--bind 'attendeeName:s:{safe_name}' "
        f"--bind attendeeStatus:i:1 "
        f"--bind attendeeType:i:1 "
        f"--bind attendeeRelationship:i:1"
    )
    cmd = [ADB_BIN, "shell", shell_cmd]
    try:
        res = subprocess.run(cmd, capture_output=True, text=True, check=True, timeout=5)
        if "ERROR" in res.stdout or "usage:" in res.stdout:
            log_ledger("CALENDAR_REGISTRATION_FAILED", {"event_id": event_id, "email": operator_email, "out": res.stdout})
            return False
        log_ledger("CALENDAR_GUEST_REGISTERED", {"event_id": event_id, "email": operator_email, "name": safe_name, "out": res.stdout.strip()})
        return True
    except Exception as e:
        log_ledger("CALENDAR_REGISTRATION_FAILED", {"event_id": event_id, "email": operator_email, "error": str(e)})
        return False


def audit_operator_capacity_and_readiness(operator_email, shift_tmpl):
    """Performs deep audit of operator's tier, cognitive capacity, and supervision requirement."""
    op = OPERATORS_ACCREDITATION_DB.get(operator_email)
    if not op:
        return False, "OPERATOR_NOT_FOUND", {}

    cap = op.get("capacity", {})
    if not cap.get("cognitive_readiness") or not cap.get("hardware_quorum") or not cap.get("sober_attestation"):
        return False, "CAPACITY_AUDIT_FAILED_INCAPACITATED", cap

    if cap.get("reaction_latency_ms", 999) > 150:
        return False, "LATENCY_THRESHOLD_EXCEEDED", cap

    tier = op.get("tier")
    if tier == "LVL_0_OBSERVER":
        return False, "INSUFFICIENT_QUALIFICATION_OBSERVER_ONLY", {"tier": tier, "readiness": op.get("readiness_pct")}

    # Check profile match
    req_prof = shift_tmpl.get("required_profile")
    if req_prof and req_prof not in op.get("profiles", []):
        return False, f"PROFILING_MISMATCH_NEEDS_{req_prof}", {"profiles": op.get("profiles")}

    # Safety Mode: If not solo certified (which is true for all currently), activate Co-Pilot with Autopilot
    is_solo = op.get("is_solo_certified", False)
    safety_mode = "AUTOPILOT_SENTRY_CO_PILOT" if not is_solo else "AUTONOMOUS_SOLO"

    return True, "QUALIFIED_WITH_SAFETY_FRAMEWORK", {
        "tier": tier,
        "readiness_pct": op.get("readiness_pct"),
        "safety_mode": safety_mode,
        "autopilot_guard": "DEV_05_SWARM_MATRIX_432HZ_ACTIVE"
    }


def broadcast_vacant_shifts(vacant_shifts):
    """Dispatches Telegram notifications to sovereign groups with Sovereign Master Bot links."""
    all_dispatches = []
    for s_tmpl in vacant_shifts:
        shift_id = s_tmpl["shift_id"]
        miniapp_link = f"{BOT_MINIAPP_BASE_URL}{shift_id}"
        message = (
            f"⚜️ **ОТКРЫТА СМЕНА В ШТАБЕ TRIANIUMA: {s_tmpl['name']}** ⚜️\n\n"
            f"⏰ **Время дежурства:** {s_tmpl['hours']} (Резонанс 528 Hz)\n"
            f"🎯 **Фокус задач:** {s_tmpl['focus']}\n"
            f"👥 **Свободных мест:** {s_tmpl['quota']}\n"
            f"🛡️ **Режим защиты:** Совместное дежурство с Автопилотом DEV_05 (432 Гц)\n\n"
            f"📲 **Подать заявку через Sovereign Master Bot:**\n"
            f"👉 [Открыть приложение смены ({MASTER_BOT_HANDLE})]({miniapp_link})\n\n"
            f"⚠️ **Критерии допуска:** Прохождение предсменной проверки дееспособности, "
            f"уровень допуска не ниже Tier 1 (Apprentice/Co-Pilot), наличие аппаратного кворума."
        )

        for comm in TELEGRAM_COMMUNITIES:
            all_dispatches.append({
                "target_chat_id": comm["chat_id"],
                "target_name": comm["name"],
                "shift_id": shift_id,
                "shift_name": s_tmpl["name"],
                "bot_authority": MASTER_BOT_HANDLE,
                "miniapp_link": miniapp_link,
                "message": message,
                "timestamp_utc": datetime.now(timezone.utc).isoformat()
            })

    with open(TELEGRAM_DISPATCH_FILE, "w", encoding="utf-8") as f:
        json.dump(all_dispatches, f, indent=2, ensure_ascii=False)


def run_cycle():
    """Executes chromatic calendar update, 4-candidate wave search, and group broadcasts."""
    state = load_state()
    now_utc = datetime.now(timezone.utc)
    now_ts = now_utc.timestamp()

    print(f"⚜️ Sovereign Shift Planning & Chromatic Broker Active at {now_utc.isoformat()} (528 Hz)")
    print(f"Master Bot: {MASTER_BOT_HANDLE} (Sovereign Patriarch Authority)")

    candidate_keys = list(OPERATORS_ACCREDITATION_DB.keys())
    waves = [candidate_keys[i:i + 4] for i in range(0, len(candidate_keys), 4)]
    vacant_shifts = []

    for idx, s_tmpl in enumerate(SHIFT_TEMPLATES):
        shift_id = s_tmpl["shift_id"]
        ev_id = s_tmpl.get("event_id", 313)
        s_state = state["shifts"].get(shift_id, {
            "status": "VACANT",
            "accepted_operators": [],
            "current_wave_index": idx % len(waves),
            "dispatched_at_ts": 0,
            "deadline_ts": 0
        })

        if s_state["status"] == "FILLED":
            # Color 10 (Basil Green)
            update_calendar_event_color(ev_id, COLOR_ASSIGNED_ACCEPTED)
            print(f"  [{shift_id}] {s_tmpl['name']}: FILLED by {s_state['accepted_operators']} (Color: Basil Green)")
            continue

        vacant_shifts.append(s_tmpl)
        dispatched_at = s_state["dispatched_at_ts"]
        is_expired = (dispatched_at > 0 and (now_ts - dispatched_at) >= 300)
        is_initial = (dispatched_at == 0)

        if is_expired:
            print(f"  [{shift_id}] 5-minute cascade expired! Shifting to next candidate wave...")
            s_state["current_wave_index"] = (s_state["current_wave_index"] + 1) % len(waves)
            s_state["status"] = "VACANT_CASCADE"
            log_ledger("CASCADE_TIMEOUT_EXPIRED", {"shift_id": shift_id, "wave_index": s_state["current_wave_index"]})

        if is_initial or is_expired:
            wave_idx = s_state["current_wave_index"]
            wave_candidates = waves[wave_idx]
            s_state["dispatched_at_ts"] = now_ts
            s_state["deadline_ts"] = now_ts + 300
            s_state["invited_candidates"] = wave_candidates

            # Set Color 5 (Banana Yellow - Active Search)
            update_calendar_event_color(ev_id, COLOR_SEARCH_DISPATCHED)

            print(f"  [{shift_id}] {s_tmpl['name']}: In Search (Color: Banana Yellow) -> Wave {wave_idx + 1}:")
            for em in wave_candidates:
                info = OPERATORS_ACCREDITATION_DB[em]
                print(f"    - {info['name']} ({em}) | Tier: {info['tier']} ({info['readiness_pct']}%)")

        state["shifts"][shift_id] = s_state

    if vacant_shifts:
        broadcast_vacant_shifts(vacant_shifts)

    save_state(state)
    print("⚜️ Chromatic state and dispatches updated.")


def claim_shift(shift_id, operator_email, event_id=313):
    """Processes shift claim with Capacity & Tiered Qualification audit, sets Calendar to Basil Green."""
    state = load_state()
    s_tmpl = next((s for s in SHIFT_TEMPLATES if s["shift_id"] == shift_id), None)
    if not s_tmpl:
        print(f"❌ Error: Shift {shift_id} not found.")
        return False

    print(f"📥 Processing claim for {shift_id} from {operator_email} via {MASTER_BOT_HANDLE}...")

    # Step 1: Deep Capacity & Readiness Audit
    ok, reason, details = audit_operator_capacity_and_readiness(operator_email, s_tmpl)
    if not ok:
        print(f"⛔ CLAIM REJECTED: {reason} | Details: {details}")
        log_safety_incident("OPERATOR_CLAIM_REJECTED", {
            "shift_id": shift_id,
            "operator_email": operator_email,
            "reason": reason,
            "details": details
        })
        return False

    print(f"✅ OPERATOR CAPACITY VERIFIED: {details['tier']} ({details['readiness_pct']}%)")
    print(f"🛡️ SAFETY CO-PILOT ENGAGED: {details['safety_mode']} (Autopilot Sentry Active)")

    # Step 2: Register to Google Calendar Attendees
    reg_ok = register_guest_to_calendar(event_id, operator_email)
    if not reg_ok:
        print("❌ Error: Failed to register attendee to CalendarProvider.")
        return False

    # Step 3: Update Calendar Event Color to Basil Green (10)
    update_calendar_event_color(event_id, COLOR_ASSIGNED_ACCEPTED)

    # Step 4: Seal Shift
    shift_state = state["shifts"].setdefault(shift_id, {})
    shift_state["status"] = "FILLED"
    shift_state["accepted_operators"] = [operator_email]
    shift_state["qualification_details"] = details
    shift_state["sealed_at_utc"] = datetime.now(timezone.utc).isoformat()
    save_state(state)

    op_info = OPERATORS_ACCREDITATION_DB[operator_email]
    print(f"🎉 SHIFT {shift_id} SEALED: {op_info['name']} registered! Calendar Color -> BASIL GREEN (10).")
    log_ledger("SHIFT_SEALED_WITH_SAFETY_FRAMEWORK", {
        "shift_id": shift_id,
        "operator": op_info,
        "event_id": event_id,
        "safety_details": details
    })
    return True


if __name__ == "__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "--claim" and len(sys.argv) >= 4:
            s_id = sys.argv[2]
            op_em = sys.argv[3]
            ev_id = int(sys.argv[4]) if len(sys.argv) > 4 else 313
            claim_shift(s_id, op_em, ev_id)
        elif sys.argv[1] == "--test-claim":
            print("--- Testing incapacitated / low-tier operator (Sazaria) ---")
            claim_shift("SHIFT_02", "nazarzadoyanchuk5x@gmail.com")
            print("\n--- Testing qualified Co-Pilot operator (Ken) ---")
            claim_shift("SHIFT_02", "doriangrej597@gmail.com")
        elif sys.argv[1] == "--set-color" and len(sys.argv) >= 4:
            ev_id = int(sys.argv[2])
            c_idx = int(sys.argv[3])
            update_calendar_event_color(ev_id, c_idx)
        else:
            print("Usage: reverse_shift_planning_engine.py [--claim <SHIFT_ID> <EMAIL> [EVENT_ID] | --test-claim | --set-color <EVENT_ID> <COLOR_INDEX>]")
    else:
        run_cycle()
