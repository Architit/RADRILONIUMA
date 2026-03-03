# VERSION GATE RESET PROTOCOL

timestamp_utc: 2026-02-13T10:12:25Z
scope: all ecosystem version transitions
mode: mandatory pre-gate governance

## Rule 0 (Always)
- Any new version gate MUST start a new phase:
  - `PHASE {N}.PRE-GATE-RESET` (or `SUBPHASE {N}.X` when already inside active phase).
- Transition to next version is forbidden until this pre-gate phase is closed.

## Rule 1 (Full Ecosystem Revision)
- Mandatory full revision before every new version:
  - all tracked repositories,
  - protocol artifacts,
  - maps/logs/chronologs coherence,
  - drift status, heartbeat status, blocked-risk register.
- Required checks:
  - Protocol Drift Gate v1,
  - ESSR/ESR heartbeat checkpoint,
  - clean-tree verification matrix.

## Rule 2 (Map/Log/Chronolog Reset Pack)
- Mandatory reset pack preparation:
  - maps,
  - logs,
  - chronologs.
- Reset here means versioned baseline regeneration, not destructive deletion.
- Historical records remain immutable evidence.

## Rule 3 (Encryption + Archive to Previous Space)
- Before opening new version gate, the previous-space pack MUST be:
  - archived,
  - cryptographically protected (encrypted at rest),
  - integrity-stamped (hash manifest),
  - reference-linked in ASR.
- This repository defines policy/contracts only; cryptographic implementation is executed in designated secure environments.

## Rule 4 (Internal Protocol Compliance Gate)
- Internal systems compliance must be explicitly marked:
  - `COMPLIANT` or `BLOCKED`,
  - with blockers and remediation checklist.
- No progression to next subphase if compliance is not `COMPLIANT`.

## Rule 5 (Next Subphase Start Conditions)
- New subphase may start only when all are true:
  - revision complete,
  - reset pack complete,
  - encrypted archive registered,
  - compliance gate marked `COMPLIANT`,
  - ASR + INDEX + ROADMAP + DEV_LOGS updated.

## Rule 6 (Formation Scope for New Space)
- After gate close, new space/environment formation includes:
  - new maps and atlas layers,
  - development maps,
  - protocol maps,
  - systems/kernels/modules,
  - squads/clusters/families/colonies,
  - terraforming and life-support protocol layers.

## Constraints
- contracts-first
- observability-first
- derivation-only
- no runtime logic changes
