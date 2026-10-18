#!/bin/bash
# ==============================================================================
# RADRILONIUMA • TERMINAL BROADCAST DAEMON (LIVE STREAM TO ATESIRT ON PORT 7681)
# ==============================================================================

PORT=7681
DEVICE_SERIAL="RZCY80G86FP"

echo "⚜️ [TERMINAL BROADCAST] Инициализация веб-терминала ttyd на порту $PORT..."

# 1. Kill stale instances
killall -9 ttyd 2>/dev/null || true
sleep 0.5

# 2. Reverse port mapping to Atesirt
adb -s "$DEVICE_SERIAL" reverse tcp:$PORT tcp:$PORT 2>/dev/null || true
adb -s "$DEVICE_SERIAL" reverse tcp:3001 tcp:3001 2>/dev/null || true

# 3. Ensure console script is executable
chmod +x /root/RADRILONIUMA/scripts/global/agy_live_console.sh

# 4. Run ttyd with -W (writable) and attach to persistent tmux session agy_live_cockpit
exec /usr/bin/ttyd \
    -p "$PORT" \
    -t fontSize=18 \
    -t fontFamily="'Fira Code', 'JetBrains Mono', 'Courier New', monospace" \
    -t theme='{"background": "#070c14", "foreground": "#00f0ff", "cursor": "#ffd700", "selection": "#1a365d"}' \
    tmux new-session -A -s agy_live_cockpit /root/RADRILONIUMA/scripts/global/agy_live_console.sh
