#!/usr/bin/env python3
"""
Unit tests for TaskPredictionEngine.
"""

import pytest
from lam_target_task_heal_manager.task_prediction_engine import TaskPredictionEngine

def test_task_prediction_generation():
    engine = TaskPredictionEngine("/tmp")
    preds = engine.predict_next_tasks("PHASE_17.0")
    assert len(preds) == 2
    assert "organ_target" in preds[0]
    assert preds[0]["confidence_score"] >= 0.9

def test_task_query_and_journal():
    engine = TaskPredictionEngine("/tmp")
    matches = engine.query_tasks("Audit")
    assert len(matches) >= 1
    assert len(engine.journal) >= 0

def test_google_task_payload_formatting():
    engine = TaskPredictionEngine("/tmp")
    preds = engine.predict_next_tasks("PHASE_17.0")
    payload = engine.format_google_task_payload(preds[0])
    assert payload["status"] == "needsAction"
    assert "⚜️" in payload["title"]
    assert "Organ Target:" in payload["notes"]
