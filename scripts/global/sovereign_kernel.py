#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN KERNEL v4.0 (PROTOCOL-COMPLIANT / SELF-RESTARTING)

import os, sys, time, select, termios, tty, pty, struct, fcntl, signal, logging, shutil, subprocess, json, re
from pathlib import Path

# Setup logging immediately
BASE_DIR = Path(__file__).resolve().parent.parent.parent
LOG_FILE = BASE_DIR / "lam_kernel_logs_core" / "kernel.log"
os.makedirs(LOG_FILE.parent, exist_ok=True)

logging.basicConfig(
    filename=LOG_FILE,
    level=logging.DEBUG,
    format='%(asctime)s [%(levelname)s] %(message)s'
)

def log_error(msg):
    logging.error(msg)
    print(f"\r\n[KERNEL ERROR] {msg}\r\n", file=sys.stderr)

class SovereignKernel:
    def __init__(self):
        self.master_fd = None
        self.child_pid = None
        self.old_termios = None
        self.state = "IDLE" 
        self.current_cwd = str(BASE_DIR)
        self.signal_file = BASE_DIR / ".gateway" / "ssn_restart.signal"
        self.exit_signal_file = BASE_DIR / ".gateway" / "ssn_exit.signal"
        self.state_file = BASE_DIR / ".gateway" / "last_session_env.json"
        self.cli_path = shutil.which("agy") or shutil.which("gemini") or "/usr/bin/agy"
        self.load_state()

    def load_state(self):
        if self.state_file.exists():
            try:
                data = json.loads(self.state_file.read_text())
                self.current_cwd = data.get("cwd", str(BASE_DIR))
                logging.info(f"Context restored: {self.current_cwd}")
            except Exception as e:
                logging.warning(f"Failed to load context: {e}")

    def save_state(self):
        try:
            self.state_file.parent.mkdir(parents=True, exist_ok=True)
            self.state_file.write_text(json.dumps({"cwd": self.current_cwd, "ts": time.time()}))
        except Exception as e:
            logging.warning(f"Failed to save context: {e}")

    def get_init_msg(self):
        try:
            state_file = BASE_DIR / "WORKFLOW_SNAPSHOT_STATE.md"
            if state_file.exists():
                content = state_file.read_text(encoding="utf-8")
                if "## NEW_CHAT_INIT_MESSAGE" in content:
                    return content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()
        except: pass
        return "ssn rstrt"

    def restart_self(self):
        logging.info("--- Sovereign Kernel Self-Restart (Protocol Hand-off) ---")
        if self.old_termios:
            termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.old_termios)
        
        # Re-exec boot protocol chain
        # Note: We use /bin/bash -c to execute the && chain
        cmd = "bash scripts/local/boot_protocol.sh && bash boot_cli_inner.sh"
        os.execv("/bin/bash", ["bash", "-c", cmd])

    def run(self):
        logging.info("--- Sovereign Kernel v4.0 Ignition ---")
        if sys.stdin.isatty():
            self.old_termios = termios.tcgetattr(sys.stdin)
            tty.setraw(sys.stdin.fileno())
        
        signal.signal(signal.SIGWINCH, lambda s, f: self.sync_winsize())
        
        try:
            while True:
                self.session_loop()
                
                if self.state == "RESTARTING":
                    logging.info("Initiating full system restart...")
                    self.restart_self()
                
                if self.exit_signal_file.exists():
                    self.exit_signal_file.unlink()
                    logging.info("Exit signal detected. Shutting down...")
                    break
                
                logging.info("Session ended normally. Restarting in 1s (Sovereign Loop)...")
                time.sleep(1)
        except KeyboardInterrupt:
            logging.info("KeyboardInterrupt. Exiting.")
        finally:
            if self.old_termios:
                termios.tcsetattr(sys.stdin, termios.TCSADRAIN, self.old_termios)

    def sync_winsize(self):
        if self.master_fd:
            try:
                s = struct.pack("HHHH", 0, 0, 0, 0)
                a = struct.unpack('HHHH', fcntl.ioctl(sys.stdout.fileno(), termios.TIOCGWINSZ, s))
                fcntl.ioctl(self.master_fd, termios.TIOCSWINSZ, struct.pack('HHHH', a[0], a[1], a[2], a[3]))
            except: pass

    def session_loop(self):
        logging.info(f"Starting {self.cli_path} in {self.current_cwd}")
        
        pid, fd = pty.fork()
        if pid == 0:
            try:
                os.setpgrp()
                os.chdir(self.current_cwd)
                # Ensure child doesn't relaunch itself too aggressively if kernel is managing it
                os.environ["GEMINI_CLI_NO_RELAUNCH"] = "1"
                os.execv(self.cli_path, [self.cli_path])
            except Exception as e:
                print(f"Failed to exec {self.cli_path}: {e}")
                os._exit(1)
        
        self.child_pid, self.master_fd = pid, fd
        self.sync_winsize()
        
        fl = fcntl.fcntl(fd, fcntl.F_GETFL)
        fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
        
        session_state = "WAIT_READY" if self.state == "RESTARTING" else "NORMAL"
        self.state = "RUNNING"
        buffer = b""
        
        while True:
            # 1. CWD Tracking
            try:
                new_cwd = os.readlink(f"/proc/{pid}/cwd")
                if new_cwd != self.current_cwd:
                    self.current_cwd = new_cwd
                    self.save_state()
            except: pass
            
            # 2. Exit check
            try:
                exit_pid, status = os.waitpid(pid, os.WNOHANG)
                if exit_pid != 0:
                    logging.info(f"Child {pid} exited with status {status}")
                    break
            except ChildProcessError: break

            # 3. Signals
            if self.signal_file.exists():
                self.signal_file.unlink()
                logging.info("Handshake signal received. Scheduling full restart...")
                self.state = "RESTARTING"
                try: os.write(fd, b"\x03\x03\x03/exit\r\n")
                except: pass
                # Let it exit gracefully, or break loop if it hangs
            
            if self.exit_signal_file.exists():
                logging.info("External exit signal seen. Killing child...")
                try: os.killpg(os.getpgid(pid), 9)
                except: pass
                break

            # 4. I/O
            r, _, _ = select.select([sys.stdin, fd], [], [], 0.05)
            
            if fd in r:
                try:
                    data = os.read(fd, 32768)
                    if not data: break
                    
                    if session_state == "WAIT_READY":
                        buffer += data
                        if any(m in buffer for m in [b"\x1b]0;", b"Type your message", b"Active Topic:"]):
                            logging.info("UI Ready. Injecting context.")
                            msg = self.get_init_msg()
                            os.write(fd, (msg + "\r\n").encode())
                            session_state = "NORMAL"
                            buffer = b""
                    
                    os.write(sys.stdout.fileno(), data)
                except: break
                
            if sys.stdin in r:
                try:
                    data = os.read(sys.stdin.fileno(), 4096)
                    if data:
                        os.write(fd, data)
                except: pass

        try: os.close(fd)
        except: pass

if __name__ == "__main__":
    try:
        kernel = SovereignKernel()
        kernel.run()
    except Exception as e:
        log_error(f"Fatal kernel error: {e}")
        sys.exit(1)
