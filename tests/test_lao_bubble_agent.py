#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Tests for LaoBubbleAgent & LaoBubbleWindowManager
"""

import sys
import pytest
from pathlib import Path

RADRILONIUMA_DIR = Path(__file__).resolve().parent.parent
SYS_LAO_DIR = RADRILONIUMA_DIR / "sys" / "core" / "lao"
for p in [str(RADRILONIUMA_DIR), str(SYS_LAO_DIR)]:
    if p not in sys.path:
        sys.path.insert(0, p)

from lao_bubble_agent import LaoBubbleAgent, BubbleState, BubbleNode

def test_bubble_agent_initialization():
    agent = LaoBubbleAgent()
    assert agent.agent_id == "LAO_BUBBLE_AGENT_001"
    assert agent.resonance_hz == 528.0
    assert len(agent.bubbles) >= 8
    assert "bubble_autopilot" in agent.bubbles
    assert "bubble_orbits" in agent.bubbles
    assert "bubble_phone_mirror" in agent.bubbles

def test_bubble_lifecycle_transitions():
    agent = LaoBubbleAgent()
    b_id = "bubble_autopilot"
    
    # Initial state
    assert agent.bubbles[b_id].state in [BubbleState.SLEEPING, BubbleState.ACTIVE]
    
    # Expand into CURRENT
    res = agent.expand_bubble(b_id)
    assert res["success"] is True
    assert agent.bubbles[b_id].state == BubbleState.CURRENT
    assert agent.bubbles[b_id].expanded is True
    
    # Float into FLOATING (detached)
    res_float = agent.float_bubble(b_id, x=150, y=250)
    assert res_float["success"] is True
    assert agent.bubbles[b_id].state == BubbleState.FLOATING
    assert agent.bubbles[b_id].pinned is True
    assert agent.bubbles[b_id].x == 150
    assert agent.bubbles[b_id].y == 250
    
    # Collapse while pinned remains FLOATING
    res_collapse = agent.collapse_bubble(b_id)
    assert res_collapse["success"] is True
    assert agent.bubbles[b_id].state == BubbleState.FLOATING
    assert agent.bubbles[b_id].expanded is False

    # Collapse with unpin returns to ACTIVE
    res_unpin = agent.collapse_bubble(b_id, unpin=True)
    assert res_unpin["success"] is True
    assert agent.bubbles[b_id].state == BubbleState.ACTIVE
    assert agent.bubbles[b_id].pinned is False

def test_bubble_dock_to_orbit():
    agent = LaoBubbleAgent()
    b_id = "bubble_orbits"
    res = agent.dock_bubble(b_id, orbit_idx=1)
    assert res["success"] is True
    assert agent.bubbles[b_id].dock_orbit == 1
    assert agent.bubbles[b_id].state == BubbleState.SLEEPING

def test_sync_os_windows():
    agent = LaoBubbleAgent()
    os_windows = [
        {"id": 7328, "title": "Windows Terminal (AGY CLI 528 Hz)", "process": "WindowsTerminal"},
        {"id": 1712, "title": "Google Chrome (Radriloniuma Nexus)", "process": "chrome"}
    ]
    res = agent.sync_os_windows(os_windows)
    assert res["synced_count"] == 2
    assert "os_win_7328" in agent.bubbles
    assert agent.bubbles["os_win_7328"].title == "Windows Terminal (AGY CLI 528 Hz)"

def test_bubble_physics_tick():
    agent = LaoBubbleAgent()
    initial_bubbles = agent.get_state_snapshot()
    # Run physics tick
    snapshot_after = agent.tick_physics(dt=0.016)
    assert len(snapshot_after["bubbles"]) >= len(initial_bubbles["bubbles"])
    assert "tick" in snapshot_after
    assert snapshot_after["resonance_hz"] == 528.0
