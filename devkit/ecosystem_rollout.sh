#!/usr/bin/env bash
set -euo pipefail

# Mass rollout helper for ecosystem repositories listed in TOPOLOGY_MAP.md.
#
# Default behavior:
# - sync canonical files from this repo to active targets
# - run preflight smoke check on each target
#
# Optional behavior:
# - stage, commit, and push changes in each target repo

usage() {
  cat <<'USAGE'
Usage:
  scripts/ecosystem_rollout.sh [options]

Options:
  --dry-run                 Print planned actions only.
  --no-sync                 Skip file synchronization.
  --no-smoke                Skip preflight smoke check.
  --commit                  Create commits in target repos when there are changes.
  --push                    Push target repo commits (implies --commit).
  --commit-message <msg>    Commit message (default: chore: sync Nexus DevKit and Gemini policy).
  --topology <path>         Topology file path (default: ./TOPOLOGY_MAP.md).
  --only <name1,name2,...>  Restrict to repo directory names (example: Larpat,Pralia).
  -h, --help                Show this help.

Examples:
  scripts/ecosystem_rollout.sh
  scripts/ecosystem_rollout.sh --dry-run
  scripts/ecosystem_rollout.sh --commit --push
  scripts/ecosystem_rollout.sh --only Larpat,Pralia --commit
USAGE
}

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TOPOLOGY_PATH="$ROOT_DIR/TOPOLOGY_MAP.md"
DRY_RUN=0
DO_SYNC=1
DO_SMOKE=1
DO_COMMIT=0
DO_PUSH=0
COMMIT_MSG="chore: sync Nexus DevKit and Gemini policy"
ONLY_FILTER=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --dry-run)
      DRY_RUN=1
      ;;
    --no-sync)
      DO_SYNC=0
      ;;
    --no-smoke)
      DO_SMOKE=0
      ;;
    --commit)
      DO_COMMIT=1
      ;;
    --push)
      DO_PUSH=1
      DO_COMMIT=1
      ;;
    --commit-message)
      shift
      COMMIT_MSG="${1:-}"
      if [ -z "$COMMIT_MSG" ]; then
        echo "ERROR: --commit-message requires a value" >&2
        exit 2
      fi
      ;;
    --topology)
      shift
      TOPOLOGY_PATH="${1:-}"
      if [ -z "$TOPOLOGY_PATH" ]; then
        echo "ERROR: --topology requires a value" >&2
        exit 2
      fi
      ;;
    --only)
      shift
      ONLY_FILTER="${1:-}"
      if [ -z "$ONLY_FILTER" ]; then
        echo "ERROR: --only requires a comma-separated value" >&2
        exit 2
      fi
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "ERROR: unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

if [ ! -f "$TOPOLOGY_PATH" ]; then
  echo "ERROR: topology file not found: $TOPOLOGY_PATH" >&2
  exit 2
fi

src_gemini="$ROOT_DIR/.gemini/GEMINI.md"
src_preflight_sh="$ROOT_DIR/devkit/shell_preflight.sh"
src_preflight_py="$ROOT_DIR/devkit/shell_preflight_check.py"
src_base_bash="$ROOT_DIR/devkit/preflight_baseline_commands_bash.txt"
src_base_pwsh="$ROOT_DIR/devkit/preflight_baseline_commands_powershell.txt"

for f in "$src_gemini" "$src_preflight_sh" "$src_preflight_py" "$src_base_bash" "$src_base_pwsh"; do
  if [ ! -f "$f" ]; then
    echo "ERROR: source file missing: $f" >&2
    exit 2
  fi
done

declare -a targets=()
while IFS= read -r rel; do
  rel="${rel#\`}"
  rel="${rel%\`}"
  [ -n "$rel" ] || continue
  target="$(cd "$ROOT_DIR" && cd "$rel" 2>/dev/null && pwd || true)"
  if [ -n "$target" ]; then
    targets+=("$target")
  fi
done < <(awk -F'`' '/\*\*ACTIVE/{print $2}' "$TOPOLOGY_PATH")

if [ "${#targets[@]}" -eq 0 ]; then
  echo "ERROR: no active targets found in topology: $TOPOLOGY_PATH" >&2
  exit 2
fi

if [ -n "$ONLY_FILTER" ]; then
  IFS=',' read -r -a allow_names <<< "$ONLY_FILTER"
  declare -A allow_map=()
  for name in "${allow_names[@]}"; do
    allow_map["$name"]=1
  done
  declare -a filtered=()
  for t in "${targets[@]}"; do
    bn="$(basename "$t")"
    if [ "${allow_map[$bn]+x}" = "x" ]; then
      filtered+=("$t")
    fi
  done
  targets=("${filtered[@]}")
fi

if [ "${#targets[@]}" -eq 0 ]; then
  echo "ERROR: target set is empty after filtering." >&2
  exit 2
fi

run_cmd() {
  if [ "$DRY_RUN" -eq 1 ]; then
    printf '[DRY] '
    printf '%q ' "$@"
    printf '\n'
  else
    "$@"
  fi
}

sync_one() {
  local target="$1"
  run_cmd mkdir -p "$target/.gemini" "$target/devkit"
  run_cmd cp "$src_gemini" "$target/.gemini/GEMINI.md"
  run_cmd cp "$src_preflight_sh" "$target/devkit/shell_preflight.sh"
  run_cmd cp "$src_preflight_py" "$target/devkit/shell_preflight_check.py"
  run_cmd cp "$src_base_bash" "$target/devkit/preflight_baseline_commands_bash.txt"
  run_cmd cp "$src_base_pwsh" "$target/devkit/preflight_baseline_commands_powershell.txt"
  run_cmd chmod +x "$target/devkit/shell_preflight.sh"
}

smoke_one() {
  local target="$1"
  if [ "$DRY_RUN" -eq 1 ]; then
    printf '[DRY] smoke %s\n' "$target"
    return 0
  fi
  bash "$target/devkit/shell_preflight.sh" --shell bash --command "printf 'smoke'" >/dev/null
}

git_one() {
  local target="$1"
  if [ "$DRY_RUN" -eq 1 ]; then
    printf '[DRY] git add/commit/push in %s\n' "$target"
    return 0
  fi

  if [ ! -d "$target/.git" ]; then
    printf 'WARN %s: not a git repository, skipping commit/push\n' "$target"
    return 0
  fi

  (
    cd "$target"
    git add .gemini/GEMINI.md devkit/shell_preflight.sh \
      devkit/shell_preflight_check.py \
      devkit/preflight_baseline_commands_bash.txt \
      devkit/preflight_baseline_commands_powershell.txt || true

    if git diff --cached --quiet; then
      printf 'NO_CHANGES %s\n' "$target"
      exit 0
    fi

    git commit -m "$COMMIT_MSG"
    if [ "$DO_PUSH" -eq 1 ]; then
      git push
      printf 'PUSH_OK %s\n' "$target"
    else
      printf 'COMMIT_OK %s\n' "$target"
    fi
  )
}

printf 'Targets: %s\n' "${#targets[@]}"
printf 'Mode: sync=%s smoke=%s commit=%s push=%s dry_run=%s\n' \
  "$DO_SYNC" "$DO_SMOKE" "$DO_COMMIT" "$DO_PUSH" "$DRY_RUN"

ok=0
fail=0
for t in "${targets[@]}"; do
  bn="$(basename "$t")"
  if [ ! -d "$t" ]; then
    printf 'MISSING %s\n' "$t"
    fail=$((fail + 1))
    continue
  fi
  printf 'START %s (%s)\n' "$bn" "$t"
  if [ "$DO_SYNC" -eq 1 ]; then
    if ! sync_one "$t"; then
      printf 'FAIL_SYNC %s\n' "$bn"
      fail=$((fail + 1))
      continue
    fi
  fi
  if [ "$DO_SMOKE" -eq 1 ]; then
    if ! smoke_one "$t"; then
      printf 'FAIL_SMOKE %s\n' "$bn"
      fail=$((fail + 1))
      continue
    fi
  fi
  if [ "$DO_COMMIT" -eq 1 ]; then
    if ! git_one "$t"; then
      printf 'FAIL_GIT %s\n' "$bn"
      fail=$((fail + 1))
      continue
    fi
  fi
  printf 'OK %s\n' "$bn"
  ok=$((ok + 1))
done

printf 'SUMMARY ok=%s fail=%s total=%s\n' "$ok" "$fail" "${#targets[@]}"
if [ "$fail" -gt 0 ]; then
  exit 1
fi
