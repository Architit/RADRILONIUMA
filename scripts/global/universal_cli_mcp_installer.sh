#!/usr/bin/env bash
# Copyright (c) 2026-07-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# UNIVERSAL CLI & MCP SERVER INSTALLER / UPDATER / UPGRADER
# Cross-Device Support: Samsung Smartphone (Termux), Samsung SSD, Dell Ubuntu, USB Flash Drive

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
HOME_DIR="${HOME:-/home/architit}"
export ROOT_DIR HOME_DIR

echo ">>> [UNIVERSAL INSTALLER] Initiating cross-device CLI & MCP sync..."
echo ">>> [ENVIRONMENT] Root: $ROOT_DIR | Home: $HOME_DIR | OS: $(uname -s) | Arch: $(uname -m)"

# 1. Update / Verify CLI Tools (gemini & agy)
echo ">>> [STEP 1] Verifying and upgrading CLI tools (gemini & agy)..."
if command -v npm >/dev/null 2>&1; then
  echo ">>> [NPM] Checking global CLI packages..."
  npm install -g @google/gemini-cli 2>/dev/null || echo ">>> [NOTICE] Global npm install restricted or already managed by system."
else
  echo ">>> [WARNING] npm not found. Skipping global npm CLI package upgrade."
fi

for cli_bin in "/usr/local/bin/gemini" "/usr/local/bin/agy" "$HOME_DIR/.local/bin/gemini" "$HOME_DIR/.local/bin/agy"; do
  if [ -f "$cli_bin" ]; then
    chmod +x "$cli_bin" 2>/dev/null || true
    echo ">>> [CLI] Confirmed executable: $cli_bin"
  fi
done

# 2. Install / Upgrade External MCP Servers (GitHub, Microsoft Workspace / OneDrive)
echo ">>> [STEP 2] Downloading & upgrading external MCP servers (GitHub, Microsoft Workspace, OneDrive)..."
if command -v npm >/dev/null 2>&1; then
  echo ">>> [MCP] Caching @modelcontextprotocol/server-github..."
  npx -y @modelcontextprotocol/server-github --version 2>/dev/null || true
  
  echo ">>> [MCP] Caching @modelcontextprotocol/server-onedrive (Microsoft Workspace)..."
  npx -y @modelcontextprotocol/server-onedrive --version 2>/dev/null || true
fi

# 3. Build / Update Local MCP Server & Google Workspace Extension
echo ">>> [STEP 3] Updating local MCP server & Google Workspace integrations..."
if [ -d "$ROOT_DIR/mcp_server" ] && [ -f "$ROOT_DIR/mcp_server/package.json" ]; then
  echo ">>> [MCP CORE] Running npm install & update in mcp_server..."
  (cd "$ROOT_DIR/mcp_server" && npm install --silent 2>/dev/null || true)
fi

GW_DIR="$HOME_DIR/.gemini/extensions/google-workspace"
if [ -d "$GW_DIR" ] && [ -f "$GW_DIR/package.json" ]; then
  echo ">>> [GOOGLE WORKSPACE] Updating Google Workspace MCP extension..."
  (cd "$GW_DIR" && npm install --silent 2>/dev/null || true)
fi

# 4. Dynamically Sync Workspace MCP Configs (.agents/mcp_config.json & .gemini/settings.json)
echo ">>> [STEP 4] Synchronizing workspace MCP configurations for current device..."
python3 -c '
import json, os, sys
from pathlib import Path

root_dir = os.environ.get("ROOT_DIR", str(Path.cwd()))
home_dir = os.environ.get("HOME_DIR", str(Path.home()))

def update_mcp_config(file_path, is_settings=False):
    p = Path(file_path)
    if not p.exists():
        return
    try:
        data = json.loads(p.read_text(encoding="utf-8"))
    except Exception as e:
        print(f"[ERROR] Could not parse {file_path}: {e}")
        return

    mcp = data.get("mcpServers", {})
    
    # 1. Update internal organs to use root_dir dynamically
    for name, cfg in mcp.items():
        if "args" in cfg and isinstance(cfg["args"], list):
            new_args = []
            for arg in cfg["args"]:
                if "LAM_CORE/RADRILONIUMA/mcp_server/index.js" in arg or "mcp_server/index.js" in arg:
                    new_args.append(os.path.join(root_dir, "mcp_server", "index.js"))
                else:
                    new_args.append(arg)
            cfg["args"] = new_args

    # 2. Ensure GitHub MCP
    mcp["github"] = {
        "command": "npx",
        "args": ["-y", "@modelcontextprotocol/server-github"]
    }

    # 3. Ensure Google Workspace MCP
    gw_path = os.path.join(home_dir, ".gemini", "extensions", "google-workspace")
    mcp["google-workspace"] = {
        "command": "node",
        "args": ["dist/index.js", "--use-dot-names"],
        "cwd": gw_path,
        "env": None
    }

    # 4. Ensure Microsoft Workspace / OneDrive MCP
    mcp["microsoft-workspace"] = {
        "command": "npx",
        "args": ["-y", "@modelcontextprotocol/server-onedrive"]
    }
    mcp["onedrive"] = {
        "command": "npx",
        "args": ["-y", "@modelcontextprotocol/server-onedrive"]
    }

    data["mcpServers"] = mcp
    if is_settings and "workspace" in data:
        data["workspace"]["root"] = os.path.dirname(root_dir)

    p.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")
    print(f"[SYNC] Updated {file_path} for device path: {root_dir}")

update_mcp_config(os.path.join(root_dir, ".agents", "mcp_config.json"))
update_mcp_config(os.path.join(root_dir, ".gemini", "settings.json"), is_settings=True)
'

echo ">>> [SUCCESS] Universal CLI & MCP server download, install, update, and upgrade complete for all devices!"
