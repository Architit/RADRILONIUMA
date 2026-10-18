#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • ADVERSARIAL CHALLENGER VERIFICATION SUITE
Target: Milestone M2 (Cross-Session Socket Transfer Gateway & Zero-Inflation Ingestion)
Agent: challenger_m2_1
Focus Areas:
1. Concurrency load testing on port 5280 socket listener and port 3001 gateway proxy.
2. Non-blocking behavior under slow client streams / slowloris-style holds.
3. Abrupt socket reset / client termination handling.
4. Exported capsule verification: exactly 8 generations, G.V.11 hard deadline 2026.11.29, 13 stream connectors.
5. Cryptographic integrity (SHA-256 seal) and zero token inflation persistence.
"""

import os
import sys
import json
import time
import socket
import struct
import hashlib
import threading
import urllib.request
import urllib.error
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import pytest

REPO_ROOT = Path("/root/RADRILONIUMA")
GATEWAY_DIR = REPO_ROOT / ".gateway"
HISTORICAL_SESSION_ID = "ca2d944d-e99b-4ec1-9a27-7fa50f96003f"
CURRENT_SESSION_ID = "c1a5d05a-bcb5-40fc-8426-9b604a013880"
PORT_5280 = 5280
PORT_3001 = 3001

CORE_DIR = REPO_ROOT / "core" / "stream_conveyor"
if str(CORE_DIR) not in sys.path:
    sys.path.insert(0, str(CORE_DIR))

from socket_ingress_gateway import (
    get_8_generation_matrix,
    get_13_stream_connectors,
    get_pending_execution_directives,
    build_transfer_capsule,
    export_transfer_capsule,
    ingest_transfer_capsule
)


# ============================================================================
# 1. MATRIX & CONNECTOR ADVERSARIAL CONTRACT TESTS
# ============================================================================

def test_capsule_matrix_exact_8_generations_and_gv11_apex_deadline():
    """
    Adversarial verification of 8-generation matrix:
    - Must contain exactly 8 phases
    - Phase 7 must be G.V.11 with sub-tier APEX and hard deadline 2026.11.29
    - Phase 8 must be G.V.12
    """
    matrix = get_8_generation_matrix()
    assert len(matrix) == 8, f"Expected exactly 8 generations, found {len(matrix)}"

    expected_generations = [
        ("GEMINI V.5", 1),
        ("GEMINI V.6", 2),
        ("G.V.7", 3),
        ("G.V.8", 4),
        ("G.V.9", 5),
        ("G.V.10", 6),
        ("G.V.11", 7),
        ("G.V.12", 8)
    ]

    for (gen_name, phase_num), entry in zip(expected_generations, matrix):
        assert entry["phase"] == phase_num, f"Phase mismatch for {gen_name}: {entry['phase']} != {phase_num}"
        assert entry["generation"] == gen_name, f"Generation name mismatch: {entry['generation']} != {gen_name}"
        assert len(entry["sub_tiers"]) == 3, f"Expected 3 sub-tiers for {gen_name}, found {len(entry['sub_tiers'])}"
        assert len(entry["target_mesh_nodes"]) >= 3, f"Insufficient mesh nodes for {gen_name}"

    # Verify G.V.11 specific constraints
    gv11 = matrix[6]
    assert gv11["generation"] == "G.V.11"
    assert "APEX" in gv11["sub_tiers"]
    assert "2026.11.29" in gv11["window"] or "2026.11.29" in gv11["gate_status"]
    assert gv11["gate_status"] == "HARD_DEADLINE_2026.11.29"

    # Verify capsule payload root hard deadline lock
    capsule = build_transfer_capsule(HISTORICAL_SESSION_ID)
    payload = capsule["payload"]
    lock = payload.get("hard_deadline_lock", {})
    assert lock.get("deadline_date") == "2026.11.29"
    assert lock.get("deadline_iso_utc") == "2026-11-29T23:59:59Z"
    assert "G.V.11" in lock.get("target_generation", "")
    assert lock.get("status") == "LOCKED"


def test_capsule_13_stream_connectors_catalog_integrity():
    """
    Adversarial verification of 13 stream connectors:
    - Must contain exactly 13 unique connectors
    - Must contain all canonical handles from @gmail to @googlegeminienotebookhumanmachinelearning
    """
    connectors = get_13_stream_connectors()
    assert len(connectors) == 13, f"Expected 13 connectors, found {len(connectors)}"

    expected_handles = [
        "@gmail",
        "@gcontacts",
        "@gemini",
        "gapp",
        "@gsearch",
        "@gdrive",
        "@gbook",
        "@glm",
        "@gh&mL",
        "@gnote",
        "@gnotebook",
        "@gemininotebook",
        "@googlegeminienotebookhumanmachinelearning"
    ]

    actual_handles = [c["handle"] for c in connectors]
    assert len(set(actual_handles)) == 13, "Duplicate handle detected in connector list"

    for handle in expected_handles:
        assert handle in actual_handles, f"Missing expected stream connector handle: {handle}"

    for c in connectors:
        assert c["order"] >= 1 and c["order"] <= 13
        assert len(c["role"]) > 5
        assert len(c["modality"]) > 3


def test_capsule_file_on_disk_contains_8_generations_and_13_connectors():
    """
    Export session ca2d944d and verify the resulting SSN_TRANSFER_CAPSULE.json
    on disk contains 8 generations and 13 connectors.
    """
    res = export_transfer_capsule(HISTORICAL_SESSION_ID)
    capsule_path = Path(res["export_path"])
    assert capsule_path.exists(), "SSN_TRANSFER_CAPSULE.json was not created"

    with open(capsule_path, "r", encoding="utf-8") as f:
        capsule = json.load(f)

    assert capsule["payload"]["source_session_id"] == HISTORICAL_SESSION_ID
    matrix = capsule["payload"]["generation_matrix_8"]
    connectors = capsule["payload"]["stream_connectors_13"]

    assert len(matrix) == 8, f"Expected 8 generations on disk, found {len(matrix)}"
    assert len(connectors) == 13, f"Expected 13 connectors on disk, found {len(connectors)}"

    gv11 = [g for g in matrix if g.get("generation") == "G.V.11"]
    assert len(gv11) == 1
    assert "2026.11.29" in gv11[0]["gate_status"]
    assert "APEX" in gv11[0]["sub_tiers"]


def test_capsule_sha256_cryptographic_seal_integrity():
    """
    Verifies that the capsule SHA-256 seal is mathematically valid
    and cannot be tampered with.
    """
    res = export_transfer_capsule(HISTORICAL_SESSION_ID)
    capsule_file = Path(res["export_path"])
    assert capsule_file.exists()

    with open(capsule_file, "r", encoding="utf-8") as f:
        capsule = json.load(f)

    payload = capsule["payload"]
    calculated_hash = hashlib.sha256(json.dumps(payload, sort_keys=True).encode("utf-8")).hexdigest()
    assert capsule["sha256_seal"] == calculated_hash, "Cryptographic SHA256 seal mismatch!"
    assert calculated_hash.startswith(capsule["capsule_id"].split("-")[-1].lower())


def test_zero_inflation_state_persistence_contract():
    """
    Verifies that capsule ingestion updates lao_lam_la_delta_agent_state.json
    with strict context_token_inflation == 0.
    """
    res = ingest_transfer_capsule(CURRENT_SESSION_ID)
    assert res["ingested"] is True
    assert res["context_token_inflation"] == 0

    state_file = GATEWAY_DIR / "lao_lam_la_delta_agent_state.json"
    assert state_file.exists(), f"State file {state_file} does not exist"

    with open(state_file, "r", encoding="utf-8") as f:
        state = json.load(f)

    assert "ssn_transfer_capsule_ingestion" in state
    ing_record = state["ssn_transfer_capsule_ingestion"]
    assert ing_record["status"] == "HOT_INGESTED_ZERO_INFLATION"
    assert ing_record["context_token_inflation"] == 0
    assert ing_record["evolutionary_matrix_generations"] == 8
    assert ing_record["stream_connectors_count"] == 13
    assert ing_record["hard_deadline_lock"]["deadline_date"] == "2026.11.29"


# ============================================================================
# 2. CONCURRENT LOAD STRESS HARNESS
# ============================================================================

def _http_get(url, timeout=5.0):
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return resp.getcode(), resp.read()

def _http_post_json(url, payload_dict, timeout=5.0):
    data = json.dumps(payload_dict).encode("utf-8")
    req = urllib.request.Request(url, data=data, headers={"Content-Type": "application/json"})
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return resp.getcode(), resp.read()


def test_port_5280_concurrent_burst_stress():
    """
    Stress-test TCP port 5280 with 60 concurrent requests across mixed GET & POST endpoints.
    Must maintain 100% success rate with zero connection drops.
    """
    endpoints = [
        ("GET", f"http://127.0.0.1:{PORT_5280}/health", None),
        ("GET", f"http://127.0.0.1:{PORT_5280}/api/ssn/segmenter/status", None),
        ("POST", f"http://127.0.0.1:{PORT_5280}/api/ssn/transfer/export", {"source_session_id": HISTORICAL_SESSION_ID}),
        ("POST", f"http://127.0.0.1:{PORT_5280}/api/ssn/transfer/import", {"target_session_id": CURRENT_SESSION_ID}),
        ("POST", f"http://127.0.0.1:{PORT_5280}/v1/google-node-gateway/input-point/import", {"burst_id": "stress_5280"})
    ]

    total_requests = 60
    tasks = [endpoints[i % len(endpoints)] for i in range(total_requests)]

    def run_req(task):
        method, url, payload = task
        start = time.perf_counter()
        if method == "GET":
            status, body = _http_get(url)
        else:
            status, body = _http_post_json(url, payload)
        duration = time.perf_counter() - start
        return status, duration, len(body)

    results = []
    start_all = time.perf_counter()
    with ThreadPoolExecutor(max_workers=30) as executor:
        futures = [executor.submit(run_req, t) for t in tasks]
        for f in as_completed(futures):
            results.append(f.result())
    total_time = time.perf_counter() - start_all

    assert len(results) == total_requests
    for status, duration, body_len in results:
        assert status == 200, f"Unexpected non-200 status: {status}"
        assert body_len > 0, "Empty response body received"

    assert total_time < 3.5, f"Burst concurrency took too long: {total_time:.2f}s"


def test_port_3001_gateway_proxy_concurrent_stress():
    """
    Stress-test Node.js central gateway proxy (port 3001) with 40 concurrent requests.
    Validates that handleSsnProxyRequest buffers bodies and handles concurrent socket traffic cleanly.
    """
    endpoints = [
        ("GET", f"http://127.0.0.1:{PORT_3001}/api/ssn/segmenter/status", None),
        ("POST", f"http://127.0.0.1:{PORT_3001}/api/ssn/transfer/export", {"source_session_id": HISTORICAL_SESSION_ID}),
        ("POST", f"http://127.0.0.1:{PORT_3001}/api/ssn/transfer/import", {"target_session_id": CURRENT_SESSION_ID})
    ]

    total_requests = 40
    tasks = [endpoints[i % len(endpoints)] for i in range(total_requests)]

    def run_req(task):
        method, url, payload = task
        start = time.perf_counter()
        if method == "GET":
            status, body = _http_get(url)
        else:
            status, body = _http_post_json(url, payload)
        duration = time.perf_counter() - start
        return status, duration, json.loads(body.decode("utf-8"))

    results = []
    start_all = time.perf_counter()
    with ThreadPoolExecutor(max_workers=20) as executor:
        futures = [executor.submit(run_req, t) for t in tasks]
        for f in as_completed(futures):
            results.append(f.result())
    total_time = time.perf_counter() - start_all

    assert len(results) == total_requests
    for status, duration, data in results:
        assert status == 200, f"Proxy request failed with status: {status}"
        assert isinstance(data, dict)

    assert total_time < 5.0, f"Proxy concurrency too slow: {total_time:.2f}s"


# ============================================================================
# 3. NON-BLOCKING STREAMING & SLOW CLIENT HARNESS
# ============================================================================

def test_port_5280_slow_client_non_blocking():
    """
    Simulate a slow client connecting to port 5280 and sending HTTP request headers byte-by-byte
    over ~1 second.
    Concurrently, verify that other fast clients are NOT blocked and complete in < 250ms.
    """
    slow_client_done = threading.Event()
    slow_client_started = threading.Event()

    def slow_worker():
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            s.connect(("127.0.0.1", PORT_5280))
            slow_client_started.set()
            request_part1 = "POST /api/ssn/transfer/export HTTP/1.1\r\nHost: 127.0.0.1\r\n"
            s.sendall(request_part1.encode())
            trickle = "Content-Length: 2\r\nContent-Type: application/json\r\n\r\n{}"
            for ch in trickle:
                s.sendall(ch.encode())
                time.sleep(0.02)
            s.recv(4096)
        finally:
            s.close()
            slow_client_done.set()

    t = threading.Thread(target=slow_worker, daemon=True)
    t.start()

    assert slow_client_started.wait(timeout=2.0)
    time.sleep(0.15)

    fast_latencies = []
    for _ in range(5):
        t0 = time.perf_counter()
        status, body = _http_get(f"http://127.0.0.1:{PORT_5280}/health")
        lat = time.perf_counter() - t0
        assert status == 200
        fast_latencies.append(lat)

    for lat in fast_latencies:
        assert lat < 0.25, f"Fast client was blocked by slow client! Latency: {lat:.3f}s"

    slow_client_done.wait(timeout=5.0)


def test_port_3001_proxy_slow_client_non_blocking():
    """
    Simulate a slow client connecting to port 3001 and trickling POST body bytes.
    Verify that other requests on port 3001 are served concurrently without blocking.
    """
    slow_done = threading.Event()
    slow_started = threading.Event()

    def slow_proxy_worker():
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            s.connect(("127.0.0.1", PORT_3001))
            slow_started.set()
            payload = json.dumps({"source_session_id": HISTORICAL_SESSION_ID}).encode()
            req_headers = (
                f"POST /api/ssn/transfer/export HTTP/1.1\r\n"
                f"Host: 127.0.0.1:{PORT_3001}\r\n"
                f"Content-Type: application/json\r\n"
                f"Content-Length: {len(payload)}\r\n\r\n"
            )
            s.sendall(req_headers.encode())
            for b in payload:
                s.sendall(bytes([b]))
                time.sleep(0.02)
            s.recv(4096)
        finally:
            s.close()
            slow_done.set()

    t = threading.Thread(target=slow_proxy_worker, daemon=True)
    t.start()

    assert slow_started.wait(timeout=2.0)
    time.sleep(0.15)

    fast_latencies = []
    for _ in range(5):
        t0 = time.perf_counter()
        status, body = _http_get(f"http://127.0.0.1:{PORT_3001}/api/ssn/segmenter/status")
        lat = time.perf_counter() - t0
        assert status == 200
        fast_latencies.append(lat)

    for lat in fast_latencies:
        assert lat < 0.35, f"Proxy request was blocked by slow client! Latency: {lat:.3f}s"

    slow_done.wait(timeout=5.0)


def test_port_5280_abrupt_client_rst_recovery():
    """
    Simulate hostile client connecting, sending half a request, and abruptly sending TCP RST (SO_LINGER=0).
    Verify daemon on port 5280 survives and continues serving requests immediately.
    """
    for _ in range(3):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect(("127.0.0.1", PORT_5280))
        s.sendall(b"POST /api/ssn/transfer/export HTTP/1.1\r\nHost: 127.0.0.1\r\nContent-Length: 100\r\n\r\n{")
        s.setsockopt(socket.SOL_SOCKET, socket.SO_LINGER, struct.pack("ii", 1, 0))
        s.close()

    time.sleep(0.1)

    status, body = _http_get(f"http://127.0.0.1:{PORT_5280}/health")
    assert status == 200
    data = json.loads(body.decode("utf-8"))
    assert data["status"] == "ONLINE"


def test_port_5280_chunked_transfer_encoding():
    """
    Adversarial verification of HTTP/1.1 chunked transfer encoding support.
    Send chunked payload manually via TCP socket and assert proper decoding.
    """
    payload_obj = {"source_session_id": HISTORICAL_SESSION_ID, "adversarial_flag": True}
    raw_payload = json.dumps(payload_obj).encode("utf-8")
    part1 = raw_payload[: len(raw_payload) // 2]
    part2 = raw_payload[len(raw_payload) // 2 :]

    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(("127.0.0.1", PORT_5280))

    headers = (
        "POST /api/ssn/transfer/export HTTP/1.1\r\n"
        "Host: 127.0.0.1\r\n"
        "Transfer-Encoding: chunked\r\n"
        "Content-Type: application/json\r\n\r\n"
    )
    s.sendall(headers.encode("utf-8"))

    s.sendall(f"{len(part1):x}\r\n".encode("utf-8") + part1 + b"\r\n")
    time.sleep(0.05)
    s.sendall(f"{len(part2):x}\r\n".encode("utf-8") + part2 + b"\r\n")
    time.sleep(0.05)
    s.sendall(b"0\r\n\r\n")

    response_bytes = b""
    s.settimeout(3.0)
    while True:
        try:
            chunk = s.recv(4096)
            if not chunk:
                break
            response_bytes += chunk
            if b"\r\n\r\n" in response_bytes and response_bytes.count(b"{") == response_bytes.count(b"}"):
                break
        except socket.timeout:
            break
    s.close()

    resp_str = response_bytes.decode("utf-8", errors="replace")
    assert "200 OK" in resp_str, f"Chunked request did not receive 200 OK: {resp_str}"
    header_part, _, body_part = resp_str.partition("\r\n\r\n")
    body_json = json.loads(body_part.strip())
    assert body_json["exported"] is True
    assert body_json["source_session_id"] == HISTORICAL_SESSION_ID


def test_oversized_payload_handling():
    """
    Adversarial test: Send a 512 KB payload to ensure port 5280 handles
    large buffer streams without crashing or truncating.
    """
    large_data = {"stream_buffer": "A" * (512 * 1024), "source": "adversarial_challenger"}
    status, body = _http_post_json(
        f"http://127.0.0.1:{PORT_5280}/v1/google-node-gateway/input-point/import",
        large_data,
        timeout=10.0
    )
    assert status == 200
    res = json.loads(body.decode("utf-8"))
    assert res["status"] == "ACCEPTED_BY_SOCKET_INGRESS_GATEWAY"
    assert res["received_bytes"] > 500000