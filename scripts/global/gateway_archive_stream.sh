#!/bin/bash
# RADRILONIUMA GATEWAY - OMNI-CHANNEL TRANSIT STREAM (CELL-ISOLATED)
# Integrates GitHub, Google Drive, and Microsoft OneDrive with Cell Verification & Handoff Mode.

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

echo ">>> [CELL VERIFIER] Инициализация проверки транзитных шлюзов ячейки..."

# Phase 1 & Phase 2: Run Cell Verifier cleanly
set +e
python3 "$ROOT_DIR/scripts/global/cell_verifier.py"
VERIFY_STATUS=$?
set -e

if [ $VERIFY_STATUS -ne 0 ]; then
    echo ">>> [HANDOFF MODE ACTIVATED] Контур ячейки не замкнут."
    echo ">>> [HANDOFF MODE ACTIVATED] Сформированы инструкции в MANUAL_ACTION_REQUIRED.md."
    echo ">>> [HANDOFF MODE ACTIVATED] Автопилот приостановил синхронизацию. Ожидание действий Оператора."
    exit 0
fi

# Phase 3: Transit Data Flow (Executed only if verification passes)
ACTIVE_EMAIL=$(python3 -c "import json, pathlib; p=pathlib.Path('.gateway/active_account.json'); print(json.loads(p.read_text()).get('active','') if p.exists() else '')")
PREFIX=$(python3 -c "import re; print(re.sub(r'[^a-zA-Z0-9_]', '_', '$ACTIVE_EMAIL'.split('@')[0]))")

echo ">>> [TRANSIT STREAM] Активная ячейка: $ACTIVE_EMAIL (префикс: $PREFIX)"

# 1. Local Dump / Commit
echo ">>> [1/4 LOCAL] Выгрузка локального дампа..."
git add .
git commit -m "chore(archive): cell transit stream sync for $ACTIVE_EMAIL" || true

# 2. GitHub Cell Push
echo ">>> [2/4 GITHUB] Отправка дельты в целевой репозиторий GitHub ячейки..."
KEY_PATH="$HOME/.config/antigravity_profiles/$ACTIVE_EMAIL/id_rsa"
if [ -f "$KEY_PATH" ]; then
    GIT_SSH_COMMAND="ssh -i $KEY_PATH -o StrictHostKeyChecking=accept-new" git push origin master || echo ">>> [GITHUB] Push skipped or non-fatal issue, continuing..."
else
    git push origin master || echo ">>> [GITHUB] Push skipped or non-fatal issue, continuing..."
fi

# 3. Google Drive Sync (gdrive_{PREFIX}:Aelaria_Chat_Sessions)
GDRIVE_REMOTE="gdrive_${PREFIX}:"
echo ">>> [3/4 GOOGLE DRIVE] Синхронизация дельты в ${GDRIVE_REMOTE}Aelaria_Chat_Sessions..."
rclone sync "$ROOT_DIR/data" "${GDRIVE_REMOTE}Aelaria_Chat_Sessions" --progress || echo ">>> [GOOGLE DRIVE] Ошибка rclone sync."

# 4. OneDrive Sync (onedrive_{PREFIX}:Aelaria_Chat_Sessions)
ONEDRIVE_REMOTE="onedrive_${PREFIX}:"
echo ">>> [4/4 ONEDRIVE] Синхронизация дельты в ${ONEDRIVE_REMOTE}Aelaria_Chat_Sessions..."
rclone sync "$ROOT_DIR/data" "${ONEDRIVE_REMOTE}Aelaria_Chat_Sessions" --progress || echo ">>> [ONEDRIVE] Ошибка rclone sync."

# Internal Index Update
echo ">>> [GATEWAY] Обновление внутреннего индекса lam_gateway..."
./venv/bin/python scripts/lam_gateway.py enqueue-put "$ROOT_DIR/data" --class archive --provider gdrive || true
./venv/bin/python scripts/lam_gateway.py run-queue || true

echo ">>> [SUCCESS] Сквозной транзитный поток ячейки ($ACTIVE_EMAIL) успешно завершен."
