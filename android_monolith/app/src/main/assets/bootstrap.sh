#!/bin/bash
# RADRILONIUMA CONTAINER BOOTSTRAP SCRIPT (Invoked by JNI bootMonolith)
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export HOME=/root
export TERM=xterm-256color

echo "=========================================================="
echo "  RADRILONIUMA SOVEREIGN MONOLITH CONTAINER INITIALIZING  "
echo "=========================================================="

mkdir -p /run/radriloniuma /var/log/radriloniuma /opt/ark

# Check for ark_initd compiled binary
if [ -x /sbin/ark_initd ]; then
    echo "[BOOT] Handing off control to /sbin/ark_initd (PID 1 supervisor)..."
    exec /sbin/ark_initd
elif [ -x /etc/radriloniuma/ark_initd ]; then
    echo "[BOOT] Handing off control to /etc/radriloniuma/ark_initd..."
    exec /etc/radriloniuma/ark_initd
else
    echo "[BOOT] ark_initd binary not found, launching shell fallback supervisor..."
    # Fallback init loop
    if command -v mosquitto >/dev/null 2>&1; then
        mosquitto -d || true
    fi
    if [ -f /opt/ark/gateway/index.js ]; then
        node /opt/ark/gateway/index.js &
    fi
    if [ -f /opt/ark/bot/main.py ]; then
        python3 /opt/ark/bot/main.py &
    fi
    exec sleep infinity
fi
