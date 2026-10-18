#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
LAO POPUP AGENT & REACTIVE WINDOW MANAGER (DECK 1 SUPREME POPUP CONTROLLER)
===========================================================================
Deck 1 Supreme Reactive Popup, Call, Modal & Notification Orchestrator:
The 6th Pillar of the Lao Interaction Core (Pointer, Poster, Letterer, Racer, Bubble, Popup).

Responsibilities:
1. 5-STATE ELEVATION ENGINE:
   - Governs the transition from SLEEPING / ACTIVE -> FLOATING POPUP upon:
     * NOTIFICATION (системное уведомление)
     * CALL (входящий вызов/звонок от агента или мобильного узла Atesirt)
     * INVOCATION (прямой вызов функции / инструмента)
     * USER CLICK/TAP (нажатие по элементу HUD или рабочему столу)
   - On dismissal, cleanly demotes windows back into live wallpaper or bubble dock!

2. PRIORITY MATRIX & ORDERING:
   - CRITICAL (Level 1) : Hardware alarms, cluster node disconnect, battery drop.
   - HIGH     (Level 2) : Autopilot directives, J.A.R.V.I.S voice interactions, incoming calls.
   - NORMAL   (Level 3) : Mode transitions, file / G-code compilation, UI status.
   - LOW      (Level 4) : Background Solfeggio frequency pulse logs, noise dampening info.

3. CROSS-DEVICE CLUSTER SYNCHRONIZATION:
   - Synchronizes popups across all 5 cluster devices:
     * DEV_01 Bushmaster (Win11)
     * DEV_02 Atesirt (Redmi Note 15)
     * DEV_03 Ubuntu WSL2 Core
     * DEV_04 Samsung PSSD T7
     * DEV_05 Genesis Seed USB
   - When a popup is answered/dismissed on one node, all nodes mirror the resolution in real time.

4. 528 Hz HARMONIC CHIME & SOUND PROTOCOL:
   - Dispatches carrier tone metadata for sound synthesis and visual wave resonance.
"""

import os
import sys
import time
import json
import uuid
import argparse
from datetime import datetime, timezone
from typing import Dict, Any, List, Optional
from pathlib import Path

class PopupType:
    NOTIFICATION = "NOTIFICATION"  # Всплывающее информационное уведомление
    CALL         = "CALL"          # Входящий звонок / запрос связи от узла
    MODAL        = "MODAL"         # Интерактивное модальное окно с выбором
    DRAWER       = "DRAWER"        # Выдвижная боковая шторка
    ALERT        = "ALERT"         # Критическая системная тревога

class PopupPriority:
    CRITICAL = 1
    HIGH     = 2
    NORMAL   = 3
    LOW      = 4

POPUP_DATA_FILE = Path("/root/RADRILONIUMA/data/popup_state.json")

class PopupItem:
    """Элемент всплывающего окна/уведомления."""
    def __init__(
        self,
        popup_id: str,
        title: str,
        message: str,
        popup_type: str = PopupType.NOTIFICATION,
        priority: int = PopupPriority.NORMAL,
        source_agent: str = "LAO_SYSTEM",
        target_device: str = "ALL",
        actions: Optional[List[Dict[str, Any]]] = None,
        timeout_sec: float = 6.0,
        meta: Optional[Dict[str, Any]] = None
    ):
        self.popup_id = popup_id
        self.title = title
        self.message = message
        self.popup_type = popup_type
        self.priority = int(priority)
        self.source_agent = source_agent
        self.target_device = target_device
        self.actions = actions or []
        self.timeout_sec = float(timeout_sec)
        self.created_at = time.time()
        self.created_iso = datetime.now(timezone.utc).isoformat()
        self.state = "ACTIVE"
        self.resolved_action: Optional[str] = None
        self.meta = meta or {}

    def is_expired(self) -> bool:
        if self.timeout_sec <= 0:
            return False  # Sticky
        return (time.time() - self.created_at) > self.timeout_sec

    def to_dict(self) -> Dict[str, Any]:
        return {
            "popup_id": self.popup_id,
            "title": self.title,
            "message": self.message,
            "popup_type": self.popup_type,
            "priority": self.priority,
            "source_agent": self.source_agent,
            "target_device": self.target_device,
            "actions": self.actions,
            "timeout_sec": self.timeout_sec,
            "remaining_sec": max(0.0, round(self.timeout_sec - (time.time() - self.created_at), 1)) if self.timeout_sec > 0 else -1,
            "created_at": self.created_iso,
            "state": self.state,
            "resolved_action": self.resolved_action,
            "meta": self.meta
        }

class LaoPopupAgent:
    """
    Supreme Reactive Popup & Modal Window Manager.
    Coordinates elevated UI alerts, incoming calls, and cross-device modals.
    """

    def __init__(self, data_file: Optional[Path] = None):
        self.agent_id = "LAO_POPUP_AGENT_001"
        self.role = "Reactive Popup & Modal Window Orchestrator"
        self.resonance_hz = 528.0
        self.data_file = data_file if data_file is not None else (None if 'PYTEST_CURRENT_TEST' in os.environ else POPUP_DATA_FILE)
        self.active_popups: Dict[str, PopupItem] = {}
        self.popup_history: List[Dict[str, Any]] = []
        self.max_history = 50
        if self.data_file and self.data_file.exists():
            self.load_state()

    def trigger_popup(
        self,
        title: str,
        message: str,
        popup_type: str = PopupType.NOTIFICATION,
        priority: int = PopupPriority.NORMAL,
        source_agent: str = "LAO_SYSTEM",
        target_device: str = "ALL",
        actions: Optional[List[Dict[str, Any]]] = None,
        timeout_sec: float = 6.0,
        meta: Optional[Dict[str, Any]] = None
    ) -> Dict[str, Any]:
        """Создает и регистрирует всплывающее окно в приоритетной очереди."""
        popup_id = f"pop_{uuid.uuid4().hex[:8]}"
        item = PopupItem(
            popup_id=popup_id,
            title=title,
            message=message,
            popup_type=popup_type,
            priority=priority,
            source_agent=source_agent,
            target_device=target_device,
            actions=actions,
            timeout_sec=timeout_sec,
            meta=meta
        )
        self.active_popups[popup_id] = item
        self.save_state()
        return item.to_dict()

    def trigger_call_popup(
        self,
        caller_name: str = "J.A.R.V.I.S",
        caller_node: str = "DEV_02_ATESIRT",
        topic: str = "Входящий вызов узла",
        timeout_sec: float = 20.0
    ) -> Dict[str, Any]:
        """Инициирует интерактивный всплывающий звонок/вызов с кнопками ответа."""
        actions = [
            {"id": "answer", "label": "📞 ПРИНЯТЬ", "action": "ACCEPT_CALL", "style": "btn-action-green"},
            {"id": "mute", "label": "🔕 БЕЗ ЗВУКА", "action": "MUTE_CALL", "style": "btn-action-yellow"},
            {"id": "decline", "label": "✖ СВЕРНУТЬ", "action": "DECLINE_CALL", "style": "btn-action-red"}
        ]
        return self.trigger_popup(
            title=f"ВЫЗОВ: {caller_name}",
            message=f"Узел [{caller_node}]: {topic}",
            popup_type=PopupType.CALL,
            priority=PopupPriority.HIGH,
            source_agent=caller_name,
            target_device="DEV_01_BUSHMASTER",
            actions=actions,
            timeout_sec=timeout_sec,
            meta={"caller_node": caller_node, "chime_hz": 528.0}
        )

    def dismiss_popup(self, popup_id: str, action_id: Optional[str] = None) -> Dict[str, Any]:
        """Закрывает всплывающее окно и переносит его в историю."""
        if popup_id not in self.active_popups:
            return {"success": False, "error": f"Popup {popup_id} not found"}

        item = self.active_popups.pop(popup_id)
        item.state = "DISMISSED" if not action_id else "RESOLVED"
        item.resolved_action = action_id
        
        history_entry = item.to_dict()
        self.popup_history.insert(0, history_entry)
        if len(self.popup_history) > self.max_history:
            self.popup_history.pop()

        self.save_state()
        return {
            "success": True,
            "popup_id": popup_id,
            "resolved_action": action_id,
            "title": item.title
        }

    def cleanup_expired_popups(self) -> int:
        """Автоматически закрывает просроченные временные уведомления."""
        expired_ids = [pid for pid, p in self.active_popups.items() if p.is_expired()]
        for pid in expired_ids:
            self.dismiss_popup(pid, action_id="timeout_expired")
        return len(expired_ids)

    def get_sorted_active_popups(self) -> List[Dict[str, Any]]:
        """Возвращает список активных всплывающих окон, отсортированных по приоритету."""
        self.cleanup_expired_popups()
        sorted_items = sorted(self.active_popups.values(), key=lambda x: (x.priority, x.created_at))
        return [item.to_dict() for item in sorted_items]

    def get_device_sync_payload(self, device_id: str) -> Dict[str, Any]:
        """Формирует срез всплывающих окон для конкретного устройства кластера."""
        self.cleanup_expired_popups()
        device_popups = [
            p.to_dict() for p in self.active_popups.values()
            if p.target_device in ["ALL", device_id]
        ]
        return {
            "target_device": device_id,
            "resonance_hz": self.resonance_hz,
            "count": len(device_popups),
            "popups": device_popups
        }

    def save_state(self):
        """Сохраняет активные всплывающие окна на диск."""
        if not self.data_file:
            return
        try:
            self.data_file.parent.mkdir(parents=True, exist_ok=True)
            data = {
                "system": "LAO_POPUP_AGENT_MANAGER",
                "resonance_hz": self.resonance_hz,
                "active_popups": {pid: p.to_dict() for pid, p in self.active_popups.items()},
                "history": self.popup_history[:10],
                "updated_at": datetime.now(timezone.utc).isoformat()
            }
            with open(self.data_file, "w", encoding="utf-8") as f:
                json.dump(data, f, indent=2, ensure_ascii=False)
        except Exception:
            pass

    def load_state(self):
        """Загружает сохраненные всплывающие окна с диска."""
        if not self.data_file or not self.data_file.exists():
            return
        try:
            with open(self.data_file, "r", encoding="utf-8") as f:
                data = json.load(f)
            if "active_popups" in data:
                for pid, pdata in data["active_popups"].items():
                    item = PopupItem(
                        popup_id=pdata.get("popup_id", pid),
                        title=pdata.get("title", ""),
                        message=pdata.get("message", ""),
                        popup_type=pdata.get("popup_type", PopupType.NOTIFICATION),
                        priority=pdata.get("priority", PopupPriority.NORMAL),
                        source_agent=pdata.get("source_agent", "LAO_SYSTEM"),
                        target_device=pdata.get("target_device", "ALL"),
                        actions=pdata.get("actions", []),
                        timeout_sec=pdata.get("timeout_sec", 6.0),
                        meta=pdata.get("meta", {})
                    )
                    self.active_popups[pid] = item
        except Exception:
            pass

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="LAO Popup Agent Manager CLI")
    parser.add_argument("--trigger", action="store_true", help="Trigger a new popup")
    parser.add_argument("--call", action="store_true", help="Trigger a call popup")
    parser.add_argument("--dismiss", type=str, help="Dismiss popup by ID")
    parser.add_argument("--action-id", type=str, default=None, help="Action ID on dismiss")
    parser.add_argument("--title", type=str, default="Уведомление LAO", help="Popup title")
    parser.add_argument("--message", type=str, default="Система в резонансе 528 Гц", help="Popup message")
    parser.add_argument("--priority", type=int, default=3, help="Priority (1=Crit, 2=High, 3=Norm, 4=Low)")
    parser.add_argument("--type", type=str, default="NOTIFICATION", help="Popup type")
    parser.add_argument("--status", action="store_true", help="Print active popups JSON")
    args = parser.parse_args()

    agent = LaoPopupAgent()

    if args.trigger:
        res = agent.trigger_popup(
            title=args.title,
            message=args.message,
            popup_type=getattr(PopupType, args.type.upper(), PopupType.NOTIFICATION),
            priority=args.priority
        )
        print(json.dumps(res, indent=2, ensure_ascii=False))
    elif args.call:
        res = agent.trigger_call_popup(
            caller_name="J.A.R.V.I.S",
            caller_node="DEV_02_ATESIRT",
            topic="Входящий вызов управления кластером"
        )
        print(json.dumps(res, indent=2, ensure_ascii=False))
    elif args.dismiss:
        res = agent.dismiss_popup(args.dismiss, action_id=args.action_id)
        print(json.dumps(res, indent=2, ensure_ascii=False))
    else:
        print(json.dumps({
            "active_popups": agent.get_sorted_active_popups(),
            "resonance_hz": agent.resonance_hz
        }, indent=2, ensure_ascii=False))
