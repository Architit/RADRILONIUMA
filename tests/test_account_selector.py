# Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# UNIT TEST: Account Selector & Profile Manager Contract

import os
import sys
import json
import pytest
from pathlib import Path

# Add project root to sys.path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

from scripts.local import account_selector

def test_load_default_hierarchy():
    hierarchy = account_selector.load_hierarchy()
    assert isinstance(hierarchy, list)
    assert len(hierarchy) >= 3
    emails = [item["email"] for item in hierarchy]
    assert "lkises01@gmail.com" in emails
    assert "elafeatriania@gmail.com" in emails

def test_get_account_rank():
    hierarchy = account_selector.load_hierarchy()
    rank, tier = account_selector.get_account_rank("lkises01@gmail.com", hierarchy)
    assert rank == 1
    assert tier == "PRIMARY_MASTER"

    unknown_rank, unknown_tier = account_selector.get_account_rank("unknown@domain.org", hierarchy)
    assert unknown_rank == 99

def test_get_email_from_token_file(tmp_path):
    token_file = tmp_path / "dummy_token.json"
    
    # Non-existent file
    assert account_selector.get_email_from_token_file(token_file) == ""

    # Invalid JSON
    token_file.write_text("invalid json content")
    assert account_selector.get_email_from_token_file(token_file) == ""

def test_get_active_account():
    active = account_selector.get_active_account()
    assert isinstance(active, str)
    assert "@" in active or active == ""
