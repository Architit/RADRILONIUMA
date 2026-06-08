#!/bin/bash
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# SCREEN SOVEREIGN LAUNCHER

SESSION_NAME="AELARIA"

# 1. Kill any old session with this name
screen -S "$SESSION_NAME" -X quit 2>/dev/null

# 2. Start new session in background
echo "[AELARIA] Launching Sovereign Session in SCREEN..."
screen -dmS "$SESSION_NAME" bash boot_cli.sh

# 3. Wait for bootloader to ignite the kernel
sleep 3

# 4. Attach to it, replacing the current process
echo "[SUCCESS] Migrating TTY to Managed Sovereign Layer..."
exec screen -r "$SESSION_NAME"
