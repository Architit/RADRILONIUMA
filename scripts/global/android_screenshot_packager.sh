#!/system/bin/sh
# ==============================================================================
# RADRILONIUMA / LAO / LAS — ANDROID SCREENSHOT PACKAGING ENGINE ⚜️
# Autonomous hierarchical grouping: Month (YYYY-MM) -> Week (Week_WW) -> Day (YYYY-MM-DD)
# Target Device: DEV_02_ATESIRT (Samsung SM-A266B)
# ==============================================================================

SRC_DIRS="/sdcard/DCIM/Screenshots /sdcard/Pictures/Screenshots"
BASE_TARGET="/sdcard/DCIM/Screenshots"

echo "=== [SCREENSHOT PACKAGER] Starting hierarchy packaging on DEV_02_ATESIRT ==="

COUNT=0

for SRC in $SRC_DIRS; do
    if [ ! -d "$SRC" ]; then
        continue
    fi
    
    # Process files directly in the root of the source directory (do not recurse into already organized folders)
    for file in "$SRC"/*; do
        if [ ! -f "$file" ]; then
            continue
        fi

        filename=$(basename "$file")

        # Skip thumbnails, hidden files, and non-image files
        case "$filename" in
            thumbnail_*|.*|verify_*)
                continue
                ;;
            *.jpg|*.jpeg|*.png|*.webp|*.JPG|*.JPEG|*.PNG|*.WEBP)
                ;;
            *)
                continue
                ;;
        esac

        YEAR=""
        MONTH=""
        DAY=""

        # Pattern 1: Samsung standard Screenshot_YYYYMMDD_HHMMSS... or Screenshot_YYYYMMDD-HHMMSS...
        # Example: Screenshot_20261014_122919_Permission controller.jpg
        case "$filename" in
            Screenshot_[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]*)
                # Extract YYYYMMDD
                RAW_DATE=$(echo "$filename" | sed -n 's/^Screenshot_\([0-9]\{8\}\).*/\1/p')
                if [ -n "$RAW_DATE" ]; then
                    YEAR=$(echo "$RAW_DATE" | cut -c 1-4)
                    MONTH=$(echo "$RAW_DATE" | cut -c 5-6)
                    DAY=$(echo "$RAW_DATE" | cut -c 7-8)
                fi
                ;;
        esac

        # Fallback: File modification date from Toybox date
        if [ -z "$YEAR" ] || [ -z "$MONTH" ] || [ -z "$DAY" ]; then
            FILE_DATE=$(date -r "$file" +'%Y %m %d' 2>/dev/null)
            if [ -n "$FILE_DATE" ]; then
                YEAR=$(echo "$FILE_DATE" | awk '{print $1}')
                MONTH=$(echo "$FILE_DATE" | awk '{print $2}')
                DAY=$(echo "$FILE_DATE" | awk '{print $3}')
            fi
        fi

        # If date is still undetermined, skip
        if [ -z "$YEAR" ] || [ -z "$MONTH" ] || [ -z "$DAY" ]; then
            echo "[SKIP] Cannot determine date for: $filename"
            continue
        fi

        DATE_STR="${YEAR}-${MONTH}-${DAY}"
        MONTH_STR="${YEAR}-${MONTH}"

        # Calculate ISO Week number (Toybox date supports -d YYYY-MM-DD +%V)
        WEEK_NUM=$(date -d "$DATE_STR" +%V 2>/dev/null)
        if [ -z "$WEEK_NUM" ]; then
            WEEK_NUM="00"
        fi
        WEEK_STR="Week_${WEEK_NUM}"

        # Destination structure: BASE_TARGET/YYYY-MM/Week_WW/YYYY-MM-DD/
        DEST_DIR="${BASE_TARGET}/${MONTH_STR}/${WEEK_STR}/${DATE_STR}"
        mkdir -p "$DEST_DIR"

        DEST_FILE="${DEST_DIR}/${filename}"

        # Move file if destination is different
        if [ "$file" != "$DEST_FILE" ]; then
            mv "$file" "$DEST_FILE"
            if [ $? -eq 0 ]; then
                # Notify Android MediaStore of relocation
                am broadcast -a android.intent.action.MEDIA_SCANNER_SCAN_FILE -d "file://$DEST_FILE" >/dev/null 2>&1
                am broadcast -a android.intent.action.MEDIA_SCANNER_SCAN_FILE -d "file://$file" >/dev/null 2>&1
                COUNT=$((COUNT + 1))
                if [ $((COUNT % 20)) -eq 0 ]; then
                    echo "[PROGRESS] Packaged $COUNT screenshots..."
                fi
            else
                echo "[ERROR] Failed to move: $filename"
            fi
        fi
    done
done

echo "=== [SCREENSHOT PACKAGER] Completed. Total packaged screenshots: $COUNT ==="
