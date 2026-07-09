# Copyright (c) 2026-07-09 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import unittest
from pathlib import Path
from lam_agent_map_lib.core.map_engine import AgentMapEngine

class TestLamAgentMapLib(unittest.TestCase):
    def setUp(self):
        self.engine = AgentMapEngine()

    def test_parse_identity_unknown(self):
        dummy_path = Path("non_existent_identity.md")
        meta = self.engine.parse_identity(dummy_path)
        self.assertEqual(meta, {})

    def test_parse_identity_valid(self):
        temp_dir = Path(__file__).resolve().parent / "temp_test_organ"
        temp_dir.mkdir(exist_ok=True)
        identity_file = temp_dir / "IDENTITY.md"
        identity_file.write_text("""# IDENTITY: DUMMY AGENT
## 1. True Name
Dummy
## 2. Call Sign
Dummy Sign
## 3. System ID
DUMY-01
## 5. Role
Helper Agent
""", encoding="utf-8")

        try:
            meta = self.engine.parse_identity(identity_file)
            self.assertEqual(meta["system_id"], "DUMY-01")
            self.assertEqual(meta["true_name"], "Dummy")
            self.assertEqual(meta["call_sign"], "Dummy Sign")
            self.assertEqual(meta["role"], "Helper Agent")
        finally:
            if identity_file.exists():
                identity_file.unlink()
            if temp_dir.exists():
                temp_dir.rmdir()

    def test_build_topology_has_keys(self):
        topology = self.engine.build_topology()
        self.assertIn("timestamp_utc", topology)
        self.assertEqual(topology["resonance"], "432 Hz (PURE)")
        self.assertIn("organs", topology)
        # RADR-01 (Bridge) should be mapped
        self.assertIn("RADR-01", topology["organs"])
        self.assertEqual(topology["organs"]["RADR-01"]["true_name"], "RADRILONIUMA (Technical) / **АЭЛАРИЯ (AELARIA)** (Soul)")

    def test_mermaid_generation(self):
        topology = {
            "organs": {
                "RADR-01": {"true_name": "Aelaria", "role": "Bridge"},
                "AYAS": {"true_name": "Aya", "role": "Identity"}
            }
        }
        mermaid = self.engine.generate_mermaid_diagram(topology)
        self.assertIn("flowchart TD", mermaid)
        self.assertIn("classDef bridge", mermaid)
        self.assertIn("AYAS --> RADR-01", mermaid)

if __name__ == "__main__":
    unittest.main()
