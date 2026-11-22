#!/bin/bash
# ==============================================================================
# RADRILONIUMA • UBUNTU NATIVE WEB-PTY TERMINAL & AGY LIVE COCKPIT (PORT 7681)
# Supports Rootless Guest, Local Account, and Logged-in Account sessions.
# ==============================================================================

PORT=7681
DEVICE_SERIAL="RZCY80G86FP"

mkdir -p /tmp/radr_guest_home /tmp/radr_local_home

# Reverse port mapping if phone is attached via ADB
if command -v adb >/dev/null 2>&1; then
    adb -s "$DEVICE_SERIAL" reverse tcp:$PORT tcp:$PORT 2>/dev/null || true
    adb -s "$DEVICE_SERIAL" reverse tcp:3000 tcp:3000 2>/dev/null || true
    adb -s "$DEVICE_SERIAL" reverse tcp:3001 tcp:3001 2>/dev/null || true
    adb -s "$DEVICE_SERIAL" reverse tcp:5280 tcp:5280 2>/dev/null || true
fi

chmod +x /root/RADRILONIUMA/scripts/global/agy_live_console.sh 2>/dev/null || true

exec /usr/bin/ttyd \
    -p "$PORT" \
    -W \
    -t fontSize=16 \
    -t fontFamily="'Fira Code', 'JetBrains Mono', 'Courier New', monospace" \
    -t theme='{"background": "#070c14", "foreground": "#00f0ff", "cursor": "#ffd700", "selection": "#1a365d"}' \
    tmux new-session -A -s ubuntu_radr_pty -c /root/RADRILONIUMA /bin/bash
