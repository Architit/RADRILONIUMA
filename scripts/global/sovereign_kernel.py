#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL v3.1 (HONEST PTY PROXY / RAW AUDIT)

import os
import sys
import time
import select
import termios
import tty
import pty
import struct
import fcntl
import signal
import logging
import shutil
import subprocess
import threading
from pathlib import Path

# --- Configuration ---
BASE_DIR = Path(__file__).resolve().parents[2]
SIGNAL_FILE = BASE_DIR / ".gateway" / "ssn_restart.signal"
LOG_FILE = BASE_DIR / "lam_kernel_logs_core" / "kernel.log"
RAW_LOG = BASE_DIR / "lam_kernel_logs_core" / "raw_io.log"
AGY_PATH = shutil.which("gemini") or "/usr/bin/gemini"

# UI Marker: OSC sequence used by Gemini CLI for titles/icons.
UI_MARKER = b"\x1b]0;" 

# --- Logging ---
os.makedirs(LOG_FILE.parent, exist_ok=True)
logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s'
)

def log_raw(prefix, data):
    with open(RAW_LOG, "ab") as f:
        f.write(f"[{time.time():.3f}] {prefix}: ".encode() + data + b"\n")

class SovereignKernel:
    def __init__(self):
        self.master_fd = None
        self.child_pid = None
        self.old_termios = None
        self.state = "IDLE" 
        self.exit_requested = False

    def get_init_message(self):
        state_file = BASE_DIR / "WORKFLOW_SNAPSHOT_STATE.md"
        if state_file.exists():
            try:
                content = state_file.read_text(encoding="utf-8")
                if "## NEW_CHAT_INIT_MESSAGE" in content:
                    msg = content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()
                    if msg: return msg
            except: pass
        return "gemini node session i and pathway"

    def set_raw_mode(self):
        if sys.stdin.isatty():
            self.old_termios = termios.tcgetattr(sys.stdin)
            tty.setraw(sys.stdin.fileno())
            # Ensure stdout is also set to non-blocking or managed
            fl = fcntl.fcntl(sys.stdout.fileno(), fcntl.F_GETFL)
            fcntl.fcntl(sys.stdout.fileno(), fcntl.F_SETFL, fl | os.O_NONBLOCK)

    def restore_mode(self):
        if self.old_termios:
            termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.old_termios)

    def sync_winsize(self):
        if self.master_fd:
            s = struct.pack("HHHH", 0, 0, 0, 0)
            try:
                a = struct.unpack('HHHH', fcntl.ioctl(sys.stdout.fileno(), termios.TIOCGWINSZ, s))
                fcntl.ioctl(self.master_fd, termios.TIOCSWINSZ, struct.pack('HHHH', a[0], a[1], a[2], a[3]))
            except: pass

    def handle_sigwinch(self, signum, frame):
        self.sync_winsize()

    def spawn(self, args):
        pid, fd = pty.fork()
        if pid == 0:  # Child process
            os.execv(args[0], args)
        # Set master to non-blocking
        fl = fcntl.fcntl(fd, fcntl.F_GETFL)
        fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
        return pid, fd

    def run(self):
        logging.info("--- Sovereign Kernel v3.1 (Honest Proxy) Starting ---")
        signal.signal(signal.SIGWINCH, self.handle_sigwinch)
        
        try:
            self.set_raw_mode()
            while not self.exit_requested:
                self.session_loop()
        finally:
            self.restore_mode()
            logging.info("--- Sovereign Kernel Shutdown ---")

    def session_loop(self):
        logging.info(f"INITIATING SESSION: State={self.state}")
        try:
            subprocess.run(['bash', str(BASE_DIR / 'scripts/local/boot_protocol.sh')], check=False)
        except: pass

        self.child_pid, self.master_fd = self.spawn([AGY_PATH])
        self.sync_winsize()
        
        if self.state == "WAIT_EXIT":
            self.state = "WAIT_READY"
            logging.info("Transition: WAIT_READY (Event-driven mode)")
        else:
            self.state = "IDLE"

        while True:
            try:
                pid, status = os.waitpid(self.child_pid, os.WNOHANG)
                if pid != 0:
                    logging.info(f"Child {pid} exited. State={self.state}")
                    break
            except ChildProcessError:
                break

            if self.state == "IDLE" and SIGNAL_FILE.exists():
                logging.info("SIGNAL DETECTED: Triggering hand-off.")
                SIGNAL_FILE.unlink()
                self.state = "WAIT_EXIT"
                os.write(self.master_fd, b"/exit\r\n")
                # Immediate fallback reaper
                def force_reaper(p):
                    time.sleep(5)
                    try: 
                        os.kill(p, 0)
                        logging.warning(f"Process {p} still alive after /exit. Killing.")
                        os.kill(p, signal.SIGKILL)
                    except: pass
                threading.Thread(target=force_reaper, args=(self.child_pid,), daemon=True).start()

            r, _, _ = select.select([sys.stdin, self.master_fd], [], [], 0.05)

            if self.master_fd in r:
                try:
                    data = os.read(self.master_fd, 16384)
                    if data:
                        log_raw("FROM_PTY", data)
                        
                        if self.state == "WAIT_READY":
                            # The most reliable check: prompt text or icon
                            if UI_MARKER in data or b"Type your message" in data or b"Active Topic:" in data:
                                logging.info("READY DETECTED via RAW STREAM analysis.")
                                self.state = "INJECTING"
                                msg = self.get_init_message()
                                os.write(self.master_fd, (msg + "\r\n").encode())
                                self.state = "IDLE"
                                logging.info("Injection complete. Normal proxy restored.")

                        # Write to real terminal
                        try:
                            os.write(sys.stdout.fileno(), data)
                        except BlockingIOError:
                            time.sleep(0.01)
                            os.write(sys.stdout.fileno(), data)
                except (OSError, EOFError):
                    break

            if sys.stdin in r:
                try:
                    # Use non-blocking read for stdin
                    data = os.read(sys.stdin.fileno(), 1024)
                    if data:
                        log_raw("FROM_USER", data)
                        if self.state != "IDLE":
                            logging.warning(f"USER INPUT SUPPRESSED: Protocol active ({self.state})")
                            continue
                        os.write(self.master_fd, data)
                except (OSError, EOFError):
                    pass

        # Cleanup
        if self.master_fd:
            try: os.close(self.master_fd)
            except: pass
        
        if self.state != "WAIT_EXIT" and self.state != "WAIT_READY":
             self.exit_requested = True

if __name__ == "__main__":
    try:
        kernel = SovereignKernel()
        kernel.run()
    except Exception as e:
        if 'kernel' in locals(): kernel.restore_mode()
        logging.critical(f"FATAL: {e}")
