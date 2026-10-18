#!/bin/bash
# ==============================================================================
# RADRILONIUMA • ATESIRT HOME NODE INITIALIZATION (DEV_02_ATESIRT)
# Device: Samsung SM-A266B (Serial: RZCY80G86FP)
# Mode: Hybrid (USB ADB + Wi-Fi Hotspot Fallback)
# Reverse Port Tunnels:
#   tcp:5280 -> Post Port Socket (Google Node Gateway / SSN Transfer)
#   tcp:3005 -> Central Gateway / Cockpit UI & API
# ==============================================================================

set -e

DEVICE_SERIAL="RZCY80G86FP"
GATEWAY_DIR="/root/RADRILONIUMA/.gateway"
STATE_FILE="$GATEWAY_DIR/atesirt_home_node_state.json"
mkdir -p "$GATEWAY_DIR"

echo "⚜️ [ATESIRT HOME NODE] Инициализация узла DEV_02_ATESIRT ($DEVICE_SERIAL)..."

# 1. Проверка ADB подключения
if ! adb devices | grep -q "$DEVICE_SERIAL"; then
    echo "⚠️ [ATESIRT HOME NODE] Предупреждение: Устройство $DEVICE_SERIAL не найдено в выводе 'adb devices'."
    echo "Попытка обнаружить любое активное Android устройство..."
    ACTIVE_DEV=$(adb devices | grep -w "device" | head -n 1 | awk '{print $1}')
    if [ -n "$ACTIVE_DEV" ]; then
        DEVICE_SERIAL="$ACTIVE_DEV"
        echo "✅ [ATESIRT HOME NODE] Найдено активное устройство: $DEVICE_SERIAL"
    else
        echo "❌ [ATESIRT HOME NODE] Ошибка: Нет подключенных Android-устройств."
        exit 1
    fi
fi

# 2. Получение характеристик узла Atesirt
MODEL=$(adb -s "$DEVICE_SERIAL" shell getprop ro.product.model 2>/dev/null | tr -d '\r\n' || echo "SM-A266B")
ANDROID_VER=$(adb -s "$DEVICE_SERIAL" shell getprop ro.build.version.release 2>/dev/null | tr -d '\r\n' || echo "15")
IP_WIFI=$(adb -s "$DEVICE_SERIAL" shell "ip route | grep wlan0 | awk '{print \$9}'" 2>/dev/null | head -n 1 | tr -d '\r\n' || echo "192.168.137.19")

# 3. Настройка реверсивных туннелей портов (Atesirt -> WSL2/Win11)
echo "🔗 [ATESIRT HOME NODE] Проброс реверсивных портов tcp:5280 и tcp:3005..."
adb -s "$DEVICE_SERIAL" reverse --remove-all 2>/dev/null || true
adb -s "$DEVICE_SERIAL" reverse tcp:5280 tcp:5280
adb -s "$DEVICE_SERIAL" reverse tcp:3005 tcp:3005
adb -s "$DEVICE_SERIAL" reverse tcp:5288 tcp:5288 # Remote VIM socket

# 4. Проверка прав доступа пакета ядра
adb -s "$DEVICE_SERIAL" shell pm grant com.architit.radriloniuma android.permission.INTERNET 2>/dev/null || true
adb -s "$DEVICE_SERIAL" shell appops set com.architit.radriloniuma MANAGE_EXTERNAL_STORAGE allow 2>/dev/null || true

# 5. Запись состояния Atesirt Home Node
TIMESTAMP_UTC=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
cat <<EOF > "$STATE_FILE"
{
  "node_id": "DEV_02_ATESIRT",
  "device_serial": "$DEVICE_SERIAL",
  "product_model": "$MODEL",
  "android_version": "$ANDROID_VER",
  "transport_mode": "HYBRID_USB_WIFI_HOTSPOT",
  "wifi_ip": "$IP_WIFI",
  "role": "SOVEREIGN_MOBILE_HOME_NODE",
  "reverse_tunnels": {
    "tcp_5280": "MAPPED_TO_POCKET_COCON_POST_PORT",
    "tcp_3005": "MAPPED_TO_CENTRAL_GATEWAY_COCKPIT",
    "tcp_5288": "MAPPED_TO_REMOTE_VIM_SOCKET"
  },
  "mesh_resonance_carrier_hz": 528.0,
  "status": "ONLINE_ACTIVE_HOME_NODE",
  "last_health_check_utc": "$TIMESTAMP_UTC"
}
EOF

echo "✅ [ATESIRT HOME NODE] Узел DEV_02_ATESIRT успешно инициализирован в качестве Home Node!"
cat "$STATE_FILE"
