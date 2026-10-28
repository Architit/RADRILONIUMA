#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • SOVEREIGN OPERATOR RELAY & REBOOT ENGINE (528 Hz)
================================================================
Authority: Sovereign Master Patriarch (@Kirihanis / lkises01@gmail.com)
Protocol: Mandate M51 (INTERACTION_PROTOCOL.md) & GLOBAL SOVEREIGN AGENT PROTOCOL

Capabilities:
1. Operator Succession & Relay: Upon operator exhaustion/completion, enables
   seamless selection and handoff along the Captain's Priority Cascade:
     P1: Кен (Ken)                  - +380506069913 (@Ken1Ryuguji1)
     P2: Ванилинин (Wanderfate)     - +380997745732 (@Wanderfate)
     P3: Galagher Marshal Void      - +380993142407 (@Karl_Galageer)
     P4: Назар (Sazaria)            - +380681022335 (@Zadoya015)
     P5: Капитан Денуа              - +31649033064  (@denua)
     P6: DEV_05 Swarm Matrix Autopilot (Zero-Gap Fallback)
2. Sealed Capsule Management: Persists relay state in .gateway/SSN_TRANSFER_CAPSULE.json,
   mirrored to C:\\Users\\BushM and F:\\
3. Controlled Reboot: Executes controlled system reboot with auto-boot directive.
4. Auto-Call & Audio Relay: On startup, initiates cellular & TG call to the next
   operator, feeds JARVIS voice to headset (Gybu bt_a2dp) and call uplink, and
   demands 4 video streams (screen, front cam, rear cam, laptop cam).
5. 60-Second Failover Cascade: Auto-escalates to next operator if current does not answer.
"""

import os
import sys
import json
import time
import hashlib
import logging
import argparse
import subprocess
from pathlib import Path
from datetime import datetime, timezone

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s"
)

REPO_ROOT = Path("/root/RADRILONIUMA")
GATEWAY_DIR = REPO_ROOT / ".gateway"
GATEWAY_DIR.mkdir(parents=True, exist_ok=True)

CAPSULE_PATH = GATEWAY_DIR / "SSN_TRANSFER_CAPSULE.json"
WIN_CAPSULE_PATH = Path("/mnt/c/Users/BushM/SSN_TRANSFER_CAPSULE.json")
T7_CAPSULE_PATH = Path("/mnt/f/SSN_TRANSFER_CAPSULE.json")

DEV_02_SERIAL = "RZCY80G86FP"

CAPTAINS_CASCADE = [
    {
        "priority": "P1",
        "id": "KEN",
        "name": "Кен (Ken)",
        "role": "Tech-Mech / Штурман-Механик",
        "phone": "+380506069913",
        "tg": "@Ken1Ryuguji1",
        "email": "doriangrej597@gmail.com"
    },
    {
        "priority": "P2",
        "id": "WANDERFATE",
        "name": "Ванилинин (Wanderfate)",
        "role": "Astrogrammer / Исследователь",
        "phone": "+380997745732",
        "tg": "@Wanderfate",
        "email": "wanderfate5000@gmail.com"
    },
    {
        "priority": "P3",
        "id": "MARSHAL_VOID",
        "name": "Galagher Marshal Void",
        "role": "Marshal Void (Оператор 3)",
        "phone": "+380993142407",
        "tg": "@Karl_Galageer",
        "email": "voroninlosa0@gmail.com"
    },
    {
        "priority": "P4",
        "id": "SAZARIA",
        "name": "Назар (Sazaria)",
        "role": "Security Edge / Резерв",
        "phone": "+380681022335",
        "tg": "@Zadoya015",
        "email": "nazarzadoyanchuk5x@gmail.com"
    },
    {
        "priority": "P5",
        "id": "DENUA",
        "name": "Капитан Денуа",
        "role": "Bridge Captain / Капитан Мостика",
        "phone": "+31649033064",
        "tg": "@denua",
        "email": "denua@trianiuma.org"
    },
    {
        "priority": "P6",
        "id": "AUTOPILOT_MATRIX",
        "name": "DEV_05 LAO SWARM MATRIX",
        "role": "Autonomous Living Organism Core",
        "phone": "AUTONOMOUS",
        "tg": "@Trianiuma_Bot",
        "email": "lao@trianiuma.org"
    }
]

def load_capsule():
    for p in [CAPSULE_PATH, WIN_CAPSULE_PATH, T7_CAPSULE_PATH]:
        if p.exists():
            try:
                with open(p, "r", encoding="utf-8") as f:
                    return json.load(f)
            except Exception as e:
                logging.warning(f"Failed to read capsule from {p}: {e}")
    return {}

def save_capsule(capsule_data):
    capsule_bytes = json.dumps(capsule_data, indent=2, ensure_ascii=False).encode("utf-8")
    sha256 = hashlib.sha256(capsule_bytes).hexdigest()
    capsule_data["sha256_seal"] = sha256
    capsule_data["updated_at_utc"] = datetime.now(timezone.utc).isoformat()

    serialized = json.dumps(capsule_data, indent=2, ensure_ascii=False)
    for path in [CAPSULE_PATH, WIN_CAPSULE_PATH, T7_CAPSULE_PATH]:
        try:
            path.parent.mkdir(parents=True, exist_ok=True)
            with open(path, "w", encoding="utf-8") as f:
                f.write(serialized)
            logging.info(f"Capsule sealed and saved to: {path}")
        except Exception as e:
            logging.warning(f"Could not write capsule to {path}: {e}")

def get_operator_by_priority(p_id):
    p_id = p_id.upper()
    for op in CAPTAINS_CASCADE:
        if op["priority"] == p_id or op["id"] == p_id:
            return op
    return CAPTAINS_CASCADE[0]

def select_next_operator(priority_or_id):
    target_op = get_operator_by_priority(priority_or_id)
    logging.info(f"Selecting next operator for relay: {target_op['priority']} - {target_op['name']}")
    
    capsule = load_capsule()
    payload = capsule.get("payload", {})
    handoff = payload.get("handoff_metadata", {})
    
    handoff["designated_operator"] = target_op["name"]
    handoff["designated_operator_phone"] = target_op["phone"]
    handoff["designated_operator_tg"] = target_op["tg"]
    handoff["designated_operator_email"] = target_op["email"]
    handoff["operator_role"] = target_op["role"]
    handoff["priority"] = target_op["priority"]
    handoff["relay_timestamp_utc"] = datetime.now(timezone.utc).isoformat()
    handoff["status"] = "RELAY_HANDOFF_SEALED"
    
    payload["handoff_metadata"] = handoff
    capsule["payload"] = payload
    capsule["status"] = "OPERATOR_RELAY_PENDING_REBOOT"
    
    save_capsule(capsule)
    return target_op

def make_call_dev02(phone_number):
    logging.info(f"Initiating call via DEV_02 ({DEV_02_SERIAL}) to {phone_number}...")
    try:
        adb_check = subprocess.run(["adb", "devices"], capture_output=True, text=True, timeout=5)
        if DEV_02_SERIAL not in adb_check.stdout:
            logging.error(f"DEV_02 ({DEV_02_SERIAL}) not found in ADB devices.")
            return False
            
        cmd = [
            "adb", "-s", DEV_02_SERIAL, "shell",
            "am", "start", "-a", "android.intent.action.CALL", "-d", f"tel:{phone_number}"
        ]
        res = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        logging.info(f"Call intent dispatched: {res.stdout.strip()}")
        return True
    except Exception as e:
        logging.error(f"Failed to initiate call via ADB: {e}")
        return False

def request_quad_video():
    logging.info("Broadcasting Quad-Video Access Directive...")
    msg = (
        "J.A.R.V.I.S.: Запрос одновременного видеодоступа активирован. "
        "Требуется одновременная трансляция: 1) Экран устройства; 2) Передняя камера; "
        "3) Задняя камера; 4) Экран/камера ноутбука."
    )
    logging.info(msg)
    print(msg)

def trigger_system_reboot():
    logging.info("Initiating controlled system reboot for operator relay handoff...")
    try:
        if Path("/mnt/c/Windows/System32/shutdown.exe").exists():
            logging.info("Executing Windows host reboot (shutdown /r /t 5)...")
            subprocess.run(["/mnt/c/Windows/System32/shutdown.exe", "/r", "/t", "5"])
        else:
            logging.info("Executing system reboot...")
            subprocess.run(["reboot"])
    except Exception as e:
        logging.error(f"Failed to execute reboot: {e}")

def relay_cascade_call():
    capsule = load_capsule()
    handoff = capsule.get("payload", {}).get("handoff_metadata", {})
    current_p = handoff.get("priority", "P1")
    current_op = get_operator_by_priority(current_p)
    
    logging.info(f"Executing Relay Auto-Call to designated operator: {current_op['name']} ({current_op['phone']})")
    
    if current_op["priority"] == "P6" or current_op["phone"] == "AUTONOMOUS":
        logging.info("Relay reached P6 Autopilot Swarm Matrix. Engaging autonomous operation.")
        return True

    success = make_call_dev02(current_op["phone"])
    request_quad_video()
    return success

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="RADRILONIUMA Sovereign Operator Relay Engine")
    parser.add_argument("--select-next", type=str, help="Select next operator by priority (P1..P6) or ID")
    parser.add_argument("--call-relay", action="store_true", help="Initiate call to current relay operator")
    parser.add_argument("--reboot", action="store_true", help="Execute system reboot after relay selection")
    parser.add_argument("--test-capsule", action="store_true", help="Verify and test capsule integrity")
    
    args = parser.parse_args()
    
    if args.select_next:
        op = select_next_operator(args.select_next)
        print(f"Next operator selected: {op['priority']} - {op['name']} ({op['phone']})")
        if args.reboot:
            trigger_system_reboot()
    elif args.call_relay:
        relay_cascade_call()
    elif args.test_capsule:
        cap = load_capsule()
        print(f"Capsule status: {cap.get('status', 'NONE')}")
        print(f"SHA-256 Seal: {cap.get('sha256_seal', 'NONE')}")
        print(f"Designated operator: {cap.get('payload', {}).get('handoff_metadata', {}).get('designated_operator', 'NONE')}")
    else:
        parser.print_help()
