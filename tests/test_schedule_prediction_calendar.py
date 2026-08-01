#!/usr/bin/env python3
"""
Unit tests for SchedulePredictionCalendarEngine.
"""

import pytest
from lam_target_task_heal_manager.schedule_prediction_calendar_engine import SchedulePredictionCalendarEngine

def test_generate_horizon_schedule():
    engine = SchedulePredictionCalendarEngine("2026-07-31", "2026-09-01")
    sched = engine.generate_horizon_schedule()
    # 33 days from 2026-07-31 to 2026-09-01 inclusive
    assert len(sched) == 33
    assert sched[0]["date"] == "2026-07-31"
    assert sched[-1]["date"] == "2026-09-01"
    assert len(sched[0]["events"]) == 5

def test_format_google_calendar_event():
    engine = SchedulePredictionCalendarEngine()
    sched = engine.generate_horizon_schedule()
    payload = engine.format_google_calendar_event(sched[0]["events"][0])
    assert payload["summary"] == "⚜️ 432 Hz Morning Sanctuary Audit"
    assert "start" in payload and "end" in payload
    assert payload["start"]["timeZone"] == "UTC"
