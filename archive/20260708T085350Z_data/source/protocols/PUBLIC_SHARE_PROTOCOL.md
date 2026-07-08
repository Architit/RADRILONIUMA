# PUBLIC SHARE PROTOCOL

policy_version: v2.0.0
mode: lifeflowstream
security_model: zero trust
scope: outbound/public publication
effective_utc: 2026-02-16T05:42:10Z

## Goal
- Prevent leakage of secrets, PII, and internal-only materials in any outbound share.
- Enforce deterministic publication gates with auditable decisions.

## Classification Gate
- `ALLOW_CLASS`:
  - public documentation,
  - sanitized metrics,
  - explicitly approved non-sensitive artifacts.
- `DENY_CLASS`:
  - secrets, keys, tokens, credentials,
  - raw PII and identity linkage artifacts,
  - internal auth/governance control materials.

## Mandatory Checks Before Share
1. Secret scan (key/token/password signature patterns).
2. PII scan (email/phone/ID/payment and related patterns).
3. Ownership and publication approval check.
4. Artifact integrity stamp (hash + version).
5. Evidence pointer registration (ASR/index for high-impact publication).

## Decision States
- `GREEN_ALLOW_PUBLISH`: all checks passed.
- `YELLOW_MANUAL_SECURITY_REVIEW`: uncertain findings, publication paused.
- `RED_BLOCK_PUBLISH`: sensitive leak risk or mandatory check failure.

## Block Conditions
- missing owner approval,
- unresolved secret/PII findings,
- missing integrity stamp,
- policy conflict not yet resolved.

## Audit Requirements
- Maintain publication manifest with:
  - package identity and hash,
  - approver IDs/roles,
  - decision state,
  - UTC timestamp,
  - evidence/ASR pointer.
