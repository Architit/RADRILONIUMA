#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • TEST SUITE: SOCKET INGRESS GATEWAY & CROSS-SESSION TRANSFER
========================================================================
Tests 8-generation matrix (G.V.5 -> G.V.12, deadline 2026.11.29),
13 stream connectors, pending directives, state capsule export & ingest,
zero context token inflation, and TCP loopback socket port 5280 endpoints.
"""

import json
import socket
import urllib.request
import urllib.error
import pytest
from pathlib import Path

from core.stream_conveyor.socket_ingress_gateway import (
    get_8_generation_matrix,
    get_13_stream_connectors,
    get_pending_execution_directives,
    build_transfer_capsule,
    export_transfer_capsule,
    ingest_transfer_capsule,
    get_segmenter_status,
    HISTORICAL_SESSION_ID,
    CURRENT_SESSION_ID
)


def test_8_generation_matrix():
    matrix = get_8_generation_matrix()
    assert len(matrix) == 8
    gen_names = [m["generation"] for m in matrix]
    assert "GEMINI V.5" in gen_names
    assert "GEMINI V.6" in gen_names
    assert "G.V.7" in gen_names
    assert "G.V.8" in gen_names
    assert "G.V.9" in gen_names
    assert "G.V.10" in gen_names
    assert "G.V.11" in gen_names
    assert "G.V.12" in gen_names

    # Check G.V.11 hard deadline lock
    gv11 = next(m for m in matrix if m["generation"] == "G.V.11")
    assert "2026.11.29" in gv11["window"]
    assert gv11["gate_status"] == "HARD_DEADLINE_2026.11.29"


def test_13_stream_connectors():
    connectors = get_13_stream_connectors()
    assert len(connectors) == 13
    handles = [c["handle"] for c in connectors]
    expected_handles = [
        "@gmail", "@gcontacts", "@gemini", "gapp", "@gsearch",
        "@gdrive", "@gbook", "@glm", "@gh&mL", "@gnote",
        "@gnotebook", "@gemininotebook", "@googlegeminienotebookhumanmachinelearning"
    ]
    for h in expected_handles:
        assert h in handles, f"Missing handle: {h}"


def test_pending_execution_directives():
    directives = get_pending_execution_directives()
    assert len(directives) >= 3
    actions = [d["action"] for d in directives]
    assert "EXECUTE_GEMINI_V.5_MULTI_ORGAN_ORCHESTRATION" in actions
    assert "SYNCHRONIZE_DEV_04_SAMSUNG_T7_VAULT_ARCHIVES" in actions
    assert "SOVEREIGN_HARD_DEADLINE_LOCK" in actions


def test_capsule_build_and_export():
    export_res = export_transfer_capsule(HISTORICAL_SESSION_ID)
    assert export_res["exported"] is True
    assert export_res["source_session_id"] == HISTORICAL_SESSION_ID
    assert "capsule_id" in export_res
    assert len(export_res["sha256_seal"]) == 64

    # Verify file content
    p = Path(export_res["export_path"])
    assert p.exists()
    with open(p, "r", encoding="utf-8") as f:
        data = json.load(f)
        assert data["capsule_id"] == export_res["capsule_id"]
        assert len(data["payload"]["generation_matrix_8"]) == 8
        assert len(data["payload"]["stream_connectors_13"]) == 13


def test_capsule_ingest_without_token_inflation():
    ingest_res = ingest_transfer_capsule(CURRENT_SESSION_ID)
    assert ingest_res["ingested"] is True
    assert ingest_res["target_session_id"] == CURRENT_SESSION_ID
    assert ingest_res["context_token_inflation"] == 0
    assert ingest_res["status"] == "INGESTED_SUCCESSFULLY"

    # Verify pointer file
    pointer_path = Path(ingest_res["pointer_file"])
    assert pointer_path.exists()
    with open(pointer_path, "r", encoding="utf-8") as f:
        ptr = json.load(f)
        assert ptr["pointer_type"] == "SSN_TRANSFER_CAPSULE_POINTER"
        assert ptr["context_token_inflation"] == 0
        assert ptr["hard_deadline_lock"]["deadline_date"] == "2026.11.29"

    # Programmatic check: Ingesting into current session updates lao_lam_la_delta_agent_state.json
    delta_state_file = Path("/root/RADRILONIUMA/.gateway/lao_lam_la_delta_agent_state.json")
    if delta_state_file.exists():
        with open(delta_state_file, "r", encoding="utf-8") as f:
            dstate = json.load(f)
            assert "ssn_transfer_capsule_ingestion" in dstate
            ing = dstate["ssn_transfer_capsule_ingestion"]
            assert ing["status"] == "HOT_INGESTED_ZERO_INFLATION"
            assert ing["context_token_inflation"] == 0
            assert ing["hard_deadline_lock"]["deadline_date"] == "2026.11.29"
            assert ing["evolutionary_matrix_generations"] == 8
            assert ing["stream_connectors_count"] == 13
            assert "cross_session_transfer" in dstate


def test_socket_port_5280_tcp_connection():
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(2.0)
        s.connect(("127.0.0.1", 5280))
        s.close()
    except (socket.error, ConnectionRefusedError) as e:
        pytest.skip(f"Port 5280 TCP listener not reachable: {e}")


def test_socket_port_5280_live():
    url = "http://127.0.0.1:5280/health"
    try:
        req = urllib.request.urlopen(url, timeout=2)
        assert req.status == 200
        body = json.loads(req.read().decode("utf-8"))
        assert body["status"] == "ONLINE"
        assert body["port"] == 5280
    except urllib.error.URLError:
        pytest.skip("Socket ingress daemon port 5280 not reachable in isolated test environment")


def test_socket_port_5280_direct_post_endpoints():
    try:
        # POST export
        req_export = urllib.request.Request(
            "http://127.0.0.1:5280/api/ssn/transfer/export",
            data=json.dumps({"source_session_id": HISTORICAL_SESSION_ID}).encode("utf-8"),
            headers={"Content-Type": "application/json"},
            method="POST"
        )
        with urllib.request.urlopen(req_export, timeout=3) as resp:
            assert resp.status == 200
            data = json.loads(resp.read().decode("utf-8"))
            assert data["exported"] is True
            assert data["source_session_id"] == HISTORICAL_SESSION_ID

        # POST import
        req_import = urllib.request.Request(
            "http://127.0.0.1:5280/api/ssn/transfer/import",
            data=json.dumps({"target_session_id": CURRENT_SESSION_ID}).encode("utf-8"),
            headers={"Content-Type": "application/json"},
            method="POST"
        )
        with urllib.request.urlopen(req_import, timeout=3) as resp:
            assert resp.status == 200
            data = json.loads(resp.read().decode("utf-8"))
            assert data["ingested"] is True
            assert data["context_token_inflation"] == 0
    except urllib.error.URLError:
        pytest.skip("Port 5280 POST endpoints not reachable in isolated environment")


def test_gateway_proxy_ssn_endpoints():
    endpoints = [
        "http://127.0.0.1:3001/api/ssn/transfer/export",
        "http://127.0.0.1:3001/api/ssn/transfer/import",
        "http://127.0.0.1:3001/api/ssn/segmenter/status"
    ]
    for url in endpoints:
        try:
            req = urllib.request.urlopen(url, timeout=3)
            assert req.status == 200
            data = json.loads(req.read().decode("utf-8"))
            assert isinstance(data, dict)
        except urllib.error.URLError:
            pytest.skip("Main gateway port 3001 not reachable in isolated test environment")


def test_gateway_proxy_post_body_buffering():
    custom_session_id = "pytest-custom-verify-session-001"
    try:
        req = urllib.request.Request(
            "http://127.0.0.1:3001/api/ssn/transfer/export",
            data=json.dumps({"source_session_id": custom_session_id}).encode("utf-8"),
            headers={"Content-Type": "application/json"},
            method="POST"
        )
        with urllib.request.urlopen(req, timeout=3) as resp:
            assert resp.status == 200
            data = json.loads(resp.read().decode("utf-8"))
            assert data["exported"] is True
            assert data["source_session_id"] == custom_session_id

        # Re-export canonical historical session to keep state consistent
        restore_req = urllib.request.Request(
            "http://127.0.0.1:3001/api/ssn/transfer/export",
            data=json.dumps({"source_session_id": HISTORICAL_SESSION_ID}).encode("utf-8"),
            headers={"Content-Type": "application/json"},
            method="POST"
        )
        with urllib.request.urlopen(restore_req, timeout=3) as resp:
            assert resp.status == 200
    except urllib.error.URLError:
        pytest.skip("Main gateway port 3001 not reachable in isolated test environment")
