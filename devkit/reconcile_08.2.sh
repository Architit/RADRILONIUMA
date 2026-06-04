#!/usr/bin/env bash
set -euo pipefail

# Phase 08.2 Reconciliation: Restoration of Quarantined Artifacts
# Authorized by RADRILONIUMA (The Bridge)

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MAP_FILE="$ROOT_DIR/gov/report/PHASE_08.1_QUARANTINE_RESTORE_MAP.md"
NEUTRAL_LAYER="$ROOT_DIR/data/local/transit/neutral_layer"

echo "[08.2] Starting Reconciliation Wave..."

# Integrity Check
MANIFEST="$ROOT_DIR/gov/report/PHASE_08.2_INTEGRITY_MANIFEST.txt"
echo "[08.2] Generating integrity manifest..."
find "$NEUTRAL_LAYER/core" -name "*.md" -exec sha256sum {} + > "$MANIFEST"
echo "[08.2] Manifest generated: $MANIFEST"

# Parse Map and Execute
# Skipping header lines
grep "|" "$MAP_FILE" | grep -v "Artifact Path" | grep -v ":---" | while IFS="|" read -r _ art_path owner target_path status _; do
    # Trim leading/trailing whitespace and clean backticks
    art_path=$(echo "$art_path" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/`//g')
    owner=$(echo "$owner" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
    target_path=$(echo "$target_path" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/`//g')
    
    if [[ -z "$art_path" ]]; then continue; fi
    
    # Use awk to get the first word (owner code) correctly handling whitespace
    owner_code=$(echo "$owner" | awk '{print $1}')
    
    src="$NEUTRAL_LAYER/$art_path"
    
    target_repo=""
    case "$owner_code" in
        "AYAS") target_repo="Ayaearias-Triania" ;;
        "CRTD") target_repo="Croambeth" ;;
        "FMLN") target_repo="Fomanor" ;;
        "GLKT") target_repo="Glokha" ;;
        "JNSR") target_repo="Jouna" ;;
        "KTRD") target_repo="Kitora" ;;
        "LRPT") target_repo="Larpat" ;;
        "LVNS") target_repo="Luvia" ;;
        "MLVD") target_repo="Melia" ;;
        "PLTS") target_repo="Pralia" ;;
        "RBTK") target_repo="Aristos" ;;
        "SRZJ") target_repo="Sataris" ;;
        "TSPT") target_repo="Taspit" ;;
        "VLRM") target_repo="Vilami" ;;
        "VRBN") target_repo="Vionori" ;;
        "VRLS") target_repo="Vrela" ;;
        "XNVR") target_repo="Oxin" ;;
        "ZRDG") target_repo="Zudory" ;;
        *) echo "[08.2] WARN: Unknown owner code '$owner_code' (from '$owner') for $art_path"; continue ;;
    esac
    
    dest_dir="$ROOT_DIR/../$target_repo/$(dirname "$target_path")"
    dest_file="$ROOT_DIR/../$target_repo/$target_path"
    
    echo "[08.2] Restoring $art_path to $target_repo..."
    
    if [[ ! -d "$ROOT_DIR/../$target_repo" ]]; then
        echo "[08.2] ERROR: Target repo $target_repo not found at $ROOT_DIR/../$target_repo"
        continue
    fi
    
    mkdir -p "$dest_dir"
    cp "$src" "$dest_file"
done

echo "[08.2] Reconciliation Wave Complete."
