# Phase 4.B — Workflow Snapshot (Export/Import) Contract

This document defines a **repo-native workflow snapshot** used to restore development context across **session restarts**.

Hard constraints:
- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact

This is a declarative contract. No automation is introduced.

---

## 1. Purpose

`WORKFLOW_SNAPSHOT_STATE.md` is the **single canonical snapshot artifact** (state).

`WORKFLOW_SNAPSHOT_CONTRACT.md` defines this contract (rules and required fields) for:
- exporting the current work context at the end of a chat/session,
- importing that context in a new chat using `ssn rstrt`.

This prevents “context loss” and removes reliance on chat history.

---

## 2. Two-phase rule for `ssn rstrt`

`ssn rstrt` MUST be treated as a two-phase operation:

### A) Snapshot Export (in the current chat, before leaving)
- update `WORKFLOW_SNAPSHOT_STATE.md`
- ensure repository is clean or explicitly describe local state
- ensure governance is up to date
- generate `NEW_CHAT_INIT_MESSAGE` (verbatim first message for a new chat `ssn rstrt` Phase 2 IMPORT)

### B) Snapshot Import (in the new chat)
- read `WORKFLOW_SNAPSHOT_STATE.md`
- run read-only context sync:
  - `pwd`
  - `git status -sb`
  - `git log -n 12 --oneline`
- resume at the declared phase/podphase

No environment recovery is performed (that is `cld rstrt` only).

---

## 3. Snapshot content (required fields)

A snapshot MUST contain:

### Identity
- Repository
- Branch
- Timestamp (ISO-8601, UTC recommended)

### Current work pointer
- Current Phase / subphase
- Protocol phase scale (`+1` / `0` / `-1`)
- Protocol phase semantic label (positive / neutral / negative)
- Current goal (1–3 bullets)
- Active constraints (hard)

Protocol phase semantic dictionary (canonical):
- `+1` = positive
- `0` = neutral
- `-1` = negative
- ru: положительный / нейтральный / отрицательный
- en: positive / neutral / negative
- zh: 正向 / 中性 / 负向
- ar: إيجابي / محايد / سلبي
- af: positief / neutraal / negatief
- ja: ポジティブ / ニュートラル / ネガティブ
- es: positivo / neutro / negativo

### Completion ledger
- Completed phases (bullet list)
- Last commits (at least 6, hash + subject)

### Working tree state
- `git status -sb` output
- Any local modifications explicitly listed (should be none)

### References (normative docs)
- INTERACTION_PROTOCOL.md
- ROADMAP.md
- DEV_LOGS.md

### New Chat Init (mandatory)
- `NEW_CHAT_INIT_MESSAGE` (verbatim first message to paste as the first message in a new chat)
- MUST be deterministic and derived only from snapshot facts (no interpretation)
- MUST start with the signal line: `ssn rstrt`

---

## 4. Template (recommended)

```text
# WORKFLOW SNAPSHOT (STATE)

## Identity
repo: <name>
branch: <name>
timestamp: <iso-8601>

## Current pointer
phase: <Phase X.Y.Z>
protocol_scale: <+1|0|-1>
protocol_semantic_en: <positive|neutral|negative>
goal:
- ...
constraints:
- ...

## Completed
- ...

## Recent commits
- <hash> <subject>
- ...

## Git status
<paste `git status -sb`>

## Notes
- ...

## New Chat Init
<paste `NEW_CHAT_INIT_MESSAGE` verbatim as the first message in a new chat>
```

## 5. Non-goals

This contract MUST NOT:

introduce scripts or commands that auto-update snapshots,

introduce CI enforcement,

introduce runtime hooks,

modify execution paths.
