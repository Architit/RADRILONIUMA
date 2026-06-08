#!/usr/bin/env bash
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# TRUE SOVEREIGN KERNEL WRAPPER (XDOTOOL BASED)

STATE_FILE="/home/architit/LAM_CORE/RADRILONIUMA/WORKFLOW_SNAPSHOT_STATE.md"

# Auto-detect Xwayland auth for xdotool
export DISPLAY="${DISPLAY:-:0}"
XWAYLAND_AUTH=$(find /run/user/$(id -u) -name ".mutter-Xwaylandauth*" 2>/dev/null | head -n 1)
if [ -n "$XWAYLAND_AUTH" ]; then
    export XAUTHORITY="$XWAYLAND_AUTH"
else
    export XAUTHORITY="${XAUTHORITY:-$HOME/.Xauthority}"
fi

echo "[WRAPPER] Background Wrapper activated. Monitoring for Handshake..."
sleep 1

# 1. Validation (каждый раз при завершениии он должен проверять чтоюы ты обновил диркективу)
if ! grep -q "NEW_CHAT_INIT_MESSAGE" "$STATE_FILE"; then
    echo "[WRAPPER] FATAL ERROR: NEW_CHAT_INIT_MESSAGE not found."
    echo "Agent failed to update the directive for the new session."
    exit 1
fi

# Extract and format the directive (Node Session, Pathway, etc.)
INIT_MSG=$(awk '/^## NEW_CHAT_INIT_MESSAGE/{flag=1; next} /^##/{flag=0} flag' "$STATE_FILE" | tr '\n' ' ' | sed 's/  */ /g')
if [ -z "$INIT_MSG" ] || [[ "$INIT_MSG" == " " ]]; then
    echo "[WRAPPER] FATAL ERROR: Directive is empty."
    exit 1
fi

echo "[WRAPPER] Validation OK. Directive extracted. Taking control of TTY in 2 seconds..."
sleep 2

# 2. ввести команду /exit от имени пользователя в сессию чата
xdotool type --delay 5 "/exit"
xdotool key Return

echo "[WRAPPER] Waiting for session to close..."
sleep 4

# 3. потом в том же терминале после завершения сессии ввести gemini начать новую сессию
xdotool type --delay 5 "gemini"
xdotool key Return

echo "[WRAPPER] Waiting for Gemini CLI to initialize..."
sleep 7

# 4. после этого когда сессия активроввалась он должен вставить node session i and pathway и директиву
xdotool type --delay 5 "$INIT_MSG"
xdotool key Return

echo "[WRAPPER] Rebirth sequence complete."
