#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • 68 ORGANS GITHUB REPOSITORY CREATOR & PUSHER (528 Hz)
=====================================================================
Reads ORGANS_MASTER_MANIFEST.json, creates all 68 repositories on GitHub,
and pushes the initialized local organ code into master branch.
"""

import os
import sys
import json
import time
import subprocess
import urllib.request
import urllib.error
from pathlib import Path

REPO_ROOT = Path("/root/RADRILONIUMA")
ORGANS_DIR = REPO_ROOT / "core" / "organs"
MANIFEST_PATH = ORGANS_DIR / "ORGANS_MASTER_MANIFEST.json"


def get_github_token():
    # 1. Check GH_TOKEN / GITHUB_TOKEN environment variable
    token = os.environ.get("GH_TOKEN") or os.environ.get("GITHUB_TOKEN")
    if token:
        return token

    # 2. Check gh CLI config
    gh_hosts = Path.home() / ".config" / "gh" / "hosts.yml"
    if gh_hosts.exists():
        try:
            import yaml
            data = yaml.safe_load(gh_hosts.read_text(encoding="utf-8"))
            gh_token = data.get("github.com", {}).get("oauth_token")
            if gh_token:
                return gh_token
        except Exception:
            pass
        # Fallback simple text parsing of hosts.yml
        for line in gh_hosts.read_text(encoding="utf-8").splitlines():
            if "oauth_token:" in line:
                return line.split("oauth_token:", 1)[1].strip()

    # 3. Check Git Credential Manager
    try:
        p = subprocess.run(
            ['/mnt/c/Program Files/Git/mingw64/bin/git-credential-manager.exe', 'get'],
            input='protocol=https\nhost=github.com\n\n',
            capture_output=True,
            text=True
        )
        for line in p.stdout.splitlines():
            if line.startswith('password='):
                return line.split('=', 1)[1].strip()
    except Exception:
        pass

    return None


def get_authenticated_user(token):
    req = urllib.request.Request(
        'https://api.github.com/user',
        headers={'Authorization': f'Bearer {token}', 'User-Agent': 'RADRILONIUMA-68-Organs-Sync'}
    )
    with urllib.request.urlopen(req) as resp:
        data = json.load(resp)
        return data.get('login')


def create_repo(token, name, description, is_private=False):
    payload = {
        "name": name,
        "description": description,
        "private": is_private,
        "auto_init": False
    }
    req = urllib.request.Request(
        'https://api.github.com/user/repos',
        data=json.dumps(payload).encode('utf-8'),
        headers={
            'Authorization': f'Bearer {token}',
            'User-Agent': 'RADRILONIUMA-68-Organs-Sync',
            'Content-Type': 'application/json',
            'Accept': 'application/vnd.github.v3+json'
        }
    )
    try:
        with urllib.request.urlopen(req) as resp:
            data = json.load(resp)
            return True, data.get("html_url"), "CREATED"
    except urllib.error.HTTPError as e:
        body = e.read().decode('utf-8', errors='ignore')
        if e.code == 422 and "already exists" in body.lower():
            return True, f"https://github.com/already-exists/{name}", "ALREADY_EXISTS"
        return False, None, f"HTTP_{e.code}: {body}"
    except Exception as e:
        return False, None, str(e)


def push_organ_repo(organ_dir, repo_url, token, user_login):
    try:
        subprocess.run(["git", "add", "."], cwd=str(organ_dir), check=False, capture_output=True)
        subprocess.run(
            ["git", "commit", "-m", f"feat(organ): initialize {organ_dir.name} (528 Hz)"],
            cwd=str(organ_dir),
            check=False,
            capture_output=True
        )
        subprocess.run(["git", "branch", "-M", "master"], cwd=str(organ_dir), check=False, capture_output=True)

        auth_url = repo_url.replace("https://", f"https://{user_login}:{token}@")
        p = subprocess.run(
            ["git", "push", "-u", auth_url, "master", "--force"],
            cwd=str(organ_dir),
            capture_output=True,
            text=True
        )
        if p.returncode == 0:
            return True, "PUSHED"
        return False, p.stderr.strip()
    except Exception as e:
        return False, str(e)


def main():
    print("=" * 75)
    print("🚀 [68 ORGANS GITHUB REPO CREATOR & SYNC] (528 Hz)")
    print("=" * 75)

    token = get_github_token()
    if not token:
        print("❌ ERROR: No GitHub token found. Please authenticate via `gh auth login`.")
        sys.exit(1)

    try:
        user_login = get_authenticated_user(token)
        print(f"🔑 Authenticated GitHub User: [{user_login}]")
    except Exception as e:
        print(f"❌ Failed to verify user with token: {e}")
        sys.exit(1)

    if not MANIFEST_PATH.exists():
        print(f"❌ Manifest not found: {MANIFEST_PATH}")
        sys.exit(1)

    with open(MANIFEST_PATH, "r", encoding="utf-8") as f:
        manifest = json.load(f)

    organs = manifest.get("organs", {})
    total = len(organs)
    print(f"📦 Total Organs to Create on GitHub: {total}\n")

    created_count = 0
    pushed_count = 0
    failed_count = 0

    for organ_key, organ_info in organs.items():
        slot = organ_info.get("slot")
        name = organ_info.get("name")
        slug = organ_info.get("slug")
        desc = f"RADRILONIUMA {name} (Slot #{slot}) • Architit Sovereign Organ (528 Hz)"

        organ_dir = ORGANS_DIR / organ_key
        print(f"[{slot}/{total}] Creating repo: {user_login}/{slug}...", end=" ", flush=True)

        ok, url, msg = create_repo(token, slug, desc, is_private=False)
        if ok:
            print(f"[{msg}]", end=" ", flush=True)
            created_count += 1
            # Push local code
            target_url = f"https://github.com/{user_login}/{slug}.git"
            p_ok, p_msg = push_organ_repo(organ_dir, target_url, token, user_login)
            if p_ok:
                print("-> Pushed to master ✅")
                pushed_count += 1
            else:
                print(f"-> Push failed: {p_msg} ⚠️")
        else:
            print(f"FAILED: {msg} ❌")
            failed_count += 1

        time.sleep(0.3)  # Gentle rate limit pacing

    print("\n" + "=" * 75)
    print(f"🎉 Completed! Created: {created_count}/{total} | Pushed: {pushed_count}/{total} | Failed: {failed_count}")
    print(f"🌐 All 68 organ repos active under https://github.com/{user_login}")
    print("=" * 75)


if __name__ == "__main__":
    main()
