#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Tests for LaoPopupAgent & LaoPopupManager
"""

import sys
import pytest
from pathlib import Path

RADRILONIUMA_DIR = Path(__file__).resolve().parent.parent
SYS_LAO_DIR = RADRILONIUMA_DIR / "sys" / "core" / "lao"
for p in [str(RADRILONIUMA_DIR), str(SYS_LAO_DIR)]:
    if p not in sys.path:
        sys.path.insert(0, p)

from lao_popup_agent import LaoPopupAgent, PopupType, PopupPriority, PopupItem

def test_popup_agent_initialization():
    agent = LaoPopupAgent()
    assert agent.agent_id == "LAO_POPUP_AGENT_001"
    assert agent.resonance_hz == 528.0
    assert len(agent.active_popups) == 0
    assert len(agent.popup_history) == 0

def test_trigger_popup_lifecycle():
    agent = LaoPopupAgent()
    item = agent.trigger_popup(
        title="Тест Автопилота",
        message="Ядро автопилота вышло на связь 528 Гц",
        popup_type=PopupType.NOTIFICATION,
        priority=PopupPriority.HIGH,
        source_agent="AUTOPILOT_CORE",
        actions=[{"id": "ack", "label": "Принять", "action": "ACKNOWLEDGE"}]
    )
    assert item["popup_id"] in agent.active_popups
    assert item["priority"] == PopupPriority.HIGH
    assert item["source_agent"] == "AUTOPILOT_CORE"
    assert agent.active_popups[item["popup_id"]].state == "ACTIVE"

    # Dismiss popup
    res = agent.dismiss_popup(item["popup_id"], action_id="ack")
    assert res["success"] is True
    assert item["popup_id"] not in agent.active_popups
    assert len(agent.popup_history) == 1
    assert agent.popup_history[0]["resolved_action"] == "ack"

def test_priority_queue_sorting():
    agent = LaoPopupAgent()
    p_low = agent.trigger_popup("Low Notice", "Low", priority=PopupPriority.LOW)
    p_crit = agent.trigger_popup("Critical Alert", "Crit", priority=PopupPriority.CRITICAL)
    p_high = agent.trigger_popup("High Alert", "High", priority=PopupPriority.HIGH)

    active_list = agent.get_sorted_active_popups()
    assert len(active_list) == 3
    # Critical should be first, then High, then Low
    assert active_list[0]["priority"] == PopupPriority.CRITICAL
    assert active_list[1]["priority"] == PopupPriority.HIGH
    assert active_list[2]["priority"] == PopupPriority.LOW

def test_call_popup_with_timeout():
    agent = LaoPopupAgent()
    call_item = agent.trigger_call_popup(
        caller_name="J.A.R.V.I.S",
        caller_node="DEV_02_ATESIRT",
        topic="Запрос на синхронизацию экрана",
        timeout_sec=15
    )
    assert call_item["popup_type"] == PopupType.CALL
    assert call_item["priority"] == PopupPriority.HIGH
    assert len(call_item["actions"]) >= 2
    assert any(a["id"] == "answer" for a in call_item["actions"])

def test_cross_device_sync_payload():
    agent = LaoPopupAgent()
    item = agent.trigger_popup("Cluster Sync", "Sync complete", target_device="DEV_02_ATESIRT")
    payload = agent.get_device_sync_payload("DEV_02_ATESIRT")
    assert payload["target_device"] == "DEV_02_ATESIRT"
    assert len(payload["popups"]) == 1
    assert payload["popups"][0]["title"] == "Cluster Sync"
