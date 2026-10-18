#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • MILESTONE M4 E2E ACCEPTANCE & CLUSTER RESONANCE SUITE
====================================================================
Programmatic verification of all 14 Features (R1, R2, R3, R4) and
Master Plan Phase I/II (Kernel-Heart-Soul-Mind, 4-Tier Neural Mesh,
LAM Unified Orchestrator, Dual-Port 3001/3000, and Zero-Permission TV Touch Monitor).
"""

import gzip
import json
import socket
import subprocess
import urllib.request
from pathlib import Path

import pytest

REPO_ROOT = Path("/root/RADRILONIUMA")
GATEWAY_DIR = REPO_ROOT / ".gateway"
VAULT_ROOT = Path("/mnt/f")
VAULT_ARCHIVE = VAULT_ROOT / "ATESIRT_VAULT_ARCHIVE"


def _http_json(url: str, method: str = "GET", payload: dict | None = None, timeout: float = 10.0) -> tuple[int, dict]:
    data = json.dumps(payload).encode("utf-8") if payload is not None else None
    headers = {"Content-Type": "application/json"} if data is not None else {}
    req = urllib.request.Request(url, data=data, headers=headers, method=method)
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return resp.status, json.loads(resp.read().decode("utf-8"))


def test_m1_session_segmenter_guard_and_gzip_vault_sync():
    """Verifies R1 (Features 1-5): Session segmenter guard, .gz archives, and T7 Vault sync."""
    archive_sessions = REPO_ROOT / "archive" / "sessions"
    vault_sessions = VAULT_ARCHIVE / "sessions"
    assert archive_sessions.exists(), "Local session archive directory missing"
    assert vault_sessions.exists(), "T7 Vault session archive directory missing"

    gz_files = list(archive_sessions.rglob("*.jsonl.gz"))
    assert len(gz_files) > 0, "Expected at least one compressed .jsonl.gz segment in local archive"

    # Verify gzip integrity of archived segments
    for gz_path in gz_files[:5]:
        with gzip.open(gz_path, "rt", encoding="utf-8") as f:
            first_line = f.readline()
            assert first_line.strip().startswith("{"), f"Invalid JSONL in {gz_path}"


def test_m2_socket_5280_and_capsule_zero_inflation_ingest():
    """Verifies R2 (Features 6-9): Port 5280 TCP listener, 8-gen matrix, 13 connectors, and state ingestion."""
    with socket.create_connection(("127.0.0.1", 5280), timeout=3.0) as sock:
        assert sock is not None

    status_code, export_res = _http_json(
        "http://127.0.0.1:5280/api/ssn/transfer/export",
        method="POST",
        payload={"session_id": "ca2d944d-e99b-4ec1-9a27-7fa50f96003f"},
    )
    assert status_code == 200
    capsule_file = GATEWAY_DIR / "SSN_TRANSFER_CAPSULE.json"
    assert capsule_file.exists(), "SSN_TRANSFER_CAPSULE.json missing"
    capsule_doc = json.loads(capsule_file.read_text(encoding="utf-8"))
    payload = capsule_doc.get("payload", capsule_doc)

    generations = payload.get("generation_matrix_8", [])
    assert len(generations) == 8, f"Expected 8 evolutionary generations (G.V.5..G.V.12), got {len(generations)}"

    connectors = payload.get("stream_connectors_13", [])
    assert len(connectors) == 13, f"Expected 13 LAO-LAM-LA-DELTA connectors, got {len(connectors)}"

    status_imp, import_res = _http_json(
        "http://127.0.0.1:5280/api/ssn/transfer/import",
        method="POST",
        payload={"target_session_id": "d1f5395f-beb8-4b79-9607-d0ada3498e59"},
    )
    assert status_imp == 200
    state_file = GATEWAY_DIR / "lao_lam_la_delta_agent_state.json"
    assert state_file.exists(), "Ingested state file lao_lam_la_delta_agent_state.json missing"
    state_data = json.loads(state_file.read_text(encoding="utf-8"))
    assert "capsule_id" in state_data or "status" in state_data


def test_m3_substrate_bios_boot_and_m49_safety():
    """Verifies R3 & R4 (Features 10-13): ISO SHA256 manifest, non-destructive F: boot config, P0 & M49."""
    cmd = [
        "/root/RADRILONIUMA/venv/bin/python3",
        str(REPO_ROOT / "scripts" / "global" / "substrate_bios_boot_gateway.py"),
        "--all",
        "--json",
    ]
    proc = subprocess.run(cmd, capture_output=True, text=True, check=True)
    out = json.loads(proc.stdout)

    assert out["status"] == "SUCCESS"
    assert out["iso_verification"]["all_verified"] is True
    assert len(out["iso_verification"]["results"]) == 3

    boot_prep = out["boot_preparation"]
    assert boot_prep["safety_audit"] == "P0_SAFETY_CONTRACT_V1_VERIFIED"
    assert boot_prep["atesirt_vault_archive_preserved"] is True
    assert (VAULT_ROOT / "boot" / "grub" / "grub.cfg").exists()
    assert (VAULT_ROOT / "nocloud" / "autoinstall.yaml").exists()
    assert (VAULT_ROOT / "autoinstall" / "user-data").exists()
    assert (VAULT_ROOT / "autoinstall" / "meta-data").exists()
    assert (VAULT_ROOT / "GOD_SEED_INIT" / "REBIRTH.sh").exists()
    assert (VAULT_ROOT / "post_install_upgrade.sh").exists()

    upg = out["upgrade_pipeline"]
    assert upg["mandate"] == "M49_INITIATOR_REBOOTS_LAST"
    assert upg["m49_compliant"] is True
    assert upg["reboot_cascade_order"][-1] == "DEV_01_BUSHMASTER"


def test_m4_master_plan_mind_neural_lam_and_tv_touch_monitor():
    """Verifies Feature 14 & Master Plan Components 1-4: Mind, 4-Tier Mesh, LAM, Dual-Port 3001/3000 & TV Monitor."""
    # 1. Kernel-Heart-Soul-Mind Manifest
    mind_manifest = REPO_ROOT / "kernel_heart_soul_core" / "mind" / "mind_manifest.json"
    assert mind_manifest.exists()
    mind_data = json.loads(mind_manifest.read_text(encoding="utf-8"))
    assert mind_data["status"] == "SYNCHRONIZED_AND_VERIFIED"
    assert len(mind_data["pillars_verified"]) == 5

    # 2. 4-Tier Neural Mesh (Synapse, Tynapse, Nynapse, Rynapse)
    mesh_file = REPO_ROOT / "data" / "tynapse_mesh.json"
    assert mesh_file.exists()
    mesh_data = json.loads(mesh_file.read_text(encoding="utf-8"))
    assert mesh_data["synapses_count"] == 1024
    for tier in ("SYNAPSE", "TYNAPSE", "NYNAPSE", "RYNAPSE"):
        assert tier in mesh_data["neural_tiers"]

    # 3. LAM Unified Agent Orchestrator State
    lam_state = GATEWAY_DIR / "lam_unified_orchestrator_state.json"
    assert lam_state.exists()
    lam_data = json.loads(lam_state.read_text(encoding="utf-8"))
    assert lam_data["os_sys_root_tree"]["status"] == "ALL_SUBSTRATES_LOCKED_528HZ"

    # 4. Dual-Port 3001 & 3000 + Zero-Permission TV Touch Monitor & Harmonic Elevator
    code_3001, status_3001 = _http_json("http://127.0.0.1:3001/api/status")
    code_3000, status_3000 = _http_json("http://127.0.0.1:3000/api/status")
    assert code_3001 == 200 and status_3001["resonance"] == "528 Hz"
    assert code_3000 == 200 and status_3000["resonance"] == "528 Hz"

    pub_dir = Path("/root/workspace/gateway/public")
    mirror_html = (pub_dir / "phone_mirror.html").read_text(encoding="utf-8")
    dual_html = (pub_dir / "phone_dual.html").read_text(encoding="utf-8")
    index_html = (pub_dir / "index.html").read_text(encoding="utf-8")

    assert "tvMonitorOverlay" in mirror_html
    assert "SAMSUNG SM-A266B" in mirror_html
    assert "agentHarmonicElevatorDeck" in dual_html
    assert "invertedDormantTray" in dual_html
    assert "tvTouchMonitorDeck" in dual_html
    assert "agentHarmonicElevatorDeck" in index_html
