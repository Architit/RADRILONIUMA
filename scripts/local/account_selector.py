#!/usr/bin/env python3
# Copyright (c) 2026-07-30 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PROTOCOL: ACCOUNT SELECTION GATEKEEPER (SSN BOOT & NEW SESSION)

import os
import sys
import json
import time
from pathlib import Path

HOME = Path.home()
CLI_ACCOUNTS_FILE = HOME / ".gemini" / "antigravity-cli" / "google_accounts.json"
GEMINI_ACCOUNTS_FILE = HOME / ".gemini" / "google_accounts.json"
GATEWAY_ACCOUNT_FILE = HOME / "LAM_CORE" / "RADRILONIUMA" / ".gateway" / "active_account.json"

KNOWN_ACCOUNTS = [
    "lkises01@gmail.com",
    "elafeatriania@gmail.com",
    "denua... (YouTube Music)"
]

def load_accounts():
    accounts = list(KNOWN_ACCOUNTS)
    for path in [CLI_ACCOUNTS_FILE, GEMINI_ACCOUNTS_FILE]:
        if path.exists():
            try:
                data = json.loads(path.read_text())
                act = data.get("active")
                if act and act not in accounts:
                    accounts.insert(0, act)
                for old_acc in data.get("old", []):
                    if old_acc and old_acc not in accounts:
                        accounts.append(old_acc)
            except Exception:
                pass
    return list(dict.fromkeys(accounts))

def save_active_account(email):
    # 1. Update antigravity-cli google_accounts.json
    try:
        CLI_ACCOUNTS_FILE.parent.mkdir(parents=True, exist_ok=True)
        old_accs = [a for a in KNOWN_ACCOUNTS if a != email]
        CLI_ACCOUNTS_FILE.write_text(json.dumps({
            "active": email,
            "old": old_accs
        }, indent=2))
    except Exception as e:
        print(f"[ACCOUNT SELECTOR WARNING] Could not save CLI account file: {e}")

    # 2. Update .gemini google_accounts.json
    try:
        GEMINI_ACCOUNTS_FILE.parent.mkdir(parents=True, exist_ok=True)
        old_accs = [a for a in KNOWN_ACCOUNTS if a != email]
        GEMINI_ACCOUNTS_FILE.write_text(json.dumps({
            "active": email,
            "old": old_accs
        }, indent=2))
    except Exception as e:
        print(f"[ACCOUNT SELECTOR WARNING] Could not save Gemini account file: {e}")

    # 3. Update gateway state
    try:
        GATEWAY_ACCOUNT_FILE.parent.mkdir(parents=True, exist_ok=True)
        GATEWAY_ACCOUNT_FILE.write_text(json.dumps({
            "active": email,
            "selected_at": time.time()
        }, indent=2))
    except Exception as e:
        pass

    print(f"\033[1;32m[ACCOUNT SELECTOR] Active Google Account set to: {email}\033[0m\n")

def select_account_interactive():
    accounts = load_accounts()
    print("\033[1;35m==================================================\033[0m")
    print("\033[1;35m    A E L A R I A  --  A C C O U N T  S E L E C T   \033[0m")
    print("\033[1;35m==================================================\033[0m")
    print("\033[1;34m[SYSTEM] New Session / Boot Login Detected.\033[0m")
    print("\033[1;33mPlease select the Google Account to use for this session:\033[0m\n")

    for idx, acc in enumerate(accounts, 1):
        marker = " (Default)" if idx == 1 else ""
        print(f"  [{idx}] {acc}{marker}")
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
            if 1 <= val <= len(accounts):
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
    # If forced non-interactive or account already selected in current shell sub-env
    if os.environ.get("SKIP_ACCOUNT_SELECT") == "1":
        return
    select_account_interactive()

if __name__ == "__main__":
    main()
