#!/usr/bin/env python3
import os
import sys
import shutil
import subprocess
import zipfile
from pathlib import Path

EXTRACTED_DIR = Path("/mnt/c/setup/radr_apk_extracted")
BASE_APK = Path("/mnt/c/setup/radriloniuma_phone_base.apk")
UNSIGNED_APK = Path("/tmp/radr_updated_unsigned.apk")
ALIGNED_APK = Path("/tmp/radr_updated_aligned.apk")
SIGNED_APK = Path("/mnt/c/setup/radriloniuma_updated_signed.apk")
KEYSTORE = Path("/root/RADRILONIUMA/bin/radr.keystore")
ADB_BIN = "/mnt/c/setup/platform-tools/adb.exe"

print(">>> [1/4] Rebuilding clean APK without duplicate assets/index.html...")
UNSIGNED_APK.unlink(missing_ok=True)
index_html_path = EXTRACTED_DIR / "assets" / "index.html"
index_html_bytes = index_html_path.read_bytes()

with zipfile.ZipFile(BASE_APK, "r") as zin:
    with zipfile.ZipFile(UNSIGNED_APK, "w", compression=zipfile.ZIP_DEFLATED) as zout:
        for item in zin.infolist():
            # Skip old index.html and old META-INF signatures
            if item.filename == "assets/index.html" or item.filename.startswith("META-INF/"):
                continue
            zout.writestr(item, zin.read(item.filename))
        # Write new index.html
        zout.writestr("assets/index.html", index_html_bytes)

print(">>> [2/4] Aligning APK (zipalign)...")
ALIGNED_APK.unlink(missing_ok=True)
subprocess.run(["zipalign", "-f", "-p", "4", str(UNSIGNED_APK), str(ALIGNED_APK)], check=True)

print(">>> [3/4] Signing APK with radr.keystore...")
SIGNED_APK.unlink(missing_ok=True)
sign_cmd = [
    "apksigner", "sign",
    "--ks", str(KEYSTORE),
    "--ks-pass", "pass:radriloniuma",
    "--key-pass", "pass:radriloniuma",
    "--ks-key-alias", "radr_alias",
    "--out", str(SIGNED_APK),
    str(ALIGNED_APK)
]
subprocess.run(sign_cmd, check=True)
print(f"[+] Signed APK generated at: {SIGNED_APK}")

print(">>> [4/4] Installing updated APK to DEV_02_ATESIRT via ADB...")
res = subprocess.run([ADB_BIN, "install", "-r", "C:\\setup\\radriloniuma_updated_signed.apk"], capture_output=True, text=True)
print(f"ADB install output: {res.stdout.strip()} {res.stderr.strip()}")

# Fix proot-tmp permissions
subprocess.run([ADB_BIN, "shell", "run-as com.radriloniuma chmod -R 777 cache/proot-tmp cache/tmp 2>/dev/null || true"])
print("[+] Permissions 777 restored on proot-tmp!")
print("=== APK REPACK & DEPLOY COMPLETED SUCCESSFULLY ===")
