#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • CROSS-SESSION TRANSFER SOCKET GATEWAY
===================================================
Module: /root/RADRILONIUMA/core/stream_conveyor/socket_ingress_gateway.py
Protocol: TCP Loopback Socket (tcp://127.0.0.1:5280) & POST Port Gateway
Contract Reference: P0_SAFETY_CONTRACT_V1, SSN_RSTRT_WRAPPER_CONTRACT_V1

Exposes HTTP / TCP Socket Endpoints:
- /api/ssn/transfer/export
- /api/ssn/transfer/import
- /api/ssn/segmenter/status
- /v1/google-node-gateway/input-point/import

Transfers state capsule (SSN_TRANSFER_CAPSULE.json) from historical session
(ca2d944d-e99b-4ec1-9a27-7fa50f96003f) to current session (c1a5d05a-bcb5-40fc-8426-9b604a013880)
without inflating context tokens.
"""

import os
import sys
import json
import socket
import hashlib
import threading
from http.server import ThreadingHTTPServer, BaseHTTPRequestHandler
from pathlib import Path
from typing import Dict, Any, List, Optional
from datetime import datetime, timezone

REPO_ROOT = Path("/root/RADRILONIUMA")
GATEWAY_DIR = REPO_ROOT / ".gateway"
ARCHIVE_DIR = REPO_ROOT / "archive" / "sessions"
T7_VAULT_SESSIONS = Path("/mnt/f/ATESIRT_VAULT_ARCHIVE/sessions")

HISTORICAL_SESSION_ID = "ca2d944d-e99b-4ec1-9a27-7fa50f96003f"
CURRENT_SESSION_ID = "c1a5d05a-bcb5-40fc-8426-9b604a013880"
DEFAULT_PORT = 5280
DEFAULT_HOST = "127.0.0.1"

# Ensure core stream conveyor in sys.path
CORE_DIR = REPO_ROOT / "core" / "stream_conveyor"
if str(CORE_DIR) not in sys.path:
    sys.path.insert(0, str(CORE_DIR))

try:
    from session_segmenter_guard import SessionSegmenterGuard
except ImportError:
    SessionSegmenterGuard = None

TRANSFER_LOCK = threading.RLock()
_STATUS_CACHE_LOCK = threading.Lock()
_DISPATCH_LOCK = threading.Lock()
_SEGMENTER_STATUS_CACHE: Dict[str, tuple[int, int, Dict[str, Any]]] = {}
_WIN_BRAIN_MIRROR_CACHE: Dict[str, tuple[str, str]] = {}
_MIRROR_THROTTLE_TS: Dict[str, tuple[str, float]] = {}


def _mirror_json_throttled(target_path: Path, data: Any, ttl_sec: float = 5.0, sig: str = "") -> None:
    """Mirror JSON to slow external/9p mounts without redundant identical writes during bursts."""
    now_ts = datetime.now(timezone.utc).timestamp()
    key = str(target_path)
    prev_sig, last_ts = _MIRROR_THROTTLE_TS.get(key, ("", 0.0))
    if prev_sig == sig and last_ts > 0.0 and (now_ts - last_ts) < ttl_sec:
        return
    try:
        _write_json_atomically(target_path, data, fsync=False)
        _MIRROR_THROTTLE_TS[key] = (sig, now_ts)
    except Exception:
        pass


def _record_gateway_dispatch(body_json: Dict[str, Any], raw_bytes: bytes) -> Dict[str, Any]:
    """Persists incoming Google-node / Gemini surface dispatches to the gateway ledger."""
    now_iso = datetime.now(timezone.utc).isoformat()
    prompt_text = str(body_json.get("prompt") or "")
    payload_sha256 = hashlib.sha256(raw_bytes).hexdigest()
    prompt_sha256 = hashlib.sha256(prompt_text.encode("utf-8")).hexdigest() if prompt_text else payload_sha256
    dispatch_id = f"gng-{prompt_sha256[:12]}"
    surface = str(body_json.get("surface") or "gateway")
    source = str(body_json.get("source") or "external")
    dispatch_file = GATEWAY_DIR / "google_node_gateway_dispatch.jsonl"

    entry = {
        "dispatch_id": dispatch_id,
        "surface": surface,
        "source": source,
        "prompt_sha256": prompt_sha256,
        "payload_sha256": payload_sha256,
        "prompt_bytes": len(prompt_text.encode("utf-8")),
        "received_bytes": len(raw_bytes),
        "timestamp_utc": now_iso,
    }
    persisted = False
    if body_json.get("persist", True) is not False:
        with _DISPATCH_LOCK:
            dispatch_file.parent.mkdir(parents=True, exist_ok=True)
            with open(dispatch_file, "a", encoding="utf-8") as fh:
                fh.write(json.dumps(entry, ensure_ascii=False) + "\n")
            persisted = True

    return {
        "status": "ACCEPTED_BY_SOCKET_INGRESS_GATEWAY",
        "dispatch_id": dispatch_id,
        "surface": surface,
        "source": source,
        "persisted": persisted,
        "dispatch_file": str(dispatch_file) if persisted else None,
        "prompt_sha256": prompt_sha256,
        "payload_sha256": payload_sha256,
        "received_bytes": len(raw_bytes),
        "timestamp_utc": now_iso,
        "node_binding": f"POST_PORT:{DEFAULT_PORT}",
    }


def _write_json_atomically(
    target_path: Path,
    data: Any,
    indent: int = 2,
    fsync: Optional[bool] = None,
) -> None:
    target_path = Path(target_path)
    target_path.parent.mkdir(parents=True, exist_ok=True)
    tmp_path = target_path.with_name(f"{target_path.name}.tmp.{os.getpid()}.{threading.get_ident()}")
    if fsync is None:
        fsync = os.environ.get("RADR_STRICT_FSYNC") == "1"
    try:
        with open(tmp_path, "w", encoding="utf-8") as f:
            json.dump(data, f, indent=indent, ensure_ascii=False)
            f.flush()
            if fsync and not str(target_path).startswith("/mnt/"):
                os.fsync(f.fileno())
        os.replace(tmp_path, target_path)
    finally:
        if tmp_path.exists():
            try:
                tmp_path.unlink()
            except OSError:
                pass


def get_8_generation_matrix() -> List[Dict[str, Any]]:
    return [
        {
            "phase": 1,
            "generation": "GEMINI V.5",
            "sub_tiers": ["LITE", "THINK", "PRO"],
            "target_mesh_nodes": ["DEV_02_ATESIRT", "DEV_03_UBUNTU_WSL2", "DEV_01_BUSHMASTER"],
            "window": "2026.10.16 – 2026.10.22",
            "gate_status": "CONFIRMED_VERIFIED_APPROVED"
        },
        {
            "phase": 2,
            "generation": "GEMINI V.6",
            "sub_tiers": ["EASY", "NORMAL", "HARD"],
            "target_mesh_nodes": ["DEV_02_ATESIRT", "DEV_03_UBUNTU_WSL2", "DEV_01_BUSHMASTER"],
            "window": "2026.10.24 – 2026.10.28",
            "gate_status": "CONFIRMED_VERIFIED_APPROVED"
        },
        {
            "phase": 3,
            "generation": "G.V.7",
            "sub_tiers": ["LOW", "MIDDLE", "HIGH"],
            "target_mesh_nodes": ["DEV_02_ATESIRT", "DEV_03_UBUNTU_WSL2", "DEV_05_LAO_SWARM_MATRIX"],
            "window": "2026.10.30 – 2026.11.04",
            "gate_status": "CONFIRMED_VERIFIED_APPROVED"
        },
        {
            "phase": 4,
            "generation": "G.V.8",
            "sub_tiers": ["SMALL", "LARGE", "BIG"],
            "target_mesh_nodes": ["DEV_02_ATESIRT", "DEV_04_SAMSUNG_T7_VAULT", "DEV_05_LAO_SWARM_MATRIX"],
            "window": "2026.11.06 – 2026.11.10",
            "gate_status": "CONFIRMED_VERIFIED_APPROVED"
        },
        {
            "phase": 5,
            "generation": "G.V.9",
            "sub_tiers": ["MICRO", "MIRACLE", "MACRO"],
            "target_mesh_nodes": ["DEV_03_UBUNTU_WSL2", "DEV_01_BUSHMASTER", "DEV_05_LAO_SWARM_MATRIX"],
            "window": "2026.11.12 – 2026.11.16",
            "gate_status": "CONFIRMED_VERIFIED_APPROVED"
        },
        {
            "phase": 6,
            "generation": "G.V.10",
            "sub_tiers": ["NANO", "NEXUS", "NOVA"],
            "target_mesh_nodes": ["DEV_03_UBUNTU_WSL2", "DEV_02_ATESIRT", "DEV_01_BUSHMASTER"],
            "window": "2026.11.19 – 2026.11.23",
            "gate_status": "CONFIRMED_VERIFIED_APPROVED"
        },
        {
            "phase": 7,
            "generation": "G.V.11",
            "sub_tiers": ["AETHER", "ASTRAL", "APEX"],
            "target_mesh_nodes": ["DEV_04_SAMSUNG_T7_VAULT", "DEV_05_LAO_SWARM_MATRIX", "DEV_01_BUSHMASTER"],
            "window": "2026.11.25 – 2026.11.29",
            "gate_status": "HARD_DEADLINE_2026.11.29"
        },
        {
            "phase": 8,
            "generation": "G.V.12",
            "sub_tiers": ["ALPHA", "AVATAR", "ABSOLUTE"],
            "target_mesh_nodes": ["DEV_04_SAMSUNG_T7_VAULT", "DEV_02_ATESIRT", "DEV_05_LAO_SWARM_MATRIX"],
            "window": "2026.12.01 – 2026.12.06",
            "gate_status": "SINGULARITY_LOCKED"
        }
    ]


def get_13_stream_connectors() -> List[Dict[str, Any]]:
    return [
        {"order": 1, "handle": "@gmail", "connector_id": "gmail", "role": "Gmail Thread & Contact Mention Correlation Stream", "modality": "TEXT_STREAM"},
        {"order": 2, "handle": "@gcontacts", "connector_id": "gcontacts", "role": "Google Contacts People API v1 Person Query Stream", "modality": "ONTOLOGY_GRAPH"},
        {"order": 3, "handle": "@gemini", "connector_id": "gemini", "role": "Gemini Multimodal Sovereign Cognitive Core (V.5 -> G.V.12)", "modality": "COGNITIVE_SYNTHESIS"},
        {"order": 4, "handle": "gapp", "connector_id": "gapp", "role": "Google Workspace Apps Script & Vertex App Builder Automation", "modality": "ACTION_EXECUTION"},
        {"order": 5, "handle": "@gsearch", "connector_id": "gsearch", "role": "Google Search Real-Time Grounding & Entity Verification", "modality": "SEARCH_GROUNDING"},
        {"order": 6, "handle": "@gdrive", "connector_id": "gdrive", "role": "Google Drive v3 Cloud Vault & Archival Corpus Sync", "modality": "STORAGE_MEMORY_ARCHIVE"},
        {"order": 7, "handle": "@gbook", "connector_id": "gbook", "role": "Google Books Deep Literature & Knowledge Graph Indexing", "modality": "ONTOLOGY_BOOK_CORPUS"},
        {"order": 8, "handle": "@glm", "connector_id": "glm", "role": "Google Language Model Tensor & Embedding Substrate", "modality": "VECTOR_EMBEDDING"},
        {"order": 9, "handle": "@gh&mL", "connector_id": "gh&ml", "role": "Google Human & Machine Learning Co-Evolutionary Loop", "modality": "TESSERACT_HEAL_LOOP"},
        {"order": 10, "handle": "@gnote", "connector_id": "gnote", "role": "Google Keep & Semantic Micro-Note Rapid Capture", "modality": "TEXT_NOTE_INGRESS"},
        {"order": 11, "handle": "@gnotebook", "connector_id": "gnotebook", "role": "Google Colab & Interactive Research Notebook Runtime", "modality": "CODE_NOTEBOOK_EXEC"},
        {"order": 12, "handle": "@gemininotebook", "connector_id": "gemininotebook", "role": "Gemini Notebook / NotebookLM Source-Grounded Synthesis", "modality": "ONTOLOGY_SYNTHESIS"},
        {"order": 13, "handle": "@googlegeminienotebookhumanmachinelearning", "connector_id": "googlegeminienotebookhumanmachinelearning", "role": "Google Gemini Notebook Human-Machine Learning Unified Continuum", "modality": "TESSERACT_ONTOLOGY_HEAL"}
    ]


def get_pending_execution_directives() -> List[Dict[str, Any]]:
    return [
        {
            "directive_id": "DIR-G.V.5-EXEC-001",
            "action": "EXECUTE_GEMINI_V.5_MULTI_ORGAN_ORCHESTRATION",
            "target_nodes": ["DEV_01_BUSHMASTER", "DEV_02_ATESIRT", "DEV_03_UBUNTU_WSL2"],
            "carrier_frequency": "528 Hz / 432 Hz",
            "status": "ARMED_READY",
            "deadline": "2026.10.22"
        },
        {
            "directive_id": "DIR-T7-VAULT-MIRROR-002",
            "action": "SYNCHRONIZE_DEV_04_SAMSUNG_T7_VAULT_ARCHIVES",
            "target_vault": "F:\\ATESIRT_VAULT_ARCHIVE\\sessions",
            "status": "NON_DESTRUCTIVE_AUTO_SYNC",
            "p0_safety": "P0_SAFETY_CONTRACT_V1_VERIFIED"
        },
        {
            "directive_id": "DIR-DEADLINE-GV11-LOCK-003",
            "action": "SOVEREIGN_HARD_DEADLINE_LOCK",
            "target_generation": "G.V.11 (AETHER ASTRAL APEX)",
            "deadline_date": "2026.11.29",
            "deadline_iso_utc": "2026-11-29T23:59:59Z",
            "status": "IMMUTABLE_CONTRACT_LOCK"
        }
    ]


def build_transfer_capsule(source_session_id: str = HISTORICAL_SESSION_ID) -> Dict[str, Any]:
    source_session_id = str(source_session_id).strip() if source_session_id is not None and str(source_session_id).strip() else HISTORICAL_SESSION_ID
    matrix = get_8_generation_matrix()
    connectors = get_13_stream_connectors()
    directives = get_pending_execution_directives()

    raw_payload = {
        "capsule_version": "1.0.0",
        "source_session_id": source_session_id,
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "hard_deadline_lock": {
            "target_generation": "G.V.11 (AETHER ASTRAL APEX)",
            "deadline_date": "2026.11.29",
            "deadline_iso_utc": "2026-11-29T23:59:59Z",
            "status": "LOCKED"
        },
        "generation_matrix_8": matrix,
        "stream_connectors_13": connectors,
        "pending_directives": directives,
        "cluster_nodes": [
            "DEV_01_BUSHMASTER",
            "DEV_02_ATESIRT",
            "DEV_03_UBUNTU_WSL2",
            "DEV_04_SAMSUNG_T7_VAULT",
            "DEV_05_LAO_SWARM_MATRIX"
        ],
        "harmonic_carrier_hz": "528 Hz / 432 Hz",
        "mirashani_audit_code": "0x528_432_SOVEREIGN_OK"
    }

    raw_bytes = json.dumps(raw_payload, sort_keys=True).encode("utf-8")
    sha256_seal = hashlib.sha256(raw_bytes).hexdigest()

    return {
        "capsule_id": f"SSN-CAPSULE-{source_session_id[:8].upper()}-{sha256_seal[:8].upper()}",
        "sha256_seal": sha256_seal,
        "status": "SEALED_TRANSFER_CAPSULE",
        "payload": raw_payload
    }


def _resolve_win_gateway_mirror_dir() -> Optional[Path]:
    env_win_gw = os.environ.get("RADR_WIN_GATEWAY_DIR", "").strip()
    if env_win_gw:
        return Path(env_win_gw)
    try:
        sibling = GATEWAY_DIR.parent.parent / "win_bushm" / ".gateway"
        if sibling.exists():
            return sibling
    except Exception:
        pass
    if GATEWAY_DIR == Path("/root/RADRILONIUMA/.gateway"):
        default_win_gw = Path("/mnt/c/Users/BushM/.gateway")
        if default_win_gw.parent.exists():
            return default_win_gw
    return None


def _is_valid_capsule_doc(doc: Any) -> bool:
    if not isinstance(doc, dict):
        return False
    payload = doc.get("payload")
    seal = doc.get("sha256_seal")
    cid = doc.get("capsule_id")
    return (
        isinstance(payload, dict)
        and bool(str(payload.get("source_session_id") or "").strip())
        and isinstance(seal, str)
        and len(seal) == 64
        and isinstance(cid, str)
        and bool(cid.strip())
    )


def export_transfer_capsule(
    source_session_id: str = HISTORICAL_SESSION_ID,
    output_path: Optional[Path] = None,
    force: bool = False,
) -> Dict[str, Any]:
    with TRANSFER_LOCK:
        source_id = str(source_session_id).strip() if source_session_id is not None and str(source_session_id).strip() else HISTORICAL_SESSION_ID
        capsule = build_transfer_capsule(source_id)
        GATEWAY_DIR.mkdir(parents=True, exist_ok=True)

        dest = output_path or (GATEWAY_DIR / "SSN_TRANSFER_CAPSULE.json")
        hist_archive = ARCHIVE_DIR / source_id
        hist_archive.mkdir(parents=True, exist_ok=True)
        archive_capsule_path = hist_archive / "SSN_TRANSFER_CAPSULE.json"

        preserved_active = False
        active_capsule_id = None
        active_source_session_id = None

        if output_path is None and not force and dest.exists():
            try:
                existing = json.loads(dest.read_text(encoding="utf-8"))
                if _is_valid_capsule_doc(existing):
                    existing_payload = existing["payload"]
                    existing_src = str(existing_payload.get("source_session_id") or "").strip()
                    existing_ts = str(existing_payload.get("created_at_utc") or "")
                    new_ts = str(capsule["payload"].get("created_at_utc") or "")
                    if existing_src != HISTORICAL_SESSION_ID and (
                        source_id == HISTORICAL_SESSION_ID or existing_ts > new_ts
                    ):
                        preserved_active = True
                        active_capsule_id = existing.get("capsule_id")
                        active_source_session_id = existing_src
            except Exception:
                pass

        if not preserved_active:
            _write_json_atomically(dest, capsule)
            if output_path is None:
                win_gw_dir = _resolve_win_gateway_mirror_dir()
                if win_gw_dir is not None:
                    _mirror_json_throttled(win_gw_dir / "SSN_TRANSFER_CAPSULE.json", capsule, sig=source_id)

        # Archive copy
        _write_json_atomically(archive_capsule_path, capsule)

        # Mirror to DEV_04_SAMSUNG_T7_VAULT
        vault_dest = None
        if T7_VAULT_SESSIONS.parent.exists():
            vault_dest = T7_VAULT_SESSIONS / source_id / "SSN_TRANSFER_CAPSULE.json"
            _mirror_json_throttled(vault_dest, capsule, sig=source_id)

        result = {
            "exported": True,
            "source_session_id": source_id,
            "capsule_id": capsule["capsule_id"],
            "sha256_seal": capsule["sha256_seal"],
            "export_path": str(archive_capsule_path if preserved_active else dest),
            "archive_path": str(archive_capsule_path),
            "vault_mirror_path": str(vault_dest) if vault_dest else None,
            "timestamp_utc": datetime.now(timezone.utc).isoformat(),
            "preserved_active_capsule": preserved_active,
        }
        if preserved_active:
            result["active_capsule_id"] = active_capsule_id
            result["active_source_session_id"] = active_source_session_id
        return result


def ingest_transfer_capsule(
    target_session_id: str = CURRENT_SESSION_ID,
    capsule_path: Optional[Path] = None
) -> Dict[str, Any]:
    """
    Ingests state capsule into target session WITHOUT inflating context tokens.
    Generates a concise pointer index and memory capsule reference.
    """
    with TRANSFER_LOCK:
        target_id = str(target_session_id).strip() if target_session_id is not None and str(target_session_id).strip() else CURRENT_SESSION_ID
        capsule_file = capsule_path or (GATEWAY_DIR / "SSN_TRANSFER_CAPSULE.json")
        if not capsule_file.exists():
            # Auto-export if not yet created
            export_transfer_capsule(HISTORICAL_SESSION_ID, capsule_file)

        with open(capsule_file, "r", encoding="utf-8") as f:
            capsule = json.load(f)

        # Build concise pointer structure (token footprint < 200 tokens)
        pointer_data = {
            "pointer_type": "SSN_TRANSFER_CAPSULE_POINTER",
            "target_session_id": target_id,
            "source_session_id": capsule["payload"]["source_session_id"],
            "capsule_id": capsule["capsule_id"],
            "sha256_seal": capsule["sha256_seal"],
            "capsule_file_path": str(capsule_file),
            "hard_deadline_lock": capsule["payload"]["hard_deadline_lock"],
            "generation_matrix_summary": "8 Generations (GEMINI V.5 -> G.V.12, Deadline 2026.11.29)",
            "stream_connectors_count": len(capsule["payload"]["stream_connectors_13"]),
            "pending_directives_count": len(capsule["payload"]["pending_directives"]),
            "context_token_inflation": 0,
            "ingested_at_utc": datetime.now(timezone.utc).isoformat(),
            "status": "INGESTED_VIA_POINTER_REFERENCE"
        }

        pointer_file = GATEWAY_DIR / "SSN_TRANSFER_POINTER.json"
        _write_json_atomically(pointer_file, pointer_data)

        # Mirror pointer to Windows .gateway directory when configured or active
        win_gw_dir = _resolve_win_gateway_mirror_dir()
        if win_gw_dir is not None:
            _mirror_json_throttled(
                win_gw_dir / "SSN_TRANSFER_POINTER.json",
                pointer_data,
                sig=f"{capsule['capsule_id']}:{target_id}",
            )

        # Mirror pointer to Windows brain directory if accessible (skip duplicate 9p writes for same seal/target)
        win_brain = Path(f"/mnt/c/Users/BushM/.gemini/antigravity-cli/brain/{target_id}")
        if win_brain.exists():
            try:
                win_ptr_path = win_brain / "SSN_TRANSFER_POINTER.json"
                mirror_sig = (capsule["capsule_id"], target_id)
                if _WIN_BRAIN_MIRROR_CACHE.get(str(win_ptr_path)) != mirror_sig or not win_ptr_path.exists():
                    _write_json_atomically(win_ptr_path, pointer_data, fsync=False)
                    _WIN_BRAIN_MIRROR_CACHE[str(win_ptr_path)] = mirror_sig
            except Exception:
                pass

        # Append to transfer ingress ledger
        ledger_file = GATEWAY_DIR / "ssn_transfer_ingress_ledger.jsonl"
        with open(ledger_file, "a", encoding="utf-8") as f:
            f.write(json.dumps(pointer_data, ensure_ascii=False) + "\n")

        # Hot-ingest into lao_lam_la_delta_agent_state.json without context token inflation
        delta_state_file = GATEWAY_DIR / "lao_lam_la_delta_agent_state.json"
        delta_updated = False
        if delta_state_file.exists():
            try:
                with open(delta_state_file, "r", encoding="utf-8") as sf:
                    delta_state = json.load(sf)
                delta_state["ssn_transfer_capsule_ingestion"] = {
                    "source_session_id": capsule["payload"]["source_session_id"],
                    "target_session_id": target_id,
                    "capsule_id": capsule["capsule_id"],
                    "sha256_seal": capsule["sha256_seal"],
                    "hard_deadline_lock": capsule["payload"]["hard_deadline_lock"],
                    "evolutionary_matrix_generations": len(capsule["payload"]["generation_matrix_8"]),
                    "stream_connectors_count": len(capsule["payload"]["stream_connectors_13"]),
                    "pending_directives_count": len(capsule["payload"]["pending_directives"]),
                    "context_token_inflation": 0,
                    "ingested_at_utc": datetime.now(timezone.utc).isoformat(),
                    "status": "HOT_INGESTED_ZERO_INFLATION"
                }
                delta_state["cross_session_transfer"] = pointer_data
                delta_state["active_session_id"] = target_id
                delta_state["last_transfer_capsule_id"] = capsule["capsule_id"]
                delta_state["last_ingested_capsule_id"] = capsule["capsule_id"]
                delta_state["last_ingested_at_utc"] = pointer_data["ingested_at_utc"]
                delta_state["capsule_pointer_ref"] = str(pointer_file)
                delta_state["context_token_inflation"] = 0

                _write_json_atomically(delta_state_file, delta_state)
                delta_updated = True
            except Exception:
                delta_updated = False

        return {
            "ingested": True,
            "target_session_id": target_id,
            "source_session_id": capsule["payload"]["source_session_id"],
            "capsule_id": capsule["capsule_id"],
            "pointer_file": str(pointer_file),
            "delta_state_updated": delta_updated,
            "delta_state_file": str(delta_state_file) if delta_updated else None,
            "context_token_inflation": 0,
            "hard_deadline": "2026.11.29",
            "status": "INGESTED_SUCCESSFULLY"
        }


def _inspect_session_cached(guard: Any, session_path: Path) -> Dict[str, Any]:
    st = session_path.stat()
    key = str(session_path)
    with _STATUS_CACHE_LOCK:
        cached = _SEGMENTER_STATUS_CACHE.get(key)
        if cached and cached[0] == st.st_mtime_ns and cached[1] == st.st_size:
            return dict(cached[2])
    inspected = guard.inspect_session(key)
    with _STATUS_CACHE_LOCK:
        _SEGMENTER_STATUS_CACHE[key] = (st.st_mtime_ns, st.st_size, dict(inspected))
    return inspected


def get_segmenter_status() -> Dict[str, Any]:
    guard = (
        SessionSegmenterGuard(archive_base_dir=ARCHIVE_DIR, vault_mirror_dir=T7_VAULT_SESSIONS)
        if SessionSegmenterGuard
        else None
    )
    active_sessions = []
    
    # Check chronolog conveyor ledger
    conveyor_ledger = REPO_ROOT / "chronolog" / "stream_conveyor_ledger.jsonl"
    if conveyor_ledger.exists() and guard:
        try:
            active_sessions.append(_inspect_session_cached(guard, conveyor_ledger))
        except Exception:
            pass

    # Check .gateway/sessions
    gateway_sessions = GATEWAY_DIR / "sessions"
    if gateway_sessions.exists() and guard:
        for s_file in gateway_sessions.glob("*.jsonl"):
            try:
                active_sessions.append(_inspect_session_cached(guard, s_file))
            except Exception:
                pass

    return {
        "gateway_status": "ONLINE",
        "port": DEFAULT_PORT,
        "resonance_hz": "528 Hz / 432 Hz",
        "thresholds": {
            "warn_steps": 80,
            "warn_tokens": 120000,
            "brake_steps": 150,
            "brake_tokens": 180000,
            "brake_bytes": 4194304
        },
        "monitored_sessions": active_sessions,
        "timestamp_utc": datetime.now(timezone.utc).isoformat()
    }


class SocketIngressHTTPHandler(BaseHTTPRequestHandler):
    wbufsize = -1

    def _set_headers(self, status=200, content_type="application/json", content_length=None):
        self.send_response(status)
        self.send_header("Content-Type", content_type)
        if content_length is not None:
            self.send_header("Content-Length", str(content_length))
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type, Authorization")
        self.send_header("X-Resonance-Carrier", "528Hz")
        self.end_headers()

    def _send_json(self, status: int, data: dict):
        body = json.dumps(data, indent=2).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type, Authorization")
        self.send_header("X-Resonance-Carrier", "528Hz")
        if not hasattr(self, "_headers_buffer"):
            self._headers_buffer = []
        self._headers_buffer.append(b"\r\n" + body)
        try:
            self.flush_headers()
        except (BrokenPipeError, ConnectionResetError):
            pass

    def do_OPTIONS(self):
        self._set_headers(204)

    def do_GET(self):
        try:
            path = self.path.split("?")[0]
            if path in ("/", "/health"):
                self._set_headers(200)
                self.wfile.write(json.dumps({
                    "service": "socket_ingress_gateway",
                    "status": "ONLINE",
                    "port": DEFAULT_PORT,
                    "resonance": "528 Hz / 432 Hz Solfeggio"
                }).encode("utf-8"))
            elif path == "/api/ssn/segmenter/status":
                status_data = get_segmenter_status()
                self._send_json(200, status_data)
            elif path == "/api/ssn/transfer/export":
                exp_data = export_transfer_capsule()
                self._send_json(200, exp_data)
            elif path == "/api/ssn/transfer/import":
                ing_data = ingest_transfer_capsule()
                self._send_json(200, ing_data)
            elif path == "/api/ssn/archivator/init":
                import importlib.util
                import urllib.parse
                init_script = Path(__file__).resolve().parents[2] / "scripts" / "global" / "lam_archivator_init.py"
                spec = importlib.util.spec_from_file_location("lam_archivator_init", str(init_script))
                mod = importlib.util.module_from_spec(spec)
                spec.loader.exec_module(mod)
                qs = urllib.parse.parse_qs(self.path.split("?", 1)[1] if "?" in self.path else "")
                mode = (qs.get("mode") or ["both"])[0]
                dry_run = (qs.get("dry_run") or ["false"])[0].lower() in ("1", "true", "yes")
                auto_slice = (qs.get("auto_slice") or ["false"])[0].lower() in ("1", "true", "yes")
                src_sid = (qs.get("source_session_id") or [None])[0]
                tgt_sid = (qs.get("target_session_id") or [None])[0]
                arch_data = mod.run_lam_archivator_init(
                    mode=mode,
                    source_session_id=src_sid,
                    target_session_id=tgt_sid,
                    auto_slice=auto_slice,
                    dry_run=dry_run,
                    repo_root=REPO_ROOT,
                    vault_sessions_dir=T7_VAULT_SESSIONS,
                )
                self._send_json(200, arch_data)
            else:
                self._set_headers(404)
                self.wfile.write(json.dumps({"error": f"Path not found: {path}", "status": "NOT_FOUND"}).encode("utf-8"))
        except Exception as e:
            try:
                self._set_headers(500)
                self.wfile.write(json.dumps({"error": str(e), "status": "FAILED"}, indent=2).encode("utf-8"))
            except Exception:
                pass

    def do_POST(self):
        try:
            path = self.path.split("?")[0]
            content_length = int(self.headers.get("Content-Length", 0))
            if content_length > 0:
                post_body = self.rfile.read(content_length)
            elif self.headers.get("Transfer-Encoding", "").lower() == "chunked":
                chunks = []
                while True:
                    line = self.rfile.readline().strip()
                    if not line:
                        break
                    try:
                        chunk_len = int(line, 16)
                    except ValueError:
                        break
                    if chunk_len == 0:
                        self.rfile.readline()
                        break
                    chunks.append(self.rfile.read(chunk_len))
                    self.rfile.readline()
                post_body = b"".join(chunks)
            else:
                post_body = b"{}"

            try:
                body_json = json.loads(post_body.decode("utf-8")) if post_body else {}
            except Exception:
                body_json = {}

            if not isinstance(body_json, dict):
                body_json = {}

            if path == "/api/ssn/transfer/export":
                raw_source = body_json.get("source_session_id")
                source_id = str(raw_source).strip() if raw_source is not None and str(raw_source).strip() else HISTORICAL_SESSION_ID
                res = export_transfer_capsule(source_id)
                self._send_json(200, res)
            elif path == "/api/ssn/transfer/import":
                raw_target = body_json.get("target_session_id")
                target_id = str(raw_target).strip() if raw_target is not None and str(raw_target).strip() else CURRENT_SESSION_ID
                res = ingest_transfer_capsule(target_id)
                self._send_json(200, res)
            elif path in ("/v1/google-node-gateway/input-point/import", "/api/google-node-gateway/import"):
                res = _record_gateway_dispatch(body_json, post_body)
                self._send_json(200, res)
            elif path == "/api/ssn/archivator/init":
                import importlib.util
                init_script = Path(__file__).resolve().parents[2] / "scripts" / "global" / "lam_archivator_init.py"
                spec = importlib.util.spec_from_file_location("lam_archivator_init", str(init_script))
                mod = importlib.util.module_from_spec(spec)
                spec.loader.exec_module(mod)
                res = mod.run_lam_archivator_init(
                    mode=str(body_json.get("mode") or "both"),
                    source_session_id=body_json.get("source_session_id"),
                    target_session_id=body_json.get("target_session_id"),
                    auto_slice=bool(body_json.get("auto_slice", False)),
                    dry_run=bool(body_json.get("dry_run", False)),
                    repo_root=body_json.get("repo_root") or REPO_ROOT,
                    vault_sessions_dir=T7_VAULT_SESSIONS,
                )
                self._send_json(200, res)
            else:
                self._set_headers(404)
                self.wfile.write(json.dumps({"error": f"POST path not found: {path}", "status": "NOT_FOUND"}).encode("utf-8"))
        except Exception as e:
            try:
                self._set_headers(500)
                self.wfile.write(json.dumps({"error": str(e), "status": "FAILED"}, indent=2).encode("utf-8"))
            except Exception:
                pass

    def log_message(self, format, *args):
        # Silent or compact log
        pass


class ThreadingHTTPServerWithBacklog(ThreadingHTTPServer):
    request_queue_size = 128


ThreadingHTTPServer.request_queue_size = 128


def run_socket_server(host: str = DEFAULT_HOST, port: int = DEFAULT_PORT):
    ThreadingHTTPServer.request_queue_size = 128
    server_address = (host, port)
    httpd = ThreadingHTTPServerWithBacklog(server_address, SocketIngressHTTPHandler)
    httpd.daemon_threads = True
    print(f"⚜️ RADRILONIUMA NON-BLOCKING SOCKET INGRESS GATEWAY listening on tcp://{host}:{port} (528 Hz)")
    httpd.serve_forever()


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="RADRILONIUMA Socket Ingress Gateway (tcp://127.0.0.1:5280)")
    parser.add_argument("--port", type=int, default=DEFAULT_PORT, help="Port to bind (default 5280)")
    parser.add_argument("--host", default=DEFAULT_HOST, help="Host to bind (default 127.0.0.1)")
    parser.add_argument("--export-only", action="store_true", help="Export capsule and exit")
    parser.add_argument("--import-only", action="store_true", help="Ingest capsule and exit")
    parser.add_argument("--source-session-id", default=HISTORICAL_SESSION_ID, help="Source session ID for export")
    parser.add_argument("--target-session-id", default=CURRENT_SESSION_ID, help="Target session ID for ingest")

    args = parser.parse_args()

    if args.export_only:
        out = export_transfer_capsule(source_session_id=args.source_session_id)
        print(json.dumps(out, indent=2))
    elif args.import_only:
        out = ingest_transfer_capsule(target_session_id=args.target_session_id)
        print(json.dumps(out, indent=2))
    else:
        # Ensure capsule and pointer exist at startup without overwriting an active capsule
        capsule_path = GATEWAY_DIR / "SSN_TRANSFER_CAPSULE.json"
        pointer_path = GATEWAY_DIR / "SSN_TRANSFER_POINTER.json"
        need_export = True
        if capsule_path.exists():
            try:
                existing_cap = json.loads(capsule_path.read_text(encoding="utf-8"))
                need_export = not _is_valid_capsule_doc(existing_cap)
            except Exception:
                need_export = True
        if need_export:
            export_transfer_capsule(source_session_id=args.source_session_id)

        need_ingest = True
        if pointer_path.exists():
            try:
                existing_ptr = json.loads(pointer_path.read_text(encoding="utf-8"))
                need_ingest = not (isinstance(existing_ptr, dict) and bool(existing_ptr.get("capsule_id")))
            except Exception:
                need_ingest = True
        if need_ingest:
            ingest_transfer_capsule(target_session_id=args.target_session_id)

        run_socket_server(args.host, args.port)
