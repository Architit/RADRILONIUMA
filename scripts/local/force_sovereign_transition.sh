#!/usr/bin/env bash
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# FORCE TRANSITION TO SOVEREIGN KERNEL

BASE_DIR="/home/architit/LAM_CORE/RADRILONIUMA"
cd "$BASE_DIR"

echo "[TRANSITION] Backgrounding Rebirth Protocol..."

# Background a process that waits for the current Gemini to die, then takes over the TTY
(
    # Wait for the parent (Gemini) to exit
    # We poll PPID until it changes or disappears
    MY_PPID=$PPID
    while kill -0 $MY_PPID 2>/dev/null; do
        sleep 0.5
    done
    
    echo "[REBIRTH] Parent exited. Taking over TTY..."
    # Launch the bootloader which execs the kernel
    exec bash "$BASE_DIR/boot_cli.sh"
) &

echo "[SUCCESS] Rebirth triggered. Please wait for session replacement."
