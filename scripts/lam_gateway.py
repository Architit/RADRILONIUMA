#!/usr/bin/env python3
from __future__ import annotations

import argparse
import contextlib
import hashlib
import io
import json
import os
import shutil
import sys
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
REPO_NAME = ROOT.name
STATE_DIR = Path(os.getenv("LAM_GATEWAY_STATE_DIR", str(ROOT / ".gateway")))
POLICY_FILE = Path(os.getenv("LAM_GATEWAY_POLICY_FILE", str(STATE_DIR / "routing_policy.json")))
INDEX_FILE = Path(os.getenv("LAM_GATEWAY_INDEX_FILE", str(STATE_DIR / "index.json")))
QUEUE_FILE = Path(os.getenv("LAM_GATEWAY_QUEUE_FILE", str(STATE_DIR / "queue.json")))
BREAKER_FILE = Path(os.getenv("LAM_GATEWAY_BREAKER_FILE", str(STATE_DIR / "circuit_breakers.json")))
EVENTS_FILE = Path(os.getenv("LAM_GATEWAY_EVENTS_FILE", str(STATE_DIR / "routing_events.jsonl")))


def utc_now() -> str:
    return datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")


def epoch_now() -> int:
    return int(time.time())


def safe_mkdir(path: Path) -> None:
    path.mkdir(parents=True, exist_ok=True)


def default_providers() -> dict[str, dict[str, Any]]:
    gws_root = os.getenv("GATEWAY_GWORKSPACE_ROOT", "").strip()
    onedrive_root = os.getenv("GATEWAY_ONEDRIVE_ROOT", "").strip()
    archive_root = os.getenv("GATEWAY_ARCHIVE_ROOT", "").strip()
    providers: dict[str, dict[str, Any]] = {
        "local": {"kind": "fs", "root": str(STATE_DIR / "storage" / "local")},
        "gdrive": {"kind": "fs", "root": ""},
        "onedrive": {"kind": "fs", "root": ""},
        "archive": {"kind": "fs", "root": ""},
    }
    if gws_root:
        providers["gdrive"]["root"] = str(Path(gws_root) / "LAM_GATEWAY" / REPO_NAME)
    if onedrive_root:
        providers["onedrive"]["root"] = str(Path(onedrive_root) / "LAM_GATEWAY" / REPO_NAME)
    if archive_root:
        providers["archive"]["root"] = str(Path(archive_root) / "LAM_GATEWAY" / REPO_NAME)
    return providers


def default_policy() -> dict[str, Any]:
    return {
        "version": "v1",
        "routing": {
            "local_hard_min_free_gb": int(os.getenv("LAM_GATEWAY_LOCAL_HARD_MIN_FREE_GB", "20")),
            "degraded_provider_cooldown_sec": int(os.getenv("LAM_GATEWAY_DEGRADED_COOLDOWN_SEC", "300")),
        },
        "queue": {
            "max_attempts": 5,
            "backoff_base_sec": 5,
            "backoff_cap_sec": 300,
        },
        "circuit_breaker": {
            "failure_threshold": 3,
            "cooldown_sec": 120,
        },
        "providers": default_providers(),
        "provider_limits": {
            "local": {"max_object_mb": 512},
            "gdrive": {"max_object_mb": 2048},
            "onedrive": {"max_object_mb": 2048},
            "archive": {"max_object_mb": 4096},
        },
        "classes": {
            "governance": {"providers": ["local", "gdrive", "archive"], "min_free_gb": 2},
            "memory": {"providers": ["archive", "gdrive", "local"], "min_free_gb": 5},
            "artifacts": {"providers": ["gdrive", "local", "archive"], "min_free_gb": 2},
            "generic": {"providers": ["local", "gdrive", "onedrive"], "min_free_gb": 1},
        },
    }


def read_json(path: Path, fallback: Any) -> Any:
    if not path.exists():
        return fallback
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: Any) -> None:
    safe_mkdir(path.parent)
    path.write_text(json.dumps(payload, ensure_ascii=True, indent=2) + "\n", encoding="utf-8")


def ensure_state() -> None:
    safe_mkdir(STATE_DIR)
    if not POLICY_FILE.exists():
        write_json(POLICY_FILE, default_policy())
    if not INDEX_FILE.exists():
        write_json(INDEX_FILE, {"version": "v1", "entries": []})
    if not QUEUE_FILE.exists():
        write_json(QUEUE_FILE, {"version": "v1", "items": []})
    if not BREAKER_FILE.exists():
        write_json(BREAKER_FILE, {"version": "v1", "providers": {}})


def file_sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def free_gb(path: Path) -> int:
    target = path
    if not path.exists():
        target = path.parent
    usage = shutil.disk_usage(target)
    return int(usage.free // (1024**3))


def path_size_bytes(path: Path) -> int:
    if path.is_file():
        return int(path.stat().st_size)
    total = 0
    for sub in path.rglob("*"):
        if sub.is_file():
            total += int(sub.stat().st_size)
    return total


def append_event(event: dict[str, Any]) -> None:
    safe_mkdir(EVENTS_FILE.parent)
    with EVENTS_FILE.open("a", encoding="utf-8") as fh:
        fh.write(json.dumps(event, ensure_ascii=True) + "\n")


def load_breakers() -> dict[str, Any]:
    return read_json(BREAKER_FILE, {"version": "v1", "providers": {}})


def save_breakers(payload: dict[str, Any]) -> None:
    write_json(BREAKER_FILE, payload)


def provider_breaker_state(provider: str) -> dict[str, Any]:
    breakers = load_breakers()
    return breakers.get("providers", {}).get(provider, {"consecutive_failures": 0, "open_until_epoch": 0})


def breaker_is_open(provider: str) -> bool:
    state = provider_breaker_state(provider)
    return int(state.get("open_until_epoch", 0)) > epoch_now()


def breaker_record_failure(policy: dict[str, Any], provider: str, reason: str) -> None:
    cfg = policy.get("circuit_breaker", {})
    threshold = int(cfg.get("failure_threshold", 3))
    cooldown = int(cfg.get("cooldown_sec", 120))

    payload = load_breakers()
    providers = payload.setdefault("providers", {})
    state = providers.setdefault(provider, {"consecutive_failures": 0, "open_until_epoch": 0})
    state["consecutive_failures"] = int(state.get("consecutive_failures", 0)) + 1
    if state["consecutive_failures"] >= threshold:
        state["open_until_epoch"] = epoch_now() + cooldown
    providers[provider] = state
    save_breakers(payload)
    append_event(
        {
            "ts_utc": utc_now(),
            "event": "breaker_failure",
            "provider": provider,
            "reason": reason,
            "state": state,
        }
    )


def breaker_record_success(provider: str) -> None:
    payload = load_breakers()
    providers = payload.setdefault("providers", {})
    providers[provider] = {"consecutive_failures": 0, "open_until_epoch": 0}
    save_breakers(payload)
    append_event({"ts_utc": utc_now(), "event": "breaker_reset", "provider": provider})


def provider_accepts_size(policy: dict[str, Any], provider: str, object_size_bytes: int | None) -> bool:
    if object_size_bytes is None:
        return True
    limits = policy.get("provider_limits", {})
    provider_limit = limits.get(provider, {})
    max_mb = provider_limit.get("max_object_mb")
    if max_mb is None:
        return True
    return object_size_bytes <= int(max_mb) * 1024 * 1024


def provider_accepts_local_hard_limit(
    policy: dict[str, Any], provider: str, health_map: dict[str, dict[str, Any]]
) -> bool:
    if provider != "local":
        return True
    hard_min = int(policy.get("routing", {}).get("local_hard_min_free_gb", 20))
    local = health_map.get("local")
    if not local:
        return False
    return int(local.get("free_gb", 0)) >= hard_min


def provider_health(policy: dict[str, Any]) -> list[dict[str, Any]]:
    out: list[dict[str, Any]] = []
    providers = policy.get("providers", {})
    for name, cfg in providers.items():
        root_str = str(cfg.get("root", "")).strip()
        configured = bool(root_str)
        root = Path(root_str) if root_str else Path("/")
        reachable = False
        free = 0
        if configured:
            try:
                safe_mkdir(root)
                reachable = root.exists() and root.is_dir()
                free = free_gb(root)
            except OSError:
                reachable = False
                free = 0
        out.append(
            {
                "provider": name,
                "configured": configured,
                "reachable": reachable,
                "free_gb": free,
                "root": root_str,
            }
        )
    return out


def class_policy(policy: dict[str, Any], data_class: str) -> dict[str, Any]:
    classes = policy.get("classes", {})
    if data_class in classes:
        return classes[data_class]
    return classes.get("generic", {"providers": ["local"], "min_free_gb": 1})


def select_provider(policy: dict[str, Any], data_class: str) -> dict[str, Any]:
    return select_provider_for_object(policy, data_class=data_class, object_size_bytes=None)


def select_provider_for_object(
    policy: dict[str, Any], data_class: str, object_size_bytes: int | None
) -> dict[str, Any]:
    health = {h["provider"]: h for h in provider_health(policy)}
    cls = class_policy(policy, data_class)
    providers = list(cls.get("providers", ["local"]))
    min_free = int(cls.get("min_free_gb", 1))

    for provider in providers:
        h = health.get(provider)
        if not h:
            continue
        if breaker_is_open(provider):
            continue
        if not provider_accepts_size(policy, provider, object_size_bytes):
            continue
        if not provider_accepts_local_hard_limit(policy, provider, health):
            continue
        if h["configured"] and h["reachable"] and h["free_gb"] >= min_free:
            return {
                "provider": provider,
                "reason": "class_policy_match",
                "degraded": False,
                "required_free_gb": min_free,
                "available_free_gb": h["free_gb"],
                "object_size_bytes": object_size_bytes,
            }

    for provider in providers:
        h = health.get(provider)
        if not h:
            continue
        if breaker_is_open(provider):
            continue
        if not provider_accepts_size(policy, provider, object_size_bytes):
            continue
        if not provider_accepts_local_hard_limit(policy, provider, health):
            continue
        if h["configured"] and h["reachable"]:
            return {
                "provider": provider,
                "reason": "degraded_low_space",
                "degraded": True,
                "required_free_gb": min_free,
                "available_free_gb": h["free_gb"],
                "object_size_bytes": object_size_bytes,
            }

    raise RuntimeError(f"no reachable providers for class={data_class}")


def index_add(entry: dict[str, Any]) -> None:
    index = read_json(INDEX_FILE, {"version": "v1", "entries": []})
    entries = index.setdefault("entries", [])
    entries.append(entry)
    write_json(INDEX_FILE, index)


def cmd_init(_: argparse.Namespace) -> int:
    ensure_state()
    payload = {
        "status": "ok",
        "state_dir": str(STATE_DIR),
        "policy_file": str(POLICY_FILE),
        "index_file": str(INDEX_FILE),
    }
    print(json.dumps(payload, ensure_ascii=True, indent=2))
    return 0


def cmd_health(args: argparse.Namespace) -> int:
    ensure_state()
    policy = read_json(POLICY_FILE, default_policy())
    report = provider_health(policy)
    payload = {"ts_utc": utc_now(), "providers": report}
    if args.json:
        print(json.dumps(payload, ensure_ascii=True, indent=2))
        return 0
    for item in report:
        print(
            f"{item['provider']}: configured={item['configured']} "
            f"reachable={item['reachable']} free_gb={item['free_gb']} root={item['root']}"
        )
    return 0


def cmd_route(args: argparse.Namespace) -> int:
    ensure_state()
    policy = read_json(POLICY_FILE, default_policy())
    object_size_bytes = int(args.size_bytes) if args.size_bytes is not None else None
    decision = select_provider_for_object(policy, args.data_class, object_size_bytes=object_size_bytes)
    payload = {"ts_utc": utc_now(), "class": args.data_class, "decision": decision}
    print(json.dumps(payload, ensure_ascii=True, indent=2))
    return 0


def cmd_put(args: argparse.Namespace) -> int:
    ensure_state()
    policy = read_json(POLICY_FILE, default_policy())
    source = Path(args.src).resolve()
    if not source.exists():
        raise FileNotFoundError(f"source not found: {source}")

    object_size_bytes = path_size_bytes(source)

    if args.provider:
        provider_name = args.provider
        providers = policy.get("providers", {})
        if provider_name not in providers:
            raise RuntimeError(f"unknown provider: {provider_name}")
        if breaker_is_open(provider_name):
            raise RuntimeError(f"provider breaker open: {provider_name}")
        if not provider_accepts_size(policy, provider_name, object_size_bytes):
            raise RuntimeError(f"provider size limit exceeded: provider={provider_name}")
        target_root = Path(str(providers[provider_name].get("root", "")))
        if not str(target_root).strip():
            raise RuntimeError(f"provider not configured: {provider_name}")
        safe_mkdir(target_root)
        decision = {
            "provider": provider_name,
            "reason": "manual_override",
            "degraded": False,
            "required_free_gb": 0,
            "available_free_gb": free_gb(target_root),
            "object_size_bytes": object_size_bytes,
        }
    else:
        decision = select_provider_for_object(policy, args.data_class, object_size_bytes=object_size_bytes)
        target_root = Path(policy["providers"][decision["provider"]]["root"])

    safe_mkdir(target_root)
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    name = args.name or source.name
    rel_path = Path(args.data_class) / f"{stamp}_{name}"
    dest = target_root / rel_path

    if source.is_dir():
        shutil.copytree(source, dest)
        sha = ""
        kind = "dir"
    else:
        safe_mkdir(dest.parent)
        shutil.copy2(source, dest)
        sha = file_sha256(dest)
        kind = "file"

    entry = {
        "id": f"entry_{stamp}",
        "ts_utc": utc_now(),
        "class": args.data_class,
        "provider": decision["provider"],
        "kind": kind,
        "source": str(source),
        "dest_abs": str(dest),
        "dest_rel": str(rel_path),
        "sha256": sha,
        "degraded": bool(decision.get("degraded", False)),
        "size_bytes": object_size_bytes,
    }
    index_add(entry)
    breaker_record_success(decision["provider"])
    print(json.dumps({"status": "ok", "entry": entry, "decision": decision}, ensure_ascii=True, indent=2))
    return 0


def cmd_get(args: argparse.Namespace) -> int:
    ensure_state()
    policy = read_json(POLICY_FILE, default_policy())
    providers = policy.get("providers", {})
    if args.provider not in providers:
        raise RuntimeError(f"unknown provider: {args.provider}")
    root = Path(str(providers[args.provider].get("root", "")))
    if not str(root).strip():
        raise RuntimeError(f"provider not configured: {args.provider}")
    source = (root / args.path).resolve()
    if not source.exists():
        raise FileNotFoundError(f"path not found in provider={args.provider}: {args.path}")
    dst = Path(args.dst).resolve()
    if source.is_dir():
        if dst.exists():
            raise RuntimeError(f"destination exists: {dst}")
        shutil.copytree(source, dst)
    else:
        safe_mkdir(dst.parent)
        shutil.copy2(source, dst)
    print(json.dumps({"status": "ok", "provider": args.provider, "source": str(source), "dst": str(dst)}, ensure_ascii=True, indent=2))
    return 0


def cmd_list(args: argparse.Namespace) -> int:
    ensure_state()
    index = read_json(INDEX_FILE, {"version": "v1", "entries": []})
    entries = list(index.get("entries", []))
    if args.provider:
        entries = [e for e in entries if e.get("provider") == args.provider]
    if args.data_class:
        entries = [e for e in entries if e.get("class") == args.data_class]
    payload = {"count": len(entries), "entries": entries[-args.limit :]}
    print(json.dumps(payload, ensure_ascii=True, indent=2))
    return 0


def queue_add(item: dict[str, Any]) -> dict[str, Any]:
    queue = read_json(QUEUE_FILE, {"version": "v1", "items": []})
    items = queue.setdefault("items", [])
    items.append(item)
    write_json(QUEUE_FILE, queue)
    return item


def cmd_enqueue_put(args: argparse.Namespace) -> int:
    ensure_state()
    item = {
        "id": f"job_{epoch_now()}_{os.getpid()}",
        "type": "put",
        "status": "pending",
        "attempts": 0,
        "next_run_epoch": epoch_now(),
        "created_utc": utc_now(),
        "payload": {
            "src": str(Path(args.src).resolve()),
            "class": args.data_class,
            "provider": args.provider,
            "name": args.name,
        },
    }
    print(json.dumps({"status": "ok", "job": queue_add(item)}, ensure_ascii=True, indent=2))
    return 0


def cmd_enqueue_get(args: argparse.Namespace) -> int:
    ensure_state()
    item = {
        "id": f"job_{epoch_now()}_{os.getpid()}",
        "type": "get",
        "status": "pending",
        "attempts": 0,
        "next_run_epoch": epoch_now(),
        "created_utc": utc_now(),
        "payload": {
            "provider": args.provider,
            "path": args.path,
            "dst": str(Path(args.dst).resolve()),
        },
    }
    print(json.dumps({"status": "ok", "job": queue_add(item)}, ensure_ascii=True, indent=2))
    return 0


def _process_one_job(policy: dict[str, Any], item: dict[str, Any]) -> tuple[bool, str]:
    try:
        payload = item.get("payload", {})
        if item["type"] == "put":
            class PutArgs:
                src = payload["src"]
                data_class = payload.get("class", "generic")
                provider = payload.get("provider", "")
                name = payload.get("name", "")

            with contextlib.redirect_stdout(io.StringIO()):
                cmd_put(PutArgs())
            provider_used = payload.get("provider", "") or select_provider(policy, PutArgs.data_class)["provider"]
            breaker_record_success(provider_used)
            return True, "ok"

        if item["type"] == "get":
            class GetArgs:
                provider = payload["provider"]
                path = payload["path"]
                dst = payload["dst"]

            with contextlib.redirect_stdout(io.StringIO()):
                cmd_get(GetArgs())
            breaker_record_success(GetArgs.provider)
            return True, "ok"

        return False, f"unknown job type={item.get('type')}"
    except Exception as exc:  # noqa: BLE001
        provider = str(item.get("payload", {}).get("provider", ""))
        if provider:
            breaker_record_failure(policy, provider, str(exc))
        return False, str(exc)


def cmd_run_queue(args: argparse.Namespace) -> int:
    ensure_state()
    policy = read_json(POLICY_FILE, default_policy())
    queue = read_json(QUEUE_FILE, {"version": "v1", "items": []})
    items = queue.get("items", [])
    cfg = policy.get("queue", {})
    max_attempts = int(cfg.get("max_attempts", 5))
    backoff_base = int(cfg.get("backoff_base_sec", 5))
    backoff_cap = int(cfg.get("backoff_cap_sec", 300))
    now = epoch_now()
    processed = 0
    succeeded = 0
    failed = 0

    for item in items:
        if processed >= args.max_jobs:
            break
        if item.get("status") in {"done", "dead"}:
            continue
        if int(item.get("next_run_epoch", 0)) > now:
            continue

        processed += 1
        ok, reason = _process_one_job(policy, item)
        if ok:
            item["status"] = "done"
            item["last_error"] = ""
            item["finished_utc"] = utc_now()
            succeeded += 1
        else:
            attempts = int(item.get("attempts", 0)) + 1
            item["attempts"] = attempts
            item["last_error"] = reason
            if attempts >= max_attempts:
                item["status"] = "dead"
                item["finished_utc"] = utc_now()
            else:
                item["status"] = "pending"
                delay = min(backoff_cap, backoff_base * (2 ** (attempts - 1)))
                item["next_run_epoch"] = now + delay
            failed += 1

    write_json(QUEUE_FILE, queue)
    print(
        json.dumps(
            {
                "status": "ok",
                "processed": processed,
                "succeeded": succeeded,
                "failed": failed,
                "queue_file": str(QUEUE_FILE),
            },
            ensure_ascii=True,
            indent=2,
        )
    )
    return 0


def cmd_queue_list(_: argparse.Namespace) -> int:
    ensure_state()
    queue = read_json(QUEUE_FILE, {"version": "v1", "items": []})
    print(json.dumps(queue, ensure_ascii=True, indent=2))
    return 0


def reorder_classes_by_health(policy: dict[str, Any]) -> dict[str, Any]:
    report = provider_health(policy)
    health = {p["provider"]: p for p in report}
    changed = False
    classes = policy.get("classes", {})

    for cls_name, cls_cfg in classes.items():
        providers = list(cls_cfg.get("providers", []))
        if not providers:
            continue
        reachable = [p for p in providers if health.get(p, {}).get("configured") and health.get(p, {}).get("reachable")]
        unreachable = [p for p in providers if p not in reachable]
        reachable_sorted = sorted(reachable, key=lambda p: int(health.get(p, {}).get("free_gb", 0)), reverse=True)
        new_order = reachable_sorted + unreachable
        if new_order != providers:
            cls_cfg["providers"] = new_order
            changed = True
            append_event(
                {
                    "ts_utc": utc_now(),
                    "event": "auto_switch_class_order",
                    "class": cls_name,
                    "from": providers,
                    "to": new_order,
                }
            )

    if changed:
        write_json(POLICY_FILE, policy)
    return {"changed": changed, "classes": classes}


def cmd_monitor(args: argparse.Namespace) -> int:
    ensure_state()
    rounds = 1 if args.once else int(args.iterations)
    interval = int(args.interval_sec)
    out: list[dict[str, Any]] = []
    for i in range(rounds):
        policy = read_json(POLICY_FILE, default_policy())
        summary = {
            "ts_utc": utc_now(),
            "iteration": i + 1,
            "health": provider_health(policy),
            "auto_switch": {},
        }
        if args.auto_switch:
            summary["auto_switch"] = reorder_classes_by_health(policy)
        out.append(summary)
        if i + 1 < rounds:
            time.sleep(interval)
    print(json.dumps({"status": "ok", "rounds": rounds, "results": out}, ensure_ascii=True, indent=2))
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="LAM local gateway CLI (decentralized storage routing).")
    sub = parser.add_subparsers(dest="command", required=True)

    sub.add_parser("init", help="Initialize local gateway state.").set_defaults(func=cmd_init)

    health = sub.add_parser("health", help="Provider health and free-space report.")
    health.add_argument("--json", action="store_true", help="Print JSON report.")
    health.set_defaults(func=cmd_health)

    route = sub.add_parser("route", help="Resolve provider for a data class.")
    route.add_argument("data_class", help="Class name (governance|memory|artifacts|generic|...).")
    route.add_argument("--size-bytes", type=int, default=None, help="Optional object size for size-aware routing.")
    route.set_defaults(func=cmd_route)

    put = sub.add_parser("put", help="Store file/dir via policy-based provider routing.")
    put.add_argument("src", help="Source file or directory.")
    put.add_argument("--class", dest="data_class", default="generic", help="Data class for routing.")
    put.add_argument("--provider", default="", help="Optional provider override.")
    put.add_argument("--name", default="", help="Optional destination object name.")
    put.set_defaults(func=cmd_put)

    get = sub.add_parser("get", help="Restore object from provider path.")
    get.add_argument("--provider", required=True, help="Provider ID.")
    get.add_argument("--path", required=True, help="Path relative to provider root.")
    get.add_argument("--dst", required=True, help="Local destination path.")
    get.set_defaults(func=cmd_get)

    ls_cmd = sub.add_parser("list", help="List stored entries from local gateway index.")
    ls_cmd.add_argument("--provider", default="", help="Filter by provider ID.")
    ls_cmd.add_argument("--class", dest="data_class", default="", help="Filter by data class.")
    ls_cmd.add_argument("--limit", type=int, default=50, help="Show last N entries.")
    ls_cmd.set_defaults(func=cmd_list)

    enqueue_put = sub.add_parser("enqueue-put", help="Queue put operation with retry/backoff.")
    enqueue_put.add_argument("src", help="Source file or directory.")
    enqueue_put.add_argument("--class", dest="data_class", default="generic", help="Data class for routing.")
    enqueue_put.add_argument("--provider", default="", help="Optional provider override.")
    enqueue_put.add_argument("--name", default="", help="Optional destination object name.")
    enqueue_put.set_defaults(func=cmd_enqueue_put)

    enqueue_get = sub.add_parser("enqueue-get", help="Queue get operation with retry/backoff.")
    enqueue_get.add_argument("--provider", required=True, help="Provider ID.")
    enqueue_get.add_argument("--path", required=True, help="Path relative to provider root.")
    enqueue_get.add_argument("--dst", required=True, help="Local destination path.")
    enqueue_get.set_defaults(func=cmd_enqueue_get)

    run_queue = sub.add_parser("run-queue", help="Run queued jobs with retry/backoff.")
    run_queue.add_argument("--max-jobs", type=int, default=20, help="Max jobs to process in one run.")
    run_queue.set_defaults(func=cmd_run_queue)

    queue_list = sub.add_parser("queue-list", help="Print queue state.")
    queue_list.set_defaults(func=cmd_queue_list)

    monitor = sub.add_parser("monitor", help="Background-like health monitor with optional auto-switch.")
    monitor.add_argument("--once", action="store_true", help="Run one iteration and exit.")
    monitor.add_argument("--iterations", type=int, default=10, help="Number of monitor iterations.")
    monitor.add_argument("--interval-sec", type=int, default=30, help="Sleep interval between iterations.")
    monitor.add_argument("--auto-switch", action="store_true", help="Auto reorder class provider preference by health.")
    monitor.set_defaults(func=cmd_monitor)

    return parser


def main() -> int:
    parser = build_parser()
    args = parser.parse_args()
    try:
        return int(args.func(args))
    except Exception as exc:  # noqa: BLE001
        print(json.dumps({"status": "error", "error": str(exc)}, ensure_ascii=True), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
