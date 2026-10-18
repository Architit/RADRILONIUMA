#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA STATE SPACE WHEEL (SOTE SPACE WHEEL)
=================================================
Multidimensional Cyclic State Machine & Phase Transition Engine.
Governs organ state rotations across:
- 1-Minute Micro Ticks
- 24-Hour Diurnal Rhythm
- 7-Day Planetary/Spectral Harmonics
- 4-Week Lunar Cadence
- 4-Season Solar Quarters
- 128-Year Sovereign Epoch
"""

import math
import time
from datetime import datetime, timezone
from typing import Dict, Any, List

# Base Sovereign Epoch: 2026-01-01T00:00:00Z
EPOCH_START_TIMESTAMP = 1767225600.0  # 2026-01-01 00:00:00 UTC
EPOCH_YEARS = 128

SECTORS = [
    {
        "index": 0,
        "name": "HARMONIC_IDLE",
        "label": "Carrier Equilibrium & Solfeggio Lock",
        "frequency": 528.0,
        "color": "#10B981",  # Emerald
        "organ_bias": ["ORGAN_01_COGNITIVE_CORE", "ORGAN_36_SOVEREIGN_SOUL"]
    },
    {
        "index": 1,
        "name": "INGRESS_CONVEYOR",
        "label": "Data Stream Inflow & Packet Capture",
        "frequency": 432.0,
        "color": "#3B82F6",  # Sapphire Blue
        "organ_bias": ["ORGAN_02_SUBSTRATE_STREAM", "ORGAN_26_CORE_GATEWAY"]
    },
    {
        "index": 2,
        "name": "MATRIX_TREE_ALIGN",
        "label": "Node Tree Matrix Routing & Capability Resolution",
        "frequency": 528.0,
        "color": "#8B5CF6",  # Violet
        "organ_bias": ["ORGAN_05_DEV_MAPPER", "ORGAN_06_TARGETER"]
    },
    {
        "index": 3,
        "name": "SWARM_COGNITIVE",
        "label": "Multi-Agent Swarm Reasoning & Parallel Synthesis",
        "frequency": 639.0,
        "color": "#EC4899",  # Rose
        "organ_bias": ["ORGAN_03_SWARM_ORCHESTRATOR", "ORGAN_11_LAM_EVOLUTION"]
    },
    {
        "index": 4,
        "name": "LAO_POLICY_SEAL",
        "label": "Mirashani Zero-Trust & Sovereign Policy Attestation",
        "frequency": 741.0,
        "color": "#F59E0B",  # Amber Gold
        "organ_bias": ["ORGAN_17_LAM_CHARLIE", "ORGAN_35_MIRASHANI_PROTOCOL"]
    },
    {
        "index": 5,
        "name": "CROSS_NODE_MESH",
        "label": "5-Node Mesh Synchronization & Device Dispatch",
        "frequency": 528.0,
        "color": "#06B6D4",  # Cyan
        "organ_bias": ["ORGAN_20_WSL2_CORE", "ORGAN_21_WIN11_HOST", "ORGAN_23_EDGE_DROID"]
    },
    {
        "index": 6,
        "name": "EGRESS_STREAM",
        "label": "Outbound Stream Conveyor & Platform Actuation",
        "frequency": 432.0,
        "color": "#EF4444",  # Crimson
        "organ_bias": ["ORGAN_07_TASKER", "ORGAN_34_TELEGRAM_TRIANIUMA"]
    },
    {
        "index": 7,
        "name": "CHRONOLOG_LEDGER",
        "label": "Immutable Chronolog Topology Stamping",
        "frequency": 528.0,
        "color": "#6366F1",  # Indigo
        "organ_bias": ["ORGAN_32_CHRONOLOG_STORE", "ORGAN_33_AUTOPILOT_WATCHDOG"]
    }
]

SEASON_NAMES = ["Vernal (Spring)", "Estival (Summer)", "Autumnal (Autumn)", "Hibernal (Winter)"]
DAY_NAMES = ["Monday (Moon)", "Tuesday (Mars)", "Wednesday (Mercury)", "Thursday (Jupiter)", "Friday (Venus)", "Saturday (Saturn)", "Sunday (Sol)"]

class StateSpaceWheel:
    def __init__(self):
        self.sectors = SECTORS
        self.total_sectors = len(SECTORS)

    def calculate_chronos_coordinates(self, ts: float = None) -> Dict[str, Any]:
        """
        Calculates exact multi-tier temporal harmonics for:
        128 Years -> 4 Seasons -> 4 Weeks -> 7 Days -> 24 Hours -> 1-Min Rolls
        """
        if ts is None:
            ts = time.time()
        
        dt = datetime.fromtimestamp(ts, tz=timezone.utc)
        
        # 1. 128-Year Sovereign Era Coordinate (0 to 127)
        year_offset = dt.year - 2026
        era_year = year_offset % EPOCH_YEARS
        
        # 2. 4 Seasons Calculation
        month = dt.month
        day_of_month = dt.day
        if (month == 3 and day_of_month >= 20) or (month in [4, 5]) or (month == 6 and day_of_month < 21):
            season_idx = 0
        elif (month == 6 and day_of_month >= 21) or (month in [7, 8]) or (month == 9 and day_of_month < 22):
            season_idx = 1
        elif (month == 9 and day_of_month >= 22) or (month in [10, 11]) or (month == 12 and day_of_month < 21):
            season_idx = 2
        else:
            season_idx = 3
        
        # 3. 4-Week Cycle within current lunar/month block (0 to 3)
        week_of_cycle = ((dt.day - 1) // 7) % 4
        
        # 4. 7 Days of Week (0: Monday ... 6: Sunday)
        day_of_week = dt.weekday()
        
        # 5. 24 Hours & Minute of Day (0 to 1439)
        minute_of_day = dt.hour * 60 + dt.minute
        second_of_minute = dt.second
        
        # 6. Sector of the State Wheel (rotates smoothly every minute, 8 sectors)
        sector_idx = minute_of_day % self.total_sectors
        active_sector = self.sectors[sector_idx]
        
        # Continuous phase angle in radians [0, 2*pi)
        phase_angle = ((minute_of_day * 60 + second_of_minute) % 86400) / 86400.0 * 2.0 * math.pi
        
        # 128-year global discrete tick
        total_days_in_epoch = int((ts - EPOCH_START_TIMESTAMP) / 86400.0) if ts >= EPOCH_START_TIMESTAMP else 0
        discrete_minute_tick = int((ts - EPOCH_START_TIMESTAMP) / 60.0) if ts >= EPOCH_START_TIMESTAMP else 0

        return {
            "timestamp_utc": dt.isoformat(),
            "epoch_era": {
                "anchor_year": 2026,
                "total_cycle_years": EPOCH_YEARS,
                "current_era_year": era_year,
                "total_days_elapsed": total_days_in_epoch,
                "discrete_minute_tick": discrete_minute_tick
            },
            "season": {
                "index": season_idx,
                "name": SEASON_NAMES[season_idx],
                "quarter": f"Q{season_idx + 1}"
            },
            "week_cycle": {
                "index": week_of_cycle,
                "week_number": week_of_cycle + 1,
                "cadence": "4-Week Lunar Resonance"
            },
            "day": {
                "index": day_of_week,
                "name": DAY_NAMES[day_of_week],
                "iso_day": day_of_week + 1
            },
            "time": {
                "hour": dt.hour,
                "minute": dt.minute,
                "second": dt.second,
                "minute_of_day": minute_of_day
            },
            "wheel_state": {
                "active_sector_index": sector_idx,
                "sector_name": active_sector["name"],
                "label": active_sector["label"],
                "frequency_hz": active_sector["frequency"],
                "theme_color": active_sector["color"],
                "bias_organs": active_sector["organ_bias"],
                "phase_angle_rad": round(phase_angle, 4),
                "phase_angle_deg": round(math.degrees(phase_angle), 2)
            }
        }

if __name__ == "__main__":
    wheel = StateSpaceWheel()
    status = wheel.calculate_chronos_coordinates()
    import json
    print(json.dumps(status, indent=2))
