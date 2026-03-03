# System State Snapshot Contract (SS)

## Purpose
This contract defines the required SS-layer output for cold restarts (`cld rstrt`).
SS captures **facts only** about the local execution body (OS/UI/software/hardware/drivers/storage) relevant to reproducibility and recovery.

Policy-only: contracts-first, observability-first, derivation-only.
No automation, no runtime logic, no enforcement.

## Inputs (facts only)
- OS / kernel facts
- execution substrate (WSL/VM/container, if applicable)
- tool availability (git, python, shell)
- filesystem/mount facts relevant to workspace access
- repo/workspace paths used
- connectivity facts (available/unavailable) without assumptions

No speculation. No configuration changes.

## Required Output
SS state MUST provide:

1) Identity
- timestamp (UTC)
- host identifier (as available)
- execution substrate (bare-metal/WSL/VM/container)

2) Software / Tooling facts
- OS distribution/version (if available)
- kernel version
- git version
- python version
- shell version (best-effort)

3) Storage / Workspace facts
- primary workspace root path(s)
- repo path(s) in use
- presence of DevKit patcher (devkit/patch.sh)

4) Notes (facts only)
- any missing tools or paths observed
- any recovery performed (if any) stated as facts

## Non-goals
SS snapshot MUST NOT:
- store secrets/tokens
- store chat logs or reasoning
- perform system modifications
