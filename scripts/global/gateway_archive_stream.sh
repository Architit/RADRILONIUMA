#!/bin/bash
# RADRILONIUMA GATEWAY - END-TO-END CLOUD ARCHIVE STREAM
# Integrates GitHub, Google Drive, and Microsoft OneDrive via lam_gateway.py

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

echo ">>> [INIT] Запуск сквозного потока архивации Шлюза (APK Gateway)..."

# 1. GitHub Sync (Master Origin)
echo ">>> [GITHUB] Синхронизация с origin/master..."
git add .
git commit -m "chore(archive): automated gateway sync to cloud stream" || true
git push origin master || echo ">>> [GITHUB] Push skipped or failed, continuing..."

# 2. Rclone Google Drive Sync
echo ">>> [GOOGLE DRIVE] Синхронизация потока через rclone (gdrive)..."
# Assuming 'gdrive:' is the rclone remote
rclone sync "$ROOT_DIR/data" "gdrive:RADRILONIUMA_CLOUD_ARCHIVE/data" --progress || echo ">>> [GOOGLE DRIVE] Ошибка rclone, проверьте remote 'gdrive:'"

# 3. Rclone Microsoft OneDrive Sync
echo ">>> [ONEDRIVE] Синхронизация потока через rclone (onedrive)..."
rclone sync "$ROOT_DIR/data" "onedrive:LAM_GATEWAY/data" --progress || echo ">>> [ONEDRIVE] Ошибка rclone, проверьте remote 'onedrive:'"

# 4. LAM Gateway Put (Internal state queue)
echo ">>> [GATEWAY] Обновление внутреннего индекса lam_gateway..."
./venv/bin/python scripts/lam_gateway.py enqueue-put "$ROOT_DIR/data" --class archive --provider gdrive || true
./venv/bin/python scripts/lam_gateway.py run-queue || true

echo ">>> [SUCCESS] Сквозной поток архивации завершен (GitHub, GDrive, Microsoft)."
