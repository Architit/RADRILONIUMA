#!/bin/bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PHASE 11.4: SOVEREIGN BOOTLOADER (RE-ENTRY LOOP)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
export PROOT_NO_SECCOMP=1

while true; do
    echo "[BOOT] Starting Sovereign Session..."
    bash "$SCRIPT_DIR/boot_cli_inner.sh"
    
    # Check if we should exit or if it was a crash/restart
    if [[ -f "$SCRIPT_DIR/.gateway/ssn_exit.signal" ]]; then
        echo "[BOOT] Exit signal detected. Terminating Bootloader."
        rm "$SCRIPT_DIR/.gateway/ssn_exit.signal"
        break
    fi
    
    echo "[BOOT] Session ended. Restarting in 2s... (Ctrl+C to abort loop)"
    sleep 2
done

