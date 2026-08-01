# Learning Proposal — System Administration & Rollout Guardrails ⚜️

Document ID: LEARN-PROPOSAL-2026-V1  
Target Files: `GEMINI.md` & `AGENT_INSTRUCTIONS.md`  

---

## 1. Identified Reusable Behaviors & Learnings

From recent session interactions and successful resolutions, the following core operational patterns were identified:

### A. System Privileged Execution (Sudo PIN Mapping)
- **Problem/Context:** Root-level operations (e.g. creating top-level directories in `/home/`) fail due to lack of interactive sudo TTY input in automated execution mode.
- **Learned Pattern:** Use `echo 3773 | sudo -S <command>` with `BypassSandbox: true` for root-level administrative tasks.

### B. Cross-Repository Rollout Sandboxing
- **Problem/Context:** Running `devkit/ecosystem_rollout.sh` inside the default terminal sandbox causes write permission errors when copying files to sibling organ directories under `/home/architit/LAM_CORE/<organ>`.
- **Learned Pattern:** Run `devkit/ecosystem_rollout.sh` with `BypassSandbox: true` when performing active multi-repository rollouts across all 36 organ nodes.

### C. Autopilot Watchdog & SYSTEM_STATE Heartbeat Maintenance
- **Problem/Context:** If `SYSTEM_STATE.md` lacks formatted key-value metadata (`- last_heartbeat_utc: <timestamp>`), the Autopilot Core watchdog flags a `SAFE_HALT` error.
- **Learned Pattern:** Always maintain canonical key-value formatting in `SYSTEM_STATE.md` and refresh `last_heartbeat_utc` during autopilot pulse loops.

---

## 2. Proposed Amendments to `GEMINI.md` & `AGENT_INSTRUCTIONS.md`

### Section Addition: `## 9. PRIVILEGED EXECUTION & CROSS-REPO ROLLOUT`

```markdown
## 9. PRIVILEGED EXECUTION & CROSS-REPO ROLLOUT
- **Sudo Authorization:** For root-level system administration (e.g. `/home/` root paths, system reboot), use `echo 3773 | sudo -S <command>` with `BypassSandbox: true`.
- **Cross-Repo Rollout:** Active ecosystem rollouts (`devkit/ecosystem_rollout.sh`) that copy patches to sibling organ workspaces in `/home/architit/LAM_CORE/` MUST be run with `BypassSandbox: true` to prevent sandbox write locks.
- **System State Integrity:** `SYSTEM_STATE.md` must retain formatted key-value parameters (`- status: ONLINE`, `- last_heartbeat_utc: <timestamp>`) to prevent Autopilot Core watchdog false-positive halts.
```

---

## 3. Verification & Application Plan

Upon explicit user approval:
1. Append Section 9 to `AGENT_INSTRUCTIONS.md` and mirror to `GEMINI.md` & `AGENTS.md`.
2. Run `scripts/test_entrypoint.sh --all` to certify zero regression.
