#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

export PYTEST_ADDOPTS="${PYTEST_ADDOPTS:--p no:cacheprovider}"

PYTEST_BIN=""
for candidate in \
  "$ROOT_DIR/.venv/bin/pytest" \
  "$ROOT_DIR/../.venv/bin/pytest" \
  "${ECO_PYTEST_BIN:-}"
do
  if [[ -n "$candidate" && -x "$candidate" ]]; then
    PYTEST_BIN="$candidate"
    break
  fi
done

if [[ -z "$PYTEST_BIN" ]] && command -v pytest >/dev/null 2>&1; then
  PYTEST_BIN="$(command -v pytest)"
fi

if [[ ! -x "$PYTEST_BIN" ]]; then
  echo "[test-entrypoint] pytest unavailable"
  exit 2
fi

run_pytest_allow_empty() {
  if "$PYTEST_BIN" "$@"; then
    return 0
  fi
  local rc=$?
  if [[ $rc -eq 5 ]]; then
    return 0
  fi
  return "$rc"
}

case "${1:---all}" in
  --all)
    "$PYTEST_BIN" -q tests
    ;;
  --integration)
    run_pytest_allow_empty -q tests -m "integration"
    ;;
  --unit-only)
    run_pytest_allow_empty -q tests -m "not integration"
    ;;
  --governance)
    "$PYTEST_BIN" -q tests -k governance
    ;;
  --preflight)
    "$PYTEST_BIN" -q tests -k preflight
    ;;
  --ci)
    "$PYTEST_BIN" -q tests --maxfail=1
    ;;
  *)
    echo "usage: $0 [--all|--unit-only|--integration|--governance|--preflight|--ci]"
    exit 2
    ;;
esac
