#!/usr/bin/env python3
import json
import urllib.request
import urllib.error
import subprocess

p = subprocess.run(
    ['/mnt/c/Program Files/Git/mingw64/bin/git-credential-manager.exe', 'get'],
    input='protocol=https\nhost=github.com\n\n',
    capture_output=True,
    text=True
)
token = ''
for line in p.stdout.splitlines():
    if line.startswith('password='):
        token = line.split('=', 1)[1].strip()

print(f"Token length: {len(token)}, prefix: {token[:8]}")

# 1. Test /user
req = urllib.request.Request('https://api.github.com/user', headers={'Authorization': f'Bearer {token}', 'User-Agent': 'Trianiuma-Agent'})
with urllib.request.urlopen(req) as r:
    u = json.load(r)
    print(f"Authenticated as: {u.get('login')} (id: {u.get('id')})")

# 2. Check if we can create repo under user
test_repo = {"name": "test-organ-check", "private": False, "description": "test check"}
req2 = urllib.request.Request(
    'https://api.github.com/user/repos',
    data=json.dumps(test_repo).encode('utf-8'),
    headers={'Authorization': f'Bearer {token}', 'User-Agent': 'Trianiuma-Agent', 'Content-Type': 'application/json'}
)
try:
    with urllib.request.urlopen(req2) as r2:
        res = json.load(r2)
        print("Created repo successfully:", res.get("full_name"))
        # Delete test repo
        del_req = urllib.request.Request(
            res.get("url"),
            headers={'Authorization': f'Bearer {token}', 'User-Agent': 'Trianiuma-Agent'},
            method='DELETE'
        )
        urllib.request.urlopen(del_req)
        print("Deleted test repo cleanly.")
except urllib.error.HTTPError as e:
    print(f"HTTPError: {e.code} - {e.read().decode('utf-8')}")
except Exception as e:
    print("Error:", e)
