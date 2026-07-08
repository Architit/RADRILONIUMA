#!/bin/bash
# RADRILONIUMA APK REMOTE DESKTOP BRIDGE
# Handles bi-directional streaming between Samsung Galaxy and Ubuntu Host

set -e

function install_dependencies() {
    echo ">>> [SETUP] Запрос прав администратора для установки зависимостей (x11vnc, scrcpy)..."
    sudo apt update
    sudo apt install -y scrcpy x11vnc net-tools
    echo ">>> [SETUP] Зависимости успешно установлены."
}

function stream_phone_to_pc() {
    echo ">>> [STREAM] Трансляция: Телефон -> ПК (Управление телефоном на экране ноутбука)"
    if ! command -v scrcpy &> /dev/null; then
        echo "Ошибка: scrcpy не установлен. Запустите: $0 install"
        exit 1
    fi
    # Запуск scrcpy в режиме удержания без сна (-w)
    # Флаг -S убран, так как Samsung Knox блокирует трансляцию экрана блокировки (чёрный экран).
    echo ">>> Ожидание биометрической аутентификации (окно появится поверх заблокированного экрана)..."
    echo ">>> После разблокировки нажмите Alt+O (или Super+O) в окне scrcpy, чтобы погасить физический экран телефона."
    scrcpy -w --max-fps 60 --window-title "RADRILONIUMA APK - Phone Interface"
}

function stream_pc_to_phone() {
    echo ">>> [STREAM] Трансляция: ПК -> Телефон (Использование телефона как монитора/управления ноутбуком)"
    if ! command -v x11vnc &> /dev/null; then
        echo "Ошибка: x11vnc не установлен. Запустите: $0 install"
        exit 1
    fi
    
    echo ">>> Проброс порта ADB (USB Tethering для VNC)..."
    adb reverse tcp:5900 tcp:5900 || echo "ADB reverse fail, check USB connection."
    
    echo ">>> Ожидание подключения VNC Viewer с телефона на 127.0.0.1:5900 ..."
    x11vnc -display :0 -many -rfbport 5900 -noxdamage -repeat -clear_all -loop
}

case "$1" in
    install)
        install_dependencies
        ;;
    phone-to-pc)
        stream_phone_to_pc
        ;;
    pc-to-phone)
        stream_pc_to_phone
        ;;
    both)
        echo ">>> [BRIDGE] Инициализация двустороннего интерфейса..."
        stream_pc_to_phone &
        sleep 2
        stream_phone_to_pc &
        wait
        ;;
    *)
        echo "Использование: $0 {install|phone-to-pc|pc-to-phone|both}"
        echo ""
        echo "  install      - Установить необходимые пакеты (запросит пароль sudo)"
        echo "  phone-to-pc  - Вывести экран телефона на ноутбук (scrcpy)"
        echo "  pc-to-phone  - Запустить VNC-сервер для вывода экрана ноутбука на телефон"
        echo "  both         - Запустить оба потока одновременно"
        exit 1
        ;;
esac
