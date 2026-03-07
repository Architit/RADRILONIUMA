#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_NAME="$(basename "$ROOT")"

CF_STATE_DIR="${CF_STATE_DIR:-$ROOT/.cloud_fabric}"
CF_SNAPSHOT_DIR="${CF_SNAPSHOT_DIR:-$CF_STATE_DIR/snapshots}"
CF_MANIFEST_DIR="${CF_MANIFEST_DIR:-$CF_STATE_DIR/manifests}"
CF_ROUTE_FILE="${CF_ROUTE_FILE:-$CF_STATE_DIR/routes.csv}"

# Narrow gateway mode by default (no full-repo sync).
CF_SCOPE="${CF_SCOPE:-gateway}"
CF_GATEWAY_LOCAL_DIR="${CF_GATEWAY_LOCAL_DIR:-$ROOT/.gateway}"

# Google Drive Desktop local mirror path (device + cloud mode).
CF_GDRIVE_ROOT="${CF_GDRIVE_ROOT:-${GATEWAY_GWORKSPACE_ROOT:-}}"
CF_GDRIVE_GATEWAY_DIR="${CF_GDRIVE_GATEWAY_DIR:-$CF_GDRIVE_ROOT/LAM_GATEWAY/$REPO_NAME}"

CF_LOCAL_MIN_FREE_GB="${CF_LOCAL_MIN_FREE_GB:-10}"
CF_EXCLUDES_FILE="${CF_EXCLUDES_FILE:-$CF_STATE_DIR/rsync_excludes.txt}"

log() {
  printf '[cloud-fabric] %s\n' "$*"
}

usage() {
  cat <<'EOF'
Usage: scripts/cloud_fabric.sh <command>

Commands:
  verify                           Check paths/tools/config
  disk-status                      Show disk usage
  route-table                      Show class-to-cloud routing table
  monitor-space                    Check local + cloud free space
  sync-gdrive                      Sync gateway dir -> Google Drive gateway dir
  sync-from-gdrive                 Sync Google Drive gateway dir -> gateway dir
  snapshot [class] [source_dir]    Snapshot source dir (default: gateway)
  fanout [class]                   Upload latest class snapshot by route table
  full-cycle [class]               verify + sync-gdrive + snapshot + fanout

Environment:
  CF_SCOPE                gateway|repo (default: gateway)
  CF_GATEWAY_LOCAL_DIR    Local exchange dir (default: .gateway)
  CF_GDRIVE_ROOT          Local Google Drive root path
  CF_GDRIVE_GATEWAY_DIR   Target gateway dir in Google Drive mirror
  CF_ROUTE_FILE           CSV table: class,remote_path,min_free_gb
  CF_LOCAL_MIN_FREE_GB    Local min free space threshold
EOF
}

ensure_dirs() {
  mkdir -p "$CF_STATE_DIR" "$CF_SNAPSHOT_DIR" "$CF_MANIFEST_DIR"
}

ensure_excludes() {
  ensure_dirs
  if [[ ! -f "$CF_EXCLUDES_FILE" ]]; then
    cat >"$CF_EXCLUDES_FILE" <<'EOF'
.git/
.venv/
__pycache__/
.mypy_cache/
.ruff_cache/
.pytest_cache/
.coverage
.cloud_fabric/
.gateway/
EOF
  fi
  if [[ ! -f "$CF_ROUTE_FILE" ]]; then
    cat >"$CF_ROUTE_FILE" <<'EOF'
# class,remote_path,min_free_gb
governance,s3main:lam/governance,5
memory,b2cold:lam/memory,10
artifacts,r2archive:lam/artifacts,5
generic,s3main:lam/generic,5
EOF
  fi
}

verify() {
  local rc=0
  ensure_excludes

  if command -v rsync >/dev/null 2>&1; then
    log "ok: rsync present"
  else
    log "fail: rsync missing"
    rc=1
  fi

  if [[ "$CF_SCOPE" == "gateway" ]]; then
    mkdir -p "$CF_GATEWAY_LOCAL_DIR"
    log "ok: gateway scope local_dir=$CF_GATEWAY_LOCAL_DIR"
  else
    log "warn: CF_SCOPE=$CF_SCOPE (full repo mode)"
  fi

  if [[ -n "$CF_GDRIVE_ROOT" && -d "$CF_GDRIVE_ROOT" ]]; then
    log "ok: CF_GDRIVE_ROOT=$CF_GDRIVE_ROOT"
  else
    log "warn: set CF_GDRIVE_ROOT to your local Google Drive mirror path"
  fi

  if command -v rclone >/dev/null 2>&1; then
    log "ok: rclone present for routing fanout"
  else
    log "warn: rclone missing; fanout disabled"
  fi

  return "$rc"
}

disk_status() {
  log "disk free:"
  df -h "$ROOT" | sed -n '1,2p'
  log "top repo dirs:"
  du -h --max-depth=2 "$ROOT" 2>/dev/null | sort -h | tail -n 20
}

route_table() {
  ensure_excludes
  log "route table: $CF_ROUTE_FILE"
  sed -n '1,200p' "$CF_ROUTE_FILE"
}

local_free_gb() {
  local path="$1"
  df -BG "$path" | awk 'NR==2 {gsub("G","",$4); print $4+0}'
}

remote_name_from_path() {
  local target="$1"
  printf '%s\n' "${target%%:*}"
}

remote_free_gb() {
  local remote_name="$1"
  if ! command -v rclone >/dev/null 2>&1; then
    echo 0
    return 1
  fi
  local out
  out="$(rclone about "${remote_name}:" --json 2>/dev/null || true)"
  if [[ -z "$out" ]]; then
    echo 0
    return 1
  fi
  python3 - <<'PY' "$out"
import json,sys
try:
    data=json.loads(sys.argv[1])
    free=int(data.get("free",0))
    print(free//(1024**3))
except Exception:
    print(0)
PY
}

monitor_space() {
  local local_free
  local_free="$(local_free_gb "$ROOT")"
  log "local-free-gb=$local_free threshold=$CF_LOCAL_MIN_FREE_GB"
  if (( local_free < CF_LOCAL_MIN_FREE_GB )); then
    log "warn: local free space below threshold"
  fi

  if [[ -n "$CF_GDRIVE_ROOT" && -d "$CF_GDRIVE_ROOT" ]]; then
    log "gdrive-local-free-gb=$(local_free_gb "$CF_GDRIVE_ROOT")"
  fi

  if ! command -v rclone >/dev/null 2>&1; then
    log "warn: rclone missing, remote free-space check skipped"
    return 0
  fi

  local line cls target min remote free
  while IFS= read -r line; do
    [[ -z "$line" || "$line" =~ ^# ]] && continue
    IFS=',' read -r cls target min <<<"$line"
    remote="$(remote_name_from_path "$target")"
    free="$(remote_free_gb "$remote")"
    log "remote=$remote class=$cls free_gb=$free min_gb=${min:-0}"
  done <"$CF_ROUTE_FILE"
}

sync_source_dir() {
  if [[ "$CF_SCOPE" == "gateway" ]]; then
    printf '%s\n' "$CF_GATEWAY_LOCAL_DIR"
  else
    printf '%s\n' "$ROOT"
  fi
}

sync_gdrive() {
  ensure_excludes
  if [[ -z "$CF_GDRIVE_ROOT" ]]; then
    log "fail: CF_GDRIVE_ROOT not set"
    return 1
  fi
  local src
  src="$(sync_source_dir)"
  mkdir -p "$CF_GDRIVE_GATEWAY_DIR"
  rsync -a --delete \
    --exclude-from="$CF_EXCLUDES_FILE" \
    "$src/" "$CF_GDRIVE_GATEWAY_DIR/"
  log "ok: synced $src -> $CF_GDRIVE_GATEWAY_DIR"
}

sync_from_gdrive() {
  ensure_excludes
  if [[ -z "$CF_GDRIVE_ROOT" ]]; then
    log "fail: CF_GDRIVE_ROOT not set"
    return 1
  fi
  if [[ ! -d "$CF_GDRIVE_GATEWAY_DIR" ]]; then
    log "fail: source missing $CF_GDRIVE_GATEWAY_DIR"
    return 1
  fi
  local dst
  dst="$(sync_source_dir)"
  mkdir -p "$dst"
  rsync -a \
    --exclude-from="$CF_EXCLUDES_FILE" \
    "$CF_GDRIVE_GATEWAY_DIR/" "$dst/"
  log "ok: synced $CF_GDRIVE_GATEWAY_DIR -> $dst"
}

latest_snapshot() {
  local cls="${1:-generic}"
  ls -1t "$CF_SNAPSHOT_DIR"/"${REPO_NAME}_${cls}"_*.tgz 2>/dev/null | head -n1
}

snapshot() {
  ensure_excludes
  local cls src ts archive sha manifest
  cls="${1:-generic}"
  src="${2:-$(sync_source_dir)}"
  if [[ ! -d "$src" ]]; then
    log "fail: snapshot source missing $src"
    return 1
  fi
  ts="$(date -u +%Y%m%dT%H%M%SZ)"
  archive="$CF_SNAPSHOT_DIR/${REPO_NAME}_${cls}_${ts}.tgz"
  manifest="$CF_MANIFEST_DIR/${REPO_NAME}_${cls}_${ts}.sha256"
  tar --exclude-vcs --exclude-from="$CF_EXCLUDES_FILE" -czf "$archive" -C "$src" .
  sha="$(sha256sum "$archive" | awk '{print $1}')"
  printf '%s  %s\n' "$sha" "$(basename "$archive")" >"$manifest"
  log "ok: snapshot=$archive"
  log "ok: manifest=$manifest"
}

fanout() {
  local cls archive line r_cls target min remote free
  cls="${1:-generic}"
  archive="$(latest_snapshot "$cls")"
  if [[ -z "$archive" ]]; then
    log "fail: no snapshot for class=$cls, run snapshot $cls"
    return 1
  fi

  if ! command -v rclone >/dev/null 2>&1; then
    log "fail: rclone missing"
    return 1
  fi

  local matched=0
  while IFS= read -r line; do
    [[ -z "$line" || "$line" =~ ^# ]] && continue
    IFS=',' read -r r_cls target min <<<"$line"
    [[ "$r_cls" != "$cls" && "$r_cls" != "*" ]] && continue
    matched=1
    remote="$(remote_name_from_path "$target")"
    free="$(remote_free_gb "$remote")"
    if [[ -n "${min:-}" && "$free" -lt "$min" ]]; then
      log "skip: target=$target free_gb=$free < min_gb=$min"
      continue
    fi
    log "upload class=$cls: $archive -> ${target%/}/$(basename "$archive")"
    rclone copyto "$archive" "${target%/}/$(basename "$archive")"
  done <"$CF_ROUTE_FILE"

  if [[ "$matched" -eq 0 ]]; then
    log "fail: no route for class=$cls in $CF_ROUTE_FILE"
    return 1
  fi
  log "ok: fanout complete for class=$cls"
}

full_cycle() {
  local cls="${1:-generic}"
  verify
  monitor_space
  sync_gdrive
  snapshot "$cls"
  fanout "$cls"
}

cmd="${1:-}"
case "$cmd" in
  verify) verify ;;
  disk-status) disk_status ;;
  route-table) route_table ;;
  monitor-space) monitor_space ;;
  sync-gdrive) sync_gdrive ;;
  sync-from-gdrive) sync_from_gdrive ;;
  snapshot) snapshot "${2:-}" "${3:-}" ;;
  fanout) fanout "${2:-}" ;;
  full-cycle) full_cycle "${2:-}" ;;
  *) usage; exit 2 ;;
esac
