#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SOVEREIGN POST-EXIT CHAIN (AUTOPILOT RECOVERY)

AGY_PID=$1
BASE_DIR="/home/architit/LAM_CORE/RADRILONIUMA"

if [ -z "$AGY_PID" ]; then
    echo "[ERROR] No PID provided."
    exit 1
fi

echo "[CHAIN] Waiting for session $AGY_PID to terminate..."

# Wait for process to exit
while kill -0 "$AGY_PID" 2>/dev/null; do
    sleep 1
done

echo "[CHAIN] Session terminated. Activating Sovereign Protocol..."

cd "$BASE_DIR"
source venv/bin/activate

# Execute the chain
bash scripts/local/boot_protocol.sh
bash boot_cli_inner.sh
