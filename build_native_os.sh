#!/usr/bin/env bash
set -e
echo "=========================================================="
echo "⚜️ RADRILONIUMA OS NATIVE BUILD & DEPLOY ENGINE (528 Hz) ⚜️"
echo "=========================================================="

SRC_DIR="/root/RADRILONIUMA/src_native"
BUILD_TMP="/tmp/radr_build"
DECOMPILED_DIR="/root/RADRILONIUMA/android_core_decompiled"
SMALI_DEST="$DECOMPILED_DIR/smali/com/architit/radriloniuma"
ANDROID_JAR="/usr/lib/android-sdk/platforms/android-23/android.jar"
KEYSTORE="/root/RADRILONIUMA/bin/radr.keystore"
ADB_BIN="/mnt/c/setup/platform-tools/adb.exe"
TARGET_DEVICE="RZCY80G86FP"

rm -rf "$BUILD_TMP"
mkdir -p "$BUILD_TMP/classes" "$BUILD_TMP/apk_extract"

echo ">>> [1/6] Compiling Native Java sources with javac (-source 8 -target 8)..."
javac -source 8 -target 8 -cp "$ANDROID_JAR" -d "$BUILD_TMP/classes" \
    "$SRC_DIR/com/architit/radriloniuma/ResonantCanvasView.java" \
    "$SRC_DIR/com/architit/radriloniuma/NexusActivity.java"

echo ">>> [2/6] Converting classes to Dalvik DEX via dalvik-exchange..."
dalvik-exchange --dex --output="$BUILD_TMP/classes.dex" "$BUILD_TMP/classes"

echo ">>> [3/6] Disassembling DEX to Smali via apktool..."
jar -cf "$BUILD_TMP/stage.apk" -C "$BUILD_TMP" classes.dex
apktool d -f "$BUILD_TMP/stage.apk" -o "$BUILD_TMP/apk_extract"

echo ">>> [4/6] Replacing Smali classes in decompiled tree..."
rm -f "$SMALI_DEST/NexusActivity"*
rm -f "$SMALI_DEST/ResonantCanvasView"*

cp "$BUILD_TMP/apk_extract/smali/com/architit/radriloniuma/"* "$SMALI_DEST/"

echo ">>> Smali classes installed:"
ls -la "$SMALI_DEST/NexusActivity"* "$SMALI_DEST/ResonantCanvasView"*

echo ">>> [5/6] Building, Aligning and Signing APK..."
rm -f /tmp/radr_native_os.apk /tmp/radr_aligned.apk /mnt/c/setup/radriloniuma_os.apk
apktool b "$DECOMPILED_DIR" -o /tmp/radr_native_os.apk
zipalign -f -p 4 /tmp/radr_native_os.apk /tmp/radr_aligned.apk
apksigner sign --ks "$KEYSTORE" --ks-pass pass:radriloniuma --out /mnt/c/setup/radriloniuma_os.apk /tmp/radr_aligned.apk

echo ">>> Verifying APK signature..."
apksigner verify -v /mnt/c/setup/radriloniuma_os.apk

echo ">>> [6/6] Deploying to physical device DEV_02_ATESIRT ($TARGET_DEVICE)..."
"$ADB_BIN" -s "$TARGET_DEVICE" install -r 'C:\setup\radriloniuma_os.apk'

echo ">>> Launching Sovereign OS NexusActivity..."
"$ADB_BIN" -s "$TARGET_DEVICE" shell am start -n com.architit.radriloniuma/.NexusActivity

echo "=========================================================="
echo "⚜️ RADRILONIUMA OS 2026.10.24 DEPLOYED & RUNNING ⚜️"
echo "=========================================================="
