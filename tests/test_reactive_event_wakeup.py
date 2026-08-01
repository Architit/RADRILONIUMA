#!/usr/bin/env python3
"""
Unit tests for ReactiveEventWakeupEngine.
"""

import pytest
from lam_target_task_heal_manager.reactive_event_wakeup_engine import ReactiveEventWakeupEngine

def test_dataflow_health_check():
    engine = ReactiveEventWakeupEngine("/tmp")
    health = engine.check_dataflow_health()
    assert health["pipeline_status"] == "HEALTHY"
    assert len(health["active_listeners"]) == 5

def test_notification_event_awakening_triggers():
    engine = ReactiveEventWakeupEngine("/tmp")
    for evt in ["CALENDAR_NOTIFICATION", "TASKS_NOTIFICATION", "GMAIL_NOTIFICATION", "CALL_NOTIFICATION", "SMS_NOTIFICATION"]:
        wake = engine.process_notification_event(evt, "test_source", {"summary": "Test payload"})
        assert wake["awakening_status"] == "AWAKENING_SIGNAL_DISPATCHED"
        assert "AGY_CLI_AGENT" in wake["target_agents"]
    assert len(engine.awakening_log) == 5

def test_invalid_event_type_raises():
    engine = ReactiveEventWakeupEngine("/tmp")
    with pytest.raises(ValueError):
        engine.process_notification_event("INVALID_EVENT", "test", {})
