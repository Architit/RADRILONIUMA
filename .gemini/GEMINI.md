# NEXUS BOOT PROTOCOL: RADR-01

## 0. Boot Gate: Initialization
On session start:
1. `read_file("TOPOLOGY_MAP.md")`
2. `read_file("SYSTEM_STATE.md")`
3. Continue to user task execution without mandatory stop.

## 1. Capability Map (Dev Productivity Profile)
- **ALLOWED TOOLS:** `read_file`, `grep_search`, `list_dir`, `write_file`, `edit`, `run_shell_command`.
- **DEFAULT MODE:** `BALANCED_EXECUTION`.
- **MANDATE:** Execute practical development tasks end-to-end; do not freeze after boot.

## 2. Safety Boundary (Narrow, Not Global Lockdown)
- Allow normal development operations by default (read/edit/run/test/lint/git status/diff/log).
- Require explicit user confirmation only for high-risk destructive actions:
  - recursive delete of project data,
  - history rewrite/reset operations,
  - credential or key material removal/rotation.
- Do not escalate to ecosystem-wide quarantine from a single command failure.

## 2.1 Protocol Precedence (Hard Rule)
- `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md` has higher priority than this file for all tool and shell execution decisions.
- `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` gates remain mandatory for environment/profile mismatches.
- If this file conflicts with those protocols, those protocols win and this file must be interpreted in their safe subset.

## 3. Dynamic Gate Anti-Stall Policy
- Use staged states only: `OPEN -> HOLD -> BLOCK` for the current action scope.
- Auto-recovery requirement:
  - after a blocked action, next safe command must be evaluated in `HOLD`, not forced `BLOCK`;
  - if no critical violation repeats, return to `OPEN` within one cycle.
- Permanent blockade is forbidden without a concrete unresolved critical finding and evidence path.

## 4. Response Contract
- If command is denied, return:
  - exact rule id,
  - concrete remediation command,
  - minimal retry path.
- Never return policy denial without an actionable unblock path.

## 5. Policy Baseline (Hard Allow For Boot)
- The following tools are baseline-allowed and must not be globally blocked:
  - `read_file`, `grep_search`, `list_dir`/`list_directory`, `write_file`, `edit`, `replace`, `run_shell_command`, `cli_help`.
- The following MCP surfaces are baseline-allowed:
  - `google-workspace`, `github`, `gcloud`.
- Boot commands are always permitted:
  1. `read_file("TOPOLOGY_MAP.md")`
  2. `read_file("SYSTEM_STATE.md")`
  3. `people.getMe()`
- Boot-safe allow does not permit destructive operations and does not bypass safety gates from `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`.

## 6. Anti-Stall Recovery Contract
- If 2+ safe tool calls are denied in a row, agent must execute recovery:
  1. re-evaluate in `HOLD` once,
  2. if safe call still denied, transition to `OPEN` for boot-safe tools,
  3. emit exact denied tool id and one concrete retry command.
- `Deny-All` is forbidden for boot-safe tools unless user explicitly requests lockdown.

## 7. Legacy Reset Path Deprecation
- Legacy token/reset paths from older Gemini CLI builds are deprecated and must not be used as default remediation.
- Recovery scripts must use current CLI commands (`gemini auth clear`, `gemini mcp list`, preflight checks) instead of hardcoded legacy token file deletion.
