#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# TRIGGER: SOVEREIGN SESSION RESTART HANDSHAKE

SIGNAL_FILE="/home/architit/LAM_CORE/RADRILONIUMA/.gateway/ssn_restart.signal"

echo "[TRIGGER] Initiating Sovereign Handshake..."

if pgrep -f "python.*[s]overeign_kernel.py" > /dev/null 2>&1; then
    touch "$SIGNAL_FILE"
    echo "[SUCCESS] Signal emitted to Sovereign Kernel Supervisor (PID: $(pgrep -f "python.*[s]overeign_kernel.py" | head -n1)). Execution transferred."
else
    echo "[NOTICE] Standalone CLI Mode detected (Kernel Supervisor is not active)."
    echo "[NOTICE] To run under PTY Kernel Supervisor, launch via: bash boot_cli.sh"
    rm -f "$SIGNAL_FILE"
fi
