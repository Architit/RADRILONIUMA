# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import json
import os
import pytest
from pathlib import Path

# Canonical 9 Agent Specification Matrix
EXPECTED_9_AGENTS = [
    {
        "folder_name": "LAM_EVOLUTION_AGENT",
        "system_id": "EVOL-01",
        "true_name": "Evolutionary Cognitive Engine",
        "call_sign": "EVOL-01",
        "role": "Perpetual Evolution & Self-Refinement",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_ECHO_AGENT",
        "system_id": "ECHO-01",
        "true_name": "Acoustic Signal Relay",
        "call_sign": "ECHO-01",
        "role": "Acoustic 528 Hz / 432 Hz Solfeggio Echo & Signal Relay",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_BETA_AGENT",
        "system_id": "BETA-01",
        "true_name": "Beta Stress Verification",
        "call_sign": "BETA-01",
        "role": "Beta Test & Concurrency Stress Verification",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_GAMMA_AGENT",
        "system_id": "GMA-01",
        "true_name": "Gamma Mesh Edge Gateway",
        "call_sign": "GMA-01",
        "role": "Gamma Mesh Discovery & Edge Node Gateway",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_ALPHA_AGENT",
        "system_id": "ALPH-01",
        "true_name": "Alpha Core Orchestrator",
        "call_sign": "ALPH-01",
        "role": "Alpha Core Orchestration & Command Bridge",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_DELTA_AGENT",
        "system_id": "DLTA-01",
        "true_name": "Delta Telemetry Buffer",
        "call_sign": "DLTA-01",
        "role": "Delta Telemetry & Dataflow Pipeline Buffer",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_CHARLIE_AGENT",
        "system_id": "CHRL-01",
        "true_name": "Charlie Governance Auditor",
        "call_sign": "CHRL-01",
        "role": "Charlie Contract & Governance Auditor",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_BRAVO_AGENT",
        "system_id": "BRVO-01",
        "true_name": "Bravo Backup Archive",
        "call_sign": "BRVO-01",
        "role": "Bravo Backup & Multi-Cloud Archive",
        "carrier_lock": "528 Hz / 432 Hz",
    },
    {
        "folder_name": "LAM_LITTLEBIG_AGENT",
        "system_id": "LTBG-01",
        "true_name": "LittleBig Edge Autonomous Node",
        "call_sign": "LTBG-01",
        "role": "LittleBig Small-Footprint Edge Autonomous Node",
        "carrier_lock": "528 Hz / 432 Hz",
    },
]

@pytest.fixture
def project_root():
    """Returns the absolute Path to RADRILONIUMA project root."""
    return Path(__file__).resolve().parents[2]

@pytest.fixture
def lam_core_dir():
    """Returns the absolute Path to LAM_CORE directory."""
    return Path("/home/architit/LAM_CORE")

@pytest.fixture
def mock_9_agent_workspace(tmp_path):
    """
    Creates an isolated temporary LAM_CORE workspace containing all 9 agents,
    complete with IDENTITY.md, devkit scripts, and .gateway/amc_graph.json.
    """
    lam_core_tmp = tmp_path / "LAM_CORE"
    lam_core_tmp.mkdir(parents=True, exist_ok=True)

    radriloniuma_tmp = lam_core_tmp / "RADRILONIUMA"
    radriloniuma_tmp.mkdir(parents=True, exist_ok=True)
    gateway_dir = radriloniuma_tmp / ".gateway"
    gateway_dir.mkdir(parents=True, exist_ok=True)

    amc_graph_data = {
        "timestamp_utc": "2026-07-31T21:00:00Z",
        "resonance": "528 Hz / 432 Hz (MASTER_LOCK)",
        "version": "1.0",
        "organs": {}
    }

    for agent_spec in EXPECTED_9_AGENTS:
        agent_dir = lam_core_tmp / agent_spec["folder_name"]
        agent_dir.mkdir(parents=True, exist_ok=True)

        identity_content = f"""# IDENTITY — {agent_spec['system_id']} ⚜️

## System ID
System ID: {agent_spec['system_id']}

## True Name
True Name: {agent_spec['true_name']}

## Call Sign
Call Sign: {agent_spec['call_sign']}

## Role
Role: {agent_spec['role']}

## Carrier Lock
Carrier Lock: {agent_spec['carrier_lock']}
"""
        identity_file = agent_dir / "IDENTITY.md"
        identity_file.write_text(identity_content, encoding="utf-8")

        preflight_file = agent_dir / "preflight.sh"
        preflight_file.write_text("#!/usr/bin/env bash\necho '[PREFLIGHT] PASS'\n", encoding="utf-8")
        preflight_file.chmod(0o755)

        devkit_dir = agent_dir / "devkit"
        devkit_dir.mkdir(parents=True, exist_ok=True)

        bootstrap_file = devkit_dir / "bootstrap.sh"
        bootstrap_file.write_text("#!/usr/bin/env bash\necho '[BOOTSTRAP] OK'\n", encoding="utf-8")
        bootstrap_file.chmod(0o755)

        patch_file = devkit_dir / "patch.sh"
        patch_file.write_text("#!/usr/bin/env bash\necho '[PATCH] OK'\n", encoding="utf-8")
        patch_file.chmod(0o755)

        # Register in AMC graph schema
        amc_graph_data["organs"][agent_spec["system_id"]] = {
            "system_id": agent_spec["system_id"],
            "true_name": agent_spec["true_name"],
            "call_sign": agent_spec["call_sign"],
            "role": agent_spec["role"],
            "path": str(agent_dir),
            "contracts": ["TASK_SPEC_VALIDATOR_CONTRACT_V1_1.md", "P0_SAFETY_CONTRACT_V1.md"],
            "tasks_count": 0,
            "status": "ACTIVE"
        }

    amc_graph_file = gateway_dir / "amc_graph.json"
    with amc_graph_file.open("w", encoding="utf-8") as f:
        json.dump(amc_graph_data, f, indent=2)

    return {
        "lam_core_tmp": lam_core_tmp,
        "radriloniuma_tmp": radriloniuma_tmp,
        "amc_graph_file": amc_graph_file,
        "agents": EXPECTED_9_AGENTS
    }
