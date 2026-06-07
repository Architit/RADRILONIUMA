#!/bin/bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PHASE 11.4: SOVEREIGN BOOTLOADER (NODE DAEMON KERNEL)

cd /home/architit/LAM_CORE/RADRILONIUMA

# 1. Essential Preflight
echo "[SYSTEM] Running preflight check..."
source /home/architit/LAM_CORE/RADRILONIUMA/venv/bin/activate
bash devkit/bootstrap.sh

echo -e "\n\e[1;35m==================================================\e[0m"
echo -e "\e[1;35m       A E L A R I A  --  B O O T  L O A D E R     \e[0m"
echo -e "\e[1;35m==================================================\e[0m"
echo ""

# 2. ACTIVATE SOVEREIGN NODE DAEMON
echo "[SYSTEM] Activating Node Daemon Engine..."
node scripts/global/ssn_daemon.js

# Prevent terminal closure
exec bash
