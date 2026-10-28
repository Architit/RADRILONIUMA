#!/usr/bin/env python3
import urllib.request
import json

sample_organs = [
    'trianiuma-organ-01-cognitive-core',
    'trianiuma-organ-28-wsl2-ubuntu-root',
    'trianiuma-organ-42-telegram-bot-mesh',
    'trianiuma-organ-68-sovereign-baton-master'
]

files = ['README.md', 'LICENSE', 'NOTICE.md', 'FOLLOWME.md']

print("=== UNAUTHENTICATED PUBLIC PROBE (NO TOKEN / ANONYMOUS) ===")
for organ in sample_organs:
    api_url = f"https://api.github.com/repos/Halidrad/{organ}"
    req = urllib.request.Request(api_url, headers={"User-Agent": "Anonymous-Public-Auditor"})
    try:
        with urllib.request.urlopen(req) as resp:
            meta = json.load(resp)
            print(f"\n📦 Repo: {meta.get('full_name')} | Visibility: {meta.get('visibility')} | Private: {meta.get('private')}")
    except Exception as e:
        print(f"\n📦 Repo {organ}: API Error ({e})")

    for f in files:
        raw_url = f"https://raw.githubusercontent.com/Halidrad/{organ}/master/{f}"
        try:
            req_f = urllib.request.Request(raw_url, headers={"User-Agent": "Anonymous-Public-Auditor"})
            with urllib.request.urlopen(req_f) as resp_f:
                content_len = len(resp_f.read())
                print(f"   ↳ {f}: HTTP {resp_f.status} (Length: {content_len} bytes) [PUBLIC OK]")
        except Exception as e:
            print(f"   ↳ {f}: FAILED ({e})")

print("\n=== AUDIT COMPLETED ===")
