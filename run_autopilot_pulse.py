#!/usr/bin/env python3
import sys
import json
from pathlib import Path

RAD_DIR = Path("/root/RADRILONIUMA")
sys.path.insert(0, str(RAD_DIR))

from research_lab.core.autopilot_core import AutopilotCore

core = AutopilotCore(workspace_root=str(RAD_DIR))
result = core.run_autopilot_pulse(refresh_heartbeat=True)
print(json.dumps(result, indent=2, ensure_ascii=False))
