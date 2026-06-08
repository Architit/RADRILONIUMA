#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# TRIGGER: SOVEREIGN SESSION RESTART HANDSHAKE

SIGNAL_FILE="/home/architit/LAM_CORE/RADRILONIUMA/.gateway/ssn_restart.signal"

echo "[TRIGGER] Initiating Sovereign Handshake..."
touch "$SIGNAL_FILE"
echo "[SUCCESS] Signal emitted to Kernel. Execution transferred."
