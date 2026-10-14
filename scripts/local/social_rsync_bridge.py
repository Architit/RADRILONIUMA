#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"
RADRILONIUMA SOCIAL RSYNC BRIDGE & ORCHESTRATOR
Channels: LinkedIn, Telegram, Meta (WhatsApp, Instagram, Facebook)
"

import os
import sys
import json
import argparse
import subprocess
from datetime import datetime, timezone
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parents[2]
SYNC_ROOT = ROOT_DIR / data / sync / social
MANIFEST_FILE = SYNC_ROOT / social_sync_manifest.json

CHANNELS = {
    linkedin: SYNC_ROOT / linkedin,
    telegram: SYNC_ROOT / telegram,
    whatsapp: SYNC_ROOT / meta / whatsapp,
    instagram: SYNC_ROOT / meta / instagram,
    facebook: SYNC_ROOT / meta / facebook,
}

def get_utc_now():
    return datetime.now(timezone.utc).isoformat()

def init_environment():
    "Создание директорий и манифеста синхронизации."
    SYNC_ROOT.mkdir(parents=True, exist_ok=True)
    for name, path in CHANNELS.items():
        path.mkdir(parents=True, exist_ok=True)
        readme = path / README.md
        if not readme.exists():
            readme.write_text(f#