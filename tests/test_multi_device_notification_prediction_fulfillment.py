#!/usr/bin/env python3
"""
Unit tests for MultiDeviceNotificationPredictionFulfillmentEngine.
"""

import pytest
from lam_target_task_heal_manager.multi_device_notification_prediction_fulfillment_engine import MultiDeviceNotificationPredictionFulfillmentEngine

def test_multi_device_health_check():
    engine = MultiDeviceNotificationPredictionFulfillmentEngine("/tmp")
    health = engine.check_multi_device_health()
    assert health["engine_status"] == "HEALTHY"
    assert len(health["active_channels"]) == 6
    assert len(health["target_devices"]) == 4

def test_predict_notification_fulfillment():
    engine = MultiDeviceNotificationPredictionFulfillmentEngine("/tmp")
    channels = [
        "CALENDAR_NOTIFICATION",
        "TASKS_NOTIFICATION",
        "GMAIL_NOTIFICATION",
        "CALL_NOTIFICATION",
        "SMS_NOTIFICATION",
        "SYSTEM_ALARM_NOTIFICATION"
    ]
    for ch in channels:
        plan = engine.predict_notification_fulfillment(ch, "test_source", {"summary": "Unit Test Payload"})
        assert plan["status"] == "PREDICTIVE_FULFILLMENT_GENERATED"
        assert plan["confidence_score"] >= 0.95
        assert len(plan["predicted_actions"]) == 4
    assert len(engine.fulfillment_log) == 6

def test_dispatch_fulfillment_to_devices():
    engine = MultiDeviceNotificationPredictionFulfillmentEngine("/tmp")
    plan = engine.predict_notification_fulfillment("SMS_NOTIFICATION", "test_source", {"summary": "SMS Command"})
    dispatch = engine.dispatch_fulfillment_to_devices(plan)
    assert dispatch["execution_status"] == "FULFILLMENT_DISPATCHED"
    assert len(dispatch["dispatched_devices"]) == 4

def test_invalid_channel_raises():
    engine = MultiDeviceNotificationPredictionFulfillmentEngine("/tmp")
    with pytest.raises(ValueError):
        engine.predict_notification_fulfillment("INVALID_CHANNEL", "test", {})
