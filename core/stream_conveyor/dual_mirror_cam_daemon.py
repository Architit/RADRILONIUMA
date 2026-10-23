import shutil
#!/usr/bin/env python3
"""
RADRILONIUMA DUAL-MIRROR CAMERA STREAM & PERMANENT TRUST DAEMON
- Continuously streams DEV_02_ATESIRT (RZCY80G86FP) screen via ADB screencap (zero MediaProjection prompt)
  to /root/workspace/gateway/public/last_phone_screen.png
- Monitors for Android's MediaProjectionPermissionActivity ("Только один раз") popup and auto-approves it
  instantly so the user is never interrupted by one-time permission prompts.
"""
import json
import os
import subprocess
import time
from pathlib import Path

ADB_CANDIDATES = [
    "/mnt/c/setup/platform-tools/adb.exe",
    "/usr/bin/adb",
]
SERIAL = "RZCY80G86FP"
PUBLIC_DIR = Path("/root/workspace/gateway/public")
PUBLIC_DIR.mkdir(parents=True, exist_ok=True)
PHONE_IMG_FINAL = PUBLIC_DIR / "last_phone_screen.png"
PHONE_IMG_TMP = PUBLIC_DIR / "last_phone_screen.tmp.png"
STATE_FILE = Path("/root/RADRILONIUMA/.gateway/dual_mirror_state.json")


def get_adb() -> str:
    for c in ADB_CANDIDATES:
        if os.path.exists(c):
            return c
    return "adb"


def enforce_permanent_trust(adb_bin: str) -> None:
    for pkg in ("com.microsoft.appmanager", "com.samsung.android.mdx", "com.android.chrome"):
        try:
            subprocess.run(
                [adb_bin, "-s", SERIAL, "shell", "cmd", "appops", "set", pkg, "PROJECT_MEDIA", "allow"],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                timeout=4,
            )
        except Exception:
            pass
    for port in ("3001", "3000", "5280"):
        try:
            subprocess.run(
                [adb_bin, "-s", SERIAL, "reverse", f"tcp:{port}", f"tcp:{port}"],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                timeout=4,
            )
        except Exception:
            pass


def auto_approve_media_projection_if_present(adb_bin: str) -> bool:
    try:
        res = subprocess.run(
            [adb_bin, "-s", SERIAL, "shell", "dumpsys", "window", "windows"],
            capture_output=True,
            text=True,
            timeout=3,
        )
        out = res.stdout or ""
        if "MediaProjectionPermissionActivity" in out:
            # Enforce appops allow and auto-tap the positive confirmation button ("Только один раз" / "Начать")
            enforce_permanent_trust(adb_bin)
            # On 1080x2340 Samsung OneUI 6 dialog, positive button "Только один раз" is at (540, 2015) / (760, 2015)
            subprocess.run(
                [adb_bin, "-s", SERIAL, "shell", "input", "tap", "540", "2015"],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                timeout=2,
            )
            return True
    except Exception:
        pass
    return False


def capture_phone_frame(adb_bin: str) -> bool:
    try:
        res = subprocess.run(
            [adb_bin, "-s", SERIAL, "exec-out", "screencap", "-p"],
            capture_output=True,
            timeout=4,
        )
        data = res.stdout
        if data and len(data) > 1024 and data[:8] == b"\x89PNG\r\n\x1a\n":
            PHONE_IMG_TMP.write_bytes(data)
            os.replace(PHONE_IMG_TMP, PHONE_IMG_FINAL)
            return True
    except Exception:
        pass
    return False



def capture_pc_frame() -> bool:
    try:
        subprocess.run(
            ['/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', 'C:/setup/capture_screen.ps1'],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            timeout=4,
        )
        src = Path('/mnt/c/Users/BushM/last_screen.jpg')
        dst = PUBLIC_DIR / 'last_screen.jpg'
        if src.exists() and src.stat().st_size > 1024:
            shutil.copy2(src, dst)
            return True
    except Exception:
        pass
    return False


def main() -> None:
    adb_bin = get_adb()
    enforce_permanent_trust(adb_bin)
    cycle = 0
    auto_approved_count = 0
    while True:
        cycle += 1
        adb_bin = get_adb()
        if cycle % 30 == 1:
            enforce_permanent_trust(adb_bin)
        if cycle % 3 == 0:
            if auto_approve_media_projection_if_present(adb_bin):
                auto_approved_count += 1

        ok_phone = capture_phone_frame(adb_bin)
        capture_pc_frame()
        pc_img = PUBLIC_DIR / "last_screen.jpg"
        pc_mtime = pc_img.stat().st_mtime if pc_img.exists() else 0.0
        phone_mtime = PHONE_IMG_FINAL.stat().st_mtime if PHONE_IMG_FINAL.exists() else 0.0

        state = {
            "updated_at": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
            "phone_serial": SERIAL,
            "phone_model": "Samsung SM-A266B",
            "phone_online": ok_phone,
            "trust_mode": "PERMANENT_DEVICE_TRUST_ZERO_PROMPT",
            "auto_approved_dialogs": auto_approved_count,
            "last_phone_frame_mtime": phone_mtime,
            "last_pc_frame_mtime": pc_mtime,
            "phone_resolution": {"width": 1080, "height": 2340},
            "pc_resolution": {"width": 1536, "height": 864},
        }
        try:
            STATE_FILE.write_text(json.dumps(state, indent=2), encoding="utf-8")
        except Exception:
            pass

        time.sleep(3.0)


if __name__ == "__main__":
    main()
