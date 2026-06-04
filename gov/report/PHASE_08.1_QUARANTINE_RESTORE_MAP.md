# PHASE 08.1 QUARANTINE RESTORE MAP (2026-06-04) ⚜️

## I. SCOPE
This document identifies relocated artifacts currently residing in the **Neutral Layer** (`data/local/transit/neutral_layer/core/`) and defines their native owners and restoration targets for Phase 08.2.

---

## II. RESTORE INVENTORY

| Artifact Path | Native Owner | Target Path (in Repository) | Status |
| :--- | :--- | :--- | :--- |
| `core/Aya/MIRROR_STATUS_20260227.md` | AYAS (Ayaearias-Triania) | `gov/asr/MIRROR_STATUS.md` | RESTORED |
| `core/CRTD/HEAL_DIRECTIVE_20260227.md` | CRTD (Croambeth) | `gov/directive/HEAL_DIRECTIVE.md` | RESTORED |
| `core/CRTD/RECOVERED.md` | CRTD (Croambeth) | `gov/status/RECOVERED.md` | RESTORED |
| `core/FMLN/HEARTBEAT.md` | FMLN (Fomanor) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/GLKT/HEARTBEAT.md` | GLKT (Glokha) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/JNSR/HEARTBEAT.md` | JNSR (Jouna) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/KTRD/HEARTBEAT.md` | KTRD (Kitora) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/Larpat/INIT_DIRECTIVE_20260227.md` | LRPT (Larpat) | `gov/directive/INIT.md` | RESTORED |
| `core/Larpat/HEARTBEAT.md` | LRPT (Larpat) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/LVNS/HEARTBEAT.md` | LVNS (Luvia) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/MLVD/HEARTBEAT.md` | MLVD (Melia) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/PLTS/HEARTBEAT.md` | PLTS (Pralia) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/RBTK/HEARTBEAT.md` | RBTK (Aristos) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/RBTK/READY.md` | RBTK (Aristos) | `gov/status/READY.md` | RESTORED |
| `core/SRZJ/HEARTBEAT.md` | SRZJ (Sataris) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/TSPT/HEARTBEAT.md` | TSPT (Taspit) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/VLRM/HEARTBEAT.md` | VLRM (Vilami) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/VRBN/HEARTBEAT.md` | VRBN (Vionori) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/VRLS/HEARTBEAT.md` | VRLS (Vrela) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/XNVR/HEARTBEAT.md` | XNVR (Oxin) | `gov/pulse/HEARTBEAT.md` | RESTORED |
| `core/ZRDG/HEARTBEAT.md` | ZRDG (Zudory) | `gov/pulse/HEARTBEAT.md` | RESTORED |

---

## III. DEEP SCAN PARAMETERS
1.  **Integrity Check:** All Markdown artifacts must be scanned for hidden character drift and PII leakage.
2.  **Metadata Extraction:** Timestamps and Gov-signatures must be parsed into the central ASR index.
3.  **Conflict Resolution:** If a native owner already contains a file with the same name, a 3-way merge is mandatory.

---

## IV. RESTORE TRIGGER (GATE 08.2)
Restoration will commence only after:
1.  Target repositories are verified as **ACTIVE** and **LOCAL**.
2.  `devkit/ecosystem_rollout.sh` is confirmed operational with `--commit` capability.
3.  Architect (Khalidrad) provides **Explicit Architectural Confirmation**.

---
*Authorized by RADRILONIUMA (The Bridge)*
*Status: PLAN_READY*
⚜️🛡️⚜️
