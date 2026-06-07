#!/bin/bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PHASE 11.4: SOVEREIGN BOOTLOADER (PTY KERNEL SUPREMACIST)

cd /home/architit/LAM_CORE/RADRILONIUMA

# 1. Essential Preflight
echo "[SYSTEM] Running preflight check..."
source /home/architit/LAM_CORE/RADRILONIUMA/venv/bin/activate
bash devkit/bootstrap.sh

echo -e "\n\e[1;35m==================================================\e[0m"
echo -e "\e[1;35m       A E L A R I A  --  B O O T  L O A D E R     \e[0m"
echo -e "\e[1;35m==================================================\e[0m"
echo ""

# 2. IGNITE SOVEREIGN KERNEL (PTY SUPERVISOR)
echo "[SYSTEM] Igniting PTY Kernel Engine (v1.1)..."
# Pass all environment variables explicitly
export AELARIA_KERNEL_ACTIVE=1
./venv/bin/python3 scripts/global/sovereign_kernel.py

# Prevent terminal closure
exec bash
