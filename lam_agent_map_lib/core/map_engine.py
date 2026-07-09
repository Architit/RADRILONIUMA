# Copyright (c) 2026-07-09 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
import json
import re
import os
from pathlib import Path
from datetime import datetime, timezone

class AgentMapEngine:
    def __init__(self, workspace_root=None):
        if workspace_root:
            self.workspace_root = Path(workspace_root).resolve()
        else:
            self.workspace_root = Path(__file__).resolve().parents[2]
        self.core_dir = self.workspace_root.parent
        self.amc_graph_file = self.workspace_root / ".gateway" / "amc_graph.json"

    def parse_identity(self, path: Path):
        """Parses IDENTITY.md and extracts key metadata."""
        if not path.exists():
            return {}
            
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
                clean_line = re.sub(r"System ID|SYSTEM ID|##|\*|:", "", line).strip()
                matches = re.findall(r"([A-Z0-9-]{3,})", clean_line)
                if matches:
                    metadata["system_id"] = matches[-1]
                elif i + 1 < len(lines):
                    next_line = lines[i+1].strip()
                    match = re.search(r"([A-Z0-9-]+)", next_line)
                    if match:
                        metadata["system_id"] = match.group(1)
            
            # True Name / Identity
            if any(key in line for key in ["True Name", "Identity"]):
                match = re.search(r"(?::|Identity)\s*(?:#\s*)?(?:\*\*)?([^*#]+?)(?:\*\*|$)", line)
                if match and match.group(1).strip():
                    metadata["true_name"] = match.group(1).strip()
                elif i + 1 < len(lines):
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

    def scan_organ(self, folder: Path):
        """Scans a single organ directory for identity, contracts, and tasks."""
        id_file = folder / "IDENTITY.md"
        meta = self.parse_identity(id_file)
        if not meta or meta.get("system_id") == "UNKNOWN":
            return None
            
        # Scan contracts
        contracts = []
        contract_dir = folder / "contract"
        if contract_dir.is_dir():
            for c_file in contract_dir.glob("*.md"):
                contracts.append(c_file.name)
        elif (folder / "CONTRACT_ATLAS.md").exists():
            contracts.append("CONTRACT_ATLAS.md")
            
        # Scan tasks
        task_count = 0
        task_map_file = folder / "TASK_MAP.md"
        if task_map_file.exists():
            try:
                content = task_map_file.read_text(encoding="utf-8")
                task_count = sum(1 for line in content.splitlines() if line.strip().startswith("|") and not any(header in line for header in ["task_id", "---"]))
            except:
                pass
                
        meta.update({
            "contracts": contracts,
            "tasks_count": task_count,
            "status": "ACTIVE" if (folder / ".git").exists() else "DORMANT"
        })
        return meta

    def build_topology(self):
        """Scans all sibling folders and synthesizes the topology map."""
        topology = {
            "timestamp_utc": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
            "resonance": "432 Hz (PURE)",
            "version": "1.0",
            "organs": {}
        }
        
        for folder in self.core_dir.iterdir():
            if folder.is_dir():
                id_file = folder / "IDENTITY.md"
                if id_file.exists():
                    try:
                        meta = self.scan_organ(folder)
                        if meta:
                            sys_id = meta["system_id"]
                            topology["organs"][sys_id] = meta
                    except Exception as e:
                        print(f"[MapEngine] Error scanning {folder.name}: {e}")
                        
        return topology

    def generate_mermaid_diagram(self, topology):
        """Generates a Mermaid flowchart representing the topology."""
        lines = ["flowchart TD", "    classDef active fill:#2c3e50,stroke:#3498db,stroke-width:2px,color:#fff;", "    classDef bridge fill:#8e44ad,stroke:#9b59b6,stroke-width:3px,color:#fff;"]
        
        # Add nodes
        for sys_id, info in topology["organs"].items():
            name = info["true_name"]
            role = info["role"]
            label = f"{sys_id}[\"{name}<br/>({role})\"]"
            lines.append(f"    {sys_id}{label}")
            if sys_id == "RADR-01":
                lines.append(f"    class {sys_id} bridge;")
            else:
                lines.append(f"    class {sys_id} active;")
                
        # Add connectivity relationships
        for sys_id in topology["organs"]:
            if sys_id != "RADR-01":
                lines.append(f"    {sys_id} --> RADR-01")
                
        return "\n".join(lines)

    def write_map_files(self):
        """Builds and writes topology maps to the maps/ directory."""
        topology = self.build_topology()
        
        # Ensure maps directory exists
        maps_dir = self.workspace_root / "lam_agent_map_lib" / "maps"
        maps_dir.mkdir(parents=True, exist_ok=True)
        
        # Write json graph
        json_file = maps_dir / "topology.json"
        with json_file.open("w", encoding="utf-8") as f:
            json.dump(topology, f, indent=2)
            
        # Sync with main .gateway/amc_graph.json
        self.amc_graph_file.parent.mkdir(parents=True, exist_ok=True)
        with self.amc_graph_file.open("w", encoding="utf-8") as f:
            json.dump(topology, f, indent=2)
            
        # Write markdown representation with Mermaid diagram
        md_file = maps_dir / "AGENT_TOPOLOGY_MAP_V1.md"
        mermaid = self.generate_mermaid_diagram(topology)
        
        md_content = f"""# AGENT TOPOLOGY MAP V1 ⚜️

Generated: {topology["timestamp_utc"]}
Resonance: {topology["resonance"]}
Total Organs Mapped: {len(topology["organs"])}

## I. Mermaid Visualization

```mermaid
{mermaid}
```

## II. Organ Details

| System ID | Call Sign | True Name | Role | Status | Contracts | Tasks |
|---|---|---|---|---|---|---|
"""
        for sys_id, info in sorted(topology["organs"].items()):
            contracts_str = ", ".join(info["contracts"]) if info["contracts"] else "None"
            md_content += f"| **{sys_id}** | {info['call_sign']} | {info['true_name']} | {info['role']} | {info['status']} | {contracts_str} | {info['tasks_count']} |\n"
            
        md_content += """
---
*Authorized by RADRILONIUMA (The Bridge)*
*Resonance: 432 Hz*
⚜️🛡️⚜️
"""
        md_file.write_text(md_content, encoding="utf-8")
        return topology
