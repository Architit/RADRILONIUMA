from __future__ import annotations

import importlib.util
import json
from pathlib import Path


def load_gateway_module():
    repo_root = Path(__file__).resolve().parents[1]
    script = repo_root / "scripts" / "lam_gateway.py"
    spec = importlib.util.spec_from_file_location("lam_gateway", script)
    assert spec and spec.loader
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def test_init_creates_policy_and_index(tmp_path, monkeypatch) -> None:
    module = load_gateway_module()
    monkeypatch.setenv("LAM_GATEWAY_STATE_DIR", str(tmp_path / ".gateway"))
    monkeypatch.setenv("LAM_GATEWAY_POLICY_FILE", str(tmp_path / ".gateway" / "routing_policy.json"))
    monkeypatch.setenv("LAM_GATEWAY_INDEX_FILE", str(tmp_path / ".gateway" / "index.json"))
    module.STATE_DIR = Path(str(tmp_path / ".gateway"))
    module.POLICY_FILE = Path(str(tmp_path / ".gateway" / "routing_policy.json"))
    module.INDEX_FILE = Path(str(tmp_path / ".gateway" / "index.json"))

    module.ensure_state()

    assert module.POLICY_FILE.exists()
    assert module.INDEX_FILE.exists()
    payload = json.loads(module.POLICY_FILE.read_text(encoding="utf-8"))
    assert payload["version"] == "v1"
    assert "local" in payload["providers"]


def test_select_provider_falls_back_to_local_when_others_unset(tmp_path, monkeypatch) -> None:
    module = load_gateway_module()
    monkeypatch.setenv("LAM_GATEWAY_STATE_DIR", str(tmp_path / ".gateway"))
    monkeypatch.setenv("LAM_GATEWAY_POLICY_FILE", str(tmp_path / ".gateway" / "routing_policy.json"))
    monkeypatch.setenv("LAM_GATEWAY_INDEX_FILE", str(tmp_path / ".gateway" / "index.json"))
    module.STATE_DIR = Path(str(tmp_path / ".gateway"))
    module.POLICY_FILE = Path(str(tmp_path / ".gateway" / "routing_policy.json"))
    module.INDEX_FILE = Path(str(tmp_path / ".gateway" / "index.json"))
    module.ensure_state()
    policy = module.read_json(module.POLICY_FILE, {})

    decision = module.select_provider(policy, "generic")
    assert decision["provider"] == "local"


def test_put_and_get_roundtrip_file(tmp_path, monkeypatch) -> None:
    module = load_gateway_module()
    state_dir = tmp_path / ".gateway"
    monkeypatch.setenv("LAM_GATEWAY_STATE_DIR", str(state_dir))
    monkeypatch.setenv("LAM_GATEWAY_POLICY_FILE", str(state_dir / "routing_policy.json"))
    monkeypatch.setenv("LAM_GATEWAY_INDEX_FILE", str(state_dir / "index.json"))
    module.STATE_DIR = state_dir
    module.POLICY_FILE = state_dir / "routing_policy.json"
    module.INDEX_FILE = state_dir / "index.json"
    module.ensure_state()

    source = tmp_path / "example.txt"
    source.write_text("lam-gateway-test", encoding="utf-8")

    class Args:
        src = str(source)
        data_class = "generic"
        provider = "local"
        name = "payload.txt"

    assert module.cmd_put(Args()) == 0

    index = module.read_json(module.INDEX_FILE, {})
    entry = index["entries"][-1]
    rel = entry["dest_rel"]

    out_file = tmp_path / "restored.txt"

    class GetArgs:
        provider = "local"
        path = rel
        dst = str(out_file)

    assert module.cmd_get(GetArgs()) == 0
    assert out_file.read_text(encoding="utf-8") == "lam-gateway-test"


def test_queue_retry_backoff_marks_pending_on_first_failure(tmp_path, monkeypatch) -> None:
    module = load_gateway_module()
    state_dir = tmp_path / ".gateway"
    monkeypatch.setenv("LAM_GATEWAY_STATE_DIR", str(state_dir))
    monkeypatch.setenv("LAM_GATEWAY_POLICY_FILE", str(state_dir / "routing_policy.json"))
    monkeypatch.setenv("LAM_GATEWAY_INDEX_FILE", str(state_dir / "index.json"))
    monkeypatch.setenv("LAM_GATEWAY_QUEUE_FILE", str(state_dir / "queue.json"))
    monkeypatch.setenv("LAM_GATEWAY_BREAKER_FILE", str(state_dir / "circuit_breakers.json"))
    module.STATE_DIR = state_dir
    module.POLICY_FILE = state_dir / "routing_policy.json"
    module.INDEX_FILE = state_dir / "index.json"
    module.QUEUE_FILE = state_dir / "queue.json"
    module.BREAKER_FILE = state_dir / "circuit_breakers.json"
    module.ensure_state()

    missing = tmp_path / "missing.txt"

    class EnqueueArgs:
        src = str(missing)
        data_class = "generic"
        provider = "local"
        name = ""

    assert module.cmd_enqueue_put(EnqueueArgs()) == 0

    class RunArgs:
        max_jobs = 1

    assert module.cmd_run_queue(RunArgs()) == 0
    queue = module.read_json(module.QUEUE_FILE, {})
    item = queue["items"][0]
    assert item["status"] == "pending"
    assert item["attempts"] == 1
    assert int(item["next_run_epoch"]) > 0


def test_monitor_auto_switch_reorders_unreachable_provider(tmp_path, monkeypatch) -> None:
    module = load_gateway_module()
    state_dir = tmp_path / ".gateway"
    monkeypatch.setenv("LAM_GATEWAY_STATE_DIR", str(state_dir))
    monkeypatch.setenv("LAM_GATEWAY_POLICY_FILE", str(state_dir / "routing_policy.json"))
    monkeypatch.setenv("LAM_GATEWAY_INDEX_FILE", str(state_dir / "index.json"))
    monkeypatch.setenv("LAM_GATEWAY_EVENTS_FILE", str(state_dir / "routing_events.jsonl"))
    module.STATE_DIR = state_dir
    module.POLICY_FILE = state_dir / "routing_policy.json"
    module.INDEX_FILE = state_dir / "index.json"
    module.EVENTS_FILE = state_dir / "routing_events.jsonl"
    module.ensure_state()

    policy = module.read_json(module.POLICY_FILE, {})
    policy["providers"]["gdrive"]["root"] = ""
    policy["classes"]["generic"]["providers"] = ["gdrive", "local"]
    module.write_json(module.POLICY_FILE, policy)

    class MonitorArgs:
        once = True
        iterations = 1
        interval_sec = 1
        auto_switch = True

    assert module.cmd_monitor(MonitorArgs()) == 0
    changed = module.read_json(module.POLICY_FILE, {})
    assert changed["classes"]["generic"]["providers"][0] == "local"


def test_size_and_local_hard_limit_push_to_gdrive(tmp_path, monkeypatch) -> None:
    module = load_gateway_module()
    state_dir = tmp_path / ".gateway"
    gdrive_root = tmp_path / "gdrive"
    monkeypatch.setenv("LAM_GATEWAY_STATE_DIR", str(state_dir))
    monkeypatch.setenv("LAM_GATEWAY_POLICY_FILE", str(state_dir / "routing_policy.json"))
    monkeypatch.setenv("LAM_GATEWAY_INDEX_FILE", str(state_dir / "index.json"))
    module.STATE_DIR = state_dir
    module.POLICY_FILE = state_dir / "routing_policy.json"
    module.INDEX_FILE = state_dir / "index.json"
    module.ensure_state()

    policy = module.read_json(module.POLICY_FILE, {})
    policy["providers"]["gdrive"]["root"] = str(gdrive_root)
    policy["classes"]["generic"]["providers"] = ["local", "gdrive"]
    policy["routing"]["local_hard_min_free_gb"] = 10**9
    policy["provider_limits"]["local"]["max_object_mb"] = 1
    policy["provider_limits"]["gdrive"]["max_object_mb"] = 200
    module.write_json(module.POLICY_FILE, policy)

    decision = module.select_provider_for_object(policy, "generic", object_size_bytes=2 * 1024 * 1024)
    assert decision["provider"] == "gdrive"
