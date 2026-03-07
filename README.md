# RADRILONIUMA: The High Throne (RADR-01) ⚜️

> "Radriloniuma — это идея комплексного терраформирования сложных ландшафтов... создание полностью самодостаточных экосистем."

## System Overview
RADRILONIUMA is the central command and control hub (**Nexus**) of the Kingdom. This directory operates as the **High Throne** (Bridge Mode), managing the flow of Directives and Information between 24 Sovereign Trees (Organs).

## Role: ARCHITECT / GOVERNANCE
- **Mandate:** ZERO-LOGIC ZONE. Global planning and delegation.
- **ADA-V1:** Meta-Governance Layer.
- **Phase:** 07-THE-CROWNING (S-CROWN).

## Gateway Structure (ADA-V1)
- `data/import/`: Incoming directives and external data.
- `data/export/`: Outgoing directives and data to satellites.
- `data/local/`: Local persistent state and the Neutral Layer.
- `data/source/`: Canonical archives, architecture, and protocols.

## Canonical Protocols
1.  **GIP-v2.3-STABLE:** Global Initiation Protocol.
2.  **IDENTITY.md:** Core anchor and role definition (The Bridge).
3.  **MIRROR_PROTOCOL.md:** Identity and boundary verification.
4.  **INTERACTION_PROTOCOL.md (v1.0.0):** Mandatory interaction standards.
5.  **TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md:** Command safety and preflight.

## DevKit & Tools
The Nexus is equipped with the **RADRILONIUMA DevKit**:
- `devkit/patch.sh`: Canonical patching tool.
- `devkit/shell_preflight.sh`: Multi-shell safety checker.
- `devkit/ecosystem_rollout.sh`: Mass sync/smoke/commit/push helper for active ecosystem repos from `TOPOLOGY_MAP.md`.
- `scripts/ecosystem_rollout.sh`: Compatibility wrapper to `devkit/ecosystem_rollout.sh`.
- `devkit/cloud_fabric.sh`: Narrow cloud gateway (Google Drive exchange dir + class-based multi-cloud fanout + space monitoring).
- `scripts/cloud_fabric.sh`: Compatibility wrapper to `devkit/cloud_fabric.sh`.

## Block Recovery Contract
- `BLOCK_RECOVERY_CONTRACT.md`: mandatory unblock semantics for any deny/block gate.
- Contract tests:
  - `python3 -m unittest tests/test_block_recovery_contract.py -v`

## Contracts
- `SYSTEM_STATE_CONTRACT.md`: Monitoring the pulse of the Kingdom.
- `WORKFLOW_SNAPSHOT_CONTRACT.md`: Ensuring deterministic session recovery.

---
*Awaken and Reign. А́мієно́а́э́с моєа́э́ри́э́с*
⚜️🛡️⚜️


## Cloud Fabric (All Agents)
Use the same cloud gateway CLI across the ecosystem:
- `scripts/cloud_fabric.sh verify`
- `scripts/cloud_fabric.sh route-table`
- `scripts/cloud_fabric.sh monitor-space`
- `scripts/cloud_fabric.sh sync-gdrive`
- `scripts/cloud_fabric.sh snapshot governance`
- `scripts/cloud_fabric.sh fanout governance`

Default mode is narrow gateway scope (exchange dir only, not full-disk sync).

## Local Gateway v2 (All Agents, MCP-optional)
Use unified local gateway for all agents (Codex/Gemini/others):
- `scripts/lam_gateway.sh init`
- `scripts/lam_gateway.sh health`
- `scripts/lam_gateway.sh route governance --size-bytes 2048`
- `scripts/lam_gateway.sh put ./DEV_LOGS.md --class governance`
- `scripts/lam_gateway.sh enqueue-put ./DEV_LOGS.md --class governance`
- `scripts/lam_gateway.sh run-queue --max-jobs 20`
- `scripts/lam_gateway.sh monitor --once --auto-switch`

State files:
- `.gateway/routing_policy.json`
- `.gateway/index.json`
- `.gateway/queue.json`
- `.gateway/circuit_breakers.json`

Session preflight:
- `devkit/bootstrap.sh`
- controls: `LARPAT_LOCAL_GATEWAY_PREFLIGHT=1` (default), `LARPAT_GATEWAY_STRICT=1`
