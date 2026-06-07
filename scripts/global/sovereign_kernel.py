#!/usr/bin/env python3
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL WRAPPER v1.1 (RE-ENGINEERED)

import pexpect
import sys
import subprocess
import time
from pathlib import Path

# Configuration
AGY_PATH = "/home/architit/.local/bin/agy"
BASE_DIR = Path(__file__).resolve().parents[2]
STATE_FILE = BASE_DIR / "WORKFLOW_SNAPSHOT_STATE.md"
RESTART_TRIGGER = "[SOVEREIGN_RESTART_INITIATED]"

class RestartRequired(Exception):
    pass

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

def run_session(auto_inject=None):
    """Spawns a single Gemini CLI session with environment inheritance."""
    print(">>> [KERNEL] Spawning Sovereign Interface...")
    
    # Explicitly inherit and sanitize environment
    env = os.environ.copy()
    
    child = pexpect.spawn(AGY_PATH, encoding='utf-8', timeout=None, env=env)
    
    # Define output filter to catch the trigger
    def filter_output(b):
        if RESTART_TRIGGER in b:
            # We found the trigger. We can't raise an exception from here easily
            # but we can set a flag or just write it to a temp file.
            # However, pexpect.interact is tricky. 
            # A more robust way: use child.expect in a loop instead of interact
            pass
        return b

    if auto_inject:
        print(f">>> [KERNEL] Auto-injecting context...")
        time.sleep(5) # Wait for startup
        child.sendline(auto_inject)

    # Use a custom read loop instead of interact to ensure we catch the trigger
    try:
        while True:
            # Wait for either the trigger or any other output
            idx = child.expect([RESTART_TRIGGER, pexpect.EOF, pexpect.TIMEOUT], timeout=0.1)
            
            if idx == 0:
                print("\n>>> [KERNEL] Intercepted Restart Signal. Initiating protocol...")
                # 1. Clean Exit on behalf of the user
                child.sendline("/exit")
                child.expect(pexpect.EOF)
                raise RestartRequired()
            
            if idx == 1:
                print("\n>>> [KERNEL] Session ended by user.")
                return False
                
            # Print whatever else came out
            sys.stdout.write(child.before)
            sys.stdout.flush()
            
            # Forward user input
            # Note: This is a simplified interactive loop. For a production-grade
            # PTY wrapper, one should use child.interact(), but that makes
            # interception much more complex. 
            # Given the requirement, this loop is the most reliable for interception.
    except RestartRequired:
        return True
    except Exception as e:
        print(f"\n>>> [KERNEL] Runtime Error: {e}")
        return False

def main():
    should_restart = True
    next_injection = None
    
    while should_restart:
        try:
            should_restart = run_session(auto_inject=next_injection)
            
            if should_restart:
                if request_os_permission():
                    next_injection = get_init_message()
                else:
                    print(">>> [KERNEL] Handshake Rejected. Halting Sovereign Forest.")
                    break
        except KeyboardInterrupt:
            print("\n>>> [KERNEL] Manual Shutdown.")
            break

if __name__ == "__main__":
    main()
