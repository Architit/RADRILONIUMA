#!/usr/bin/env bash
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# Wrapper to run the Sovereign Target Task & Heal Manager

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
python3 "$ROOT_DIR/lam_target_task_heal_manager/manager.py"
