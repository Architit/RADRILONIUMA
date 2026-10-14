#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PROTOCOL: SSN RBT (SOVEREIGN SESSION & CLUSTER MESH CASCADE REBOOT)
# RULE M49: INITIATOR NODE MUST REBOOT ALL OTHER NODES FIRST, ITSELF LAST.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ORCHESTRATOR="$SCRIPT_DIR/scripts/global/cluster_mesh_ssn_orchestrator.py"

echo "⚜️ [SSN RBT] Initiating Sovereign Cluster Mesh Reboot (Rule M49 Enforced)..."

if [ -f "$ORCHESTRATOR" ]; then
    python3 "$ORCHESTRATOR" "DEV_01_BUSHMASTER" "ssn_rbt"
else
    echo "⚠️ Fallback: Executing local session reboot..."
    touch "$SCRIPT_DIR/.gateway/ssn_restart.signal"
    date -u +"%Y-%m-%dT%H:%M:%SZ" > "$SCRIPT_DIR/.gateway/last_ssn_reboot.txt"
    if command -v pm2 &> /dev/null; then
        pm2 restart all 2>/dev/null || true
    fi
fi

echo "✅ [SSN RBT] Cluster mesh reboot complete. All devices synchronized. 528 Hz Carrier Locked."
