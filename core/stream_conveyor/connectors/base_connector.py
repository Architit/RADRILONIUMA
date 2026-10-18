#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA STREAM CONNECTOR BASE
==================================
Base specification for all 33 pipeline adapters on the
Data Stream Processing Conveyor Bus ("шина-конвеер обработки потока данных").
"""

import time
import uuid
from typing import Dict, Any, Optional
from datetime import datetime, timezone

class BaseConnector:
    def __init__(self, name: str, category: str, protocol: str):
        self.name = name
        self.category = category
        self.protocol = protocol
        self.status = "ONLINE"
        self.packets_in = 0
        self.packets_out = 0
        self.last_packet_utc = None

    def create_stream_packet(self, payload: Dict[str, Any], event_type: str = "DATA_EVENT", target: Optional[str] = None) -> Dict[str, Any]:
        """Encapsulates raw payload into unified RADRILONIUMA conveyor stream packet."""
        now_utc = datetime.now(timezone.utc).isoformat()
        packet_id = f"pkt-{uuid.uuid4().hex[:12]}"
        
        self.packets_in += 1
        self.last_packet_utc = now_utc

        return {
            "packet_id": packet_id,
            "origin_connector": self.name,
            "category": self.category,
            "event_type": event_type,
            "target": target or "RADRILONIUMA_CORE_BUS",
            "timestamp_utc": now_utc,
            "payload": payload,
            "signer": "ARCHITIT_LAM_SIGNER",
            "pipeline_trace": [f"INGRESS::{self.name}::{now_utc}"]
        }

    def handle_egress(self, packet: Dict[str, Any]) -> Dict[str, Any]:
        """Dispatches an egress packet out through this connector."""
        self.packets_out += 1
        now_utc = datetime.now(timezone.utc).isoformat()
        packet.setdefault("pipeline_trace", []).append(f"EGRESS::{self.name}::{now_utc}")
        return {
            "status": "DELIVERED",
            "connector": self.name,
            "packet_id": packet.get("packet_id"),
            "delivered_at_utc": now_utc
        }

    def get_telemetry(self) -> Dict[str, Any]:
        return {
            "name": self.name,
            "category": self.category,
            "protocol": self.protocol,
            "status": self.status,
            "packets_in": self.packets_in,
            "packets_out": self.packets_out,
            "last_packet_utc": self.last_packet_utc
        }
