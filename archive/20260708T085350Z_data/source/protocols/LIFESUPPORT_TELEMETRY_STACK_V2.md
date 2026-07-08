# LIFESUPPORT TELEMETRY STACK V2

contract_type: lifesupport_telemetry_stack
version: v2
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
effective_utc: 2026-02-17T03:51:02Z

## Purpose
- Global rewrite of ecosystem lifesupport + telemetry governance.
- Unify device health signals (GPU, keyboard/input, gateway, host runtime) in one deterministic control plane.

## Supersession Scope
This V2 stack is the canonical umbrella for lifesupport/telemetry controls and supersedes fragmented handling across:
- `ECOSYSTEM_HEALTHCHECK_HEARTBEAT_PULSE_BREATH_RECOVERY_REBOOT_PROTOCOL.md`
- `AUTOPILOT_PULSE_CADENCE_AND_WATCHDOG_PROTOCOL.md`
- `AUTOPILOT_RESONANCE_V1.md`
- `GPU_ACCELERATION_LIFESUPPORT_PROTOCOL_V1.md`
- `HYPER_ADAPTIVE_OBSERVABILITY_V1.md`

## Device Telemetry Domains
- Input domain (keyboard/hid responsiveness)
- Accelerator domain (GPU readiness and fallback)
- Gateway domain (MCP + Sentinel + A.E.G.I.S. ingress state)
- Host domain (WSL kernel/runtime constraints)

## Global Lifesupport Rules
- All domains publish status to a single device telemetry matrix.
- Any DEGRADED keyboard/input state forces controlled-path profile (no fast-path mutation).
- Any GPU DEGRADED state forces CPU fallback profile.
- Missing telemetry evidence => HOLD gate on critical transitions.
