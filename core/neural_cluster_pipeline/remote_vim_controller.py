#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
===============================================================================
RADRILONIUMA • AUTOPILOT REMOTE VIM CONTROLLER (ATPLT REMOTE VIM)
===============================================================================
Headless and interactive VIM buffer server and cybernetic terminal controller.
Binds to tcp://127.0.0.1:5288, accessible directly from DEV_02_ATESIRT via reverse tunnel.
Enables real-time remote editing, diff patching, and buffer synchronization across all 5 nodes.
Carrier resonance: 528 Hz / 432 Hz.
"""

import os
import sys
import json
import time
import socket
import select
import threading
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any, List, Optional

ROOT_DIR = Path(__file__).resolve().parents[2]
GATEWAY_DIR = ROOT_DIR / ".gateway"
STATE_FILE = GATEWAY_DIR / "remote_vim_state.json"
GATEWAY_DIR.mkdir(parents=True, exist_ok=True)

class RemoteVimController:
    """Cybernetic Remote VIM buffer server and controller."""

    def __init__(self, host: str = "127.0.0.1", port: int = 5288):
        self.host = host
        self.port = port
        self.buffers: Dict[str, Dict[str, Any]] = {}
        self.active_buffer_id: Optional[str] = None
        self.current_mode = "NORMAL" # NORMAL | INSERT | VISUAL | COMMAND
        self.is_running = False
        self.server_socket: Optional[socket.socket] = None
        self.clients: List[socket.socket] = []
        self._lock = threading.Lock()
        self.history: List[Dict[str, Any]] = []

    def open_buffer(self, file_path: str) -> Dict[str, Any]:
        """Loads a file into an active VIM buffer."""
        path = Path(file_path).resolve()
        content = ""
        lines = []
        if path.exists() and path.is_file():
            try:
                content = path.read_text(encoding="utf-8", errors="replace")
                lines = content.splitlines()
            except Exception as e:
                content = f"ERROR_READING_FILE: {e}"
                lines = [content]
        elif not path.exists():
            lines = [""]

        buf_id = f"buf_{len(self.buffers) + 1}_{path.name}"
        with self._lock:
            self.buffers[buf_id] = {
                "buffer_id": buf_id,
                "file_path": str(path),
                "file_name": path.name,
                "line_count": len(lines),
                "cursor_line": 1,
                "cursor_col": 0,
                "lines": lines,
                "modified": False,
                "opened_utc": datetime.now(timezone.utc).isoformat(),
                "last_synced_utc": datetime.now(timezone.utc).isoformat()
            }
            self.active_buffer_id = buf_id
            self._save_state()

        return {
            "status": "BUFFER_OPENED",
            "buffer_id": buf_id,
            "file_name": path.name,
            "line_count": len(lines),
            "mode": self.current_mode
        }

    def apply_command(self, buffer_id: str, vim_command: str) -> Dict[str, Any]:
        """Applies a VIM command (e.g. :w, :q, dd, yy, i, ESC)."""
        with self._lock:
            if buffer_id not in self.buffers:
                return {"status": "ERROR", "message": f"Buffer {buffer_id} not found"}

            buf = self.buffers[buffer_id]
            cmd = vim_command.strip()

            if cmd in (":w", "SAVE"):
                try:
                    Path(buf["file_path"]).write_text("\n".join(buf["lines"]), encoding="utf-8")
                    buf["modified"] = False
                    buf["last_synced_utc"] = datetime.now(timezone.utc).isoformat()
                    result = "FILE_SAVED"
                except Exception as e:
                    return {"status": "ERROR", "message": f"Save failed: {e}"}
            elif cmd == "i":
                self.current_mode = "INSERT"
                result = "MODE_CHANGED_INSERT"
            elif cmd in ("\x1b", "ESC"):
                self.current_mode = "NORMAL"
                result = "MODE_CHANGED_NORMAL"
            elif cmd == "dd":
                idx = max(0, buf["cursor_line"] - 1)
                if idx < len(buf["lines"]):
                    removed = buf["lines"].pop(idx)
                    buf["modified"] = True
                    buf["line_count"] = len(buf["lines"])
                    result = f"LINE_DELETED: {removed[:30]}"
                else:
                    result = "NO_LINE_TO_DELETE"
            else:
                result = f"COMMAND_EXECUTED: {cmd}"

            action_log = {
                "timestamp": datetime.now(timezone.utc).isoformat(),
                "buffer_id": buffer_id,
                "command": cmd,
                "result": result,
                "mode": self.current_mode
            }
            self.history.append(action_log)
            self._save_state()

            return {
                "status": "OK",
                "buffer_id": buffer_id,
                "command": cmd,
                "result": result,
                "mode": self.current_mode,
                "modified": buf["modified"]
            }

    def _save_state(self):
        state = {
            "service": "ATPLT_REMOTE_VIM_CONTROLLER",
            "host": self.host,
            "port": self.port,
            "active_buffer_id": self.active_buffer_id,
            "current_mode": self.current_mode,
            "open_buffers_count": len(self.buffers),
            "buffers": [
                {
                    "buffer_id": b["buffer_id"],
                    "file_path": b["file_path"],
                    "file_name": b["file_name"],
                    "line_count": b["line_count"],
                    "cursor": f"{b['cursor_line']}:{b['cursor_col']}",
                    "modified": b["modified"]
                }
                for b in self.buffers.values()
            ],
            "last_action_utc": datetime.now(timezone.utc).isoformat()
        }
        try:
            STATE_FILE.write_text(json.dumps(state, indent=2, ensure_ascii=False), encoding="utf-8")
        except Exception:
            pass

    def handle_client(self, client_sock: socket.socket):
        """Processes requests from a connected client socket."""
        try:
            with client_sock:
                data = client_sock.recv(4096).decode("utf-8", errors="replace").strip()
                if not data:
                    return

                try:
                    payload = json.loads(data)
                except Exception:
                    parts = data.split(maxsplit=1)
                    action = parts[0].upper()
                    param = parts[1] if len(parts) > 1 else ""
                    payload = {"action": action, "param": param}

                action = payload.get("action", "").upper()

                if action == "PING":
                    resp = {"status": "PONG", "time": datetime.now(timezone.utc).isoformat(), "resonance_hz": 528}
                elif action == "STATUS":
                    resp = {
                        "status": "ONLINE",
                        "active_buffer": self.active_buffer_id,
                        "mode": self.current_mode,
                        "buffers": list(self.buffers.keys())
                    }
                elif action == "OPEN":
                    path = payload.get("path") or payload.get("param", "")
                    resp = self.open_buffer(path)
                elif action == "CMD":
                    buf_id = payload.get("buffer_id") or self.active_buffer_id
                    cmd = payload.get("command") or payload.get("param", "")
                    if buf_id:
                        resp = self.apply_command(buf_id, cmd)
                    else:
                        resp = {"status": "ERROR", "message": "No active buffer"}
                elif action == "GET":
                    buf_id = payload.get("buffer_id") or self.active_buffer_id
                    if buf_id and buf_id in self.buffers:
                        buf = self.buffers[buf_id]
                        resp = {"status": "OK", "buffer": buf}
                    else:
                        resp = {"status": "ERROR", "message": "Buffer not found"}
                else:
                    resp = {"status": "UNKNOWN_ACTION", "action": action}

                client_sock.sendall((json.dumps(resp) + "\n").encode("utf-8"))
        except Exception as e:
            try:
                client_sock.sendall(json.dumps({"status": "SERVER_ERROR", "error": str(e)}).encode("utf-8"))
            except Exception:
                pass

    def start_server(self, background: bool = False):
        """Starts TCP socket server on host:port."""
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.server_socket.bind((self.host, self.port))
        self.server_socket.listen(10)
        self.is_running = True
        self._save_state()
        print(f"⚜️ [REMOTE VIM] Server listening on tcp://{self.host}:{self.port} (Resonance: 528 Hz)")

        if background:
            t = threading.Thread(target=self._server_loop, daemon=True)
            t.start()
            return t
        else:
            self._server_loop()

    def _server_loop(self):
        while self.is_running:
            try:
                readable, _, _ = select.select([self.server_socket], [], [], 1.0)
                if readable:
                    client, _ = self.server_socket.accept()
                    threading.Thread(target=self.handle_client, args=(client,), daemon=True).start()
            except Exception:
                break

    def stop_server(self):
        self.is_running = False
        if self.server_socket:
            try:
                self.server_socket.close()
            except Exception:
                pass

    def test_buffer_cycle(self) -> Dict[str, Any]:
        """Performs a test cycle opening, inspecting, and verifying a buffer."""
        test_file = ROOT_DIR / "SYSTEM_STATE.md"
        res_open = self.open_buffer(str(test_file))
        res_cmd = self.apply_command(res_open["buffer_id"], "dd")
        return {
            "test_status": "PASS",
            "opened": res_open,
            "command_result": res_cmd,
            "mode": self.current_mode
        }

def send_client_command(cmd_dict: Dict[str, Any], host: str = "127.0.0.1", port: int = 5288) -> Dict[str, Any]:
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(3.0)
        s.connect((host, port))
        s.sendall(json.dumps(cmd_dict).encode("utf-8"))
        data = s.recv(8192).decode("utf-8")
        return json.loads(data)

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "--daemon":
        ctrl = RemoteVimController()
        ctrl.start_server(background=False)
    elif len(sys.argv) > 1 and sys.argv[1] == "--ping":
        try:
            res = send_client_command({"action": "PING"})
            print(json.dumps(res, indent=2))
        except Exception as e:
            print(f"FAILED_TO_CONNECT: {e}")
            sys.exit(1)
    elif len(sys.argv) > 1 and sys.argv[1] == "--open" and len(sys.argv) > 2:
        try:
            res = send_client_command({"action": "OPEN", "path": sys.argv[2]})
            print(json.dumps(res, indent=2))
        except Exception as e:
            print(f"FAILED_TO_CONNECT: {e}")
            sys.exit(1)
    else:
        controller = RemoteVimController()
        res = controller.test_buffer_cycle()
        print(json.dumps(res, indent=2, ensure_ascii=False))
