#!/bin/bash
# RADRILONIUMA EVENT-DRIVEN BROKER
# Вызывается только ОС-триггерами (udev/NetworkManager), в фоне не висит.

LOG_FILE="/home/architit/LAM_CORE/RADRILONIUMA/lam_kernel_logs_core/mobile_broker.log"
TRIGGER_TYPE="$1" # usb, wifi, bt

echo "[$(date)] >> Triggered by: $TRIGGER_TYPE" >> "$LOG_FILE"

# 1. Проверка ADB соединения
if ! adb devices | grep -q "device$"; then
    echo "[$(date)] >> Error: No ADB device found." >> "$LOG_FILE"
    exit 1
fi

# 2. Вызов биометрии через TCP Socket на порт 9090 (Radriloniuma Auth APK)
echo "[$(date)] >> Waiting for Android Biometric Auth..." >> "$LOG_FILE"
adb forward tcp:9090 tcp:9090

AUTH_RESULT=$(python3 -c "
import socket, sys
try:
    s = socket.socket()
    s.settimeout(30)
    s.connect(('127.0.0.1', 9090))
    s.send(b'HANDSHAKE_REQUEST')
    resp = s.recv(1024).decode('utf-8')
    if 'AUTH_SUCCESS' in resp:
        print('SUCCESS')
    else:
        print('FAIL')
except Exception as e:
    print('FAIL')
")

if [ "$AUTH_RESULT" != "SUCCESS" ]; then
    echo "[$(date)] >> Auth failed or timeout. Access DENIED." >> "$LOG_FILE"
    exit 1
fi
echo "[$(date)] >> Zero-Trust Biometric Auth SUCCESS. Trust granted." >> "$LOG_FILE"

# 3. Открываем мост (в фоне, чтобы скрипт завершился и не блокировал udev)
nohup /home/architit/LAM_CORE/RADRILONIUMA/scripts/global/apk_remote_desktop_bridge.sh >/dev/null 2>&1 &
echo "[$(date)] >> Bridge launched." >> "$LOG_FILE"
exit 0
