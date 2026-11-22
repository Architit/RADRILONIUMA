# LAM ARCHIVATOR AGENT INIT EXECUTION PROTOCOL V1 (`INTRNL & EXTRNL SS`)

- **Protocol ID**: `LAM_ARCHIVATOR_AGENT_INIT_EXECUTION_PROTOCOL_V1`
- **Resonance Carrier**: `528 Hz / 432 Hz`
- **Status**: `CANONICAL_ACTIVE`
- **Scope**: Internal Subsystem (`INTRNL SS`) & External Subsystem (`EXTRNL SS`)

---

## 1. Purpose & Sovereign Invariants

This protocol governs the initialization, session segmentation, transfer capsule synchronization, and cross-boundary telemetry routing of the `LAM_ARCHIVATOR_AGENT` across both the Internal Subsystem (`INTRNL SS`) and External Subsystem (`EXTRNL SS`).

### Non-Disruptive Execution Guarantees
1. **Zero Quarantine Guarantee**: `LAM_ARCHIVATOR_AGENT` initialization and Sanitek protocol flows MUST NEVER transition the Google Node (`DEV_01_BUSHMASTER` / `DEV_03_UBUNTU_WSL2` / `google_node_gateway_post_port_socket_pocket_cocon`) into `QUARANTINE_MODE` or trigger a global node quarantine. When an external tunnel, vault mount, or peer device is unreachable, the initializer MUST degrade gracefully to `DEGRADED_GRACEFUL`.
2. **Prohibition of `pm2 restart all`**: Mass daemon restarts (`pm2 restart all` or equivalent broad process termination) are strictly forbidden during `LAM_ARCHIVATOR_AGENT` initialization and `SSN RBT` flows. Protected live services (`:5280`, `:3005`, `:5281`, `:11435`) and intentionally stopped daemons (`real-cloud-uploader`) MUST remain undisturbed.
3. **Strict `UI_DEVICE_LOCK` Compliance**: All external surface probes and Android/ADB operations MUST respect `.gateway/UI_DEVICE_LOCK.json` (`lock_ui_takeover: true`, `allow_adb_ui_automation: false`). Active foreground UI takeover (`adb shell am start`) is forbidden while locked.

---

## 2. Internal Subsystem (`INTRNL SS`) Initialization Contract

The Internal Subsystem (`INTRNL SS`) operates within the canonical WSL2 substrate (`/root/RADRILONIUMA`, `DEV_03_UBUNTU_WSL2`) and local session archives:

1. **Session Segmenter Guard Inspection**:
   - Inspects active and historical session transcripts (`.gateway/sessions/*.jsonl`, `chronolog/stream_conveyor_ledger.jsonl`, and Windows brain transcripts) via `SessionSegmenterGuard`.
   - Evaluates session token/step/size thresholds (`NORMAL`, `WARNING`, `BRAKE_ENGAGED`).
   - When `BRAKE_ENGAGED` is detected and `--auto-slice` is enabled, automatically slices and archives the oversized transcript into `archive/sessions/<session_id>/` with SHA-256 manifest verification.
2. **Vault Mirroring (`DEV_04_SAMSUNG_T7_VAULT`)**:
   - Mirrors sealed session archives to `/mnt/f/ATESIRT_VAULT_ARCHIVE/sessions` (`RADR_VAULT_SESSIONS_DIR`) when mounted.
   - If the external vault is unmounted, records `vault_mirrored: false` and continues without failure (`READY` or `DEGRADED_GRACEFUL`).
3. **Capsule & Pointer Synchronization**:
   - Preserves capsule freshness (`SSN_TRANSFER_CAPSULE.json`) so newer active transfer capsules are never overwritten by stale fallback IDs.
   - Generates and atomically synchronizes `.gateway/SSN_TRANSFER_POINTER.json` across both WSL2 (`/root/RADRILONIUMA/.gateway/SSN_TRANSFER_POINTER.json`) and Windows (`C:\Users\BushM\.gateway\SSN_TRANSFER_POINTER.json`).

---

## 3. External Subsystem (`EXTRNL SS`) Initialization Contract

The External Subsystem (`EXTRNL SS`) spans the Windows Host (`DEV_01_BUSHMASTER`), Android Cluster (`DEV_02_ATESIRT`), and external Gemini bridge envelopes:

1. **`intrnl_sys <-> extrnl_sys` Bridge Synchronization**:
   - Verifies and initializes `.gateway/extrnl_query_export_outbox.json`, `.gateway/intrnl_answer_import_inbox.json`, and `.gateway/google_node_gateway_post_port_socket_pocket_cocon.json`.
2. **Passive Surface & Edge Spool Verification**:
   - Passively verifies the 4 Gemini surfaces (`bin`, `exe`, `apk`, `web`) without launching intrusive UI activities.
   - Verifies `.gateway/edge_spool/` queue readiness and `.gateway/origin_home_endpoint.json` tunnel status.
3. **Graceful Degradation (`DEGRADED_GRACEFUL`)**:
   - If ADB is offline (`FAKE_ADB_ONLINE=0`), the origin tunnel is down, or an external endpoint is unreachable, `EXTRNL SS` reports `status: "DEGRADED_GRACEFUL"` with explicit `reason_code` and `next_actions`, never `QUARANTINE_MODE`.

---

## 4. CLI & HTTP Interfaces

- **CLI Entrypoint**: `scripts/global/lam_archivator_init.py --mode {internal|external|both} [--source-session-id <uuid>] [--target-session-id <uuid>] [--auto-slice] [--dry-run] [--repo-root <path>] [--json]`
- **Socket Ingress HTTP Endpoint**: `GET / POST /api/ssn/archivator/init` on `core/stream_conveyor/socket_ingress_gateway.py` (`:5280`).
- **Telemetry Ledger & State**:
  - `.gateway/lam_archivator_init_state.json`
  - `chronolog/lam_archivator_init_ledger.jsonl`
