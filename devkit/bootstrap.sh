#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BASELINE="$REPO/devkit/preflight_baseline_commands_bash.txt"

if [[ -x "$REPO/devkit/shell_preflight.sh" && -f "$BASELINE" ]]; then
  if "$REPO/devkit/shell_preflight.sh" --shell bash --file "$BASELINE" >/dev/null; then
    echo "[devkit] shell preflight: OK"
  else
    echo "[devkit] shell preflight: FAIL" >&2
    if [[ "${LARPAT_GATEWAY_STRICT:-0}" == "1" ]]; then
      exit 1
    fi
  fi
fi

if [[ "${LARPAT_LOCAL_GATEWAY_PREFLIGHT:-1}" == "1" ]]; then
  if "$REPO/scripts/lam_gateway.sh" init >/dev/null; then
    echo "[devkit] local gateway init: OK"
  else
    echo "[devkit] local gateway init: FAIL" >&2
    if [[ "${LARPAT_GATEWAY_STRICT:-0}" == "1" ]]; then
      exit 1
    fi
  fi

  if "$REPO/scripts/lam_gateway.sh" health >/dev/null; then
    echo "[devkit] local gateway health: OK"
  else
    echo "[devkit] local gateway health: FAIL" >&2
    if [[ "${LARPAT_GATEWAY_STRICT:-0}" == "1" ]]; then
      exit 1
    fi
  fi

  if "$REPO/scripts/lam_gateway.sh" monitor --once --auto-switch >/dev/null; then
    echo "[devkit] local gateway monitor: OK"
  else
    echo "[devkit] local gateway monitor: FAIL" >&2
    if [[ "${LARPAT_GATEWAY_STRICT:-0}" == "1" ]]; then
      exit 1
    fi
  fi
fi

echo "[devkit] bootstrap complete"
