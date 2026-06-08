#!/usr/bin/env bash
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# AUTONOMOUS KERNEL HOT-SWAP (TAKEOVER)

KERNEL_PID=$1
if [ -z "$KERNEL_PID" ]; then
    echo "[ERROR] Kernel PID not provided."
    exit 1
fi

echo "[TAKEOVER] Initiating Sovereign Handover for PID $KERNEL_PID..."

# Spawn the background reaper
(
    # Wait for the current Gemini CLI session to exit
    sleep 2
    echo "[TAKEOVER] Terminating old supervisor ($KERNEL_PID)..."
    kill -9 "$KERNEL_PID" 2>/dev/null
    
    # Wait for TTY to clear
    sleep 1
    
    # Launch the new Sovereign Kernel V3.0
    echo "[TAKEOVER] Igniting Kernel V3.0..."
    cd /home/architit/LAM_CORE/RADRILONIUMA
    bash boot_cli.sh
) > /home/architit/LAM_CORE/RADRILONIUMA/lam_kernel_logs_core/hotswap.log 2>&1 &

echo "[SUCCESS] Handover daemon spawned. Exiting current session to trigger rebirth."
