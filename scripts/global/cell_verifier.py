#!/usr/bin/env python3
"""
RADRILONIUMA CELL VERIFIER (AUTOPILOT VERIFICATION & MANUAL HANDOFF)
Verifies omni-channel cell isolation & transit gateways (GitHub, Google Drive, OneDrive).
If any required gateway is unconfigured, locks sync and generates MANUAL_ACTION_REQUIRED.md.
"""

import sys
import json
import re
import shutil
import subprocess
from pathlib import Path

def get_active_account(root_dir: Path) -> str:
    account_file = root_dir / ".gateway" / "active_account.json"
    if account_file.exists():
        try:
            data = json.loads(account_file.read_text())
            if isinstance(data, dict) and data.get("active"):
                return data["active"].strip()
        except Exception:
            pass
    gemini_file = Path.home() / ".gemini" / "google_accounts.json"
    if gemini_file.exists():
        try:
            data = json.loads(gemini_file.read_text())
            if isinstance(data, dict) and data.get("active"):
                act = data["active"].strip()
                if act:
                    account_file.parent.mkdir(parents=True, exist_ok=True)
                    account_file.write_text(json.dumps({"active": act, "selected_at": time.time()}, indent=2))
                    return act
        except Exception:
            pass
    return ""

def sanitize_prefix(email: str) -> str:
    user_part = email.split("@")[0]
    return re.sub(r'[^a-zA-Z0-9_]', '_', user_part)

def verify_github(email: str, prefix: str) -> tuple[bool, str]:
    profile_dir = Path.home() / ".config" / "antigravity_profiles" / email
    key_path = profile_dir / "id_rsa"

    if not key_path.exists():
        return False, f"Missing SSH key at {key_path}"

    # Check SSH connectivity
    try:
        res = subprocess.run(
            ["ssh", "-i", str(key_path), "-o", "StrictHostKeyChecking=accept-new", "-o", "BatchMode=yes", "-T", "git@github.com"],
            capture_output=True,
            text=True,
            timeout=10
        )
        combined_output = (res.stdout or "") + (res.stderr or "")
        if "successfully authenticated" not in combined_output.lower():
            return False, f"SSH key present but authentication failed: {combined_output.strip()}"
    except Exception as e:
        return False, f"SSH test error: {e}"

    # Check repository access
    try:
        repo_url = f"git@github.com:{prefix}/RADRILONIUMA.git"
        res_repo = subprocess.run(
            ["git", "ls-remote", repo_url],
            env={"GIT_SSH_COMMAND": f"ssh -i {key_path} -o StrictHostKeyChecking=accept-new"},
            capture_output=True,
            text=True,
            timeout=10
        )
        if res_repo.returncode != 0:
            return False, f"Repository {repo_url} inaccessible or not created yet."
    except Exception as e:
        return False, f"Git ls-remote check error: {e}"

    return True, "GitHub SSH & Repo verified."

def get_rclone_remotes() -> list[str]:
    try:
        res = subprocess.run(["rclone", "listremotes"], capture_output=True, text=True, timeout=5)
        if res.returncode == 0:
            return [line.strip() for line in res.stdout.splitlines() if line.strip()]
    except Exception:
        pass
    return []

def verify_onedrive(prefix: str, remotes: list[str]) -> tuple[bool, str]:
    target_remote = f"onedrive_{prefix}:"
    if target_remote in remotes:
        return True, f"OneDrive remote {target_remote} verified."
    return False, f"OneDrive remote {target_remote} not found in rclone remotes."

def verify_gdrive(prefix: str, remotes: list[str]) -> tuple[bool, str]:
    target_remote = f"gdrive_{prefix}:"
    if target_remote in remotes:
        return True, f"Google Drive remote {target_remote} verified."
    return False, f"Google Drive remote {target_remote} not found in rclone remotes."

def generate_manual_handoff(root_dir: Path, email: str, prefix: str, issues: list[str]):
    handoff_file = root_dir / "MANUAL_ACTION_REQUIRED.md"
    content = f"""# [MANUAL ACTION REQUIRED] ИЗОЛЯЦИЯ ЯЧЕЙКИ И ТРАНЗИТНЫЕ ШЛЮЗЫ

Внимание, Оператор. Для ячейки **{email}** не настроены транзитные шлюзы.

### ОБНАРУЖЕННЫЕ ПРОБЛЕМЫ:
"""
    for issue in issues:
        content += f"- {issue}\n"

    content += f"""
---

## ИНСТРУКЦИИ ДЛЯ ОПЕРАТОРА (MANUAL HANDOFF):

### 1. GITHUB SSH & REPOSITORY SETUP
Выполните команды генерации SSH-ключа для ячейки `{email}`:
```bash
mkdir -p ~/.config/antigravity_profiles/{email}
ssh-keygen -t ed25519 -C "{email}" -f ~/.config/antigravity_profiles/{email}/id_rsa -N ""
cat ~/.config/antigravity_profiles/{email}/id_rsa.pub
```
Затем откройте браузер Chrome для добавления SSH-ключа в профиль GitHub и создания целевого репозитория `RADRILONIUMA`:
```bash
google-chrome --new-window "https://github.com/settings/keys" "https://github.com/new?name=RADRILONIUMA"
```

### 2. MICROSOFT ONEDRIVE RCLONE GATEWAY
Для настройки транзитного шлюза `onedrive_{prefix}:` выполните:
```bash
rclone config create onedrive_{prefix} onedrive
```
*(Внимание: если аккаунт Microsoft отсутствует, создайте новый аккаунт для ячейки {email} перед прохождением OAuth-авторизации).*

### 3. GOOGLE DRIVE RCLONE GATEWAY
Для настройки транзитного шлюза `gdrive_{prefix}:` выполните:
```bash
rclone config create gdrive_{prefix} drive scope drive
```

---
*Система RADRILONIUMA переведена в режим ожидания ручных действий Оператора (HANDOFF MODE).*
"""
    handoff_file.write_text(content, encoding="utf-8")
    print(f"\n[HANDOFF MODE ACTIVATED] Document created: {handoff_file}")

def main():
    root_dir = Path(__file__).resolve().parent.parent.parent
    email = get_active_account(root_dir)
    if not email:
        print("[CELL VERIFIER] No active account found! Handoff to browser auth required.")
        handoff_file = root_dir / "MANUAL_ACTION_REQUIRED.md"
        handoff_file.write_text("# [MANUAL ACTION REQUIRED] NO ACTIVE ACCOUNT\n\nВ системе нет активного пользователя.\n\nЗапустите `scripts/local/account_selector.py`, чтобы открыть браузер и авторизоваться через Google Account Chooser (OAuth). После успешного входа система создаст для вас новую изолированную ячейку (CELL).\n", encoding="utf-8")
        sys.exit(10)

    prefix = sanitize_prefix(email)

    print(f"=== RADRILONIUMA CELL VERIFIER ===")
    print(f"Active Cell Email : {email}")
    print(f"Cell Prefix       : {prefix}")
    print("-----------------------------------")

    remotes = get_rclone_remotes()
    issues = []

    # Check 1: GitHub
    gh_ok, gh_msg = verify_github(email, prefix)
    print(f"[GITHUB]   : {'OK' if gh_ok else 'FAIL'} -> {gh_msg}")
    if not gh_ok:
        issues.append(f"GitHub: {gh_msg}")

    # Check 2: OneDrive
    od_ok, od_msg = verify_onedrive(prefix, remotes)
    print(f"[ONEDRIVE] : {'OK' if od_ok else 'FAIL'} -> {od_msg}")
    if not od_ok:
        issues.append(f"OneDrive: {od_msg}")

    # Check 3: GDrive
    gd_ok, gd_msg = verify_gdrive(prefix, remotes)
    print(f"[GDRIVE]   : {'OK' if gd_ok else 'FAIL'} -> {gd_msg}")
    if not gd_ok:
        issues.append(f"Google Drive: {gd_msg}")

    print("-----------------------------------")

    if issues:
        generate_manual_handoff(root_dir, email, prefix, issues)
        sys.exit(10)
    else:
        handoff_file = root_dir / "MANUAL_ACTION_REQUIRED.md"
        if handoff_file.exists():
            handoff_file.unlink()
        print(f"[CELL VERIFIED] All transit gateways for cell {email} are fully operational.")
        sys.exit(0)

if __name__ == "__main__":
    main()
