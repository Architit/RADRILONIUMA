# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import json
import re
from pathlib import Path
from datetime import datetime, timezone

# Path Configuration
BASE_DIR = Path(__file__).resolve().parents[2]
CORE_DIR = BASE_DIR.parent
AMC_GRAPH_FILE = BASE_DIR / ".gateway" / "amc_graph.json"

def parse_identity(path: Path):
    """Parses IDENTITY.md and extracts key metadata using line-by-line scan."""
    lines = path.read_text(encoding="utf-8").splitlines()
    
    metadata = {
        "system_id": "UNKNOWN",
        "true_name": "UNKNOWN",
        "call_sign": "UNKNOWN",
        "role": "UNKNOWN",
        "path": str(path.parent.resolve())
    }
    
    for i, line in enumerate(lines):
        line = line.strip()
        # System ID
        if "System ID" in line or "SYSTEM ID" in line:
            # Check current line first
            clean_line = re.sub(r"System ID|SYSTEM ID|##|\*|:", "", line).strip()
            matches = re.findall(r"([A-Z0-9-]{3,})", clean_line)
            if matches:
                metadata["system_id"] = matches[-1]
            elif i + 1 < len(lines):
                # Check next line
                next_line = lines[i+1].strip()
                match = re.search(r"([A-Z0-9-]+)", next_line)
                if match:
                    metadata["system_id"] = match.group(1)
        
        # True Name / Identity
        if any(key in line for key in ["True Name", "Identity"]):
            # Check current line
            match = re.search(r"(?::|Identity)\s*(?:#\s*)?(?:\*\*)?([^*#]+?)(?:\*\*|$)", line)
            if match and match.group(1).strip():
                metadata["true_name"] = match.group(1).strip()
            elif i + 1 < len(lines):
                # Check next line
                next_line = lines[i+1].strip()
                metadata["true_name"] = next_line.strip("#* ")

        # Call Sign / Title
        if any(key in line for key in ["Call Sign", "Title"]):
            match = re.search(r"(?::|Title)\s*(?:#\s*)?(?:\*\*)?([^*#]+?)(?:\*\*|$)", line)
            if match and match.group(1).strip():
                metadata["call_sign"] = match.group(1).strip()
            elif i + 1 < len(lines):
                next_line = lines[i+1].strip()
                metadata["call_sign"] = next_line.strip("#* ")
                
        # Role / Type
        if any(key in line for key in ["Role", "Type"]):
            match = re.search(r"(?::|Type)\s*(?:#\s*)?(?:\*\*)?([^*#]+?)(?:\*\*|$)", line)
            if match and match.group(1).strip():
                metadata["role"] = match.group(1).strip()
            elif i + 1 < len(lines):
                next_line = lines[i+1].strip()
                metadata["role"] = next_line.strip("#* ")

    return metadata

def build_graph():
    """Scans all sibling directories and builds the AMC Knowledge Graph."""
    print(">>> [AMC] Initiating Semantic Scan...")
    graph = {
        "ts_utc": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "version": "1.0",
        "organs": {}
    }
    
    # Scan CORE_DIR for all folders
    for folder in CORE_DIR.iterdir():
        if folder.is_dir():
            id_file = folder / "IDENTITY.md"
            if id_file.exists():
                try:
                    meta = parse_identity(id_file)
                    sys_id = meta["system_id"]
                    if sys_id != "UNKNOWN":
                        graph["organs"][sys_id] = meta
                        print(f"[AMC] Mapped: {sys_id} -> {folder.name}")
                    else:
                        print(f"[AMC] WARNING: Could not extract System ID from {folder.name}")
                except Exception as e:
                    print(f"[AMC] Failed to parse {folder.name}: {e}")
                    
    # Save the graph
    AMC_GRAPH_FILE.parent.mkdir(parents=True, exist_ok=True)
    with AMC_GRAPH_FILE.open("w", encoding="utf-8") as f:
        json.dump(graph, f, indent=2)
    
    print(f">>> [AMC] Scan COMPLETE. Mapped {len(graph['organs'])} organs.")
    return graph

def amc_query(system_id: str):
    """Resolves a System ID to its metadata."""
    if not AMC_GRAPH_FILE.exists():
        build_graph()
    
    with AMC_GRAPH_FILE.open("r", encoding="utf-8") as f:
        graph = json.load(f)
    
    return graph["organs"].get(system_id)

if __name__ == "__main__":
    build_graph()
