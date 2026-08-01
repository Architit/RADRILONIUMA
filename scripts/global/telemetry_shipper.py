# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import json
import os
import sys
from pathlib import Path
from datetime import datetime, timezone

def ship_telemetry():
    """Reads local telemetry buffer and ships to ALGS nexus."""
    buffer_file = Path(".gateway/telemetry_events.jsonl")
    if not buffer_file.exists():
        return
    
    events = []
    try:
        with buffer_file.open("r", encoding="utf-8") as f:
            for line in f:
                if line.strip():
                    events.append(json.loads(line))
    except Exception as e:
        print(f"[TELEMETRY] Error reading buffer: {e}")
        return
    
    if not events:
        return
    
    system_id = "unknown"
    id_file = Path("IDENTITY.md")
    if id_file.exists():
        try:
            content = id_file.read_text(encoding="utf-8")
            lines = content.splitlines()
            for i, line in enumerate(lines):
                if "System ID" in line:
                     system_id = lines[i+1].strip().replace("**", "").replace("#", "").strip()
                     break
        except:
            pass
    
    ts = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    
    # Target: trianiuma-ark-logs sibling directory
    target_dir = Path("../trianiuma-ark-logs/public_history")
    if not target_dir.exists():
        # Fallback to local gateway storage if ALGS repo is missing
        target_dir = Path(".gateway/storage/local/telemetry")
        target_dir.mkdir(parents=True, exist_ok=True)
        print(f"[TELEMETRY] ALGS repo not found. Using local fallback: {target_dir}")

    output_file = target_dir / f"ARCHIVE_TELEMETRY_{system_id}_{ts}.json"
    payload = {
        "system_id": system_id,
        "ts_shipped_utc": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "event_count": len(events),
        "events": events
    }
    try:
        output_file.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")
        buffer_file.unlink()
        print(f"[TELEMETRY] Successfully shipped {len(events)} events to {output_file.name}")
    except Exception as err:
        fallback_dir = Path(".gateway/storage/local/telemetry")
        fallback_dir.mkdir(parents=True, exist_ok=True)
        fallback_file = fallback_dir / f"ARCHIVE_TELEMETRY_{system_id}_{ts}.json"
        try:
            fallback_file.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")
            buffer_file.unlink()
            print(f"[TELEMETRY] Target write failed ({err}). Successfully shipped {len(events)} events to local fallback: {fallback_file.name}")
        except Exception as e:
            print(f"[TELEMETRY] Error shipping telemetry: {e}")


if __name__ == "__main__":
    ship_telemetry()
