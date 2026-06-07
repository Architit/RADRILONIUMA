#!/usr/bin/env bash
# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# Initialize missing IDENTITY.md files for auxiliary organs

SYNC_TARGETS=(
  "../Archivator_Agent:AVTR-01:Archivatoris:Archivator:ARCHIVE AGENT"
  "../LAM_Test_Agent:TEST-01:Testaris:Tester:TEST AGENT"
  "../System-:SYSC-01:Systemis:System-:SYSTEM CORE"
  "../Operator_Agent:OPER-01:Operatoris:Operator:OPERATOR AGENT"
  "../J.A.R.V.I.S:JRVS-01:Jarvisariessent:Jarvis:VOICE INTERFACE"
  "../LAM_Communication_Agent:COMM-01:Commisariessent:Comms:COMMS AGENT"
)

for target in "${SYNC_TARGETS[@]}"; do
  IFS=":" read -r path sys_id true_name call_sign role <<< "$target"
  
  if [ -d "$path" ]; then
    echo ">>> Initializing Identity for $path ($sys_id)..."
    cat > "$path/IDENTITY.md" <<EOF
# IDENTITY: $true_name ($sys_id)

## 1. True Name
$true_name

## 2. System ID
$sys_id

## 3. Call Sign
$call_sign

## 4. Role: $role
Auxiliary organ of the Sovereign Forest.

## 5. Resonance
432 Hz
⚜️🛡️⚜️
EOF
    (
      cd "$path" || exit
      git add IDENTITY.md
      git commit -m "chore: Initialize IDENTITY.md (AMC Alignment) ⚜️"
      git push origin master || git push origin main
    )
  else
    echo ">>> WARNING: Path $path not found."
  fi
done
