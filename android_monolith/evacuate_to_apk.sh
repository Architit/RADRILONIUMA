#!/usr/bin/env bash
set -euo pipefail

echo "[RADRILONIUMA] Начало эвакуации контура и ликвидации зависимости от Termux..."
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXPORT_DIR="$BASE_DIR/app/src/main/assets"
mkdir -p "$EXPORT_DIR"

STAGE_DIR=$(mktemp -d)
mkdir -p "$STAGE_DIR/etc/radriloniuma" "$STAGE_DIR/opt/ark" "$STAGE_DIR/sbin"

# 1. Инжект супервизора ark_initd
if [ -f "/root/RADRILONIUMA/core_daemons/ark_initd" ]; then
    cp -a "/root/RADRILONIUMA/core_daemons/ark_initd" "$STAGE_DIR/sbin/ark_initd"
    chmod +x "$STAGE_DIR/sbin/ark_initd"
    echo "[+] Инжектирован супервизор ark_initd -> /sbin/ark_initd"
fi

# 2. Копирование workspace (gateway, bot, daemon)
for item in gateway bot daemon; do
    if [ -d "/root/workspace/$item" ]; then
        cp -a "/root/workspace/$item" "$STAGE_DIR/opt/ark/"
        echo "[+] Эвакуирован сервис: /root/workspace/$item"
    fi
done

# 3. Копирование ядра RADRILONIUMA (за исключением git и рекурсивных сборок)
mkdir -p "$STAGE_DIR/opt/ark/RADRILONIUMA"
rsync -av --exclude='.git' --exclude='android_monolith' --exclude='*.tar.zst' --exclude='venv_*' \
    /root/RADRILONIUMA/ "$STAGE_DIR/opt/ark/RADRILONIUMA/" >/dev/null
echo "[+] Эвакуировано ядро: RADRILONIUMA Core"

# 4. Копирование главного bootstrap.sh
cp "$EXPORT_DIR/bootstrap.sh" "$STAGE_DIR/etc/radriloniuma/bootstrap.sh"
chmod +x "$STAGE_DIR/etc/radriloniuma/bootstrap.sh"

# 5. Упаковка rootfs оверлея в zstd
echo "[PACK] Упаковка rootfs оверлея в rootfs_overlay.tar.zst..."
tar --zstd -cf "$EXPORT_DIR/rootfs_overlay.tar.zst" -C "$STAGE_DIR" .
rm -rf "$STAGE_DIR"

echo "[ГОТОВО] Монолитный слой собран: $EXPORT_DIR/rootfs_overlay.tar.zst"
ls -lh "$EXPORT_DIR/rootfs_overlay.tar.zst"
