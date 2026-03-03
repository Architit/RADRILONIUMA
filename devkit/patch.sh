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

Reads a unified diff, applies it via git in a reproducible way,
and stages the result.

Options:
  -h, --help          Show this help and exit.
  --file <path>       Read patch from file instead of stdin.
USAGE
}

PATCH_INPUT_FILE=""

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
  echo "ERROR: not inside a git repository" >&2
  exit 2
fi

PATCH_FILE="$(mktemp)"
trap 'rm -f "$PATCH_FILE"' EXIT

if [ -n "$PATCH_INPUT_FILE" ]; then
  if [ ! -r "$PATCH_INPUT_FILE" ] || [ -d "$PATCH_INPUT_FILE" ]; then
    echo "ERROR: patch file not readable: $PATCH_INPUT_FILE" >&2
    exit 2
  fi
  if [ ! -s "$PATCH_INPUT_FILE" ]; then
    echo "ERROR: empty patch input" >&2
    exit 2
  fi
  cat -- "$PATCH_INPUT_FILE" > "$PATCH_FILE"
else
  # Read patch from stdin.
  if [ -t 0 ]; then
    echo "ERROR: no patch provided on stdin (pipe a .patch into devkit/patch.sh)" >&2
    echo >&2
    usage >&2
    exit 2
  fi

  # Prime stdin: fail fast on empty non-tty stdin (e.g. </dev/null), while preserving full stream.
  if ! IFS= read -r -n 1 first_char; then
    echo "ERROR: empty patch input" >&2
    exit 2
  fi
  printf %s "$first_char" > "$PATCH_FILE"
  cat >> "$PATCH_FILE"

  if [ ! -s "$PATCH_FILE" ]; then
    echo "ERROR: empty patch input" >&2
    exit 2
  fi
fi

# Apply and stage. Use 3-way merge to reduce false failures but still fail on conflicts.
git apply --index --3way "$PATCH_FILE"

echo "OK: patch applied and staged."
git --no-pager diff --cached --stat
