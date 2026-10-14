# ECOSYSTEM HEALTHCHECK HEARTBEAT PULSE BREATH RECOVERY REBOOT PROTOCOL

protocol_type: realtime_workflow_strategy_contract
scope: full ecosystem lifecycle control
mode: EASSR pulse-sync governance

## Objective
Provide deterministic realtime workflow strategy with:
- healthcheck
- heartbeat / pulse / breath
- scan
- recovery
- restart / reboot modes

## Canonical Realtime Chain
`healthcheck -> heartbeat -> pulse -> breath -> scan -> recovery -> restart_or_reboot -> verify -> asr_record`

## Health Layers
1) healthcheck:
- contract/artifact presence
- status-map consistency
- gate integrity

2) heartbeat (cadence layer):
- confirms liveliness and schedule compliance

3) pulse (execution layer):
- confirms forward-progress tick

4) breath (stability layer):
- confirms no overload/deadloop pressure

5) scan:
- drift scan
- blocker scan
- open-gate scan

6) recovery:
- sync heal
- pointer realignment
- evidence preservation

## Restart and Reboot Matrix
- restart:
  - session-level continuity reset without infrastructure reboot

- reboot_neutral:
  - metadata/session refresh only; no hot/cold side effects

- reboot_hot:
  - quick re-entry preserving warm context and pending queue pointers

- reboot_cold:
  - strict import path from canonical snapshots and contracts only

- reboot_hard:
  - full deterministic reinitialization of governance pointers with mandatory integrity recheck

## Reboot Selection Rules
1) Use `restart` for local context desync only.
2) Use `reboot_neutral` for benign synchronization drift.
3) Use `reboot_hot` when continuity is required and integrity is GREEN.
4) Use `reboot_cold` for context trust loss or major drift.
5) Use `reboot_hard` only on repeated failures, unresolved deadloop pressure, or integrity risk.

## Guardrails
- no cycle increment when closure gate is OPEN
- closure decision SLA remains mandatory
- every reboot/restart action must register ASR

## Required Tracking Fields
- last_healthcheck_utc
- last_heartbeat_utc
- last_pulse_utc
- last_breath_utc
- last_scan_utc
- last_recovery_utc
- last_reboot_mode
- last_reboot_utc
- last_reboot_asr

## Compatibility
Policy-only. No runtime logic. No execution-path impact.

## Initiator Node Cascade Obligation (Order: Remote Nodes First -> Initiator Last)
- **Mandate:** An initiating node executing \ssn rbt\ (Session Reboot) or \ssn strt\ (Session Start) MUST execute and confirm the reboot protocol across all other mesh cluster nodes first.
- **Sequence:** \initiator_preflight -> remote_nodes_sync_reboot -> verify_all_peer_acks -> initiator_self_reboot\.
- **Constraint:** Initiator local restart is strictly deferred until 100% of peer nodes (DEV_01, DEV_02, DEV_03, DEV_04, DEV_05) report \ACK_READY\. Early initiator shutdown/reboot is prohibited (\ERR_INITIATOR_EARLY_REBOOT_ORPHAN\).
