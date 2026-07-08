# CHRONO RESONANCE PROTOCOL V1

contract_type: chrono_resonance_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:26:25Z

## Purpose
- Define a unified Effective UTC policy across local host, gateway, and repository governance artifacts.
- Prevent timestamp drift between EASSR pulse events, MCP transfers, and governance decisions.

## Synchronization Model
- Canonical time format: ISO-8601 UTC (Z suffix).
- Evidence records must include `effective_utc` and source clock marker.
- Clock conflicts are handled as governance warnings and require reconciliation note.

## Constraints
- No runtime daemon inside DevKit.
- Sync remains evidence-driven and commit-driven.
