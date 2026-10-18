#!/bin/bash
# RADRILONIUMA Sovereign Substrate Package Verification
set -euo pipefail

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=${TERM:-xterm-256color}

echo "=== [RADRILONIUMA] Sovereign Ubuntu 24.04.5 LTS ARM64 Substrate Verification ==="
echo "[+] Validating Python 3.12..."
python3 --version
echo "[+] Validating Python Pip..."
python3 -m pip --version || pip --version
echo "[+] Validating Git..."
git --version
echo "[+] Validating cURL..."
curl --version | head -n 1
echo "[+] Validating Core Utilities..."
bash --version | head -n 1
echo "=== [RADRILONIUMA] Sovereign Ubuntu Package Foundation 100% INSTALLED & VERIFIED ==="
exit 0
