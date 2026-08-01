#!/usr/bin/env python3
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import os
import subprocess
import time
import json
from datetime import datetime, timezone
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parents[1]

def collect_kernel_logs(max_lines=20):
    """Safely collects recent kernel dmesg logs without hardcoded PINs."""
    # Attempt 1: Direct unprivileged dmesg
    try:
        res = subprocess.run(["dmesg"], capture_output=True, text=True, timeout=5)
        if res.returncode == 0 and res.stdout.strip():
            lines = res.stdout.strip().splitlines()
            return "\n".join(lines[-max_lines:])
    except Exception:
        pass

    # Attempt 2: Non-interactive sudo (sudo -n dmesg)
    try:
        res = subprocess.run(["sudo", "-n", "dmesg"], capture_output=True, text=True, timeout=5)
        if res.returncode == 0 and res.stdout.strip():
            lines = res.stdout.strip().splitlines()
            return "\n".join(lines[-max_lines:])
    except Exception:
        pass

    # Attempt 3: Safe SUDO_PIN environment variable
    sudo_pin = os.environ.get("SUDO_PIN")
    if sudo_pin:
        try:
            res = subprocess.run(
                ["sudo", "-S", "dmesg"],
                input=f"{sudo_pin}\n",
                capture_output=True,
                text=True,
                timeout=5
            )
            if res.returncode == 0 and res.stdout.strip():
                lines = res.stdout.strip().splitlines()
                return "\n".join(lines[-max_lines:])
        except Exception:
            pass

    # Fallback: Graceful degradation without failing
    print("[WARN] Kernel log collection restricted (permission denied or no SUDO_PIN provided).")
    return ""

def send_telemetry_event(event_type, payload):
    """Appends a structured JSON event to .gateway/telemetry_events.jsonl."""
    gateway_dir = BASE_DIR / ".gateway"
    gateway_dir.mkdir(parents=True, exist_ok=True)
    telemetry_file = gateway_dir / "telemetry_events.jsonl"
    
    event = {
        "ts_utc": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "event": event_type,
        "payload": payload
    }
    with telemetry_file.open("a", encoding="utf-8") as f:
        f.write(json.dumps(event) + "\n")
    return event

class RadriloniumaTelemetryNexus:
    def __init__(self):
        self.log_path = str(BASE_DIR / "gov" / "report" / "telemetry_nexus.log")
        self.scanned_devices = {}
        # Ensure log directory exists
        os.makedirs(os.path.dirname(self.log_path), exist_ok=True)

    def log(self, message, level="INFO"):
        timestamp = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
        log_entry = f"[{timestamp}] [RADR_NEXUS] [{level}] {message}\n"
        with open(self.log_path, "a", encoding="utf-8") as f:
            f.write(log_entry)
        print(log_entry.strip())

    def scan_usb_buses(self):
        self.log("Scanning primary USB buses for connected organs/devices...")
        try:
            lsusb_out = subprocess.check_output(["lsusb"]).decode("utf-8")
            for line in lsusb_out.strip().split("\n"):
                if line:
                    self.log(f"Detected Node: {line}")
        except Exception as e:
            self.log(f"USB Scan failed: {e}", "CRITICAL")

    def check_dataflow_integrity(self):
        self.log("Verifying dataflow parameters and driver hooks...")
        try:
            dmesg_tail = collect_kernel_logs(max_lines=20)
            if dmesg_tail:
                if "error" in dmesg_tail.lower() or "fail" in dmesg_tail.lower():
                    self.log("Potential dataflow interruption detected in recent kernel logs.", "WARN")
                else:
                    self.log("Kernel log integrity check passed clean.")
            else:
                self.log("Kernel logs unavailable or restricted; skipping kernel dmesg inspection.", "WARN")
        except Exception as e:
            self.log(f"Dataflow check failed: {e}", "ERROR")

    def collect_kernel_logs(self, max_lines=20):
        return collect_kernel_logs(max_lines)

    def send_telemetry_event(self, event_type, payload):
        return send_telemetry_event(event_type, payload)

    def run_startup_sequence(self):
        self.log("BIOS/Boot Telemetry Initialization Started", "SYS_BOOT")
        self.scan_usb_buses()
        self.check_dataflow_integrity()
        send_telemetry_event("telemetry_nexus.startup", {"status": "ONLINE", "log_path": self.log_path})
        self.log("Telemetry Nexus Scan Complete. Monitoring active.")

if __name__ == "__main__":
    nexus = RadriloniumaTelemetryNexus()
    nexus.run_startup_sequence()

