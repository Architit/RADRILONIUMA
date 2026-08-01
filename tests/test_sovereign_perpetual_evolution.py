#!/usr/bin/env python3
"""
Unit tests for SovereignPerpetualEvolutionEngine.
"""

import pytest
from lam_target_task_heal_manager.sovereign_perpetual_evolution_engine import SovereignPerpetualEvolutionEngine

def test_evolution_health_check():
    engine = SovereignPerpetualEvolutionEngine("/tmp")
    health = engine.check_evolution_health()
    assert health["engine_status"] == "HEALTHY"
    assert health["phase"] == "PHASE_18.0_SOVEREIGN_PERPETUAL_EVOLUTION"
    assert health["organs_monitored"] == 36

def test_evaluate_organ_evolution_metrics():
    engine = SovereignPerpetualEvolutionEngine("/tmp")
    metrics = engine.evaluate_organ_evolution_metrics("RADR-01")
    assert metrics["sys_id"] == "RADR-01"
    assert metrics["status"] == "OPTIMAL"
    assert metrics["health_score"] == 1.0
    assert metrics["carrier_drift_hz"] == 0.0000

def test_generate_self_refinement_plan():
    engine = SovereignPerpetualEvolutionEngine("/tmp")
    plan = engine.generate_self_refinement_plan("PHASE_18.0")
    assert plan["status"] == "SELF_REFINEMENT_PLAN_SYNTHESIZED"
    assert plan["target_organs_count"] == 36
    assert len(plan["refinement_steps"]) == 5
    assert len(engine.evolution_log) == 1
