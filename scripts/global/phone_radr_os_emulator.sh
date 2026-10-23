#!/bin/bash
# ==============================================================================
# RADRILONIUMA • DEV_02 ATESIRT ROOT OS SANDBOX EMULATOR (528 Hz)
# Location: /root/RADRILONIUMA/scripts/global/phone_radr_os_emulator.sh
# Target: DEV_02_ATESIRT (Samsung SM-A266B / RZCY80G86FP)
# Mode: Isolated Non-Destructive PRoot Sandbox (uid=0 Root Emulation)
# ==============================================================================
set -e

SERIAL="RZCY80G86FP"
ADB_BIN="/mnt/c/setup/platform-tools/adb.exe"
if [ ! -f "$ADB_BIN" ]; then
    ADB_BIN="adb"
fi

SANDBOX_DIR="/data/local/tmp/radr_sandbox"

# Build internal script
INNER_SCRIPT=$(cat << 'EOF'
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RADR_NODE=DEV_02_ATESIRT
export RADR_CARRIER=528Hz

echo "=================================================================="
echo "⚜️ [RADR OS SANDBOX] EMULATION OF BIOS SUDO ROOT BOOT (DEV_02)"
echo "=================================================================="
echo -n "[1/4] Privilege check: "
id
echo -n "[2/4] Guest Substrate:  "
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'
echo -n "[3/4] Python Substrate: "
python3 -V
echo -n "[4/4] Git Version:      "
git --version

echo ""
echo "--- Testing Synthetic Boot Service Daemon ---"
python3 -c "
import os, sys, socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('127.0.0.1', 5038))
s.listen(1)
print(f'✔ [PORT 5038] Telemetry socket bound successfully in sandbox!')
s.close()
"

echo ""
echo "🎉 [RADR OS SANDBOX] DRY-RUN SIMULATION COMPLETE: ALL SYSTEMS NOMINAL!"
echo "=================================================================="
EOF
)

# Push inner script to phone and execute via proot
echo "$INNER_SCRIPT" | "$ADB_BIN" -s "$SERIAL" shell "cat > /data/local/tmp/run_sandbox.sh && chmod 755 /data/local/tmp/run_sandbox.sh"
"$ADB_BIN" -s "$SERIAL" shell "/data/local/tmp/proot -0 -r $SANDBOX_DIR -b /dev -b /proc -b /sys -b /data/local/tmp -w /root /bin/bash /data/local/tmp/run_sandbox.sh"
