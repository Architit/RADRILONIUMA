#!/usr/bin/env python3
"""
Circadian Sleep Schedule Calculation & Prediction Autopilot Engine V1
Calculates optimal daily sleep duration, recovery indices, and predicts rest windows.
"""

from datetime import datetime, timedelta, time, timezone
from typing import Dict, Any, List

class SleepScheduleEngine:
    def __init__(self, base_sleep_hours: float = 8.0, minimum_sleep_hours: float = 6.0):
        self.base_sleep_hours = base_sleep_hours
        self.minimum_sleep_hours = minimum_sleep_hours

    def calculate_required_sleep(self, cognitive_load_score: float, physical_fatigue_score: float) -> Dict[str, Any]:
        """
        Calculates recommended sleep hours based on cognitive load (0.0 - 1.0) and fatigue (0.0 - 1.0).
        """
        cog = max(0.0, min(1.0, cognitive_load_score))
        fat = max(0.0, min(1.0, physical_fatigue_score))
        
        # Calculate additional sleep needed for recovery
        extra_hours = (cog * 1.5) + (fat * 1.0)
        recommended_hours = round(self.base_sleep_hours + extra_hours, 2)
        
        recovery_index = round(100.0 - (cog * 40.0 + fat * 30.0), 1)
        
        return {
            "base_sleep_hours": self.base_sleep_hours,
            "cognitive_load_score": cog,
            "physical_fatigue_score": fat,
            "recommended_sleep_hours": recommended_hours,
            "recovery_index_percent": recovery_index,
            "timestamp_utc": datetime.now(timezone.utc).isoformat()
        }

    def predict_optimal_sleep_window(self, target_wake_time: str, recommended_hours: float) -> Dict[str, str]:
        """
        Predicts bedtime given target wake time HH:MM and recommended sleep duration.
        """
        wake_t = datetime.strptime(target_wake_time, "%H:%M").time()
        now_dt = datetime.combine(datetime.now(timezone.utc).date(), wake_t)
        
        bedtime_dt = now_dt - timedelta(hours=recommended_hours)
        bedtime_str = bedtime_dt.strftime("%H:%M")
        
        return {
            "target_wake_time": target_wake_time,
            "recommended_sleep_hours": f"{recommended_hours:.2f}",
            "predicted_bedtime": bedtime_str
        }

if __name__ == "__main__":
    engine = SleepScheduleEngine()
    result = engine.calculate_required_sleep(0.8, 0.5)
    print("Sleep Schedule Calculation:", result)
    window = engine.predict_optimal_sleep_window("07:00", result["recommended_sleep_hours"])
    print("Optimal Sleep Window:", window)
