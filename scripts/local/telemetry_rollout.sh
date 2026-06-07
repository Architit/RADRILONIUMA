#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# Global rollout of Phase 10.2 Telemetry Deep Integration (Final Wave)

ACTIVE_REPOS=(
  "../Ayaearias-Triania"
  "../Larpat"
  "../Vilami"
  "../Croambeth"
  "../Taspit"
  "../Fomanor"
  "../Glokha"
  "../Jouna"
  "../Kitora"
  "../Luvia"
  "../Melia"
  "../Oxin"
  "../Pralia"
  "../Sataris"
  "../Vionori"
  "../Vrela"
  "../Zudory"
  "../Aristos"
  "../LAM-Codex_Agent"
  "../Roaudter-agent"
  "../LAM"
  "../ark"
  "../radriloniuma.ark"
  "../trianiuma.ark"
  "../Trianiuma"
  "../Trianiuma_MEM_CORE"
  "../Hrista"
  "../TRIANIUMA_DATA_BASE"
  "../trianiuma-ark-logs"
  "../Archivator_Agent"
  "../LAM_Test_Agent"
  "../System-"
  "../Operator_Agent"
  "../JARVIS"
  "../LAM_Communication_Agent"
)

for repo in "${ACTIVE_REPOS[@]}"; do
  if [ -d "$repo" ]; then
    echo ">>> Syncing Phase 10.2 Telemetry to $repo..."
    mkdir -p "$repo/devkit" "$repo/scripts/global" "$repo/scripts/local"
    cp devkit/patch.sh "$repo/devkit/patch.sh"
    cp scripts/global/telemetry_shipper.py "$repo/scripts/global/telemetry_shipper.py"
    cp scripts/local/push_telemetry.py "$repo/scripts/local/push_telemetry.py"
    
    # Commit and push in the target repo
    (
      cd "$repo" || exit
      if git status --short | grep -q "."; then
        git add devkit/patch.sh scripts/global/telemetry_shipper.py scripts/local/push_telemetry.py
        git commit -m "chore: Hardwire Phase 10.2 Telemetry Deep Integration ⚜️"
        git push origin master || git push origin main
      fi
    )
  fi
done
echo ">>> Final Rollout COMPLETE."
