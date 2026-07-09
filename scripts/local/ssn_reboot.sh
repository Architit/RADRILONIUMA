#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PROTOCOL: SSN RBT (SYSTEM REBOOT)

echo "[SYSTEM] Initiating OS-level Reboot Handshake..."
# Using the provided PIN: 3773
echo 3773 | sudo -S systemctl reboot -i
