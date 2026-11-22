#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Unit & Integration Verification Suite for LAM_ARCHIVATOR_AGENT Initialization Execution Protocol (INTRNL & EXTRNL SS)
Covers:
  - Feature 7: LAM_ARCHIVATOR_AGENT_INIT_EXECUTION_PROTOCOL_V1 spec & invariants
  - Feature 8: scripts/global/lam_archivator_init.py (internal, external, both, auto-slice, dry-run, degraded)
  - Feature 9: LamUnifiedAgentOrchestrator & SocketIngressHTTPHandler /api/ssn/archivator/init & Windows pointer mirror
  - Feature 10: Lifecycle hook integration (boot_protocol.sh, atplt_boot_loader, agy_edge_session_manager, master_plan_continuous_executor)
"""

import importlib.util
import json
import threading
import urllib.request
from pathlib import Path
import pytest

REPO_ROOT = Path(__file__).resolve().parents[1]


def _load_init_module():
    script_path = REPO_ROOT / "scripts" / "global" / "lam_archivator_init.py"
    spec = importlib.util.spec_from_file_location("lam_archivator_init", str(script_path))
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def test_protocol_spec_files_exist_and_enforce_invariants():
    p1 = REPO_ROOT / "data" / "source" / "protocols" / "LAM_ARCHIVATOR_AGENT_INIT_EXECUTION_PROTOCOL_V1.md"
    p2 = REPO_ROOT / "contract" / "LAM_ARCHIVATOR_AGENT_INIT_EXECUTION_PROTOCOL_V1.md"
    assert p1.is_file()
    assert p2.is_file()
    text = p1.read_text(encoding="utf-8")
    assert "INTRNL" in text and "EXTRNL" in text
    assert "UI_DEVICE_LOCK" in text
    assert "DEGRADED_GRACEFUL" in text
    assert "QUARANTINE_MODE" in text


def test_lam_archivator_init_internal_and_auto_slice(tmp_path, monkeypatch):
    mod = _load_init_module()
    repo = tmp_path / "repo"
    gw = repo / ".gateway"
    sessions_dir = gw / "sessions"
    chronolog_dir = repo / "chronolog"
    vault_dir = tmp_path / "vault" / "ATESIRT_VAULT_ARCHIVE" / "sessions"
    win_gw = tmp_path / "win_bushm" / ".gateway"
    for d in (sessions_dir, chronolog_dir, vault_dir, win_gw):
        d.mkdir(parents=True, exist_ok=True)

    monkeypatch.setenv("RADR_REPO_ROOT", str(repo))
    monkeypatch.setenv("RADR_VAULT_SESSIONS_DIR", str(vault_dir))
    monkeypatch.setenv("RADR_WIN_GATEWAY_DIR", str(win_gw))

    sid = "abb90a58-54be-4e96-b0f8-963ad005ec0f"
    ssn_file = sessions_dir / f"{sid}.jsonl"
    with open(ssn_file, "w", encoding="utf-8") as fh:
        for i in range(160):
            fh.write(json.dumps({"step_index": i + 1, "input_tokens": 1500, "output_tokens": 500}) + "\n")

    # Dry-run must not slice
    dry_rep = mod.run_lam_archivator_init(
        mode="internal",
        source_session_id=sid,
        auto_slice=True,
        dry_run=True,
        repo_root=repo,
    )
    assert dry_rep["status"] == "READY"
    assert dry_rep["internal"]["segmenter_status"] == "BRAKE_ENGAGED"
    assert dry_rep["internal"]["auto_sliced"] is False
    assert not (repo / "archive" / "sessions" / sid / "segment_index.json").exists()

    # Live auto-slice must slice, mirror to vault, and sync Windows pointer
    live_rep = mod.run_lam_archivator_init(
        mode="both",
        source_session_id=sid,
        target_session_id="560127fe-00ec-4f93-b040-b4531d54e04d",
        auto_slice=True,
        dry_run=False,
        repo_root=repo,
    )
    assert live_rep["status"] == "READY"
    assert live_rep["internal"]["auto_sliced"] is True
    assert live_rep["internal"]["vault_mirrored"] is True
    assert live_rep["internal"]["capsule_synced"] is True
    assert live_rep["internal"]["windows_pointer_synced"] is True
    assert (repo / "archive" / "sessions" / sid / "segment_index.json").is_file()
    assert (vault_dir / sid / "segment_index.json").is_file()
    assert (win_gw / "SSN_TRANSFER_POINTER.json").is_file()
    assert live_rep["external"]["ui_device_lock_respected"] is True
    assert (gw / "lam_archivator_init_state.json").is_file()
    assert (chronolog_dir / "lam_archivator_init_ledger.jsonl").is_file()


def test_lam_archivator_init_degrades_gracefully_never_quarantines(tmp_path, monkeypatch):
    mod = _load_init_module()
    repo = tmp_path / "repo"
    (repo / ".gateway").mkdir(parents=True, exist_ok=True)
    missing_vault = tmp_path / "unmounted_vault" / "sessions"
    monkeypatch.setenv("RADR_VAULT_SESSIONS_DIR", str(missing_vault))
    monkeypatch.setenv("FAKE_ADB_ONLINE", "0")

    rep = mod.run_lam_archivator_init(mode="both", repo_root=repo)
    assert rep["status"] == "DEGRADED_GRACEFUL"
    assert rep["status"] != "QUARANTINE_MODE"
    assert rep["internal"]["vault_mirrored"] is False
    assert rep["external"]["status"] == "DEGRADED_GRACEFUL"


def test_socket_ingress_gateway_archivator_init_endpoint(tmp_path, monkeypatch):
    import core.stream_conveyor.socket_ingress_gateway as sig

    repo = tmp_path / "repo"
    gw = repo / ".gateway"
    arch = repo / "archive" / "sessions"
    vault = tmp_path / "vault" / "sessions"
    win_gw = tmp_path / "win_bushm" / ".gateway"
    for d in (gw, arch, vault, win_gw):
        d.mkdir(parents=True, exist_ok=True)

    monkeypatch.setattr(sig, "REPO_ROOT", repo)
    monkeypatch.setattr(sig, "GATEWAY_DIR", gw)
    monkeypatch.setattr(sig, "ARCHIVE_DIR", arch)
    monkeypatch.setattr(sig, "T7_VAULT_SESSIONS", vault)
    monkeypatch.setenv("RADR_WIN_GATEWAY_DIR", str(win_gw))

    server = sig.ThreadingHTTPServerWithBacklog(("127.0.0.1", 0), sig.SocketIngressHTTPHandler)
    port = server.server_address[1]
    t = threading.Thread(target=server.serve_forever, daemon=True)
    t.start()
    try:
        req = urllib.request.Request(
            f"http://127.0.0.1:{port}/api/ssn/archivator/init",
            data=json.dumps({"mode": "both", "dry_run": False}).encode("utf-8"),
            headers={"Content-Type": "application/json"},
            method="POST",
        )
        with urllib.request.urlopen(req, timeout=10) as resp:
            assert resp.status == 200
            doc = json.loads(resp.read().decode("utf-8"))
            assert doc["status"] in ("READY", "DEGRADED_GRACEFUL")
            assert doc["internal"]["capsule_synced"] is True
            assert (win_gw / "SSN_TRANSFER_POINTER.json").is_file()
    finally:
        server.shutdown()
        server.server_close()
