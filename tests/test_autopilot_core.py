# Copyright (c) 2026-07-09 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import unittest
import json
from pathlib import Path
from datetime import datetime, timezone, timedelta
from research_lab.core.autopilot_core import AutopilotCore

class TestAutopilotCore(unittest.TestCase):
    def setUp(self):
        self.temp_dir = Path(__file__).resolve().parent / "temp_test_autopilot"
        self.temp_dir.mkdir(exist_ok=True)
        self.core = AutopilotCore(workspace_root=self.temp_dir)

    def tearDown(self):
        # Clean up files
        for f in self.temp_dir.glob("**/*"):
            if f.is_file():
                f.unlink()
        # Clean up dirs
        for d in sorted(self.temp_dir.glob("**/*"), reverse=True):
            if d.is_dir():
                d.rmdir()
        if self.temp_dir.exists():
            self.temp_dir.rmdir()

    def test_read_system_state_missing(self):
        state = self.core.read_system_state()
        self.assertEqual(state, {})

    def test_read_system_state_valid(self):
        self.core.state_file.write_text("""# SYSTEM STATE
- status: OS_REBOOT_PENDING
- last_heartbeat_utc: 2026-07-09T13:17:00Z
""", encoding="utf-8")
        state = self.core.read_system_state()
        self.assertEqual(state["status"], "OS_REBOOT_PENDING")
        self.assertEqual(state["last_heartbeat_utc"], "2026-07-09T13:17:00Z")

    def test_check_watchdog_drift_missing(self):
        res = self.core.check_watchdog_drift()
        self.assertEqual(res["status"], "SAFE_HALT")
        self.assertIn("missing", res["reason"])

    def test_check_watchdog_drift_fresh(self):
        fresh_time = (datetime.now(timezone.utc) - timedelta(minutes=5)).isoformat().replace("+00:00", "") + "Z"
        self.core.state_file.write_text(f"""# SYSTEM STATE
- last_heartbeat_utc: {fresh_time}
""", encoding="utf-8")
        res = self.core.check_watchdog_drift()
        self.assertEqual(res["status"], "ONLINE")
        self.assertIn("healthy", res["reason"])

    def test_check_watchdog_drift_stale(self):
        stale_time = (datetime.now(timezone.utc) - timedelta(minutes=45)).isoformat().replace("+00:00", "") + "Z"
        self.core.state_file.write_text(f"""# SYSTEM STATE
- last_heartbeat_utc: {stale_time}
""", encoding="utf-8")
        res = self.core.check_watchdog_drift()
        self.assertEqual(res["status"], "SAFE_HALT")
        self.assertIn("drift too high", res["reason"])

    def test_delegate_tasks_missing_graph(self):
        res = self.core.delegate_tasks()
        self.assertEqual(res["status"], "ERROR")
        self.assertIn("missing", res["reason"])

    def test_delegate_tasks_success(self):
        self.core.amc_graph_file.parent.mkdir(parents=True, exist_ok=True)
        graph_data = {
            "organs": {
                "RADR-01": {"status": "ACTIVE"},
                "AYAS-01": {"status": "ACTIVE"},
                "TEST-01": {"status": "DORMANT"}
            }
        }
        with self.core.amc_graph_file.open("w", encoding="utf-8") as f:
            json.dump(graph_data, f)
            
        res = self.core.delegate_tasks()
        self.assertEqual(res["status"], "SUCCESS")
        # 1 active since "TEST-01" is DORMANT, wait, in our logic active_count counts where status == "ACTIVE"
        # RADR-01 and AYAS-01 are ACTIVE, so active_count is 2
        self.assertEqual(res["active_organs"], 2)

    def test_run_autopilot_pulse(self):
        self.core.state_file.write_text("# SYSTEM STATE\n- last_heartbeat_utc: UNKNOWN", encoding="utf-8")
        self.core.amc_graph_file.parent.mkdir(parents=True, exist_ok=True)
        with self.core.amc_graph_file.open("w", encoding="utf-8") as f:
            json.dump({"organs": {}}, f)
            
        pulse = self.core.run_autopilot_pulse()
        self.assertEqual(pulse["resonance"], "432 Hz (PURE)")
        self.assertEqual(pulse["watchdog"]["status"], "SAFE_HALT")
        self.assertEqual(pulse["delegation"]["status"], "SUCCESS")
        self.assertTrue(self.core.lab_log.exists())
        self.assertIn("[AUTOPILOT_PULSE]", self.core.lab_log.read_text())

if __name__ == "__main__":
    unittest.main()
