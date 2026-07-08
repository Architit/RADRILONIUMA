#!/usr/bin/env bash
# [SENSITIVE] RADRILONIUMA CORE: Cross-OS Access Mapping & Permission Purge
# Синхронизация системных прав между WSL и Android-узлом. Зачистка аномалий One UI.

CORE_PKG="com.radriloniuma.lamcore" # Замени на точный Package Name твоего APK
CORE_ADMIN_RECEIVER="$CORE_PKG/.receiver.AdminReceiver"

echo "🛡️ [MAPPING INIT] Запуск кросс-системного маппинга привилегий..."

# 1. ПРОВЕРКА АППАРАТНОГО ШЛЮЗА
if ! adb get-state 1>/dev/null 2>&1; then
    echo "❌ [ABORT] Аппаратный узел (Android) не отвечает. Проверьте кабель/ADB." >&2
    exit 1
fi

echo "🔒 [PHASE 1: PURGE] Отзыв опасных разрешений у сторонних приложений..."

# Получаем список всех приложений, у которых включен полный доступ к файлам (MANAGE_EXTERNAL_STORAGE),
# и безжалостно отбираем его у всех, кроме системного ядра и белого списка.
for pkg in $(adb shell cmd appops query-op MANAGE_EXTERNAL_STORAGE allow | awk '{print $1}'); do
    if [[ "$pkg" != "$CORE_PKG" && "$pkg" != "com.android.*" && "$pkg" != "com.samsung.*" && "$pkg" != "com.termux" ]]; then
        echo "   -> [REVOKE] Отключение прав дисковой подсистемы у уязвимого узла: $pkg"
        adb shell appops set "$pkg" MANAGE_EXTERNAL_STORAGE default
        adb shell appops set "$pkg" READ_EXTERNAL_STORAGE ignore
        adb shell appops set "$pkg" WRITE_EXTERNAL_STORAGE ignore
    fi
done

echo "⚙️ [PHASE 2: ELEVATION] Регистрация LAM Core V10 как Device Owner (Владелец ОС)..."

# Удаляем временные ограничения прошивки (Scoped Storage & Restricted Settings)
adb shell appops set "$CORE_PKG" MANAGE_EXTERNAL_STORAGE allow
adb shell appops set "$CORE_PKG" NO_ISOLATED_STORAGE allow
adb shell appops set "$CORE_PKG" SYSTEM_ALERT_WINDOW allow
adb shell appops set "$CORE_PKG" WRITE_SETTINGS allow

# Выдаем привилегии системного администратора в обход графического меню One UI
# (Внимание: для успешного выполнения на телефоне не должно быть активных аккаунтов Google/Samsung.
# Если выбьет ошибку - временно удали аккаунты в настройках, запусти скрипт и верни их обратно).
adb shell dpm set-device-owner "$CORE_ADMIN_RECEIVER" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "👑 [SUCCESS] LAM Core V10 успешно прописан как Владелец Устройства (Device Owner)!"
else
    echo "⚠️ [WARN] Статус Device Owner заблокирован активными аккаунтами. Выдаем максимальный уровень Device Admin..."
    # Альтернативная принудительная активация прав администратора
    adb shell cmd device_policy set-active-admin "$CORE_ADMIN_RECEIVER"
fi

echo "🔌 [PHASE 3: I/O MAPPING] Жесткая привязка USB-интерфейса к нашему ядру..."
# Исключаем блокировку USB-портов и запрещаем системе гасить контроллер при блокировке
adb shell svc usb setFunctions mtp,adb true
adb shell settings put global adb_enabled 1
adb shell settings put secure usb_audio_automatic_routing_disabled 0

echo "────────────────────────────────────────────────────────────"
echo "✅ [MAPPING COMPLETE] Матрица разрешений синхронизирована."
echo "   Стороннее ПО изолировано. LAM Core V10 получил системный приоритет."
echo "────────────────────────────────────────────────────────────"
