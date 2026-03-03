# ATPLT DEBUG DEVKIT PROTOCOL V2

version: v2.0.0
status: ACTIVE
mode: contracts-first, observability-first, derivation-only
scope: deterministic debug workflow for ATPLT/devkit command execution

effective_utc: 2026-02-16T07:52:10Z

## Purpose
- Standardize debug flow for command execution failures in ATPLT/devkit context.
- Prevent repeated shell-composition failures and subtree operation misfires.
- Bind debug evidence to governance/ASR surfaces.

## Mandatory Debug Flow
1) `DBG-0_CONTEXT_SYNC`
- capture shell profile, cwd, target artifact, and intent.
- capture `env_id` and workspace class from `ENVIRONMENT_CATALOG_V2.md`.

2) `DBG-1_PREFLIGHT`
- run:
  - `devkit/shell_preflight.sh --shell <profile> --command "..."`
  - or `--file <commands.txt>` for batches.
- block execution on `error_count > 0`.

3) `DBG-2_FAILURE_CLASSIFICATION`
- classify into one of:
  - `TV_UNSAFE_COMMAND_COMPOSITION`
  - `TV_PREFLIGHT_PROFILE_MISMATCH`
  - `TV_PREFLIGHT_INVOCATION_QUOTING_RISK`
  - `TV_PWSH_VAR_COLON_BRACES_REQUIRED`
  - `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED`
  - `TV_PERMISSION_DENIED`
  - `TV_SUBTREE_LOCK_DRIFT`

4) `DBG-3_MINIMAL_REPRO`
- produce smallest reproducible command and expected shell profile.

5) `DBG-4_SAFE_REWRITE`
- rewrite command with literal-safe quoting and deterministic args.
- prefer file args and explicit paths over interpolation.

6) `DBG-5_RETRY_GATE`
- retry only after preflight `safe_for_execution=true`.

7) `DBG-6_EVIDENCE_AND_CLOSURE`
- update: `TOOLING_ERROR_ANALYSIS_PREVIOUS_COMMAND.md` or dedicated postmortem.
- sync pointers: `DEV_LOGS.md`, `ROADMAP.md`, `WORKFLOW_SNAPSHOT_STATE.md`, `gov/asr/INDEX.md`.

## Subtree Debug Extension
- For subtree operations, enforce order:
  `SUBTREE_DECISION_PROTOCOL_V2.md` -> `SUBTREE_GATE_MATRIX_V2.md` -> `SUBTREES_LOCK.md`.
- Any lock/state mismatch transitions to:
  `BLOCKED_PENDING_SUBTREE_DECISION_ON_CONFLICT`.

## DevKit Binding
- canonical patcher: `devkit/patch.sh`
- preflight checker: `devkit/shell_preflight_check.py`
- preflight wrapper: `devkit/shell_preflight.sh`
- environment runtime gates: `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`
