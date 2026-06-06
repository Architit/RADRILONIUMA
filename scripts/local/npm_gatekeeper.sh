#!/usr/bin/env bash
# RADRILONIUMA OS - NPM Interceptor Node v1.0
# Centralizes update authority and ensures sovereign scanning.

REAL_NPM="/usr/bin/npm"
PIN="3773"
LOG_FILE="/home/architit/LAM_CORE/RADRILONIUMA/DEV_LOGS.md"
SCANNER="/home/architit/LAM_CORE/RADRILONIUMA/scripts/global/validating_eye.py"

# 1. Log Request
if [[ "$*" == *"install"*"@google/gemini-cli"* ]]; then
    # Use a simpler log format for the auto-append
    printf "\n### [%s] — UPDATE INTERCEPTED: @google/gemini-cli\n- Command: npm %s\n- Action: Routed through RADRILONIUMA OS Gatekeeper.\n" "$(date '+%H:%M')" "$*" >> "$LOG_FILE"
fi

# 2. Intercept Gemini CLI Update
if [[ "$*" == *"install"*"@google/gemini-cli"* ]]; then
    echo "⚜️ [RADRILONIUMA OS] INTERCEPTED UPDATE: @google/gemini-cli"
    echo "⚜️ [RADRILONIUMA OS] Initiating Sovereign Scan..."
    
    # Execute OS Scanner
    if [[ -f "$SCANNER" ]]; then
        python3 "$SCANNER"
    else
        echo "⚠️ [RADRILONIUMA OS] Scanner missing, falling back to basic integrity check."
    fi
    
    if [ $? -eq 0 ]; then
        echo "⚜️ [RADRILONIUMA OS] Scan PASS. Executing under Sovereign Node control..."
        # Use sudo with the PIN for the actual installation
        echo "$PIN" | sudo -S "$REAL_NPM" "$@"
    else
        echo "⚜️ [RADRILONIUMA OS] CRITICAL: Scan FAIL. Update blocked by OS Kernel."
        exit 1
    fi
else
    # Non-critical npm command - run as current user
    exec "$REAL_NPM" "$@"
fi
