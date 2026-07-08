#!/bin/bash
# Скрипт установки триггеров ОС для Zero-Trust моста
# Требует sudo

BROKER_PATH="/home/architit/LAM_CORE/RADRILONIUMA/scripts/global/mobile_node_broker.sh"
chmod +x "$BROKER_PATH"

echo "⚜️ [RADRILONIUMA] Установка udev-правила для USB..."
cat <<EOF > /etc/udev/rules.d/99-radriloniuma-usb.rules
ACTION=="add", SUBSYSTEM=="usb", ENV{ID_SERIAL_SHORT}=="RZCY80G86FP", RUN+="/bin/su architit -c '$BROKER_PATH usb'"
EOF
cat <<EOF > /etc/udev/rules.d/99-radriloniuma-bt.rules
ACTION=="add", SUBSYSTEM=="bluetooth", RUN+="/bin/su architit -c '$BROKER_PATH bt'"
EOF
udevadm control --reload-rules
udevadm trigger

echo "⚜️ [RADRILONIUMA] Установка NetworkManager диспетчера для Wi-Fi..."
cat <<EOF > /etc/NetworkManager/dispatcher.d/99-radriloniuma-wifi
#!/bin/bash
IFACE=\$1
ACTION=\$2

if [ "\$IFACE" == "wlan0" ] && [ "\$ACTION" == "up" ]; then
    /bin/su architit -c "$BROKER_PATH wifi"
fi
EOF
chmod +x /etc/NetworkManager/dispatcher.d/99-radriloniuma-wifi

echo "⚜️ [RADRILONIUMA] Триггеры успешно установлены. Демон больше не нужен."
