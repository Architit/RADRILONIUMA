# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# UNIT TEST: Drift Watchdog & Telemetry Shipper Governance Contract

import os
import sys
import json
import hashlib
import importlib
import pytest
from pathlib import Path

# Add project root to sys.path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

drift_watchdog = importlib.import_module("scripts.global.drift_watchdog")
telemetry_shipper = importlib.import_module("scripts.global.telemetry_shipper")

def test_get_sha256(tmp_path):
    test_file = tmp_path / "sample.txt"
    content = b"Hello RADRILONIUMA Resonance"
    test_file.write_bytes(content)

    expected_hash = hashlib.sha256(content).hexdigest()
    assert drift_watchdog.get_sha256(test_file) == expected_hash

def test_get_sha256_non_existent(tmp_path):
    missing_file = tmp_path / "missing.txt"
    assert drift_watchdog.get_sha256(missing_file) == ""

def test_log_heal_event_buffer_write(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)
    drift_watchdog.log_heal_event("config.json", "SUCCESS", "Restored file from canonical")

    buffer_file = tmp_path / ".gateway" / "telemetry_events.jsonl"
    assert buffer_file.exists()

    lines = buffer_file.read_text().splitlines()
    assert len(lines) == 1

    event = json.loads(lines[0])
    assert event["file"] == "config.json"
    assert event["status"] == "SUCCESS"
    assert event["event"] == "roaudter.heal"

def test_ship_telemetry_local_fallback(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)

    # Write dummy events
    buffer_file = tmp_path / ".gateway" / "telemetry_events.jsonl"
    buffer_file.parent.mkdir(parents=True, exist_ok=True)
    buffer_file.write_text(json.dumps({"event": "test.event", "status": "OK"}) + "\n")

    # Create dummy IDENTITY.md
    id_file = tmp_path / "IDENTITY.md"
    id_file.write_text("## 3. System ID\nRADR-01\n")

    telemetry_shipper.ship_telemetry()

    # Verify buffer unlinked
    assert not buffer_file.exists()

    # Verify output written to fallback local telemetry storage
    telemetry_dir = tmp_path / ".gateway" / "storage" / "local" / "telemetry"
    assert telemetry_dir.exists()

    json_files = list(telemetry_dir.glob("ARCHIVE_TELEMETRY_RADR-01_*.json"))
    assert len(json_files) == 1

    payload = json.loads(json_files[0].read_text())
    assert payload["system_id"] == "RADR-01"
    assert payload["event_count"] == 1
