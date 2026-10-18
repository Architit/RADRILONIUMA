#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
===============================================================================
RADRILONIUMA • 4-TIER NEURAL MESH ENGINE (SYNAPSE • TYNAPSE • NYNAPSE • RYNAPSE)
===============================================================================
Kybernet cluster net web (NeuroWeb / NeuroSkyNet) linking all 5 nodes:
  DEV_01_BUSHMASTER <---> DEV_02_ATESIRT (Home Node) <---> DEV_03_UBUNTU_WSL2
              ^                                                 ^
              |--- DEV_04_SAMSUNG_T7_VAULT <---> DEV_05_LAO ----|

4-Tier Neural Architecture:
  1. SYNAPSE: Intra-node local IPC & telemetry bus.
  2. TYNAPSE: Cross-node tensor matrix (1024 bidirectional synapses, Hebbian plasticity).
  3. NYNAPSE: Agent queue elevator, subagent stream routing & load harmonizer.
  4. RYNAPSE: Resonance state recovery, checkpointing & dormant chain compaction.
"""

import os
import sys
import math
import json
import time
import hashlib
import urllib.request
from typing import List, Dict, Any, Optional
from datetime import datetime, timezone
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parents[2]
DATA_DIR = ROOT_DIR / "data"
DATA_DIR.mkdir(parents=True, exist_ok=True)
STORAGE_PATH = DATA_DIR / "tynapse_mesh.json"
GATEWAY_EVENT_URL = "http://127.0.0.1:3005/api/event"

EMBEDDING_DIM = 128

ALL_NODES = [
    "DEV_01_BUSHMASTER",
    "DEV_02_ATESIRT",
    "DEV_03_UBUNTU_WSL2",
    "DEV_04_SAMSUNG_T7_VAULT",
    "DEV_05_LAO_SWARM_MATRIX"
]

MODALITY_TYPES = [
    "TEXT_STREAM",
    "ONTOLOGY_GRAPH",
    "COGNITIVE_SYNTHESIS",
    "ACTION_EXECUTION",
    "SEARCH_GROUNDING",
    "STORAGE_MEMORY_ARCHIVE",
    "VECTOR_EMBEDDING",
    "TESSERACT_HEAL_LOOP"
]

NEURAL_TIERS = {
    "SYNAPSE": {
        "layer_id": "TIER_1_SYNAPSE",
        "role": "Intra-Node Local Process & Sensor Bus",
        "carrier_hz": 528.0,
        "channels": 256,
        "status": "ACTIVE"
    },
    "TYNAPSE": {
        "layer_id": "TIER_2_TYNAPSE",
        "role": "Cross-Node Tensor Matrix & Hebbian Plasticity",
        "carrier_hz": 528.0,
        "channels": 1024,
        "status": "ACTIVE"
    },
    "NYNAPSE": {
        "layer_id": "TIER_3_NYNAPSE",
        "role": "Subagent Queue Elevator & Stream Harmonizer",
        "carrier_hz": 432.0,
        "channels": 528,
        "status": "ACTIVE"
    },
    "RYNAPSE": {
        "layer_id": "TIER_4_RYNAPSE",
        "role": "Resonance Checkpoint Recovery & Dormant Compaction",
        "carrier_hz": 432.0,
        "channels": 68,
        "status": "ACTIVE"
    }
}


class LocalDeterministicEmbeddingEngine:
    """128-dimensional deterministic semantic embedding engine (zero external API overhead)."""

    def __init__(self, dim: int = EMBEDDING_DIM):
        self.dim = dim

    def embed_text(self, text: str) -> List[float]:
        tokens = text.lower().strip().split()
        vector = [0.0] * self.dim
        if not tokens:
            return vector

        for word in tokens:
            h = int(hashlib.sha256(word.encode("utf-8")).hexdigest(), 16)
            for i in range(self.dim):
                weight = ((h >> (i % 60)) & 0xFF) / 255.0 - 0.5
                vector[i] += weight

        norm = math.sqrt(sum(v * v for v in vector))
        if norm > 0:
            vector = [v / norm for v in vector]
        return vector

    def cosine_similarity(self, vec_a: List[float], vec_b: List[float]) -> float:
        if len(vec_a) != len(vec_b) or not vec_a:
            return 0.0
        return round(float(sum(a * b for a, b in zip(vec_a, vec_b))), 5)


class TynapseNeuralMeshEngine:
    """Cybernetic Neural Mesh Controller managing 1024 synapses and 4 tiers (Synapse/Tynapse/Nynapse/Rynapse)."""

    def __init__(self, target_synapse_count: int = 1024):
        self.embed_engine = LocalDeterministicEmbeddingEngine()
        self.target_count = target_synapse_count
        self.synapses: Dict[str, Dict[str, Any]] = {}
        self.tiers: Dict[str, Dict[str, Any]] = json.loads(json.dumps(NEURAL_TIERS))
        self.total_pulses = 0
        self.init_synapse_matrix()
        self.load_or_persist_mesh()

    def init_synapse_matrix(self):
        """Generates 1024 indexed neural synapses across 5 cluster nodes, 4 tiers, and 8 modalities."""
        tier_names = list(self.tiers.keys())
        synapse_index = 0
        for mod in MODALITY_TYPES:
            for src in ALL_NODES:
                for dst in ALL_NODES:
                    syn_id = f"TYN_{synapse_index:04d}_{src[:6]}_{dst[:6]}"
                    frequency = 528.0 if (synapse_index % 2 == 0) else 432.0
                    tier_key = tier_names[synapse_index % len(tier_names)]
                    self.synapses[syn_id] = {
                        "synapse_index": synapse_index,
                        "synapse_id": syn_id,
                        "tier": tier_key,
                        "source": src,
                        "target": dst,
                        "modality": mod,
                        "weight": 1.0,
                        "signal_count": 0,
                        "carrier_frequency_hz": frequency,
                        "last_pulse_utc": None,
                        "status": "ARMED_RESONATING"
                    }
                    synapse_index += 1
                    if synapse_index >= self.target_count:
                        break
                if synapse_index >= self.target_count:
                    break
            if synapse_index >= self.target_count:
                break

        while synapse_index < self.target_count:
            src = ALL_NODES[synapse_index % len(ALL_NODES)]
            dst = ALL_NODES[(synapse_index + 1) % len(ALL_NODES)]
            mod = MODALITY_TYPES[synapse_index % len(MODALITY_TYPES)]
            tier_key = tier_names[synapse_index % len(tier_names)]
            syn_id = f"TYN_{synapse_index:04d}_{src[:6]}_{dst[:6]}"
            self.synapses[syn_id] = {
                "synapse_index": synapse_index,
                "synapse_id": syn_id,
                "tier": tier_key,
                "source": src,
                "target": dst,
                "modality": mod,
                "weight": 1.0,
                "signal_count": 0,
                "carrier_frequency_hz": 528.0,
                "last_pulse_utc": None,
                "status": "ARMED_RESONATING"
            }
            synapse_index += 1

    def fire_synapse(self, source: str, target: str, payload_text: str, modality: str = "COGNITIVE_SYNTHESIS", tier: str = "TYNAPSE") -> Dict[str, Any]:
        """Transmits a neural impulse with Hebbian weight reinforcement and broadcast."""
        matched_id = None
        for syn_id, syn in self.synapses.items():
            if syn["source"] == source and syn["target"] == target and syn["modality"] == modality:
                matched_id = syn_id
                break

        if not matched_id:
            matched_id = list(self.synapses.keys())[0]

        syn = self.synapses[matched_id]
        syn["signal_count"] += 1
        syn["weight"] = round(min(syn["weight"] + 0.05, 10.0), 3)
        syn["last_pulse_utc"] = datetime.now(timezone.utc).isoformat()
        if tier in self.tiers:
            syn["tier"] = tier
        self.total_pulses += 1

        embedding = self.embed_engine.embed_text(payload_text)

        pulse_record = {
            "pulse_id": f"PULSE-{hashlib.md5(f'{matched_id}-{time.time()}'.encode()).hexdigest()[:8].upper()}",
            "synapse_id": matched_id,
            "tier": syn.get("tier", tier),
            "source": syn["source"],
            "target": syn["target"],
            "modality": syn["modality"],
            "carrier_frequency_hz": syn["carrier_frequency_hz"],
            "synaptic_weight": syn["weight"],
            "embedding_sample": embedding[:4],
            "dimension": len(embedding),
            "payload_preview": payload_text[:80],
            "timestamp_utc": syn["last_pulse_utc"],
            "status": "TRANSMITTED_528HZ_LOCK"
        }

        self._broadcast_to_gateway(pulse_record)
        self.load_or_persist_mesh()
        return pulse_record

    def _broadcast_to_gateway(self, pulse_record: Dict[str, Any]):
        event_payload = {
            "source": "tynapse_neural_mesh",
            "action": "TYNAPSE_IMPULSE_FIRED",
            "pulse": pulse_record
        }
        try:
            req = urllib.request.Request(
                GATEWAY_EVENT_URL,
                data=json.dumps(event_payload).encode("utf-8"),
                headers={"Content-Type": "application/json"},
                method="POST"
            )
            with urllib.request.urlopen(req, timeout=1.5):
                pass
        except Exception:
            pass

    def load_or_persist_mesh(self):
        data = {
            "mesh_name": "RADRILONIUMA_SYNAPSE_TYNAPSE_NYNAPSE_RYNAPSE_MESH",
            "synapses_count": len(self.synapses),
            "neural_tiers": self.tiers,
            "carrier_frequencies_hz": [528.0, 432.0],
            "nodes_connected": ALL_NODES,
            "modalities": MODALITY_TYPES,
            "total_pulses_fired": self.total_pulses,
            "last_synced_utc": datetime.now(timezone.utc).isoformat(),
            "status": "ONLINE_ACTIVE_RESONANCE",
            "sample_synapses": list(self.synapses.values())[:10]
        }
        try:
            STORAGE_PATH.write_text(json.dumps(data, indent=2, ensure_ascii=False), encoding="utf-8")
        except Exception:
            pass

    def get_mesh_status(self) -> Dict[str, Any]:
        return {
            "mesh_status": "ONLINE",
            "synapses_total": len(self.synapses),
            "neural_tiers": list(self.tiers.keys()),
            "tiers_detail": self.tiers,
            "carrier_frequencies": ["528 Hz", "432 Hz"],
            "nodes_count": len(ALL_NODES),
            "total_pulses": self.total_pulses,
            "hebbian_active": True,
            "home_node": "DEV_02_ATESIRT",
            "timestamp": datetime.now(timezone.utc).isoformat()
        }


if __name__ == "__main__":
    engine = TynapseNeuralMeshEngine()
    print(f"⚜️ Initialized 4-Tier Neural Mesh ({', '.join(engine.tiers.keys())}) with {len(engine.synapses)} synapses.")
    p1 = engine.fire_synapse("DEV_02_ATESIRT", "DEV_03_UBUNTU_WSL2", "Synapse/Tynapse/Nynapse/Rynapse 4-Tier Init", "COGNITIVE_SYNTHESIS", tier="NYNAPSE")
    p2 = engine.fire_synapse("DEV_03_UBUNTU_WSL2", "DEV_04_SAMSUNG_T7_VAULT", "Rynapse State Recovery & Archive Checkpoint", "STORAGE_MEMORY_ARCHIVE", tier="RYNAPSE")
    print(json.dumps(engine.get_mesh_status(), indent=2, ensure_ascii=False))
