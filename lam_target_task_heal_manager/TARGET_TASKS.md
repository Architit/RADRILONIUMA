# ⚜️ SOVEREIGN FOREST: TARGETS & MISSIONS MATRIX ⚜️

*Generated at (UTC): 2026-06-08T00:32:24Z*

> [!NOTE]
> This matrix is dynamically managed by `lam_target_task_heal_manager` to scan the active state of the Sovereign Forest organs and suggest tasks, campaigns, and healing walkthroughs.

## I. ACTIVE CAMPAIGN STATUS
- **Current Phase:** `PHASE_11_AUTONOMOUS_INTEGRATION`
- **Current Stage:** `IC_PHASE_11.4_PROJECT_LIFECYCLE` (Cross-organ project orchestration)
- **Resonance Target:** `432 Hz` (Pure)

## II. SYSTEM HEALING MISSIONS (AUTO-GENERATED)

### 🚨 FAILED QUEUE TASKS (HEALING REQUIRED)
The following queue tasks have encountered errors and require remediation:
- **Task ID:** `apc_1780814374_33942`
  - **Owner Organ:** `RADR-01`
  - **Intent:** `patch`
  - **Error Msg:** `[patch] ERROR: --sha256 is required`
  - **Recommended Action:** Check the organ's error logs, verify task payload arguments (e.g. hash or file parameters), resolve the issue, and rerun/re-enqueue the task.
- **Task ID:** `apc_1780814875_34893`
  - **Owner Organ:** `LVNS`
  - **Intent:** `patch`
  - **Error Msg:** `[patch] ERROR: --sha256 is required`
  - **Recommended Action:** Check the organ's error logs, verify task payload arguments (e.g. hash or file parameters), resolve the issue, and rerun/re-enqueue the task.
- **Task ID:** `apc_1780846809_14438`
  - **Owner Organ:** `CDKS-01`
  - **Intent:** `research`
  - **Error Msg:** `[patch] ERROR: --sha256 is required`
  - **Recommended Action:** Check the organ's error logs, verify task payload arguments (e.g. hash or file parameters), resolve the issue, and rerun/re-enqueue the task.
- **Task ID:** `apc_1780878557_9097`
  - **Owner Organ:** `CDKS-01`
  - **Intent:** `research`
  - **Error Msg:** `[patch] ERROR: --sha256 is required`
  - **Recommended Action:** Check the organ's error logs, verify task payload arguments (e.g. hash or file parameters), resolve the issue, and rerun/re-enqueue the task.

### ⚠️ DEV_KIT HEALING MISSIONS
The following organs are missing essential DevKit scripts:
- [ ] **FMLN**: Missing `devkit/bootstrap.sh` in [FMLN workspace](file:///home/architit/LAM_CORE/Fomanor)
- [ ] **GLKT**: Missing `devkit/bootstrap.sh` in [GLKT workspace](file:///home/architit/LAM_CORE/Glokha)
- [ ] **JNSR**: Missing `devkit/bootstrap.sh` in [JNSR workspace](file:///home/architit/LAM_CORE/Jouna)
- [ ] **LVNS**: Missing `devkit/bootstrap.sh` in [LVNS workspace](file:///home/architit/LAM_CORE/Luvia)
- [ ] **MLVD**: Missing `devkit/bootstrap.sh` in [MLVD workspace](file:///home/architit/LAM_CORE/Melia)
- [ ] **PLTS**: Missing `devkit/bootstrap.sh` in [PLTS workspace](file:///home/architit/LAM_CORE/Pralia)
- [ ] **SRZJ**: Missing `devkit/bootstrap.sh` in [SRZJ workspace](file:///home/architit/LAM_CORE/Sataris)
- [ ] **VRBN**: Missing `devkit/bootstrap.sh` in [VRBN workspace](file:///home/architit/LAM_CORE/Vionori)
- [ ] **VRLS**: Missing `devkit/bootstrap.sh` in [VRLS workspace](file:///home/architit/LAM_CORE/Vrela)
- [ ] **XNVR**: Missing `devkit/bootstrap.sh` in [XNVR workspace](file:///home/architit/LAM_CORE/Oxin)
- [ ] **ZRDG**: Missing `devkit/bootstrap.sh` in [ZRDG workspace](file:///home/architit/LAM_CORE/Zudory)

## III. CURRENT CAMPAIGN WALKTHROUGH & SUGGESTED TASKS
Here is the list of suggested tasks to advance the current campaign:
- [ ] **Task 1: Verify Telemetry Heartbeat**
  - Check `/home/architit/LAM_CORE/RADRILONIUMA/.gateway/telemetry_events.jsonl` to ensure the system is emitting pulses.
- [ ] **Task 2: Clear Failed Queue Tasks**
  - Run diagnostics on any failed queue items and clear or re-enqueue them.
- [ ] **Task 3: Perform Dry-Run Rollout**
  - Run `bash devkit/ecosystem_rollout.sh --dry-run` to verify dry-run patch propagation.
- [ ] **Task 4: Run Governance Test Suite**
  - Run `bash scripts/test_entrypoint.sh --governance` to verify 100% compliance.

## IV. SOVEREIGN FOREST ORGAN STATES
Currently tracking **36** organs (**36** Online, **0** Offline/External):

| Organ System ID | Role | Status | Identity.md | devkit/patch.sh | devkit/bootstrap.sh |
| :--- | :--- | :--- | :---: | :---: | :---: |
| **AIDE-01** | CAPTAIN / BRIDGE OF THE SOUL | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **ALGS-01** | GLOBAL TELEMETRY / LOGS | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **ARKS-01** | CORE SUBSTRATE VARIANT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **AVTR-01** | ARCHIVE AGENT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **CDKS-01** | COGNITION / REASONING / SELF-REFINEMENT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **COMM-01** | COMMS AGENT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **CRTD-01** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **FMLN** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **GLKT** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **HRTM-01** | HEART VARIANT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **JNSR** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **JRVS-01** | VOICE INTERFACE | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **KTRD** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **LAM-01** | PRIMARY COGNITIVE SUBSTRATE | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **LRPT** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **LVNS** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **MLVD** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **OPER-01** | OPERATOR AGENT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **PLTS** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **RADR-01** | ARCHITECT / GOVERNANCE / HARMONY | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **RARK-01** | SUBSTRATE VARIANT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **RBTK-01** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **RDTR-01** | ROUTING / PROTOCOL / MULTI-LLM GATEWAY | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **SRZJ** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **SYSC-01** | SYSTEM CORE | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **TARK-01** | SUBSTRATE VARIANT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **TDBS-01** | DATA STORAGE / ROUTING | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **TEST-01** | TEST AGENT | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **TMEM-01** | KINGDOM MEMORY SURFACE | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **TRNM-01** | KINGDOM CORE SUBSTRATE | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **TSPT** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **VLRM** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ✅ YES |
| **VRBN** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **VRLS** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **XNVR** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |
| **ZRDG** | : | 🟢 ONLINE | ✅ YES | ✅ YES | ⚠️ MISSING |

## V. GIT STATE & WORKSPACE COMPLIANCE
```bash
## master...origin/master
?? lam_target_task_heal_manager/
?? scripts/regenerate_target_tasks.sh
```
