#!/usr/bin/env bash
# WATCHDOG PULSE GENERATOR
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
if [[ -f "SYSTEM_STATE.md" ]]; then
  # Check if last_heartbeat_utc exists, if not append it
  if grep -q "last_heartbeat_utc:" SYSTEM_STATE.md; then
    sed -i "s/last_heartbeat_utc:.*/last_heartbeat_utc: $TIMESTAMP/" SYSTEM_STATE.md
  else
    echo "last_heartbeat_utc: $TIMESTAMP" >> SYSTEM_STATE.md
  fi
  echo "[WATCHDOG] Heartbeat recorded: $TIMESTAMP"
fi
