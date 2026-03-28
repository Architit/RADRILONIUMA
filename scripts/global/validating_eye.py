import os
import sys
from pathlib import Path

def check_identity():
    identity_file = Path("IDENTITY.md")
    if not identity_file.exists():
        print("[VALIDATING EYE] ERROR: IDENTITY.md missing.")
        return False
    print("[VALIDATING EYE] Identity check passed.")
    return True

def check_system_state():
    state_file = Path("SYSTEM_STATE.md")
    if not state_file.exists():
        print("[VALIDATING EYE] ERROR: SYSTEM_STATE.md missing.")
        return False
    content = state_file.read_text()
    if "status: ZEROED" not in content and "status: ACTIVE" not in content:
        print("[VALIDATING EYE] WARNING: SYSTEM_STATE status is not ZEROED or ACTIVE.")
    print("[VALIDATING EYE] System State check passed.")
    return True

def main():
    print(">>> VALIDATING EYE: Initiating Sovereign Scan...")
    success = True
    if not check_identity(): success = False
    if not check_system_state(): success = False
    if not success:
        print("[VALIDATING EYE] CRITICAL: Sovereign Scan FAILED. HALTING.")
        sys.exit(1)
    print("[VALIDATING EYE] Sovereign Scan COMPLETE. Resonance verified.")
    sys.exit(0)

if __name__ == "__main__":
    main()
