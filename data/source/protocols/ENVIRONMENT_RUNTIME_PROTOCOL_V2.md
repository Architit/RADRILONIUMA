# ENVIRONMENT RUNTIME PROTOCOL V2

version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: deterministic runtime/profile gates for environment-sensitive operations

## Runtime Lifecycle
1) `ERUN_PROFILE_DECLARED`
- environment profile selected from `ENVIRONMENT_CATALOG_V2.md`.

2) `ERUN_PREFLIGHT_PASSED`
- preflight checks passed for target shell/profile.

3) `ERUN_EXECUTION_ALLOWED`
- operation allowed under active environment gates.

4) `ERUN_EXECUTION_RECORDED`
- outcome and evidence recorded.

5) `ERUN_CLOSED`
- state pointers updated and ASR indexed.

## Mandatory Runtime Tuple
- `env_id`
- `shell_profile`
- `workspace_root_class`
- `risk_class`
- `preflight_status`
- `binary_decision: ALLOW|BLOCK`

## Environment Gates
- `EGATE-1_PROFILE_GATE`: environment profile exists in catalog.
- `EGATE-2_SHELL_GATE`: shell profile is supported for requested operation.
- `EGATE-3_PREFLIGHT_GATE`: preflight checks pass for command set.
- `EGATE-4_WORKSPACE_GATE`: workspace path class matches policy.
- `EGATE-5_SYNC_GATE`: SoT pointers synchronized.
- `EGATE-6_CLOSURE_GATE`: ASR indexed and closure state set.

## Conflict State
- unresolved environment transition state:
  `BLOCKED_PENDING_ENVIRONMENT_DECISION_ON_CONFLICT`

## Fault Classification
- `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED`
- `TV_PREFLIGHT_PROFILE_MISMATCH`
- `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`
- `TV_UNSAFE_COMMAND_COMPOSITION`
- `TV_PWSH_VAR_COLON_BRACES_REQUIRED`

## Prohibitions
- no runtime execution with undeclared profile.
- no profile-sensitive command retry without preflight.
- no closure with stale environment status pointers.
effective_utc: 2026-02-16T07:52:10Z
classification_scope: environment/profile execution faults
