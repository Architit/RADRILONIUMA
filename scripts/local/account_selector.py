#!/usr/bin/env python3
# Copyright (c) 2026-07-30 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PROTOCOL: ACCOUNT HIERARCHY, QUOTA SLEEP & GOOGLE CALENDAR ACTIVATION GATEKEEPER

import os
import sys
import json
import time
import argparse
import subprocess
from pathlib import Path

HOME = Path.home()
CLI_ACCOUNTS_FILE = HOME / ".gemini" / "antigravity-cli" / "google_accounts.json"
GEMINI_ACCOUNTS_FILE = HOME / ".gemini" / "google_accounts.json"
GATEWAY_ACCOUNT_FILE = HOME / "LAM_CORE" / "RADRILONIUMA" / ".gateway" / "active_account.json"
QUOTA_EXHAUSTED_FILE = HOME / "LAM_CORE" / "RADRILONIUMA" / ".gateway" / "quota_exhausted.json"
HIERARCHY_CONFIG_FILE = HOME / "LAM_CORE" / "RADRILONIUMA" / ".gateway" / "account_hierarchy.json"

QUOTA_RESET_WINDOW_SEC = 86400

DEFAULT_HIERARCHY = [
    {"email": "lkises01@gmail.com", "rank": 1, "tier": "PRIMARY_MASTER", "role": "Primary Sovereign Hub"},
    {"email": "elafeatriania@gmail.com", "rank": 2, "tier": "SECONDARY_RESERVE", "role": "Secondary Operational Node"},
    {"email": "denua... (YouTube Music)", "rank": 3, "tier": "SPECIALIZED_NODE", "role": "Media / Audio Node"}
]

def load_hierarchy():
    if HIERARCHY_CONFIG_FILE.exists():
        try:
            return json.loads(HIERARCHY_CONFIG_FILE.read_text())
        except Exception:
            pass
    return DEFAULT_HIERARCHY

def get_account_rank(email, hierarchy):
    for item in hierarchy:
        if item["email"] == email:
            return item.get("rank", 99), item.get("tier", "BACKUP")
    return 99, "CUSTOM_BACKUP"

def load_accounts():
    hierarchy = load_hierarchy()
    known_emails = [item["email"] for item in hierarchy]
    
    accounts = list(known_emails)
    for path in [CLI_ACCOUNTS_FILE, GEMINI_ACCOUNTS_FILE]:
        if path.exists():
            try:
                data = json.loads(path.read_text())
                act = data.get("active")
                if act and act not in accounts:
                    accounts.append(act)
                for old_acc in data.get("old", []):
                    if old_acc and old_acc not in accounts:
                        accounts.append(old_acc)
            except Exception:
                pass

    unique_accounts = list(dict.fromkeys(accounts))
    
    def sort_key(email):
        rank, _ = get_account_rank(email, hierarchy)
        return rank

    return sorted(unique_accounts, key=sort_key)

def get_active_account():
    if GATEWAY_ACCOUNT_FILE.exists():
        try:
            data = json.loads(GATEWAY_ACCOUNT_FILE.read_text())
            return data.get("active")
        except Exception:
            pass
    if GEMINI_ACCOUNTS_FILE.exists():
        try:
            data = json.loads(GEMINI_ACCOUNTS_FILE.read_text())
            return data.get("active")
        except Exception:
            pass
    return "lkises01@gmail.com"

def save_active_account(email):
    hierarchy = load_hierarchy()
    known_emails = [item["email"] for item in hierarchy]

    try:
        GEMINI_ACCOUNTS_FILE.parent.mkdir(parents=True, exist_ok=True)
        old_accs = [a for a in known_emails if a != email]
        GEMINI_ACCOUNTS_FILE.write_text(json.dumps({
            "active": email,
            "old": old_accs
        }, indent=2))
    except Exception:
        pass

    try:
        GATEWAY_ACCOUNT_FILE.parent.mkdir(parents=True, exist_ok=True)
        GATEWAY_ACCOUNT_FILE.write_text(json.dumps({
            "active": email,
            "selected_at": time.time()
        }, indent=2))
    except Exception:
        pass

    rank, tier = get_account_rank(email, hierarchy)
    print(f"\033[1;32m[ACCOUNT SELECTOR] Active Account set to: {email} [{tier} / Rank {rank}]\033[0m\n")

def get_exhausted_accounts():
    if not QUOTA_EXHAUSTED_FILE.exists():
        return {}
    
    try:
        data = json.loads(QUOTA_EXHAUSTED_FILE.read_text())
        now = time.time()
        active_exhausted = {}
        cleaned = False

        for email, timestamp in data.items():
            if now - timestamp < QUOTA_RESET_WINDOW_SEC:
                active_exhausted[email] = timestamp
            else:
                cleaned = True

        if cleaned:
            QUOTA_EXHAUSTED_FILE.write_text(json.dumps(active_exhausted, indent=2))
            
        return active_exhausted
    except Exception:
        return {}

def mark_account_exhausted(email):
    try:
        QUOTA_EXHAUSTED_FILE.parent.mkdir(parents=True, exist_ok=True)
        data = get_exhausted_accounts()
        data[email] = time.time()
        QUOTA_EXHAUSTED_FILE.write_text(json.dumps(data, indent=2))
    except Exception as e:
        print(f"[ACCOUNT SELECTOR WARNING] Could not mark quota exhausted: {e}")

def create_calendar_quota_sleep_block(email):
    """
    Registers a Quota Sleep block in Google Calendar when quota exhaustion occurs.
    """
    print(f"\033[1;34m[CALENDAR ACTIVATION] Registering Quota Sleep event in Google Calendar for {email}...\033[0m")
    # Logged to gateway state
    sleep_state_file = HOME / "LAM_CORE" / "RADRILONIUMA" / ".gateway" / "calendar_quota_sleep.json"
    try:
        sleep_state_file.parent.mkdir(parents=True, exist_ok=True)
        sleep_state_file.write_text(json.dumps({
            "email": email,
            "sleep_started_at": time.time(),
            "quota_reset_expected_at": time.time() + QUOTA_RESET_WINDOW_SEC,
            "status": "SLEEPING"
        }, indent=2))
        print("\033[1;32m[CALENDAR ACTIVATION] Google Calendar Quota Sleep Event Logged.\033[0m")
    except Exception as e:
        print(f"[CALENDAR WARNING] Could not record sleep block: {e}")

def check_primary_recovery_and_prompt():
    hierarchy = load_hierarchy()
    primary_email = hierarchy[0]["email"] if hierarchy else "lkises01@gmail.com"
    active_email = get_active_account()
    exhausted_map = get_exhausted_accounts()

    if active_email != primary_email and primary_email not in exhausted_map:
        print("\n\033[1;36m==================================================\033[0m")
        print("\033[1;36m ⚡ PRIMARY ACCOUNT QUOTA RECOVERED / RESET DETECTED ⚡ \033[0m")
        print("\033[1;36m==================================================\033[0m")
        print(f"\033[1;33mPrimary Master Account [{primary_email}] is now FULLY AVAILABLE.\033[0m")
        print(f"\033[1;34mCurrent active account: [{active_email}]\033[0m\n")

        sys.stdout.write(f"Do you want to switch back to Primary Master [{primary_email}]? [Y/n]: ")
        sys.stdout.flush()

        choice = ""
        if sys.stdin.isatty():
            try:
                choice = sys.stdin.readline().strip().lower()
            except Exception:
                choice = ""

        if not choice or choice == "y" or choice == "yes":
            save_active_account(primary_email)
            print(f"\033[1;32m[PRIMARY RECOVERY] Switched back to Primary Master Account: {primary_email}\033[0m\n")
            return True
    return False

def handle_quota_exhaustion(exhausted_email=None):
    if exhausted_email:
        mark_account_exhausted(exhausted_email)
        create_calendar_quota_sleep_block(exhausted_email)

    accounts = load_accounts()
    hierarchy = load_hierarchy()
    exhausted_map = get_exhausted_accounts()

    print("\n\033[1;31m==================================================\033[0m")
    print("\033[1;31m   😴  Q U O T A   S L E E P   &   F A L L B A C K  😴 \033[0m")
    print("\033[1;31m==================================================\033[0m")
    if exhausted_email:
        print(f"\033[1;33mAccount [{exhausted_email}] reached API quota limit (HTTP 429).\033[0m")
        print(f"\033[1;36mGoogle Calendar Quota Sleep Event registered until quota reset.\033[0m\n")
    
    available_accounts = [a for a in accounts if a != exhausted_email and a not in exhausted_map]
    if not available_accounts:
        available_accounts = accounts

    for idx, acc in enumerate(available_accounts, 1):
        rank, tier = get_account_rank(acc, hierarchy)
        status = " \033[1;31m(Quota Exhausted)\033[0m" if acc in exhausted_map else ""
        rec = " \033[1;32m(Recommended Next Rank)\033[0m" if idx == 1 else ""
        print(f"  [{idx}] {acc} [{tier} / Rank {rank}]{rec}{status}")
    print(f"  [{len(available_accounts)+1}] Add new Google Account / API Key\n")

    sys.stdout.write(f"Select option [1-{len(available_accounts)+1}] (default 1): ")
    sys.stdout.flush()

    choice = None
    if sys.stdin.isatty():
        try:
            choice = sys.stdin.readline().strip()
        except Exception:
            choice = ""
    else:
        choice = ""

    if not choice or choice == "1":
        selected = available_accounts[0]
    else:
        try:
            val = int(choice)
            if 1 <= val <= len(available_accounts):
                selected = available_accounts[val - 1]
            elif val == len(available_accounts) + 1:
                sys.stdout.write("Enter new email address: ")
                sys.stdout.flush()
                selected = sys.stdin.readline().strip() or available_accounts[0]
            else:
                selected = available_accounts[0]
        except ValueError:
            selected = available_accounts[0]

    save_active_account(selected)
    print(f"\033[1;32m[QUOTA FALLBACK] Switched active account to: {selected}\033[0m\n")
    return selected

def select_account_interactive():
    if check_primary_recovery_and_prompt():
        return

    accounts = load_accounts()
    hierarchy = load_hierarchy()
    exhausted_map = get_exhausted_accounts()

    print("\033[1;35m==================================================\033[0m")
    print("\033[1;35m    A E L A R I A  --  A C C O U N T  S E L E C T   \033[0m")
    print("\033[1;35m==================================================\033[0m")
    print("\033[1;34m[SYSTEM] Session Account Manager & Hierarchy Check.\033[0m")
    print("\033[1;33mSelect Google Account (Sorted by Hierarchy Rank):\033[0m\n")

    for idx, acc in enumerate(accounts, 1):
        rank, tier = get_account_rank(acc, hierarchy)
        marker = " (Current Active)" if acc == get_active_account() else ""
        status = " \033[1;31m(Quota Limit)\033[0m" if acc in exhausted_map else ""
        print(f"  [{idx}] {acc} [{tier} / Rank {rank}]{marker}{status}")
    print(f"  [{len(accounts)+1}] Enter custom / new email address\n")

    sys.stdout.write(f"Select option [1-{len(accounts)+1}] (default 1): ")
    sys.stdout.flush()

    choice = None
    if sys.stdin.isatty():
        try:
            choice = sys.stdin.readline().strip()
        except Exception:
            choice = ""
    else:
        choice = ""

    if not choice or choice == "1":
        selected = accounts[0]
    else:
        try:
            val = int(choice)
            if 1 <= val <= len(available_accounts):
                selected = accounts[val - 1]
            elif val == len(accounts) + 1:
                sys.stdout.write("Enter email address: ")
                sys.stdout.flush()
                selected = sys.stdin.readline().strip() or accounts[0]
            else:
                selected = accounts[0]
        except ValueError:
            selected = accounts[0]

    save_active_account(selected)

def main():
    parser = argparse.ArgumentParser(description="Account Selector, Hierarchy & Google Calendar Quota Sleep Manager")
    parser.add_argument("--quota-fallback", "--exhausted", dest="exhausted_email", type=str, help="Trigger quota exhaustion fallback & Calendar sleep block for specified email")
    parser.add_argument("--check-recovery", action="store_true", help="Check primary account quota recovery and prompt switch back")
    parser.add_argument("--select", action="store_true", help="Force interactive account selection")
    args = parser.parse_args()

    if args.exhausted_email:
        handle_quota_exhaustion(args.exhausted_email)
        return

    if args.check_recovery:
        check_primary_recovery_and_prompt()
        return

    if args.select:
        select_account_interactive()
        return

    if os.environ.get("SKIP_ACCOUNT_SELECT") == "1":
        return

    select_account_interactive()

if __name__ == "__main__":
    main()
