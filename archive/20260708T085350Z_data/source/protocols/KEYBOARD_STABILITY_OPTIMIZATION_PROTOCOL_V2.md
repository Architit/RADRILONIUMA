# KEYBOARD STABILITY OPTIMIZATION PROTOCOL V2

contract_type: keyboard_stability_optimization
version: v2
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:51:02Z

## Purpose
- Prevent keyboard freeze/stall events during intensive agent workflows.
- Define deterministic anti-freeze controls for WSL + host input pipeline.

## Detection Signals
- Input heartbeat lag beyond threshold.
- Repeated keydrop/stuck-key patterns.
- Terminal focus loss during sustained generation loops.

## Anti-Freeze Controls
- Input heartbeat interval: 5s evidence check in telemetry artifacts.
- Freeze threshold: 3 consecutive missed heartbeats.
- On threshold breach: set keyboard state to DEGRADED and force CONTROLLED_PATH only.
- Recovery requires manual operator acknowledgment + heartbeat restoration evidence.

## Host Optimization Policy (Declarative)
- Prefer wired keyboard path for long sessions.
- Disable host USB selective suspend for active input devices.
- Keep NVIDIA + chipset + USB controller drivers current.
- Avoid concurrent high-frequency polling overlays during long generation loops.
