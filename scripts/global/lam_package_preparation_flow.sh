#!/usr/bin/env bash
# ==============================================================================
# RADRILONIUMA / LAM CORE — PACKAGE PREPARATION FLOW V1 ⚜️
# Build, Sign & Deploy Tri-Platform Artifacts: APK, BIN, EXE
# Target Version: 00.10.14
# ==============================================================================
set -euo pipefail

VERSION="00.10.14"
ROOT_DIR="/root/RADRILONIUMA"
BIN_DIR="$ROOT_DIR/bin"
WIN_USER_DIR="/mnt/c/Users/BushM"

echo "=== [PACKAGE FLOW] Starting Package Preparation Flow for v.$VERSION ==="

# 1. COMPILE LINUX BINARY (.bin)
echo ">>> [1/3] Building Linux ELF binary (lam_core.bin)..."
gcc -O2 "$BIN_DIR/lam_core.c" -o "$BIN_DIR/lam_core.bin"
chmod +x "$BIN_DIR/lam_core.bin"
cp "$BIN_DIR/lam_core.bin" "$BIN_DIR/radriloniuma.bin"
echo "[+] Linux binary compiled: $BIN_DIR/lam_core.bin"

# 2. COMPILE WINDOWS EXECUTABLE (.exe)
echo ">>> [2/3] Building Windows PE executable (lam_core.exe)..."
x86_64-w64-mingw32-gcc -O2 "$BIN_DIR/lam_core.c" -o "$BIN_DIR/lam_core.exe"
mkdir -p "$WIN_USER_DIR/bin"
cp "$BIN_DIR/lam_core.exe" "$WIN_USER_DIR/lam_core.exe"
cp "$BIN_DIR/lam_core.exe" "$WIN_USER_DIR/bin/lam_core.exe"
echo "[+] Windows executable compiled: $WIN_USER_DIR/lam_core.exe"

# 3. BUILD & SIGN ANDROID PACKAGE (.apk)
echo ">>> [3/3] Assembling & Signing Android APK (lam.core.v.$VERSION.apk)..."
if [ -d "/tmp/lam_core_v10_src" ]; then
    apktool b /tmp/lam_core_v10_src -o /tmp/lam_core_unsigned.apk
    rm -f /tmp/lam_core_aligned.apk
    zipalign -v -p 4 /tmp/lam_core_unsigned.apk /tmp/lam_core_aligned.apk
    apksigner sign --ks "$BIN_DIR/radr.keystore" --ks-pass pass:radriloniuma --key-pass pass:radriloniuma \
        --out "$BIN_DIR/lam.core.v.$VERSION.apk" /tmp/lam_core_aligned.apk
    cp "$BIN_DIR/lam.core.v.$VERSION.apk" "$WIN_USER_DIR/Pictures/lam.core.v.$VERSION.apk"
    echo "[+] Android package assembled: $BIN_DIR/lam.core.v.$VERSION.apk"
fi

echo "=== [PACKAGE FLOW] Tri-platform artifacts successfully prepared for v.$VERSION ==="
