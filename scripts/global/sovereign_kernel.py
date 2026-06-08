#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL v2.0 (MULTI-INJECTION SOVEREIGNTY)

import os
import sys
import subprocess
import time
import threading
import shutil
import logging
import fcntl
import termios
from pathlib import Path

# Paths
BASE_DIR = Path(__file__).resolve().parents[2]
SIGNAL_FILE = BASE_DIR / ".gateway" / "ssn_restart.signal"
LOG_FILE = BASE_DIR / "lam_kernel_logs_core" / "kernel.log"
# Force GEMINI
AGY_PATH = shutil.which("gemini") or "/usr/bin/gemini"

# Configure logging
os.makedirs(LOG_FILE.parent, exist_ok=True)
logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s'
)

def get_init_message():
    state_file = BASE_DIR / "WORKFLOW_SNAPSHOT_STATE.md"
    if state_file.exists():
        try:
            content = state_file.read_text(encoding="utf-8")
            if "## NEW_CHAT_INIT_MESSAGE" in content:
                msg = content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()
                if msg: return msg
        except: pass
    return "gemini node session i and pathway"

def inject_keys(text):
    """Universal TTY injection mechanism."""
    success = False
    
    # Method 1: TIOCSTI on /dev/tty (Most direct)
    try:
        with open('/dev/tty', 'w') as fd:
            for byte in text.encode('utf-8'):
                fcntl.ioctl(fd.fileno(), termios.TIOCSTI, bytes([byte]))
        logging.info("Injection: Method 1 (TIOCSTI /dev/tty) Success.")
        success = True
    except Exception as e:
        logging.warning(f"Injection: Method 1 failed: {e}")

    # Method 2: TIOCSTI on stdin/stdout if Method 1 failed
    if not success:
        for stream in [sys.stdin, sys.stdout, sys.stderr]:
            try:
                if stream.isatty():
                    for byte in text.encode('utf-8'):
                        fcntl.ioctl(stream.fileno(), termios.TIOCSTI, bytes([byte]))
                    logging.info(f"Injection: Method 2 (TIOCSTI {stream.name}) Success.")
                    success = True
                    break
            except: pass

    # Method 3: Tmux/Screen (Context-dependent)
    if not success:
        if os.environ.get('TMUX'):
            try:
                subprocess.run(['tmux', 'send-keys', text], check=True)
                logging.info("Injection: Method 3 (TMUX) Success.")
                success = True
            except: pass
        elif os.environ.get('STY'):
            try:
                subprocess.run(['screen', '-X', 'stuff', text], check=True)
                logging.info("Injection: Method 3 (SCREEN) Success.")
                success = True
            except: pass

    if not success:
        logging.error("FATAL: All injection methods failed.")
    return success

def main():
    os.environ["AELARIA_KERNEL_ACTIVE"] = "1"
    os.environ["GEMINI_CLI_NO_RELAUNCH"] = "1"
    
    logging.info(f"--- Sovereign Kernel v2.0 Starting (PID: {os.getpid()}) ---")
    
    while True:
        if SIGNAL_FILE.exists(): SIGNAL_FILE.unlink()
        
        logging.info("Step 1/3: Boot Protocols...")
        try:
            subprocess.run(['bash', str(BASE_DIR / 'scripts/local/boot_protocol.sh')], check=False)
        except: pass

        logging.info("Step 2/3: Spawning Session...")
        proc = subprocess.Popen(
            [AGY_PATH], 
            stdin=sys.stdin, 
            stdout=sys.stdout, 
            stderr=sys.stderr,
            start_new_session=True 
        )
        
        restart_cycle = [False]
        def monitor():
            while proc.poll() is None:
                if SIGNAL_FILE.exists():
                    logging.info("INTERCEPT: Restart signal.")
                    SIGNAL_FILE.unlink()
                    restart_cycle[0] = True
                    
                    inject_keys("/exit\r\n")
                    time.sleep(5) 
                    
                    if proc.poll() is None:
                        logging.info("Force kill...")
                        try: os.killpg(os.getpgid(proc.pid), 9)
                        except: pass
                    break
                time.sleep(1)
        
        t = threading.Thread(target=monitor, daemon=True)
        t.start()
        
        proc.wait()
        
        if restart_cycle[0]:
            logging.info("Re-birth Handshake...")
            msg = get_init_message()
            def rebirth():
                time.sleep(8)
                logging.info("Step 3/3: Re-birth injection...")
                inject_keys(msg + "\r\n")
            threading.Thread(target=rebirth, daemon=True).start()
            continue
        else:
            logging.info("Shutdown.")
            break

if __name__ == "__main__":
    try: main()
    except Exception as e: logging.critical(f"KERNEL CRASH: {e}")
