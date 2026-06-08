#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL v1.7 (TTY-AWARE & STABLE)

import os
import sys
import subprocess
import time
import threading
import shutil
from pathlib import Path

# Paths
BASE_DIR = Path(__file__).resolve().parents[2]
SIGNAL_FILE = BASE_DIR / ".gateway" / "ssn_restart.signal"
AGY_PATH = shutil.which("gemini") or "/usr/bin/gemini"

def main():
    # Mark session as sovereign
    os.environ["AELARIA_KERNEL_ACTIVE"] = "1"
    
    while True:
        if SIGNAL_FILE.exists(): SIGNAL_FILE.unlink()
        
        # 1. Pre-flight
        try:
            subprocess.run(['bash', str(BASE_DIR / 'scripts/local/boot_protocol.sh')], check=False)
        except: pass

        # 2. Spawn Gemini (Inheriting TTY)
        # Using a list to ensure correct argument parsing
        proc = subprocess.Popen([AGY_PATH], stdin=sys.stdin, stdout=sys.stdout, stderr=sys.stderr)
        
        # 3. Monitor
        restart_cycle = [False]
        def monitor():
            while proc.poll() is None:
                if SIGNAL_FILE.exists():
                    SIGNAL_FILE.unlink()
                    restart_cycle[0] = True
                    # Graceful then Forceful
                    proc.terminate()
                    time.sleep(1)
                    if proc.poll() is None: proc.kill()
                    break
                time.sleep(0.1)
        
        t = threading.Thread(target=monitor, daemon=True)
        t.start()
        
        # Wait for session to end
        proc.wait()
            
        if restart_cycle[0] or SIGNAL_FILE.exists():
            print("\n>>> [KERNEL] Restarting Sovereign Session...")
            time.sleep(0.5)
            continue
        else:
            print("\n>>> [KERNEL] Session terminated. Shutdown complete.")
            break

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n>>> [KERNEL] Halted.")
