#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# ROBUST TIOCSTI INJECTOR (AELARIA-REBORN)

import os
import sys
import fcntl
import termios
import time
from pathlib import Path

def get_current_tty():
    try:
        return os.ttyname(sys.stdout.fileno())
    except:
        # Fallback to shell 'tty' command if sys.stdout is redirected
        import subprocess
        return subprocess.check_output(['tty']).decode().strip()

def inject(text, tty_path):
    print(f"[AELARIA] Injecting into {tty_path}...")
    try:
        # We need write access to the TTY. Since we ARE the owner of the current session, we should have it.
        with open(tty_path, 'w') as fd:
            for byte in text.encode('utf-8'):
                fcntl.ioctl(fd.fileno(), termios.TIOCSTI, bytes([byte]))
    except Exception as e:
        print(f"[ERROR] Injection failed: {e}")
        # If standard open fails, try to use sys.stdin directly if it's a TTY
        try:
             for byte in text.encode('utf-8'):
                fcntl.ioctl(sys.stdin.fileno(), termios.TIOCSTI, bytes([byte]))
             print("[AELARIA] Fallback injection into sys.stdin successful.")
        except Exception as e2:
             print(f"[FATAL] Fallback injection failed: {e2}")

def get_init_msg():
    state_file = Path("/home/architit/LAM_CORE/RADRILONIUMA/WORKFLOW_SNAPSHOT_STATE.md")
    if state_file.exists():
        content = state_file.read_text(encoding="utf-8")
        if "## NEW_CHAT_INIT_MESSAGE" in content:
            return content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()
    return "gemini node session i and pathway"

if __name__ == "__main__":
    tty = get_current_tty()
    msg = get_init_msg()
    
    # 1. Prepare the exit
    print("[AELARIA] Triggering Exit Sequence...")
    inject("/exit\n", tty)
    
    # 2. We wait in a background process to inject the next commands
    if os.fork() == 0:
        # Child process (daemonized)
        time.sleep(5)
        inject("gemini\n", tty)
        time.sleep(10)
        inject(msg + "\n", tty)
        sys.exit(0)
    else:
        print("[SUCCESS] Rebirth daemon spawned. Session will cycle shortly.")
