#!/bin/bash
# RADRILONIUMA EVENT-DRIVEN BROKER
# Вызывается только ОС-триггерами (udev/NetworkManager), в фоне не висит.

LOG_FILE="/home/architit/LAM_CORE/RADRILONIUMA/lam_kernel_logs_core/mobile_broker.log"
TRIGGER_TYPE="$1" # usb, wifi, bt

echo "[$(date)] >> Triggered by: $TRIGGER_TYPE" >> "$LOG_FILE"

# Queue task to initialize new edge remote control manager
python3 -c '
import json, uuid, time, fcntl, os
queue_file = "/home/architit/LAM_CORE/RADRILONIUMA/.gateway/queue.json"
os.makedirs(os.path.dirname(queue_file), exist_ok=True)
lock_file = queue_file + ".lock"
task = {
    "id": f"task-{uuid.uuid4().hex[:8]}",
    "type": "apc_task",
    "status": "pending",
    "payload": {
        "owner": "RADR-01",
        "intent": "init_edge_remote",
        "trigger": "'"$TRIGGER_TYPE"'"
    }
}
with open(lock_file, "w") as lock:
    fcntl.flock(lock, fcntl.LOCK_EX)
    try:
        with open(queue_file, "r") as f:
            data = json.load(f)
    except:
        data = {"items": []}
    data["items"].append(task)
    with open(queue_file, "w") as f:
        json.dump(data, f, indent=2)
    fcntl.flock(lock, fcntl.LOCK_UN)
'
echo "[$(date)] >> Queued task to init edge remote control manager for $TRIGGER_TYPE" >> "$LOG_FILE"

(
    # 1. Проверка ADB соединения с таймаутом (5 секунд) для старта ADB сервера
    for i in {1..5}; do
        if adb devices | grep -q "device$"; then
            break
        fi
        sleep 1
    done

    if ! adb devices | grep -q "device$"; then
        echo "[$(date)] >> Warning: No ADB device found after 5s. Assuming non-Android edge node." >> "$LOG_FILE"
        exit 0
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

    # 3. Открываем мост
    nohup /home/architit/LAM_CORE/RADRILONIUMA/scripts/global/apk_remote_desktop_bridge.sh phone-to-pc >/dev/null 2>&1 &
    echo "[$(date)] >> Bridge launched (phone-to-pc)." >> "$LOG_FILE"
) &
exit 0
