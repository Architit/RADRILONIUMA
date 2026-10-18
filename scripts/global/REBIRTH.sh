#!/bin/bash
# ==============================================================================
# RADRILONIUMA • SOVEREIGN ROOT TREE REBIRTH SCRIPT (528 Hz / 432 Hz)
# Executes on first boot post-wipe to restore the Living Organism Core
# ==============================================================================
set -e
LOG_FILE="/var/log/radriloniuma_rebirth.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "⚜️ [$(date -u)] =================================================="
echo "⚜️ [$(date -u)] RADRILONIUMA SOVEREIGN REBIRTH ACTIVATION (528 Hz)"
echo "⚜️ [$(date -u)] =================================================="

# 1. Locate and Extract Root Tree Branch
TARBALL=""
for CANDIDATE in \
    "/root/radriloniuma_root_tree_branch.tar.gz" \
    "/opt/radriloniuma_drivers/radriloniuma_root_tree_branch.tar.gz" \
    "/cdrom/GOD_SEED_INIT/radriloniuma_root_tree_branch.tar.gz" \
    "/mnt/f/GOD_SEED_INIT/radriloniuma_root_tree_branch.tar.gz" \
    "/media/*/GOD_SEED_INIT/radriloniuma_root_tree_branch.tar.gz"; do
    if [ -f "$CANDIDATE" ]; then
        TARBALL="$CANDIDATE"
        break
    fi
done

if [ -n "$TARBALL" ]; then
    echo ">>> [RESTORE] Unpacking Root Tree from $TARBALL to /root..."
    tar -xzf "$TARBALL" -C /root/
    echo "✅ [RESTORE] Root Tree Branch successfully restored to /root/RADRILONIUMA"
else
    echo "⚠️ [RESTORE] Local tarball not found, cloning directly from GitHub..."
    git clone https://github.com/Architit/RADRILONIUMA.git /root/RADRILONIUMA || true
fi

# 2. Hardware Peripheral Discovery & Module Initialization
DISCOVERY_SCRIPT="/root/RADRILONIUMA/scripts/global/radriloniuma_hardware_module_discovery.sh"
if [ ! -x "$DISCOVERY_SCRIPT" ]; then
    DISCOVERY_SCRIPT="/usr/local/bin/radriloniuma_hardware_module_discovery.sh"
fi

if [ -x "$DISCOVERY_SCRIPT" ]; then
    echo ">>> [MODULES] Executing Hardware Peripheral Module Discovery..."
    bash "$DISCOVERY_SCRIPT" || true
fi

# 3. Virtual Environment Setup
cd /root/RADRILONIUMA
if [ ! -d "/root/RADRILONIUMA/venv" ]; then
    echo ">>> [VENV] Initializing Python virtual environment..."
    python3 -m venv /root/RADRILONIUMA/venv
fi

/root/RADRILONIUMA/venv/bin/pip install --upgrade pip 2>/dev/null || true
if [ -f "/root/RADRILONIUMA/requirements.txt" ]; then
    /root/RADRILONIUMA/venv/bin/pip install -r /root/RADRILONIUMA/requirements.txt 2>/dev/null || true
fi

# 4. GitHub Synchronization & Pull
if [ -d "/root/RADRILONIUMA/.git" ]; then
    echo ">>> [GITHUB] Synchronizing latest master from GitHub..."
    git pull origin master 2>/dev/null || true
fi

# 5. Living Organism Microservices & PM2 Daemon Launch
if command -v pm2 >/dev/null 2>&1; then
    echo ">>> [ORGANISM] Launching PM2 Core Daemons..."
    pm2 update 2>/dev/null || true
    if [ -f "/root/RADRILONIUMA/ecosystem.config.js" ]; then
        pm2 start /root/RADRILONIUMA/ecosystem.config.js || true
    fi
    pm2 save || true
fi

echo "⚜️ [$(date -u)] RADRILONIUMA REBIRTH COMPLETE. ALL 5 NODES IN RESONANCE (528 Hz)."
