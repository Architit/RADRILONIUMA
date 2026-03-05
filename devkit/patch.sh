#!/usr/bin/env bash
set -euo pipefail

# DevKit patch helper.
#
# Usage:
#   cat change.patch | devkit/patch.sh --sha256 <64hex> --task-id <id>
#
# Reads a unified diff from stdin/file, validates integrity, performs conflict-safe
# precheck, applies via git, and emits machine-readable status + trace chain.

usage() {
  cat <<'USAGE'
DevKit patch helper.

Usage:
  cat change.patch | devkit/patch.sh --sha256 <64hex> --task-id <id>
  devkit/patch.sh --file <path> --sha256 <64hex> --task-id <id> --spec-file <path>

Reads a unified diff, applies it via git in a reproducible way,
and stages the result.

Options:
  -h, --help           Show this help and exit.
  --file <path>        Read patch from file instead of stdin.
  --sha256 <64hex>     Expected SHA-256 for patch artifact (required).
  --task-id <id>       Task identifier for audit chain (required).
  --spec-file <path>   Task spec file for mandatory spec_hash in audit chain (required).
USAGE
}

PATCH_INPUT_FILE=""
EXPECTED_SHA256=""
TASK_ID=""
SPEC_FILE=""
SPEC_HASH=""
ARTIFACT_HASH="none"
COMMIT_REF="unknown"

emit_status() {
  local status="$1"
  local error_code="${2:-NONE}"
  echo "status=$status"
  echo "error_code=$error_code"
}

emit_trace() {
  local apply_result="$1"
  echo "trace: task_id=$TASK_ID spec_hash=$SPEC_HASH artifact_hash=$ARTIFACT_HASH apply_result=$apply_result commit_ref=$COMMIT_REF"
}

die_status() {
  local status="$1"
  local error_code="$2"
  local msg="$3"
  local apply_result="${4:-$status}"
  echo "[patch] ERROR: $msg" >&2
  emit_status "$status" "$error_code"
  emit_trace "$apply_result"
  exit 1
}

compute_sha256() {
  local path="$1"
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum -- "$path" | awk '{print $1}'
    return
  fi
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 -- "$path" | awk '{print $1}'
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
    --task-id)
      shift
      TASK_ID="${1:-}"
      if [ -z "$TASK_ID" ]; then
        echo "ERROR: --task-id requires a value" >&2
        echo >&2
        usage >&2
        exit 2
      fi
      ;;
    --spec-file)
      shift
      SPEC_FILE="${1:-}"
      if [ -z "$SPEC_FILE" ]; then
        echo "ERROR: --spec-file requires a path argument" >&2
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

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  die_status "precondition_failed" "PATCH_NOT_IN_GIT_WORKTREE" "not inside a git repository"
fi

COMMIT_REF="$(git rev-parse --short HEAD 2>/dev/null || echo unknown)"

if [ -z "$EXPECTED_SHA256" ]; then
  die_status "precondition_failed" "PATCH_SHA256_REQUIRED" "--sha256 is required"
fi
if ! [[ "$EXPECTED_SHA256" =~ ^[a-f0-9]{64}$ ]]; then
  die_status "precondition_failed" "PATCH_SHA256_FORMAT_INVALID" "expected sha256 must be 64 lower-case hex chars"
fi
if [ -z "$TASK_ID" ]; then
  die_status "precondition_failed" "PATCH_TASK_ID_REQUIRED" "--task-id is required"
fi
if [ -z "$SPEC_FILE" ]; then
  die_status "precondition_failed" "PATCH_SPEC_FILE_REQUIRED" "--spec-file is required"
fi

if [ ! -r "$SPEC_FILE" ] || [ -d "$SPEC_FILE" ]; then
  die_status "precondition_failed" "PATCH_SPEC_NOT_READABLE" "spec file not readable: $SPEC_FILE"
fi
if ! SPEC_HASH="$(compute_sha256 "$SPEC_FILE")"; then
  die_status "precondition_failed" "PATCH_SHA256_TOOL_UNAVAILABLE" "sha256 tool unavailable"
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
  if [ -t 0 ]; then
    die_status "precondition_failed" "PATCH_INPUT_MISSING" "no patch provided on stdin"
  fi

  if ! IFS= read -r -n 1 first_char; then
    die_status "precondition_failed" "PATCH_INPUT_EMPTY" "empty patch input"
  fi
  printf %s "$first_char" > "$PATCH_FILE"
  cat >> "$PATCH_FILE"

  if [ ! -s "$PATCH_FILE" ]; then
    die_status "precondition_failed" "PATCH_INPUT_EMPTY" "empty patch input"
  fi
fi

if ! ARTIFACT_HASH="$(compute_sha256 "$PATCH_FILE")"; then
  die_status "precondition_failed" "PATCH_SHA256_TOOL_UNAVAILABLE" "sha256 tool unavailable"
fi

if [ "$ARTIFACT_HASH" != "$EXPECTED_SHA256" ]; then
  emit_status "integrity_mismatch" "PATCH_SHA256_MISMATCH"
  echo "expected_sha256=$EXPECTED_SHA256"
  echo "actual_sha256=$ARTIFACT_HASH"
  emit_trace "integrity_mismatch"
  exit 1
fi

if ! git apply --check --3way "$PATCH_FILE" 2>"$CHECK_STDERR"; then
  echo "[patch] PRECHECK_FAILED" >&2
  cat "$CHECK_STDERR" >&2 || true
  emit_status "conflict_detected" "PATCH_CONFLICT_DETECTED"
  emit_trace "conflict_detected"
  exit 1
fi

if ! git apply --index --3way "$PATCH_FILE" 2>"$APPLY_STDERR"; then
  echo "[patch] APPLY_FAILED" >&2
  cat "$APPLY_STDERR" >&2 || true
  emit_status "apply_failed" "PATCH_APPLY_FAILED"
  emit_trace "apply_failed"
  echo "rollback_policy=precheck_only_no_mutation_guarantee"
  exit 1
fi

emit_status "success" "NONE"
emit_trace "success"
echo "OK: patch applied and staged."
git --no-pager diff --cached --stat
