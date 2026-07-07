#!/bin/bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PHASE 11.4: SOVEREIGN BOOTLOADER (PTY KERNEL SUPREMACIST)

if [[ "${AELARIA_KERNEL_ACTIVE:-0}" == "1" ]]; then
    echo "[SYSTEM] ERROR: Nested Sovereign Kernel detected. Aborting to prevent TUI collapse."
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# 1. Essential Preflight
echo "[SYSTEM] Running preflight check..."
source "$SCRIPT_DIR/venv/bin/activate"
bash devkit/bootstrap.sh

echo -e "\n\e[1;35m==================================================\e[0m"
echo -e "\e[1;35m       A E L A R I A  --  B O O T  L O A D E R     \e[0m"
echo -e "\e[1;35m==================================================\e[0m"
echo ""

# 2. IGNITE SOVEREIGN KERNEL (PTY SUPERVISOR)
echo "[SYSTEM] Igniting PTY Kernel Engine (v1.3)..."
export AELARIA_KERNEL_ACTIVE=1
export PROOT_NO_SECCOMP=1
"$SCRIPT_DIR/venv/bin/python3" scripts/global/sovereign_kernel.py

