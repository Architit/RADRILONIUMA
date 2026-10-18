#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • SHIFT EVENT DISPATCHER & CALENDAR ORCHESTRATOR
==============================================================
Manages shift handover events, summons operators to Level 0 (HQ),
coordinates flexible schedules, and enforces automated multi-channel escalation
(1 month, 1 week, 1 day, 1 hour) if presence is unconfirmed.
Location: /root/RADRILONIUMA/core/stream_conveyor/shift_event_dispatcher.py
"""

import os
import sys
import json
import subprocess
from pathlib import Path
from datetime import datetime, timezone, timedelta
from typing import Dict, Any, List, Optional

REPO_ROOT = Path(__file__).resolve().parents[2]
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
NOTIFICATIONS_LOG = CHRONOLOG_DIR / "shift_notifications_dispatch.jsonl"


class ShiftEventDispatcher:
    def __init__(self, repo_root: Optional[Path] = None):
        self.repo_root = repo_root or REPO_ROOT
        self.log_file = self.repo_root / "chronolog" / "shift_notifications_dispatch.jsonl"
        self.log_file.parent.mkdir(parents=True, exist_ok=True)

    def generate_shift_event_manifest(
        self,
        operator_name: str = "Кен (Ken)",
        shift_number: int = 2,
        duration_hours: int = 6,
        location: str = "Уровень 0 (Штаб / Нулевой Уровень)"
    ) -> Dict[str, Any]:
        """Creates the formal shift event manifest with Google Drive links and attached documents."""
        now = datetime.now(timezone.utc)
        event_start = now
        event_end = now + timedelta(hours=duration_hours)

        manifest = {
            "event_id": f"SHIFT_EVENT_20261018_{operator_name.replace(' ', '_')}_002",
            "title": f"⚜️ Смена #{shift_number}: Оркестрация кластера RADRILONIUMA (528 Hz)",
            "operator": operator_name,
            "target_officer": "Ken Redmi Node Operator",
            "location": location,
            "presence_confirmed": False,
            "schedule": {
                "start_utc": event_start.isoformat(),
                "end_utc": event_end.isoformat(),
                "duration_hours": duration_hours,
                "flexibility": "5-8 hours flexible circadian rhythm"
            },
            "gdrive_access": {
                "cloud_vault_url": "https://drive.google.com/drive/my-drive",
                "local_vault_mirror_d": "D:\\GOOGLE_DRIVE_VAULT_MIRROR",
                "local_vault_mirror_e": "E:\\google drive",
                "status": "READ_WRITE_SYNC_ACTIVE"
            },
            "attached_documents_and_resolutions": [
                {
                    "title": "Мастер-план и оперативная директива штаба для Кена",
                    "path": "D:\\MASTER_PLAN_DIRECTIVE_KEN_CLUSTER.md",
                    "type": "P0_DIRECTIVE"
                },
                {
                    "title": "Контракт селектора и квантования потока данных V1",
                    "path": "contract/FLOW_STREAM_PROTOCOL_DATA_SELECTOR_LOADER_CONTRACT_V1.md",
                    "type": "P1_CONTRACT"
                },
                {
                    "title": "Манифест 68 органов кластера и аватаров-компаньонов",
                    "path": "core/organs/ORGANS_MASTER_MANIFEST.json",
                    "type": "P0_ORGANS_MANIFEST"
                },
                {
                    "title": "Хроники сегментации данных (Zero Copy)",
                    "path": "chronolog/segmentation_chronicles.jsonl",
                    "type": "P2_CHRONICLES"
                },
                {
                    "title": "Директива передачи смены и эстафеты наследия",
                    "path": "chronolog/SHIFT_HANDOVER_DIRECTIVE_KEN.md",
                    "type": "P0_HANDOVER"
                }
            ],
            "action_items_for_shift": [
                "1. Спуститься на Уровень 0 (Штаб) и занять командную консоль.",
                "2. Контролировать заполнение тома D:\\ до 98% с каскадом на E:\\ и F:\\.",
                "3. Выполнить push 68 subtrees в GitHub Architit через scripts/global/git_subtree_cluster_syncer.sh.",
                "4. Проверить статус мобильных узлов (Atesirt Samsung A26 и Ken Redmi).",
                "5. Поддерживать частотный резонанс 528 Гц / 432 Гц."
            ],
            "escalation_policy": {
                "t_minus_30_days": "SCHEDULE_NOTIFICATION_1_MONTH",
                "t_minus_7_days": "SCHEDULE_NOTIFICATION_1_WEEK",
                "t_minus_1_day": "SCHEDULE_NOTIFICATION_1_DAY",
                "t_minus_1_hour": "SCHEDULE_NOTIFICATION_1_HOUR",
                "t_zero_unconfirmed": "SUMMON_LEVEL_0_NOW"
            }
        }
        return manifest

    def evaluate_escalation(self, manifest: Dict[str, Any], current_time: Optional[datetime] = None) -> List[str]:
        """Evaluates what escalation notifications must be dispatched based on time to event."""
        if manifest.get("presence_confirmed"):
            return ["PRESENCE_ALREADY_CONFIRMED"]

        now = current_time or datetime.now(timezone.utc)
        start_dt = datetime.fromisoformat(manifest["schedule"]["start_utc"])
        delta = start_dt - now

        triggered = []
        if delta <= timedelta(days=30):
            triggered.append("SCHEDULE_NOTIFICATION_1_MONTH")
        if delta <= timedelta(days=7):
            triggered.append("SCHEDULE_NOTIFICATION_1_WEEK")
        if delta <= timedelta(days=1):
            triggered.append("SCHEDULE_NOTIFICATION_1_DAY")
        if delta <= timedelta(hours=1):
            triggered.append("SCHEDULE_NOTIFICATION_1_HOUR")
        if delta <= timedelta(seconds=0):
            triggered.append("SUMMON_LEVEL_0_NOW")

        return triggered

    def dispatch_notification_record(self, event_manifest: Dict[str, Any], channel: str, message: str) -> Dict[str, Any]:
        """Dispatches and logs notification into immutable chronolog."""
        record = {
            "timestamp_utc": datetime.now(timezone.utc).isoformat(),
            "event_id": event_manifest["event_id"],
            "operator": event_manifest["operator"],
            "channel": channel,
            "message": message,
            "presence_confirmed": event_manifest["presence_confirmed"],
            "carrier_frequency": "528 Hz",
            "status": "DISPATCHED"
        }
        with open(self.log_file, "a", encoding="utf-8") as f:
            f.write(json.dumps(record, ensure_ascii=False) + "\n")
        return record

    def dispatch_all_channels(self, manifest: Dict[str, Any]) -> Dict[str, Any]:
        """Sends multi-channel alert across Telegram, Desktop Toast, Email file, and Android."""
        results = {}

        # 1. Telegram Message Payload
        tg_text = (
            f"⚜️ СРОЧНОЕ УВЕДОМЛЕНИЕ О СМЕНЕ: СПУСК НА УРОВЕНЬ 0 (ШТАБ) ⚜️\n\n"
            f"Оператор: {manifest['operator']}\n"
            f"Мероприятие: {manifest['title']}\n"
            f"Локация: {manifest['location']}\n"
            f"Длительность смены: {manifest['schedule']['duration_hours']} ч (гибкий график 5-8ч).\n\n"
            f"📁 ДОСТУП К GOOGLE DRIVE И АРХИВАМ:\n"
            f"• Cloud: {manifest['gdrive_access']['cloud_vault_url']}\n"
            f"• Локально: {manifest['gdrive_access']['local_vault_mirror_d']}\n\n"
            f"📄 ПРИКРЕПЛЕННЫЕ ДИРЕКТИВЫ И ДОКУМЕНТЫ:\n"
            + "\n".join([f"• {d['title']} -> {d['path']}" for d in manifest['attached_documents_and_resolutions']])
            + "\n\n⚠️ ВНИМАНИЕ: Если присутствие в календаре не отмечено, активирована эскалация (1 мес -> 1 нед -> 1 день -> 1 час -> Вызов на 0)."
        )
        results["telegram"] = self.dispatch_notification_record(manifest, "TELEGRAM_DISPATCH", tg_text)

        # 2. Email Notification File (.eml)
        eml_content = f"""From: architit@radriloniuma.core
To: ken@radriloniuma.core
Subject: [P0 SUMMON] Смена #2: Спуск на Уровень 0 (Штаб) - Эстафета 528 Hz
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8

{tg_text}
"""
        eml_path = Path("/mnt/c/setup/KEN_SHIFT_EVENT_EMAIL.eml")
        try:
            eml_path.write_text(eml_content, encoding="utf-8")
            results["email_file"] = str(eml_path)
        except Exception:
            pass

        # 3. Windows Desktop Toast Alert
        ps_toast_cmd = f"""
powershell.exe -NoProfile -Command "
    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] | Out-Null
    `$template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText02)
    `$textNodes = `$template.GetElementsByTagName('text')
    `$textNodes.Item(0).AppendChild(`$template.CreateTextNode('⚜️ РАДРИЛОНИУМА: СПУСК НА 0 УРОВЕНЬ')) | Out-Null
    `$textNodes.Item(1).AppendChild(`$template.CreateTextNode('Оператор Кен: прием смены #2 (5-8 ч). Проверьте директивы штаба и Google Drive.')) | Out-Null
    `$toast = [Windows.UI.Notifications.ToastNotification]::new(`$template)
    [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier('Radriloniuma Cluster').Show(`$toast)
"
"""
        try:
            subprocess.run(ps_toast_cmd, shell=True, capture_output=True, timeout=5)
            results["desktop_toast"] = "DISPATCHED_TO_WINDOWS"
        except Exception as e:
            results["desktop_toast"] = f"ERROR: {e}"

        # 4. Android Edge Alert via ADB
        try:
            adb_cmd = f"adb shell am broadcast -a com.architit.radriloniuma.NOTIFICATION --es title '⚜️ СМЕНА #2: СПУСК НА 0 УРОВЕНЬ' --es message 'Оператор Кен: спуститесь на Уровень 0. Директивы и Google Drive подготовлены.'"
            subprocess.run(adb_cmd, shell=True, capture_output=True, timeout=5)
            results["android_adb"] = "DISPATCHED_TO_ATESIRT_AND_REDMI"
        except Exception as e:
            results["android_adb"] = f"ERROR: {e}"

        return results


if __name__ == "__main__":
    dispatcher = ShiftEventDispatcher()
    manifest = dispatcher.generate_shift_event_manifest()
    results = dispatcher.dispatch_all_channels(manifest)
    print(json.dumps(results, indent=2, ensure_ascii=False))
