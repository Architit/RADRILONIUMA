#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • ADVERSARIAL CHALLENGER 2 VERIFICATION SUITE
Target: Milestone M2 (Cross-Session Socket Transfer Gateway & Zero-Inflation Ingestion)
Agent: challenger_m2_2
Focus Areas:
1. Hot-ingestion of SSN_TRANSFER_CAPSULE.json into current session c1a5d05a updates
   /root/RADRILONIUMA/.gateway/lao_lam_la_delta_agent_state.json without errors.
2. Confirm zero context token inflation: verify that conversation prompt files
   are not inflated by raw capsule contents.
3. Verify that PM2 ecosystem configuration persists across service reloads (pm2 save validation).
"""

import os
import sys
import json
import socket
import urllib.request
import urllib.error
import tempfile
import subprocess
import time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
import pytest

REPO_ROOT = Path('/root/RADRILONIUMA')
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))
if str(REPO_ROOT / 'core' / 'stream_conveyor') not in sys.path:
    sys.path.insert(0, str(REPO_ROOT / 'core' / 'stream_conveyor'))

from core.stream_conveyor.socket_ingress_gateway import (
    ingest_transfer_capsule,
    export_transfer_capsule,
    HISTORICAL_SESSION_ID,
    CURRENT_SESSION_ID,
    GATEWAY_DIR
)

SESSION_C1A5 = 'c1a5d05a-bcb5-40fc-8426-9b604a013880'
BRAIN_SESSION_DIR = Path('/mnt/c/Users/BushM/.gemini/antigravity-cli/brain') / SESSION_C1A5
STATE_FILE = GATEWAY_DIR / 'lao_lam_la_delta_agent_state.json'
POINTER_FILE = GATEWAY_DIR / 'SSN_TRANSFER_POINTER.json'
CAPSULE_FILE = GATEWAY_DIR / 'SSN_TRANSFER_CAPSULE.json'
ECOSYSTEM_CONFIG = Path('/root/workspace/ecosystem.config.js')
PM2_DUMP_FILE = Path('/root/.pm2/dump.pm2')


def test_01_lao_delta_state_schema_and_keys():
    """
    Empirically verifies that lao_lam_la_delta_agent_state.json has been hot-updated
    with all required fields, correct types, 0 token inflation, and preserved pre-existing keys.
    """
    assert STATE_FILE.exists(), f'Delta state file does not exist at {STATE_FILE}'
    with open(STATE_FILE, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # Core state preservation
    assert 'agent_id' in data, 'Original agent_id was wiped'
    assert 'connected_handles' in data, 'Original connected_handles was wiped'
    assert len(data['connected_handles']) == 13, 'Connected handles count altered'
    assert 'resonance' in data, 'Original resonance key missing'

    # Ingestion record
    assert 'ssn_transfer_capsule_ingestion' in data, 'Missing ssn_transfer_capsule_ingestion'
    rec = data['ssn_transfer_capsule_ingestion']
    assert rec['status'] == 'HOT_INGESTED_ZERO_INFLATION'
    assert rec['context_token_inflation'] == 0
    assert rec['source_session_id'] == HISTORICAL_SESSION_ID
    assert rec['target_session_id'] == SESSION_C1A5
    assert rec['evolutionary_matrix_generations'] == 8
    assert rec['stream_connectors_count'] == 13
    assert rec['pending_directives_count'] == 3

    # Hard deadline lock
    assert 'hard_deadline_lock' in rec
    hdl = rec['hard_deadline_lock']
    assert hdl['deadline_date'] == '2026.11.29'
    assert hdl['deadline_iso_utc'] == '2026-11-29T23:59:59Z'
    assert hdl['status'] == 'LOCKED'

    # Global cross session transfer pointer
    assert 'cross_session_transfer' in data
    assert data['active_session_id'] == SESSION_C1A5
    assert data['context_token_inflation'] == 0
    assert 'last_ingested_capsule_id' in data
    assert 'capsule_pointer_ref' in data
    assert Path(data['capsule_pointer_ref']).name == 'SSN_TRANSFER_POINTER.json'


def test_02_zero_context_token_inflation_prompt_invariance():
    """
    Empirically proves zero context token inflation.
    1. Reads every markdown prompt/plan file in the active session brain folder.
    2. Takes exact byte size and character length snapshots.
    3. Triggers hot ingestion again.
    4. Proves all prompt/plan markdown files have exactly 0-byte change (zero token inflation).
    5. Proves raw capsule content is not dumped into conversation files.
    """
    if not BRAIN_SESSION_DIR.exists():
        pytest.skip(f'Brain session dir not accessible at {BRAIN_SESSION_DIR}')

    md_files = list(BRAIN_SESSION_DIR.glob('*.md'))
    assert len(md_files) > 0, 'No prompt or plan markdown files found to verify inflation'

    # Snapshot before
    snapshot_before = {}
    for mf in md_files:
        snapshot_before[mf.name] = mf.stat().st_size

    # Ingest
    res = ingest_transfer_capsule(SESSION_C1A5)
    assert res['ingested'] is True
    assert res['context_token_inflation'] == 0

    # Snapshot after
    for mf in md_files:
        after_size = mf.stat().st_size
        before_size = snapshot_before[mf.name]
        assert after_size == before_size, (
            f'Context prompt file {mf.name} size inflated from {before_size} to {after_size} bytes!'
        )

        # Content check: ensure raw capsule contents not dumped in md files
        content = mf.read_text(encoding='utf-8')
        assert 'SSN-CAPSULE-CA2D944D' not in content, f'Raw capsule ID leaked into {mf.name}'
        assert 'generation_matrix_8' not in content, f'Raw capsule schema leaked into {mf.name}'

    # Pointer verification in brain dir
    brain_pointer = BRAIN_SESSION_DIR / 'SSN_TRANSFER_POINTER.json'
    assert brain_pointer.exists(), 'Pointer file was not mirrored to target session directory'
    assert brain_pointer.stat().st_size < 1200, f'Pointer file unexpectedly large ({brain_pointer.stat().st_size} bytes)'
    pointer_data = json.loads(brain_pointer.read_text(encoding='utf-8'))
    assert pointer_data['context_token_inflation'] == 0
    assert pointer_data['target_session_id'] == SESSION_C1A5


def test_03_hot_ingestion_preserves_external_unrelated_state():
    """
    Verifies that hot ingestion preserves arbitrary pre-existing state fields
    and does not wipe or overwrite unrelated keys.
    """
    with tempfile.TemporaryDirectory() as tmpdir:
        fake_state_file = Path(tmpdir) / 'lao_lam_la_delta_agent_state.json'
        seed_data = {
            'agent_id': 'DELTA_TEST_AGENT',
            'custom_unrelated_metric': 999.42,
            'sacred_resonance_carrier_hz': 528,
            'immutable_user_intent': 'KEEP_PRESERVED',
            'deep_nested': {'level1': {'level2': [1, 2, 3]}}
        }
        with open(fake_state_file, 'w', encoding='utf-8') as f:
            json.dump(seed_data, f, indent=2)

        import core.stream_conveyor.socket_ingress_gateway as sig
        orig_gateway_dir = sig.GATEWAY_DIR
        try:
            sig.GATEWAY_DIR = Path(tmpdir)
            sig.export_transfer_capsule(HISTORICAL_SESSION_ID, Path(tmpdir) / 'SSN_TRANSFER_CAPSULE.json')
            res = sig.ingest_transfer_capsule(SESSION_C1A5, Path(tmpdir) / 'SSN_TRANSFER_CAPSULE.json')
            assert res['ingested'] is True
            assert res['delta_state_updated'] is True

            with open(fake_state_file, 'r', encoding='utf-8') as f:
                updated = json.load(f)

            assert updated['agent_id'] == 'DELTA_TEST_AGENT'
            assert updated['custom_unrelated_metric'] == 999.42
            assert updated['sacred_resonance_carrier_hz'] == 528
            assert updated['immutable_user_intent'] == 'KEEP_PRESERVED'
            assert updated['deep_nested']['level1']['level2'] == [1, 2, 3]
            assert updated['ssn_transfer_capsule_ingestion']['status'] == 'HOT_INGESTED_ZERO_INFLATION'
            assert updated['context_token_inflation'] == 0
        finally:
            sig.GATEWAY_DIR = orig_gateway_dir


def test_04_concurrency_stress_atomic_write():
    """
    Stress-tests sequential and concurrent ingestion requests.
    Verifies that sequential ingestion always succeeds 100%,
    and that concurrent thread execution never corrupts state JSON or leaves dangling temp files.
    """
    # 1. Sequential stress: 5 rapid sequential calls must all succeed 100%
    for _ in range(5):
        res = ingest_transfer_capsule(SESSION_C1A5)
        assert res['ingested'] is True
        assert res['delta_state_updated'] is True
        assert res['context_token_inflation'] == 0

    # 2. Concurrent stress: 10 threads hitting the ingest function simultaneously
    def worker_ingest(worker_id):
        return ingest_transfer_capsule(SESSION_C1A5)

    num_threads = 10
    with ThreadPoolExecutor(max_workers=num_threads) as executor:
        results = list(executor.map(worker_ingest, range(num_threads)))

    assert len(results) == num_threads
    for r in results:
        assert r['ingested'] is True
        assert r['context_token_inflation'] == 0

    # At least one concurrent thread must have committed the state update
    updated_count = sum(1 for r in results if r['delta_state_updated'] is True)
    assert updated_count >= 1, f"No concurrent thread succeeded in updating delta state: {results}"

    # Verify state file remains uncorrupted valid JSON
    with open(STATE_FILE, 'r', encoding='utf-8') as f:
        data = json.load(f)
    assert data['active_session_id'] == SESSION_C1A5
    assert data['context_token_inflation'] == 0

    # Check for dangling .tmp files
    tmp_files = list(GATEWAY_DIR.glob('*.tmp'))
    assert len(tmp_files) == 0, f'Found lingering temporary files: {tmp_files}'


def test_05_pm2_ecosystem_config_validation():
    """
    Validates ecosystem.config.js structure, ensuring ssn-socket-gateway
    is declared with python3 venv interpreter, cwd, port 5280, and autorestart.
    """
    assert ECOSYSTEM_CONFIG.exists(), f'ecosystem.config.js missing at {ECOSYSTEM_CONFIG}'
    content = ECOSYSTEM_CONFIG.read_text(encoding='utf-8')

    assert 'ssn-socket-gateway' in content
    assert '/root/RADRILONIUMA/core/stream_conveyor/socket_ingress_gateway.py' in content
    assert '/root/RADRILONIUMA/venv_py312/bin/python3' in content
    assert 'PORT: 5280' in content or '5280' in content
    assert 'autorestart: true' in content


def test_06_pm2_saved_dump_integrity():
    """
    Validates /root/.pm2/dump.pm2 persistence.
    Confirms that pm2 save captured ssn-socket-gateway correctly.
    """
    assert PM2_DUMP_FILE.exists(), f'dump.pm2 missing at {PM2_DUMP_FILE}'
    dump_data = json.loads(PM2_DUMP_FILE.read_text(encoding='utf-8'))
    matches = [app for app in dump_data if app.get('name') == 'ssn-socket-gateway']
    assert len(matches) >= 1, 'ssn-socket-gateway not found in PM2 dump file'
    app = matches[0]
    assert app.get('pm_cwd') == '/root/RADRILONIUMA'
    assert 'socket_ingress_gateway.py' in app.get('pm_exec_path', '')
    assert 'venv_py312' in app.get('exec_interpreter', '')
    assert str(app.get('env', {}).get('PORT')) == '5280'


def test_07_pm2_reload_and_socket_reconnect():
    """
    Empirically reloads ssn-socket-gateway via PM2 CLI and tests
    that the service recovers and responds on port 5280 within seconds.
    """
    cmd = subprocess.run(['pm2', 'reload', 'ssn-socket-gateway'], capture_output=True, text=True, timeout=10)
    assert cmd.returncode == 0, f'pm2 reload failed: {cmd.stderr}'

    time.sleep(2.0)

    cmd_stat = subprocess.run(['pm2', 'jlist'], capture_output=True, text=True, timeout=10)
    assert cmd_stat.returncode == 0
    apps = json.loads(cmd_stat.stdout)
    ssn_apps = [a for a in apps if a.get('name') == 'ssn-socket-gateway']
    assert len(ssn_apps) > 0, 'ssn-socket-gateway not found in pm2 jlist'
    assert ssn_apps[0]['pm2_env']['status'] == 'online'

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(3.0)
    connected = False
    try:
        sock.connect(('127.0.0.1', 5280))
        connected = True
    finally:
        sock.close()
    assert connected, 'TCP port 5280 did not accept connection after pm2 reload'

    req = urllib.request.Request('http://127.0.0.1:5280/health')
    with urllib.request.urlopen(req, timeout=3.0) as resp:
        assert resp.status == 200
        body = json.loads(resp.read().decode('utf-8'))
        assert body['status'] == 'ONLINE'
        assert body['port'] == 5280


def test_08_gateway_proxy_import_endpoint_live():
    """
    Empirically tests proxy endpoint POST http://127.0.0.1:3001/api/ssn/transfer/import.
    Verifies that Node.js gateway forwards the body to Python backend,
    returns HTTP 200, updates delta state file, and reports zero token inflation.
    """
    payload = json.dumps({'target_session_id': SESSION_C1A5}).encode('utf-8')
    req = urllib.request.Request(
        'http://127.0.0.1:3001/api/ssn/transfer/import',
        data=payload,
        headers={'Content-Type': 'application/json'},
        method='POST'
    )
    with urllib.request.urlopen(req, timeout=5.0) as resp:
        assert resp.status == 200
        res = json.loads(resp.read().decode('utf-8'))
        assert res['ingested'] is True
        assert res['target_session_id'] == SESSION_C1A5
        assert res['context_token_inflation'] == 0
        assert res['delta_state_updated'] is True
        assert res['hard_deadline'] == '2026.11.29'
        assert res['status'] == 'INGESTED_SUCCESSFULLY'


def test_09_direct_port_5280_import_endpoint_live():
    """
    Empirically tests direct POST http://127.0.0.1:5280/api/ssn/transfer/import.
    """
    payload = json.dumps({'target_session_id': SESSION_C1A5}).encode('utf-8')
    req = urllib.request.Request(
        'http://127.0.0.1:5280/api/ssn/transfer/import',
        data=payload,
        headers={'Content-Type': 'application/json'},
        method='POST'
    )
    with urllib.request.urlopen(req, timeout=5.0) as resp:
        assert resp.status == 200
        res = json.loads(resp.read().decode('utf-8'))
        assert res['ingested'] is True
        assert res['target_session_id'] == SESSION_C1A5
        assert res['context_token_inflation'] == 0
        assert res['status'] == 'INGESTED_SUCCESSFULLY'


def test_10_immutable_apex_deadline_lock():
    """
    Verifies that the G.V.11 APEX hard deadline 2026.11.29 is immutable
    across both capsule, pointer, and lao_lam_la_delta_agent_state.json.
    """
    with open(STATE_FILE, 'r', encoding='utf-8') as f:
        state = json.load(f)
    with open(POINTER_FILE, 'r', encoding='utf-8') as f:
        pointer = json.load(f)

    st_hdl = state['ssn_transfer_capsule_ingestion']['hard_deadline_lock']
    pt_hdl = pointer['hard_deadline_lock']

    assert st_hdl['deadline_date'] == '2026.11.29'
    assert pt_hdl['deadline_date'] == '2026.11.29'
    assert st_hdl['deadline_iso_utc'] == '2026-11-29T23:59:59Z'
    assert pt_hdl['deadline_iso_utc'] == '2026-11-29T23:59:59Z'
    assert st_hdl['status'] == 'LOCKED'
    assert pt_hdl['status'] == 'LOCKED'
