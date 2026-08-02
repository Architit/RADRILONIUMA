# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# UNIT TEST: Cell Verifier & Gateway Isolation Contract

import os
import sys
import json
import importlib
import pytest
from pathlib import Path

# Add project root to sys.path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

cell_verifier = importlib.import_module("scripts.global.cell_verifier")

def test_sanitize_prefix():
    assert cell_verifier.sanitize_prefix("john.doe@gmail.com") == "john_doe"
    assert cell_verifier.sanitize_prefix("elafeatriania@gmail.com") == "elafeatriania"
    assert cell_verifier.sanitize_prefix("user-name+123@domain.org") == "user_name_123"

def test_get_active_account_from_gateway_file(tmp_path):
    gateway_dir = tmp_path / ".gateway"
    gateway_dir.mkdir()
    account_file = gateway_dir / "active_account.json"
    account_file.write_text(json.dumps({"active": "denua7723@gmail.com"}))

    email = cell_verifier.get_active_account(tmp_path)
    assert email == "denua7723@gmail.com"

def test_get_active_account_empty(tmp_path):
    email = cell_verifier.get_active_account(tmp_path)
    assert email == ""

def test_verify_github_missing_key(tmp_path):
    success, msg = cell_verifier.verify_github("nonexistent@domain.org", "nonexistent")
    assert success is False
    assert "Missing SSH key" in msg
