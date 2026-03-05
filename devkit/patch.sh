#!/usr/bin/env bash
set -euo pipefail

# DevKit patch helper.
#
# Usage:
#   cat change.patch | devkit/patch.sh
#
# Reads a unified diff from stdin, applies it via git in a reproducible way,
# and stages the result (canonical diff).

usage() {
  cat <<'USAGE'
DevKit patch helper.

Usage:
  cat change.patch | devkit/patch.sh
  devkit/patch.sh --file <path>
  devkit/patch.sh --file <path> --sha256 <64hex>

Reads a unified diff, applies it via git in a reproducible way,
and stages the result.

Options:
  -h, --help          Show this help and exit.
  --file <path>       Read patch from file instead of stdin.
  --sha256 <64hex>    Verify patch integrity before apply.
USAGE
}

PATCH_INPUT_FILE=""
EXPECTED_SHA256=""

emit_status() {
  local status="$1"
  local error_code="${2:-NONE}"
  echo "status=$status"
  echo "error_code=$error_code"
}

die_status() {
  local status="$1"
  local error_code="$2"
  local msg="$3"
  echo "[patch] ERROR: $msg" >&2
  emit_status "$status" "$error_code"
  exit 1
}

compute_sha256() {
  local path="$1"
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$path" | awk '{print $1}'
    return
  fi
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "$path" | awk '{print $1}'
    return
  fi
  return 127
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    -h|--help)
      usage
      exit 0
      ;;
    --file)
      shift
      PATCH_INPUT_FILE="${1:-}"
      if [ -z "$PATCH_INPUT_FILE" ]; then
        echo "ERROR: --file requires a path argument" >&2
        echo >&2
        usage >&2
        exit 2
      fi
      ;;
    --sha256)
      shift
      EXPECTED_SHA256="${1:-}"
      if [ -z "$EXPECTED_SHA256" ]; then
        echo "ERROR: --sha256 requires a hex digest argument" >&2
        echo >&2
        usage >&2
        exit 2
      fi
      ;;
    --)
      shift
      break
      ;;
    *)
      echo "ERROR: unknown argument: $1" >&2
      echo >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

if ! command -v git >/dev/null 2>&1; then
  echo "ERROR: git not found in PATH" >&2
  exit 2
fi

# Must run inside a git worktree.
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  die_status "precondition_failed" "PATCH_NOT_IN_GIT_WORKTREE" "not inside a git repository"
fi

# Rollback safety policy for Phase B: only apply on clean tree.
if ! git diff --quiet || ! git diff --cached --quiet; then
  die_status "precondition_failed" "PATCH_TREE_NOT_CLEAN" "working tree/index must be clean before patch apply"
fi

PATCH_FILE="$(mktemp)"
CHECK_STDERR="$(mktemp)"
APPLY_STDERR="$(mktemp)"
trap 'rm -f "$PATCH_FILE" "$CHECK_STDERR" "$APPLY_STDERR"' EXIT

if [ -n "$PATCH_INPUT_FILE" ]; then
  if [ ! -r "$PATCH_INPUT_FILE" ] || [ -d "$PATCH_INPUT_FILE" ]; then
    die_status "precondition_failed" "PATCH_INPUT_NOT_READABLE" "patch file not readable: $PATCH_INPUT_FILE"
  fi
  if [ ! -s "$PATCH_INPUT_FILE" ]; then
    die_status "precondition_failed" "PATCH_INPUT_EMPTY" "empty patch input"
  fi
  cat -- "$PATCH_INPUT_FILE" > "$PATCH_FILE"
else
  # Read patch from stdin.
  if [ -t 0 ]; then
    die_status "precondition_failed" "PATCH_INPUT_MISSING" "no patch provided on stdin"
  fi

  # Prime stdin: fail fast on empty non-tty stdin (e.g. </dev/null), while preserving full stream.
  if ! IFS= read -r -n 1 first_char; then
    die_status "precondition_failed" "PATCH_INPUT_EMPTY" "empty patch input"
  fi
  printf %s "$first_char" > "$PATCH_FILE"
  cat >> "$PATCH_FILE"

  if [ ! -s "$PATCH_FILE" ]; then
    die_status "precondition_failed" "PATCH_INPUT_EMPTY" "empty patch input"
  fi
fi

if [ -n "$EXPECTED_SHA256" ]; then
  if ! [[ "$EXPECTED_SHA256" =~ ^[a-f0-9]{64}$ ]]; then
    die_status "precondition_failed" "PATCH_SHA256_FORMAT_INVALID" "expected sha256 must be 64 lower-case hex chars"
  fi
  if ! actual_sha="$(compute_sha256 "$PATCH_FILE")"; then
    die_status "precondition_failed" "PATCH_SHA256_TOOL_UNAVAILABLE" "sha256 tool unavailable"
  fi
  if [ "$actual_sha" != "$EXPECTED_SHA256" ]; then
    emit_status "integrity_mismatch" "PATCH_SHA256_MISMATCH"
    echo "expected_sha256=$EXPECTED_SHA256"
    echo "actual_sha256=$actual_sha"
    exit 1
  fi
fi

# Conflict-safe precheck (rollback policy: do not mutate tree/index when precheck fails).
if ! git apply --check --3way "$PATCH_FILE" 2>"$CHECK_STDERR"; then
  echo "[patch] PRECHECK_FAILED" >&2
  cat "$CHECK_STDERR" >&2 || true
  emit_status "conflict_detected" "PATCH_CONFLICT_DETECTED"
  exit 1
fi

# Apply and stage. Use 3-way merge to reduce false failures.
if ! git apply --index --3way "$PATCH_FILE" 2>"$APPLY_STDERR"; then
  echo "[patch] APPLY_FAILED" >&2
  cat "$APPLY_STDERR" >&2 || true
  emit_status "apply_failed" "PATCH_APPLY_FAILED"
  echo "rollback_policy=precheck_only_no_mutation_guarantee"
  exit 1
fi

emit_status "success" "NONE"
echo "OK: patch applied and staged."
git --no-pager diff --cached --stat
