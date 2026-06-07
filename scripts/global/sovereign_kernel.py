#!/usr/bin/env python3
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL WRAPPER v1.2 (SIGNAL-BASED)

import os
import sys
import subprocess
import time
import threading
from pathlib import Path

# Configuration
AGY_PATH = "/home/architit/.local/bin/agy"
BASE_DIR = Path(__file__).resolve().parents[2]
STATE_FILE = BASE_DIR / "WORKFLOW_SNAPSHOT_STATE.md"
SIGNAL_FILE = BASE_DIR / ".gateway" / "ssn_restart.signal"

def get_init_message():
    """Extracts the initiation message from the state file."""
    try:
        content = STATE_FILE.read_text(encoding="utf-8")
        if "## NEW_CHAT_INIT_MESSAGE" in content:
            return content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()
    except:
        pass
    return "ssn rstrt"

def request_os_permission():
    """Triggers the OS-level GUI handshake."""
    print("\n>>> [KERNEL] Requesting OS Permission Handshake...")
    cmd = [
        "zenity", "--question", "--title=AELARIA SOVEREIGN KERNEL",
        "--text=Requesting OS permission to activate protocol:\n\n[ssn rstrt p1 data export]\n\nProceed with session restart and context injection?",
        "--width=450", "--ok-label=ACTIVATE", "--cancel-label=HALT"
    ]
    try:
        subprocess.run(cmd, check=True)
        return True
    except subprocess.CalledProcessError:
        return False

def trigger_exit():
    """Physically types /exit into the terminal on behalf of the user."""
    print("\n>>> [KERNEL] Intercepted Restart Signal. Triggering user-mode exit...")
    try:
        # Give a small delay to ensure terminal focus
        time.sleep(1)
        subprocess.run(['xdotool', 'type', '--delay', '10', '/exit'], check=True)
        subprocess.run(['xdotool', 'key', 'Return'], check=True)
    except Exception as e:
        print(f">>> [KERNEL] ERROR: xdotool failed: {e}")

def signal_monitor_thread(proc):
    """Background thread that watches for the restart signal."""
    while proc.poll() is None:
        if SIGNAL_FILE.exists():
            SIGNAL_FILE.unlink()
            trigger_exit()
            # The session will now terminate naturally
            break
        time.sleep(1)

def run_session(auto_inject=None):
    """Spawns a single Gemini CLI session with signal monitoring."""
    print(">>> [KERNEL] Spawning Sovereign Interface...")
    
    # Ensure signal file is clear
    if SIGNAL_FILE.exists(): SIGNAL_FILE.unlink()

    # Launch CLI
    proc = subprocess.Popen([AGY_PATH], env=os.environ.copy())
    
    # Start monitor thread
    monitor = threading.Thread(target=signal_monitor_thread, args=(proc,), daemon=True)
    monitor.start()

    if auto_inject:
        # Background injection after startup
        def inject():
            time.sleep(6) # Wait for prompt
            print(f"\n>>> [KERNEL] Auto-injecting context...")
            try:
                subprocess.run(['xdotool', 'type', '--delay', '10', auto_inject], check=True)
                subprocess.run(['xdotool', 'key', 'Return'], check=True)
            except: pass
        threading.Thread(target=inject, daemon=True).start()

    # Wait for process to end
    proc.wait()
    
    # Check if restart was requested via signal (indicated by thread death/file removal)
    # But wait, we can just return a boolean based on whether we should loop
    return True # By default, allow re-looping unless Handshake fails

def main():
    next_injection = None
    
    while True:
        try:
            # We always run a session
            run_session(auto_inject=next_injection)
            
            # After each session, trigger Handshake
            if request_os_permission():
                next_injection = get_init_message()
                print(">>> [KERNEL] Handshake Accepted. Re-cycling...")
            else:
                print(">>> [KERNEL] Handshake Rejected. Halting Sovereign Forest.")
                break
                
        except KeyboardInterrupt:
            print("\n>>> [KERNEL] Manual Shutdown.")
            break

if __name__ == "__main__":
    main()
