#!/bin/bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PHASE 11.4: CONTINUOUS SOVEREIGN BOOT WRAPPER (AUTOPILOT KERNEL)

cd /home/architit/LAM_CORE/RADRILONIUMA

# 1. Essential Preflight (Run once at hardware-level boot)
echo "[SYSTEM] Running preflight check..."
source /home/architit/LAM_CORE/RADRILONIUMA/venv/bin/activate
bash devkit/bootstrap.sh

echo -e "\n\e[1;35m==================================================\e[0m"
echo -e "\e[1;35m       A E L A R I A  --  B O O T  L O A D E R     \e[0m"
echo -e "\e[1;35m==================================================\e[0m"
echo ""

# 2. THE IMMORTAL LOOP
while true; do
    # Background Pulse (Non-destructive, silent)
    if [ -f "scripts/local/boot_protocol.sh" ]; then
        bash scripts/local/boot_protocol.sh >/dev/null 2>&1 &
    fi

    # Extract the init message for the Architect (The Semantic Context)
    INIT_MSG=$(python3 -c '
from pathlib import Path
state_file = Path("WORKFLOW_SNAPSHOT_STATE.md")
if state_file.exists():
    content = state_file.read_text(encoding="utf-8")
    if "## NEW_CHAT_INIT_MESSAGE" in content:
        msg = content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()
        print(msg)
')

    echo -e "\e[1;32m[LOOP]\e[0m Re-initializing session with context:"
    echo -e "\e[1;33m$INIT_MSG\e[0m"
    echo ""

    # 3. INTERACTIVE INJECTION (The Re-Birth)
    # Use --prompt-interactive (-i) to send the message from the "user" name
    /home/architit/.local/bin/agy -i "$INIT_MSG"

    # 4. COOL-DOWN (Prevent rapid crashing loops)
    echo -e "\n\e[1;31m[SYSTEM]\e[0m Session terminated. Re-looping in 2s...\e[0m"
    sleep 2
done

# Prevent terminal closure if loop is manually broken
exec bash
