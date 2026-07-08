# TOOL EXECUTION SAFETY PROTOCOL V2

version: v2.0.0
status: ACTIVE
effective_utc: 2026-02-16T07:52:10Z
scope: shell command construction and tooling safety

## Purpose
- Prevent command execution errors caused by unsafe shell composition.
- Provide deterministic command authoring rules for governance tooling.

## Mandatory Rules
1) Use single quotes for search patterns that may contain shell-significant symbols.
2) Avoid unescaped backticks in shell command strings.
3) Treat command construction as data, not interpolation.
4) Prefer direct file-path arguments over embedded shell expansions.
5) Validate command syntax before execution for complex patterns.
6) In PowerShell, when variable is followed by `:`, use brace form:
   - prefer `${var}:...` over `$var:...` unless scope-qualified variable is intended.
7) For preflight invocation, prevent host-shell expansion before checker:
   - prefer `--file` mode for complex commands, or
   - pass `--command` as single-quoted literal in caller shell.
8) For high-impact operations, declare environment profile before execution:
   - `env_id` from `ENVIRONMENT_CATALOG_V2.md`,
   - expected shell profile,
   - workspace root class.
9) If environment profile is undeclared or mismatched, block execution until
   `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md` gates are satisfied.

## Unsafe Pattern (forbidden)
- command strings where backticks are interpreted as command substitution.

## Safe Pattern Examples
- `rg -n 'pattern with `literal` backticks' file.md`
- `rg -n \"pattern with escaped \\` backticks\" file.md`

## Error Handling
- On shell parsing failure:
  - classify as `TV_UNSAFE_COMMAND_COMPOSITION`,
  - stop execution chain for that action,
  - record minimal postmortem with root cause and prevention rule,
  - retry only with safe command construction.
- On PowerShell variable+colon parser failure:
  - classify as `TV_PWSH_VAR_COLON_BRACES_REQUIRED`,
  - rewrite command with `${var}:` form,
  - rerun preflight before retry.
- On preflight invocation quoting risk (host shell expands before checker):
  - classify as `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`,
  - switch to `--file` input or strict single-quoted literal `--command`,
  - rerun preflight and verify expected literal payload.
- On undeclared/mismatched environment profile:
  - classify as `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED`,
  - transition to `BLOCKED_PENDING_ENVIRONMENT_DECISION_ON_CONFLICT`,
  - complete environment tuple and rerun preflight/runtime gates.

## Validation Gate
- `TGATE_SAFETY` must pass before high-impact command batches.
