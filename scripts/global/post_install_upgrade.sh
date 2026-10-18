#!/bin/bash
# ==============================================================================
# RADRILONIUMA • AUTOMATED POST-INSTALLATION UPGRADE PIPELINE
# ==============================================================================
set -e
LOG_FILE="/var/log/radriloniuma_upgrade.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "⚜️ [$(date -u)] STARTING RADRILONIUMA SUBSTRATE POST-INSTALL UPGRADE PIPELINE"

# 0. Hardware Peripheral Module Discovery & Offline/Online Driver Loader
if [ -x "/usr/local/bin/radriloniuma_hardware_module_discovery.sh" ]; then
    /usr/local/bin/radriloniuma_hardware_module_discovery.sh || true
elif [ -x "/root/RADRILONIUMA/scripts/global/radriloniuma_hardware_module_discovery.sh" ]; then
    /root/RADRILONIUMA/scripts/global/radriloniuma_hardware_module_discovery.sh || true
fi

# 1. Update & Full Dist-Upgrade
export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get dist-upgrade -y

# 2. Ensure Python 3.12, pip, venv
apt-get install -y python3 python3-pip python3-venv python3-pil python3-pyperclip python3-tk nodejs npm git curl wget xclip xsel wl-clipboard scrot grim slurp imagemagick libpng-dev libjpeg-dev libwebp-dev ffmpeg adb

# 3. Ensure PM2 is installed and ready
if ! command -v pm2 &> /dev/null; then
    npm install -g pm2
fi
pm2 startup systemd -u root --hp /root || true

# 4. First-Boot REBIRTH.sh Execution
if [ -f "/root/REBIRTH.sh" ]; then
    echo "⚜️ [$(date -u)] EXECUTING /root/REBIRTH.sh"
    chmod +x /root/REBIRTH.sh
    /root/REBIRTH.sh || true
fi

echo "⚜️ [$(date -u)] SUBSTRATE UPGRADE PIPELINE COMPLETE. SYSTEM READY (528 Hz)."
