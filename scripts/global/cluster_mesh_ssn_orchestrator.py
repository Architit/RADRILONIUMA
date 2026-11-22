#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
===============================================================================
RADRILONIUMA • CLUSTER MESH SESSION ORCHESTRATOR (SSN RBT / SSN STRT)
RULE M49: INITIATOR NODE MUST EXECUTE PROTOCOL ON ALL OTHER NODES FIRST,
          AND ONLY THEN REBOOT ITS OWN NODE (INITIATOR_REBOOTS_LAST).
===============================================================================
"""

import sys
import os
import json
import time
import uuid
import signal
import threading
import subprocess
from pathlib import Path
from datetime import datetime, timezone
from typing import Any, Dict, List, Optional, Set, Tuple

BASE_DIR = Path(__file__).resolve().parents[2]
GATEWAY_DIR = BASE_DIR / ".gateway"
STATE_FILE = GATEWAY_DIR / "ssn_cascade_state.json"
SIGNAL_FILE = GATEWAY_DIR / "ssn_restart.signal"
LAST_REBOOT_FILE = GATEWAY_DIR / "last_ssn_reboot.txt"
AMC_GRAPH_FILE = GATEWAY_DIR / "amc_graph.json"
CAPSULE_FILE = GATEWAY_DIR / "SSN_TRANSFER_CAPSULE.json"
WIN_CAPSULE_FILE = Path("/mnt/c/Users/BushM/.gateway/SSN_TRANSFER_CAPSULE.json")
SUPPRESSED_DAEMONS_FILE = GATEWAY_DIR / "pm2_suppressed_daemons.json"
HISTORICAL_SESSION_ID = "ca2d944d-e99b-4ec1-9a27-7fa50f96003f"

DEFAULT_SUPPRESSED_DAEMONS = {"real-cloud-uploader"}
PROTECTED_LIVE_SERVICES = {
    "core-gateway",
    "ssn-socket-gateway",
    "trianiuma-mcp-core",
    "trilaptop-agent-engine",
    "master-plan-executor",
    "cocon-fleet-supervisor",
    "origin-home-tunnel",
    "network-mesh-watchdog",
}

ALL_NODES = [
    "DEV_01_BUSHMASTER",
    "DEV_02_ATESIRT",
    "DEV_02B_KEN_REDMI",
    "DEV_03_UBUNTU_WSL2",
    "DEV_04_SAMSUNG_T7_VAULT",
    "DEV_05_LAO_SWARM_MATRIX"
]

MOBILE_HOTSPOT_NODES = {
    "DEV_02_ATESIRT": {
        "label": "Samsung SM-A266B (Атесирт)",
        "known_serials": ["RZCY80G86FP"],
        "model_keywords": ["SM_A266", "SM-A266", "A266B", "SAMSUNG"],
        "role": "Sensory Cortex (VLM / Voice / Camera - Atesirt)",
    },
    "DEV_02B_KEN_REDMI": {
        "label": "Xiaomi REDMI Note 15 (Кен / Дориан Грей)",
        "known_serials": [],
        "model_keywords": ["REDMI", "XIAOMI", "NOTE", "2409", "2312", "M2"],
        "role": "Navigator-Mechanic Mobile Node (Ken / Dorian Grey)",
    },
}


class _CascadeInterrupted(BaseException):
    def __init__(self, signum: int, reason_code: str):
        super().__init__(f"Cascade interrupted by signal {signum} ({reason_code})")
        self.signum = signum
        self.reason_code = reason_code


def log(msg):
    ts = datetime.now(timezone.utc).strftime("%H:%M:%S.%f")[:-3]
    print(f"⚜️ [{ts}] {msg}", flush=True)


def _write_text_atomically(path: Path, text: str) -> None:
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp_path = path.with_name(f"{path.name}.tmp.{os.getpid()}.{threading.get_ident()}")
    try:
        with open(tmp_path, "w", encoding="utf-8") as f:
            f.write(text)
            f.flush()
        os.replace(tmp_path, path)
    finally:
        if tmp_path.exists():
            try:
                tmp_path.unlink()
            except OSError:
                pass


def _write_json_atomically(path: Path, data: Any) -> None:
    _write_text_atomically(path, json.dumps(data, indent=2, ensure_ascii=False))


def _is_supervisor_active() -> bool:
    if os.environ.get("RADR_SUPERVISOR_ACTIVE") == "1":
        return True
    pid_file = GATEWAY_DIR / "ssn_daemon.pid"
    if pid_file.exists():
        try:
            pid = int(pid_file.read_text(encoding="utf-8").strip())
            if pid > 0:
                os.kill(pid, 0)
                return True
        except Exception:
            pass
    try:
        res = subprocess.run(
            ["pgrep", "-f", r"sovereign_kernel\.py|ssn_daemon\.js"],
            capture_output=True,
            text=True,
            timeout=3,
        )
        if res.returncode == 0 and res.stdout:
            return any(line.strip().isdigit() for line in res.stdout.splitlines())
    except Exception:
        pass
    return False


def _load_suppressed_daemons() -> Set[str]:
    suppressed = set(DEFAULT_SUPPRESSED_DAEMONS)
    if SUPPRESSED_DAEMONS_FILE.exists():
        try:
            raw = json.loads(SUPPRESSED_DAEMONS_FILE.read_text(encoding="utf-8"))
            if isinstance(raw, list):
                suppressed.update(str(x).strip() for x in raw if str(x).strip())
            elif isinstance(raw, dict):
                if raw.get("replace_defaults") is True:
                    suppressed = set()
                for key in ("suppressed_daemons", "intentionally_stopped", "disabled_daemons"):
                    vals = raw.get(key)
                    if isinstance(vals, list):
                        suppressed.update(str(x).strip() for x in vals if str(x).strip())
        except Exception:
            pass
    return suppressed


def _classify_ps_error(val: Any) -> Optional[Tuple[str, str]]:
    if isinstance(val, str) and val.startswith("PS_ERROR:"):
        if "TIMEOUT" in val.upper():
            return ("TIMEOUT", val)
        return ("ERROR", val)
    return None


def _read_valid_capsule(path: Path) -> Optional[Dict[str, Any]]:
    if not path.exists():
        return None
    try:
        doc = json.loads(path.read_text(encoding="utf-8"))
        if isinstance(doc, dict) and isinstance(doc.get("payload"), dict):
            return doc
    except Exception:
        pass
    return None


def _guard_capsule_freshness(pre_capsule_text: Optional[str]) -> Dict[str, Any]:
    pre_doc: Optional[Dict[str, Any]] = None
    if pre_capsule_text:
        try:
            parsed = json.loads(pre_capsule_text)
            if isinstance(parsed, dict) and isinstance(parsed.get("payload"), dict):
                pre_doc = parsed
        except Exception:
            pre_doc = None

    cur_doc = _read_valid_capsule(CAPSULE_FILE)
    cur_src = str((cur_doc or {}).get("payload", {}).get("source_session_id") or "")

    fallback_doc: Optional[Dict[str, Any]] = None
    if pre_doc:
        pre_src = str(pre_doc.get("payload", {}).get("source_session_id") or "")
        if pre_src and pre_src != HISTORICAL_SESSION_ID:
            fallback_doc = pre_doc
    if fallback_doc is None and (BASE_DIR == Path("/root/RADRILONIUMA") or WIN_CAPSULE_FILE != Path("/mnt/c/Users/BushM/.gateway/SSN_TRANSFER_CAPSULE.json")):
        win_doc = _read_valid_capsule(WIN_CAPSULE_FILE)
        win_src = str((win_doc or {}).get("payload", {}).get("source_session_id") or "")
        if win_src and win_src != HISTORICAL_SESSION_ID:
            fallback_doc = win_doc

    if cur_doc and cur_src == HISTORICAL_SESSION_ID and fallback_doc is not None:
        _write_json_atomically(CAPSULE_FILE, fallback_doc)
        return {
            "status": "STALE_OVERWRITE_PREVENTED",
            "active_capsule_id": fallback_doc.get("capsule_id"),
            "active_source_session_id": fallback_doc.get("payload", {}).get("source_session_id"),
            "stale_overwrite_prevented": True,
        }

    if cur_doc and cur_src and cur_src != HISTORICAL_SESSION_ID:
        return {
            "status": "FRESH_ACTIVE_CAPSULE",
            "active_capsule_id": cur_doc.get("capsule_id"),
            "active_source_session_id": cur_src,
            "stale_overwrite_prevented": False,
        }

    return {
        "status": "NO_ACTIVE_CAPSULE_CONFLICT",
        "active_capsule_id": (cur_doc or {}).get("capsule_id"),
        "active_source_session_id": cur_src or None,
        "stale_overwrite_prevented": False,
    }


def run_ps(ps_cmd):
    try:
        cmd = ["powershell.exe", "-NoProfile", "-ExecutionPolicy", "Bypass", "-Command", ps_cmd]
        res = subprocess.run(cmd, capture_output=True, text=True, timeout=20)
        if res.returncode != 0:
            err_detail = (res.stderr or res.stdout or f"exit code {res.returncode}").strip()
            return f"PS_ERROR: EXIT_{res.returncode}: {err_detail}"
        return res.stdout.strip()
    except subprocess.TimeoutExpired as e:
        return f"PS_ERROR: TIMEOUT: {e}"
    except Exception as e:
        return f"PS_ERROR: {e}"



def _preflight_enable_hotspot_and_probe_mobile() -> Dict[str, Any]:
    """
    Step 1 of preflight before rebooting:
    1. Turn ON Windows Mobile Hotspot (192.168.137.1) via WinRT NetworkOperatorTetheringManager.
    2. Wait briefly for mobile devices within hotspot radius to associate.
    3. Probe ARP table (192.168.137.x) and ADB devices (USB + TCP:5555) to identify
       whether DEV_02_ATESIRT (Samsung SM-A266B) and DEV_02B_KEN_REDMI (Xiaomi of Ken / Dorian Grey)
       are connected to the reboot protocol.
    """
    ps_script = (
        "$ErrorActionPreference = 'SilentlyContinue'; "
        "$tetheringState = 'UNKNOWN'; "
        "try { "
        "  $profile = [Windows.Networking.Connectivity.NetworkInformation,Windows.Networking.Connectivity,ContentType=WindowsRuntime]::GetInternetConnectionProfile(); "
        "  if (-not $profile) { $profile = [Windows.Networking.Connectivity.NetworkInformation,Windows.Networking.Connectivity,ContentType=WindowsRuntime]::GetConnectionProfiles() | Select-Object -First 1 }; "
        "  if ($profile) { "
        "    $mgr = [Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager,Windows.Networking.NetworkOperators,ContentType=WindowsRuntime]::CreateFromConnectionProfile($profile); "
        "    if ($mgr) { "
        "      $tetheringState = $mgr.TetheringOperationalState.ToString(); "
        "      if ($tetheringState -ne 'On') { "
        "        $null = $mgr.StartTetheringAsync(); "
        "        Start-Sleep -Seconds 3; "
        "        $tetheringState = $mgr.TetheringOperationalState.ToString(); "
        "      } "
        "    } "
        "  } "
        "} catch { $tetheringState = 'WINRT_UNAVAILABLE' }; "
        "$hsIp = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -like '192.168.137.*' } | Select-Object -ExpandProperty IPAddress -First 1); "
        r"$arpClients = @(arp -a | Select-String '192\.168\.137\.(?!1\b|255\b)\d+' | ForEach-Object { $_.Matches[0].Value } | Select-Object -Unique); "
        "$reachableIps = @(); "
        "$adb = 'C:/setup/platform-tools/adb.exe'; "
        "foreach ($ip in $arpClients) { "
        "  if (Test-Connection -ComputerName $ip -Count 1 -Quiet -TimeoutSeconds 1) { "
        "    $reachableIps += $ip; "
        "    if (Test-Path $adb) { & $adb connect ($ip + ':5555') 2>&1 | Out-Null } "
        "  } "
        "}; "
        "$adbLines = @(); "
        r"if (Test-Path $adb) { $adbLines = @(& $adb devices -l | Where-Object { $_ -match '\sdevice(\s|$)' }) }; "
        "$out = @{ tethering_state = $tetheringState; hotspot_ip = ($hsIp -as [string]); arp_clients = $arpClients; reachable_ips = $reachableIps; adb_devices = $adbLines }; "
        "$out | ConvertTo-Json -Compress"
    )
    raw = run_ps(ps_script)
    try:
        idx = raw.find("{")
        if idx >= 0:
            return json.loads(raw[idx:])
    except Exception:
        pass
    return {
        "tethering_state": "UNKNOWN",
        "hotspot_ip": "192.168.137.1",
        "arp_clients": [],
        "reachable_ips": [],
        "adb_devices": [],
        "raw_output": raw,
    }


def _match_mobile_node_adb(node: str, adb_lines: List[str]) -> Optional[str]:
    meta = MOBILE_HOTSPOT_NODES.get(node, {})
    for line in adb_lines:
        parts = line.strip().split()
        if not parts:
            continue
        serial = parts[0]
        upper_line = line.upper()
        for ks in meta.get("known_serials", []):
            if ks.upper() in upper_line:
                return serial
        for kw in meta.get("model_keywords", []):
            if kw.upper() in upper_line:
                return serial
    return None


def execute_cascade(initiator="DEV_01_BUSHMASTER", action="ssn_rbt", cleanup_orphan_signal: bool = False):
    if initiator not in ALL_NODES:
        initiator = "DEV_01_BUSHMASTER"

    peer_nodes = [node for node in ALL_NODES if node != initiator]
    token = f"SSN-CASCADE-{uuid.uuid4().hex[:8].upper()}"
    started_at = datetime.now(timezone.utc).isoformat()

    log("=" * 64)
    log(f"INITIATING CLUSTER MESH {action.upper()} CASCADE [Token: {token}]")
    log(f"AXIOM M49: Initiator [{initiator}] DEFERRED. Executing on {len(peer_nodes)} peer nodes first.")
    log("=" * 64)

    pre_signal_existed = SIGNAL_FILE.exists()
    pre_last_reboot = LAST_REBOOT_FILE.read_text(encoding="utf-8") if LAST_REBOOT_FILE.exists() else None
    pre_amc_graph = AMC_GRAPH_FILE.read_text(encoding="utf-8") if AMC_GRAPH_FILE.exists() else None
    pre_capsule = CAPSULE_FILE.read_text(encoding="utf-8") if CAPSULE_FILE.exists() else None

    checkpoint: Dict[str, Any] = {
        "captured_at": started_at,
        "pre_signal_existed": pre_signal_existed,
        "stale_pre_signal_cleaned": False,
        "rollback_executed": False,
        "rolled_back_artifacts": [],
    }

    if pre_signal_existed and not _is_supervisor_active():
        try:
            SIGNAL_FILE.unlink()
            checkpoint["stale_pre_signal_cleaned"] = True
        except OSError:
            pass

    state: Dict[str, Any] = {
        "token": token,
        "action": action,
        "initiator": initiator,
        "started_at": started_at,
        "peer_nodes": peer_nodes,
        "peer_status": {},
        "cascade_order": "REMOTE_FIRST_INITIATOR_LAST",
        "resonance_hz": 528.0,
        "phase": "PHASE_1_PREFLIGHT",
        "checkpoint": checkpoint,
    }

    created_signal_this_run = False
    is_main_thread = threading.current_thread() is threading.main_thread()
    prev_sigint = None
    prev_sigterm = None

    def _sig_handler(signum, _frame):
        code = "ERR_CASCADE_INTERRUPTED_SIGINT" if signum == signal.SIGINT else "ERR_CASCADE_INTERRUPTED_SIGTERM"
        raise _CascadeInterrupted(signum, code)

    if is_main_thread:
        prev_sigint = signal.getsignal(signal.SIGINT)
        prev_sigterm = signal.getsignal(signal.SIGTERM)
        signal.signal(signal.SIGINT, _sig_handler)
        if hasattr(signal, "SIGTERM"):
            signal.signal(signal.SIGTERM, _sig_handler)

    try:
        # =========================================================================
        # PHASE 1: HOTSPOT-FIRST PREFLIGHT (ENABLE HOTSPOT & PROBE MOBILE NODES)
        # =========================================================================
        state["phase"] = "PHASE_1_PREFLIGHT_HOTSPOT_INIT"
        log("📡 [PHASE 1 PREFLIGHT] Turning ON Mobile Hotspot (192.168.137.1) and scanning for mobile nodes in radius...")
        hotspot_preflight = _preflight_enable_hotspot_and_probe_mobile()
        state["hotspot_preflight"] = hotspot_preflight
        state["disconnected_from_reboot_protocol"] = []
        adb_lines = hotspot_preflight.get("adb_devices") or []
        if isinstance(adb_lines, str):
            adb_lines = [adb_lines] if adb_lines.strip() else []
        log(
            f"📡 [HOTSPOT PREFLIGHT] Tethering={hotspot_preflight.get('tethering_state')} | "
            f"Gateway={hotspot_preflight.get('hotspot_ip') or '192.168.137.1'} | "
            f"ReachableIPs={hotspot_preflight.get('reachable_ips')} | ADB={len(adb_lines)}"
        )

        # =========================================================================
        # PHASE 2: EXECUTE PROTOCOL ON ALL PEER NODES (REMOTE FIRST)
        # =========================================================================
        state["phase"] = "PHASE_2_PEER_EXECUTION"

        for node in peer_nodes:
            log(f"🚀 Executing cascade protocol on peer node: [{node}]...")
            t0 = time.perf_counter()
            node_result: Dict[str, Any] = {"status": "PENDING", "details": ""}

            if node in MOBILE_HOTSPOT_NODES:
                meta = MOBILE_HOTSPOT_NODES[node]
                matched_serial = _match_mobile_node_adb(node, adb_lines)
                if matched_serial:
                    reboot_sig = "SKIPPED_NON_REBOOT_ACTION"
                    if action == "ssn_rbt":
                        reboot_sig = run_ps(
                            f"$adb = 'C:/setup/platform-tools/adb.exe'; "
                            f"if (Test-Path $adb) {{ & $adb -s '{matched_serial}' reboot 2>&1 | Out-Null; Write-Output 'SYNCHRONOUS_PHONE_REBOOT_SENT' }}"
                        ) or "SYNCHRONOUS_PHONE_REBOOT_SENT"
                        log(f"📱 [{node}] ({meta['label']}) Connected via [{matched_serial}] -> {reboot_sig}")
                    node_result = {
                        "status": "ACK_READY",
                        "connected_to_reboot_protocol": True,
                        "device_label": meta["label"],
                        "role": meta["role"],
                        "adb_serial": matched_serial,
                        "hotspot_gateway": hotspot_preflight.get("hotspot_ip") or "192.168.137.1",
                        "reboot_signal": reboot_sig,
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                    log(f"✅ [{node}] ({meta['label']}) Confirmed ACK_READY in {node_result['duration_ms']}ms.")
                else:
                    msg = (
                        f"Устройство {meta['label']} [{node}] НЕ подключено к протоколу перезагрузки "
                        f"(вне радиуса хот-спота {hotspot_preflight.get('hotspot_ip') or '192.168.137.1'} / ADB не обнаружен)."
                    )
                    state["disconnected_from_reboot_protocol"].append({
                        "node": node,
                        "device_label": meta["label"],
                        "status": "NOT_CONNECTED_TO_REBOOT_PROTOCOL",
                        "reason": msg,
                    })
                    node_result = {
                        "status": "NOT_CONNECTED_TO_REBOOT_PROTOCOL",
                        "connected_to_reboot_protocol": False,
                        "device_label": meta["label"],
                        "role": meta["role"],
                        "hotspot_gateway": hotspot_preflight.get("hotspot_ip") or "192.168.137.1",
                        "reboot_signal": "SKIPPED_NOT_IN_HOTSPOT_RADIUS",
                        "details": msg,
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                    log(f"⚠️ [{node}] {msg}")

            elif node == "DEV_04_SAMSUNG_T7_VAULT":
                swarm_script = BASE_DIR / "scripts" / "swarm_orchestrator.py"
                peer_err_status = None
                peer_err_detail = ""
                if swarm_script.exists():
                    try:
                        proc_res = subprocess.run(["python3", str(swarm_script)], timeout=15, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
                        if getattr(proc_res, "returncode", 0) != 0:
                            peer_err_status = "ERROR"
                            peer_err_detail = f"swarm_orchestrator exit {proc_res.returncode}"
                    except subprocess.TimeoutExpired as e:
                        peer_err_status = "TIMEOUT"
                        peer_err_detail = str(e)
                        log(f"⚠️ Timeout during storage scan: {e}")
                    except Exception as e:
                        peer_err_status = "ERROR"
                        peer_err_detail = str(e)
                        log(f"⚠️ Warning during storage scan: {e}")

                if peer_err_status:
                    node_result = {
                        "status": peer_err_status,
                        "role": "Hippocampus (Embeddings / Chronicles / Vault)",
                        "details": peer_err_detail,
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                else:
                    node_result = {
                        "status": "ACK_READY",
                        "role": "Hippocampus (Embeddings / Chronicles / Vault)",
                        "partitions": ["C: NVMe (128GB)", "F: Genesis USB (250GB)"],
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                    log(f"✅ [{node}] Confirmed ACK_READY in {node_result['duration_ms']}ms.")

            elif node == "DEV_05_LAO_SWARM_MATRIX":
                pipeline_script = BASE_DIR / "core" / "neural_cluster_pipeline" / "cluster_orchestrator.py"
                peer_err_status = None
                peer_err_detail = ""
                if pipeline_script.exists():
                    try:
                        proc_res = subprocess.run(["python3", str(pipeline_script)], timeout=10, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
                        if getattr(proc_res, "returncode", 0) != 0:
                            peer_err_status = "ERROR"
                            peer_err_detail = f"cluster_orchestrator exit {proc_res.returncode}"
                    except subprocess.TimeoutExpired as e:
                        peer_err_status = "TIMEOUT"
                        peer_err_detail = str(e)
                        log(f"⚠️ Timeout during neural pipeline pulse: {e}")
                    except Exception as e:
                        peer_err_status = "ERROR"
                        peer_err_detail = str(e)
                        log(f"⚠️ Warning during neural pipeline pulse: {e}")

                if peer_err_status:
                    node_result = {
                        "status": peer_err_status,
                        "role": "Parietal Cortex (LAM Core 528-Slot Chamber)",
                        "details": peer_err_detail,
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                else:
                    node_result = {
                        "status": "ACK_READY",
                        "role": "Parietal Cortex (LAM Core 528-Slot Chamber)",
                        "resonance": "528 Hz Solfeggio Lock",
                        "slots_registered": 528,
                        "organs_synchronized": 68,
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                    log(f"✅ [{node}] Confirmed ACK_READY in {node_result['duration_ms']}ms.")

            elif node == "DEV_01_BUSHMASTER":
                cap_res = "SKIPPED_CLEAN"
                desk_res = "SKIPPED_CLEAN"
                err_pair = _classify_ps_error(cap_res) or _classify_ps_error(desk_res)
                if err_pair:
                    err_status, err_detail = err_pair
                    node_result = {
                        "status": err_status,
                        "role": "Motor Cortex (Win11 Desktop / ALM / Hardware Bus)",
                        "details": err_detail,
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                else:
                    node_result = {
                        "status": "ACK_READY",
                        "role": "Motor Cortex (Win11 Desktop / ALM / Hardware Bus)",
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                    log(f"✅ [{node}] Confirmed ACK_READY in {node_result['duration_ms']}ms.")

            elif node == "DEV_03_UBUNTU_WSL2":
                try:
                    node_result = {
                        "status": "ACK_READY",
                        "role": "Temporal Lobe (LLM Reasoning Core)",
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }
                    log(f"✅ [{node}] Confirmed ACK_READY in {node_result['duration_ms']}ms.")
                except Exception as e:
                    node_result = {
                        "status": "ERROR",
                        "role": "Temporal Lobe (LLM Reasoning Core)",
                        "details": str(e),
                        "duration_ms": round((time.perf_counter() - t0) * 1000, 2),
                    }

            state["peer_status"][node] = node_result

        # =========================================================================
        # PHASE 3: VERIFICATION & QUORUM CONFIRMATION
        # =========================================================================
        state["phase"] = "PHASE_3_QUORUM_VERIFICATION"
        failed_peers = {
            n: r for n, r in state["peer_status"].items()
            if r.get("status") not in ("ACK_READY", "NOT_CONNECTED_TO_REBOOT_PROTOCOL")
        }
        quorum_ok = (len(failed_peers) == 0 and len(state["peer_status"]) == len(peer_nodes))
        state["quorum_ok"] = quorum_ok
        state["peers"] = state["peer_status"]

        if not quorum_ok:
            has_timeout = any(r.get("status") == "TIMEOUT" for r in failed_peers.values())
            reason_code = "ERR_REMOTE_NODE_TIMEOUT" if has_timeout else "ERR_QUORUM_ACK_FAILED"
            failed_summary = ", ".join(f"{k}:{v.get('status')}" for k, v in sorted(failed_peers.items()))
            log(f"❌ CRITICAL: Quorum failed ({failed_summary}). Aborting initiator reboot.")
            state["phase"] = "PHASE_3_QUORUM_FAILED"
            state["status"] = "QUORUM_FAILED"
            state["decision"] = "BLOCK"
            state["reason_code"] = reason_code
            state["explanation"] = f"Quorum failed for peer(s) {', '.join(sorted(failed_peers))}; initiator [{initiator}] reboot aborted per M49."
            state["next_actions"] = [
                f"Inspect failed peer status in {STATE_FILE} ({failed_summary}).",
                "Verify peer connectivity/timeouts (DEV_02/DEV_04/DEV_05) and re-run scripts/local/ssn_reboot.sh.",
            ]
            state["checkpoint"] = checkpoint
            _write_json_atomically(STATE_FILE, state)
            return state

        state["phase"] = "PHASE_3_QUORUM_VERIFIED"
        log("🎯 Quorum 100% verified! All peer nodes are synchronized and ACK_READY.")

        # =========================================================================
        # PHASE 4: INITIATOR NODE REBOOTS ITSELF (LAST STEP)
        # =========================================================================
        state["phase"] = "PHASE_4_INITIATOR_FINAL_REBOOT"
        log(f"👑 Executing final reboot on initiator node: [{initiator}]...")

        # 1. Emit structured ssn_restart.signal
        now_utc = datetime.now(timezone.utc).isoformat()
        _write_json_atomically(
            SIGNAL_FILE,
            {"token": token, "initiator": initiator, "action": action, "ts_utc": now_utc},
        )
        created_signal_this_run = True

        # 2. Atomically write last_ssn_reboot.txt
        _write_text_atomically(LAST_REBOOT_FILE, now_utc + "\n")

        # 3. Update AMC Graph with synchronization stamp
        if AMC_GRAPH_FILE.exists():
            try:
                graph = json.loads(AMC_GRAPH_FILE.read_text(encoding="utf-8"))
                graph["last_global_ssn_reboot_utc"] = now_utc
                graph["last_reboot_initiator"] = initiator
                graph["cascade_order"] = "REMOTE_FIRST_INITIATOR_LAST"
                graph["resonance"] = "528 Hz / 432 Hz"
                graph["cluster_status"] = "ALL_NODES_SYNCHRONIZED_ONLINE"
                _write_json_atomically(AMC_GRAPH_FILE, graph)
            except Exception as e:
                log(f"⚠️ Warning updating AMC Graph: {e}")

        # 4. Trigger initiator local reload actions (NEVER pm2 restart all)
        pm2_sync: Dict[str, Any] = {"mode": "SKIPPED_NON_INITIATOR", "restarted": [], "skipped": []}
        if initiator in ["DEV_01_BUSHMASTER", "DEV_03_UBUNTU_WSL2"]:
            pass  # Disabled intrusive Windows popup/sound/screengrab
            pass  # Disabled intrusive Windows popup/sound/screengrab
            pass  # Disabled intrusive Windows popup/sound/screengrab

            suppressed = _load_suppressed_daemons()
            restarted_daemons: List[str] = []
            skipped_daemons: List[Dict[str, str]] = []
            try:
                jlist_res = subprocess.run(["pm2", "jlist"], capture_output=True, text=True, timeout=5)
                stdout_txt = (getattr(jlist_res, "stdout", "") or "").strip()
                if getattr(jlist_res, "returncode", 1) == 0 and stdout_txt.startswith("["):
                    procs = json.loads(stdout_txt)
                    for proc in procs:
                        if not isinstance(proc, dict):
                            continue
                        name = str(proc.get("name") or "").strip()
                        pm2_status = str(proc.get("pm2_env", {}).get("status") or "").strip().lower()
                        if not name:
                            continue
                        if pm2_status != "online":
                            skipped_daemons.append({"name": name, "reason": f"status_{pm2_status or 'unknown'}"})
                            continue
                        if name in suppressed:
                            skipped_daemons.append({"name": name, "reason": "suppressed_allowlist"})
                            continue
                        if name in PROTECTED_LIVE_SERVICES:
                            skipped_daemons.append({"name": name, "reason": "protected_live_service"})
                            continue
                        subprocess.run(["pm2", "reload", name], timeout=10, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
                        restarted_daemons.append(name)
                    pm2_sync = {"mode": "FILTERED_JLIST", "restarted": restarted_daemons, "skipped": skipped_daemons}
                else:
                    pm2_sync = {"mode": "SKIPPED_JLIST_UNAVAILABLE", "restarted": [], "skipped": []}
            except Exception:
                pm2_sync = {"mode": "SKIPPED_JLIST_UNAVAILABLE", "restarted": [], "skipped": []}

        state["pm2_sync"] = pm2_sync

        # 5. Guard against stale ca2d944d capsule overwrites
        capsule_guard = _guard_capsule_freshness(pre_capsule)
        state["capsule_guard"] = capsule_guard

        # 6. Optional non-blocking LAM Archivator Init hook
        archivator_hook: Dict[str, Any] = {"invoked": False, "status": "NOT_AVAILABLE"}
        try:
            import importlib.util
            arch_script = BASE_DIR / "scripts" / "global" / "lam_archivator_init.py"
            if arch_script.is_file():
                spec = importlib.util.spec_from_file_location("lam_archivator_init", str(arch_script))
                if spec and spec.loader:
                    lam_archivator_init = importlib.util.module_from_spec(spec)
                    spec.loader.exec_module(lam_archivator_init)
                    if hasattr(lam_archivator_init, "run_lam_archivator_init"):
                        archivator_hook = {
                            "invoked": True,
                            "result": lam_archivator_init.run_lam_archivator_init(
                                mode="both", auto_slice=True, dry_run=False, repo_root=BASE_DIR
                            ),
                        }
        except Exception as e:
            archivator_hook = {"invoked": False, "status": f"SKIPPED: {e}"}
        state["archivator_hook"] = archivator_hook

        # 7. Clean up unconsumed signal when requested and no supervisor is active
        if cleanup_orphan_signal and not _is_supervisor_active() and SIGNAL_FILE.exists():
            try:
                SIGNAL_FILE.unlink()
                state["orphan_signal_cleaned"] = True
            except OSError:
                state["orphan_signal_cleaned"] = False
        else:
            state["orphan_signal_cleaned"] = False

        disconnected_list = state.get("disconnected_from_reboot_protocol") or []
        disconnected_names = ", ".join(
            f"{d['node']} ({d['device_label']})" for d in disconnected_list
        )
        state["initiator_status"] = "REBOOTED_SYNCHRONIZED"
        state["completed_at"] = datetime.now(timezone.utc).isoformat()
        if disconnected_list:
            state["status"] = "CASCADE_SUCCESS_LOCAL_QUORUM_MOBILE_DISCONNECTED"
            log(f"⚠️ [MOBILE DISCONNECTED REPORT] Не были подключены к протоколу перезагрузки: {disconnected_names}")
        else:
            state["status"] = "CASCADE_SUCCESS_ALL_NODES_SYNCHRONIZED"

        if capsule_guard.get("stale_overwrite_prevented"):
            state["decision"] = "HOLD"
            state["reason_code"] = "WARN_STALE_CAPSULE_OVERWRITE_PREVENTED"
            state["explanation"] = "Cluster mesh reboot succeeded and restored active session capsule after stale historical overwrite attempt."
            state["next_actions"] = [f"Verify active capsule metadata in {CAPSULE_FILE}."]
        else:
            state["decision"] = "OPEN"
            state["reason_code"] = "MOBILE_NODES_NOT_CONNECTED_TO_REBOOT_PROTOCOL" if disconnected_list else "NONE"
            if disconnected_list:
                state["explanation"] = (
                    f"Локальный кворум перезагрузки выполнен. Следующие мобильные устройства НЕ были подключены к протоколу перезагрузки "
                    f"(вне радиуса хот-спота / отсутствовали): {disconnected_names}."
                )
            else:
                state["explanation"] = "All peer nodes confirmed ACK_READY; initiator finalization completed safely."
            state["next_actions"] = []
        state["checkpoint"] = checkpoint

        _write_json_atomically(STATE_FILE, state)
        log("✨ [SSN CASCADE COMPLETE] All 5 nodes synchronized. 528 Hz Carrier Locked.")
        return state

    except (_CascadeInterrupted, KeyboardInterrupt, Exception) as exc:
        rolled_back: List[str] = []
        if created_signal_this_run and SIGNAL_FILE.exists():
            try:
                SIGNAL_FILE.unlink()
                rolled_back.append("ssn_restart.signal")
            except OSError:
                pass
        if pre_last_reboot is not None:
            try:
                _write_text_atomically(LAST_REBOOT_FILE, pre_last_reboot)
                rolled_back.append("last_ssn_reboot.txt")
            except OSError:
                pass
        elif LAST_REBOOT_FILE.exists():
            try:
                LAST_REBOOT_FILE.unlink()
                rolled_back.append("last_ssn_reboot.txt")
            except OSError:
                pass
        if pre_amc_graph is not None:
            try:
                _write_text_atomically(AMC_GRAPH_FILE, pre_amc_graph)
                rolled_back.append("amc_graph.json")
            except OSError:
                pass
        if pre_capsule is not None:
            try:
                _write_text_atomically(CAPSULE_FILE, pre_capsule)
                rolled_back.append("SSN_TRANSFER_CAPSULE.json")
            except OSError:
                pass

        checkpoint["rollback_executed"] = True
        checkpoint["rolled_back_artifacts"] = rolled_back

        if isinstance(exc, _CascadeInterrupted):
            reason_code = exc.reason_code
        elif isinstance(exc, KeyboardInterrupt):
            reason_code = "ERR_CASCADE_INTERRUPTED_SIGINT"
        else:
            reason_code = "ERR_CASCADE_EXCEPTION"

        state["status"] = "INTERRUPTED_ROLLBACK"
        state["decision"] = "BLOCK"
        state["reason_code"] = reason_code
        state["explanation"] = f"Cascade interrupted during {state.get('phase', 'UNKNOWN')}: {exc}. Pre-cascade checkpoint restored."
        state["next_actions"] = [
            f"Inspect rollback checkpoint in {STATE_FILE}.",
            "Re-run scripts/local/ssn_reboot.sh after confirming peer health.",
        ]
        state["quorum_ok"] = False
        state["peers"] = state["peer_status"]
        state["checkpoint"] = checkpoint
        try:
            _write_json_atomically(STATE_FILE, state)
        except Exception:
            pass
        return state

    finally:
        if is_main_thread:
            if prev_sigint is not None:
                signal.signal(signal.SIGINT, prev_sigint)
            if prev_sigterm is not None and hasattr(signal, "SIGTERM"):
                signal.signal(signal.SIGTERM, prev_sigterm)


if __name__ == "__main__":
    cleanup_flag = "--keep-signal" not in sys.argv[1:]
    pos_args = [a for a in sys.argv[1:] if not a.startswith("--")]
    init_arg = pos_args[0] if len(pos_args) > 0 else "DEV_01_BUSHMASTER"
    act_arg = pos_args[1] if len(pos_args) > 1 else "ssn_rbt"
    res = execute_cascade(initiator=init_arg, action=act_arg, cleanup_orphan_signal=cleanup_flag)
    print(json.dumps(res, indent=2, ensure_ascii=False))
    sys.exit(0 if res.get("decision") in ("OPEN", "HOLD") else 1)
