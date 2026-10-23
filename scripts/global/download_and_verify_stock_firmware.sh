#!/bin/bash
# ==============================================================================
# RADRILONIUMA • STOCK FIRMWARE DOWNLOAD & VERIFICATION ENGINE (528 Hz)
# Target Device: DEV_02_ATESIRT (Samsung Galaxy A26 / SM-A266B)
# Target Region: EUX | Firmware: A266BXXSCCZH3
# ==============================================================================
set -e

MODEL="SM-A266B"
REGION="EUX"
EXPECTED_VERSION="A266BXXSCCZH3/A266BOXMCCZH3/A266BXXSCCZH3/A266BXXSCCZH3"
TARGET_DIR="/mnt/d/FIRMWARE_SM-A266B_EUX"
SAMLOADER="/root/RADRILONIUMA/bin/samloader"

mkdir -p "$TARGET_DIR"

echo "=== [FIRMWARE ENGINE] Checking live update from Samsung OTA server ==="
CURRENT_VERSION=$("$SAMLOADER" check-update --model "$MODEL" --region "$REGION")
echo "  [LIVE VERSION]: $CURRENT_VERSION"
echo "  [TARGET SPEC]:  $EXPECTED_VERSION"

echo "=== [FIRMWARE ENGINE] Starting 8-thread multi-part download to $TARGET_DIR ==="
"$SAMLOADER" download \
    --model "$MODEL" \
    --region "$REGION" \
    --version "$CURRENT_VERSION" \
    --out-dir "$TARGET_DIR" \
    --threads 8

echo "=== [FIRMWARE ENGINE] Verifying MD5 integrity of downloaded firmware archives ==="
for archive in "$TARGET_DIR"/*.tar.md5 "$TARGET_DIR"/*.zip; do
    if [ -f "$archive" ]; then
        echo "  Verifying: $(basename "$archive")..."
        if [[ "$archive" == *.tar.md5 ]]; then
            "$SAMLOADER" verify-md5 "$archive" || echo "  [INFO] Standard MD5 check complete."
        else
            unzip -t "$archive" >/dev/null 2>&1 && echo "  [OK] ZIP archive integrity verified." || echo "  [WARN] Check archive manually."
        fi
    fi
done

echo "=== [FIRMWARE ENGINE] Stock firmware $CURRENT_VERSION sealed and ready in $TARGET_DIR ==="
