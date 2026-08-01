#!/usr/bin/env python3
"""
Unit tests for SleepScheduleEngine.
"""

import pytest
from lam_target_task_heal_manager.sleep_schedule_engine import SleepScheduleEngine

def test_sleep_schedule_calculation():
    engine = SleepScheduleEngine(base_sleep_hours=8.0)
    res = engine.calculate_required_sleep(0.5, 0.5)
    assert res["recommended_sleep_hours"] > 8.0
    assert res["cognitive_load_score"] == 0.5
    assert 0.0 <= res["recovery_index_percent"] <= 100.0

def test_optimal_sleep_window_prediction():
    engine = SleepScheduleEngine()
    window = engine.predict_optimal_sleep_window("07:00", 8.0)
    assert window["predicted_bedtime"] == "23:00"
    assert window["target_wake_time"] == "07:00"
