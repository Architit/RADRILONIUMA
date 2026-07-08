#!/bin/bash
# RADRILONIUMA MOBILE NODE AUTO-SYNC
# Автоматическое поддержание моста (USB / Wi-Fi / BT)

DEVICE_IP="192.168.88.100"
DEVICE_BT="C0:D5:E2:B6:6F:AE"
BRIDGE_SCRIPT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/apk_remote_desktop_bridge.sh"

echo ">>> [AUTO-SYNC] Демон запущен. Мониторинг мобильного узла..."
echo ">>> Целевой IP: $DEVICE_IP | Целевой BT MAC: $DEVICE_BT"

while true; do
    # Если есть хотя бы одно устройство (USB или Wi-Fi)
    if adb devices | grep -v "List" | grep -q "device$"; then
        
        # Если подключено по USB (не содержит наш IP), активируем беспроводной режим
        if ! adb devices | grep -q "$DEVICE_IP"; then
            echo ">>> [AUTO-SYNC] Устройство на USB. Активация TCP/IP порта 5555..."
            adb tcpip 5555 >/dev/null 2>&1 || true
            sleep 2
            adb connect $DEVICE_IP:5555 >/dev/null 2>&1 || true
        fi

        # Если мост еще не запущен, запускаем его
        if ! pgrep -x "scrcpy" > /dev/null; then
            echo ">>> [AUTO-SYNC] Отладка активна, но мост отключен. Поднимаем трансляцию..."
            export DISPLAY=:0
            bash "$BRIDGE_SCRIPT" phone-to-pc >/dev/null 2>&1 &
        fi
    else
        # Устройство потеряно, долбимся по Wi-Fi
        adb connect $DEVICE_IP:5555 >/dev/null 2>&1 || true
    fi
    
    sleep 5
done
