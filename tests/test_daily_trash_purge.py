#!/usr/bin/env python3
"""
Unit tests for DailyTrashPurgeEngine.
"""

import os
import pytest
import importlib
from pathlib import Path

purge_mod = importlib.import_module("scripts.global.daily_trash_purge_pruning")
DailyTrashPurgeEngine = purge_mod.DailyTrashPurgeEngine

def test_daily_trash_purge_caches(tmp_path):
    cache_dir = tmp_path / "__pycache__"
    cache_dir.mkdir()
    dummy = cache_dir / "test.pyc"
    dummy.write_text("cache_data")
    
    engine = DailyTrashPurgeEngine(str(tmp_path))
    res = engine.purge_temporary_caches()
    
    assert res["status"] == "PURGE_COMPLETE"
    assert not cache_dir.exists()

def test_daily_log_pruning(tmp_path):
    gateway_dir = tmp_path / ".gateway"
    gateway_dir.mkdir()
    log = gateway_dir / "old.log"
    log.write_text("old_log_data")
    
    engine = DailyTrashPurgeEngine(str(tmp_path))
    res = engine.prune_expired_logs(max_age_days=0)
    
    assert res["status"] == "PRUNING_COMPLETE"
