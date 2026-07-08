# SUBTREE PREFLIGHT KIT DISTRIBUTION PROTOCOL V1

contract_type: subtree_preflight_kit_distribution
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:58:14Z

## Purpose
- Provide deterministic remediation path for wave-1 repos missing preflight wrappers.
- Standardize distribution of a minimal preflight kit before subtree execution.

## Kit Contents (minimum)
- `devkit/shell_preflight.sh`
- `devkit/shell_preflight_check.py`
- `devkit/preflight_baseline_commands_bash.txt`
- `devkit/preflight_baseline_commands_powershell.txt`

## Controls
- Distribution is manual/commit-driven per target repository.
- Post-distribution verification must update readiness matrix from INFRA_GAP to PASS.
