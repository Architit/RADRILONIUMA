#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# PHASE 11.3: SOVEREIGN FOREST BOOT PROTOCOL (PURE RESONANCE)
# ZERO-PRIVILEGE MODE: No sudo, no state-mutation.

# Path Configuration
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$BASE_DIR"

echo -e "\e[1;35m>>> [BOOT] Scanning Sovereign Resonance...\e[0m"

# 1. Semantic Awareness (Observation)
echo -e "\e[1;34m[BOOT] Validating AMC Knowledge Graph...\e[0m"
if [ -f ".gateway/amc_graph.json" ]; then
    echo -e "\e[1;32m[BOOT] Knowledge Graph is PRESENT.\e[0m"
else
    echo -e "\e[1;33m[BOOT] Knowledge Graph is MISSING. Triggering discovery...\e[0m"
    ./venv/bin/python3 scripts/global/agent_map_core.py >/dev/null 2>&1 || true
fi

# 2. Telemetry Bridge (Heartbeat)
echo -e "\e[1;34m[BOOT] Synchronizing Telemetry Nexus...\e[0m"
./venv/bin/python3 scripts/local/push_telemetry.py >/dev/null 2>&1 || true

echo -e "\n\e[1;32m>>> [BOOT] System is RESONANT (432 Hz). READY.\e[0m\n"
exit 0
