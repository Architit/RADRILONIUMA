#!/usr/bin/env python3
from __future__ import annotations

import sys
from pathlib import Path


def die(msg: str, code: int = 1) -> None:
    print(f"[patch] ERROR: {msg}", file=sys.stderr)
    raise SystemExit(code)


def info(msg: str) -> None:
    print(f"[patch] {msg}")


def read_text(p: Path) -> str:
    return p.read_text(encoding="utf-8")


def write_text(p: Path, s: str) -> None:
    p.write_text(s, encoding="utf-8")


def patch_router_retry_comment() -> None:
    work_root = Path(__file__).resolve().parents[2]
    p = (work_root / "Roaudter-agent" / "src" / "roaudter_agent" / "router.py").resolve()
    if not p.exists():
        die(f"router.py not found: {p}")

    s = read_text(p)

    old = "# retry/backoff budget (v1) — small defaults so tests stay fast"
    new = "\n".join([
        "# retry/backoff budget (v1)",
        "# - retries only when ProviderError.retryable==True AND http_status in {None, 429, >=500}",
        "# - bounded by retry_max_attempts and retry_budget_ms",
        "# - falls back to next provider after exhaustion",
        "# defaults are tiny to keep tests fast / WSL-friendly",
    ])

    if old in s:
        s2 = s.replace(old, new)
        write_text(p, s2)
        info("Updated RouterAgent retry comment block ✅")
        return

    # If already updated, no-op
    if "# - retries only when ProviderError.retryable==True" in s:
        info("RouterAgent retry comment already updated (no-op) 👍")
        return

    die("Could not find expected comment anchor to replace.")


PATCHES = {
    "router_retry_comment": patch_router_retry_comment,
}


def main(argv: list[str]) -> int:
    if len(argv) < 2 or argv[1] in {"-h", "--help"}:
        info("Usage: patch.py <patch_name>")
        info("Available patches:")
        for k in sorted(PATCHES.keys()):
            print("  -", k)
        return 0

    name = argv[1]
    fn = PATCHES.get(name)
    if not fn:
        die(f"Unknown patch '{name}'. Run with --help to list patches.")

    fn()
    info("Done 🎉")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
