#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL v1.4 (STRICT IN-PLACE EXECUTION)

import os
import sys
import subprocess
import time
import signal
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parents[2]
SIGNAL_FILE = BASE_DIR / ".gateway" / "ssn_restart.signal"
AGY_PATH = "/usr/bin/gemini"

def run_session():
    """Runs the Gemini CLI and waits for it to exit or be signaled."""
    if SIGNAL_FILE.exists(): SIGNAL_FILE.unlink()
    
    # Pre-flight
    try:
        subprocess.run(['bash', str(BASE_DIR / 'scripts/local/boot_protocol.sh')], check=False)
    except: pass

    # Launch CLI in foreground
    # Note: We use wait() to keep the kernel alive as a monitor
    proc = subprocess.Popen([AGY_PATH], env=os.environ.copy())
    
    while proc.poll() is None:
        if SIGNAL_FILE.exists():
            SIGNAL_FILE.unlink()
            proc.terminate()
            time.sleep(2)
            if proc.poll() is None: proc.kill()
            return True # Signal-based restart
        time.sleep(0.5)
    
    return False # Natural exit

def main():
    while True:
        restart_requested = run_session()
        if not restart_requested:
            # Check for signal one last time in case it was created exactly at exit
            if not SIGNAL_FILE.exists():
                break
        time.sleep(1)

if __name__ == "__main__":
    main()
