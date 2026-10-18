#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
TASKER & MISSIONER COMPATIBILITY BRIDGE (ARCHITECTURAL SPLIT)
============================================================
NOTE: As requested by Architect, Tasker and Missioner are TWO SEPARATE MODULES:
1. tasker.py     -> Discrete Task Execution & Async Pipeline Runner (class Tasker)
2. missioner.py  -> Strategic Mission Planning & Directive Orchestrator (class Missioner)

This file is preserved as an alias facade importing from both distinct modules.
"""

from tasker import Tasker
from missioner import Missioner

__all__ = ["Tasker", "Missioner"]

if __name__ == "__main__":
    import json
    tasker = Tasker()
    missioner = Missioner(tasker=tasker)
    plan = missioner.plan_mission("TRI_OS_SPLIT_VERIFY", "Tasker and Missioner are verified as 2 distinct modules")
    print(json.dumps(plan, indent=2))
