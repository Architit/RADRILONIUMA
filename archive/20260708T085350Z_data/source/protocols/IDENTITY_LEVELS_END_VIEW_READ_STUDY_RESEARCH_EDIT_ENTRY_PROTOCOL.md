# IDENTITY LEVELS END VIEW READ STUDY RESEARCH EDIT ENTRY PROTOCOL

protocol_type: identity_access_governance_contract
scope: end-level identification and access semantics for content interaction lifecycle
mode: contracts-first, observability-first, derivation-only
generated_utc: 2026-02-16T03:21:10Z

## Objective
Standardize identity and access levels for:
- viewing/showing
- reading/studying/research
- editing/entry
with unified identity fields for atlas/map/journal/chronolog/log surfaces.

## Canonical Identity Fields
- tag
- id
- nickname
- name
- fullname

## Surface Pack
- atlas
- map
- journal
- chronolog
- log

## Access Levels
1) `end_view`:
- allow: show/view only
- deny: content mutation

2) `end_read`:
- allow: read + structured extraction
- deny: mutation and entry writes

3) `end_study`:
- allow: read + compare + annotate in external notes
- deny: mutation of canonical surfaces

4) `end_research`:
- allow: read + analysis + dependency mapping + evidence linking
- deny: direct edit of canonical surfaces unless edit gate is granted

5) `end_edit`:
- allow: controlled updates under governance write-order
- require: ASR evidence + sync across status/maps/index

6) `end_entry`:
- allow: register new structured entries (atlas/map/journal/chronolog/log records)
- require: id fields present (`tag/id/nickname/name/fullname`) and validation trail

## Guard Rules
- every `end_edit` and `end_entry` action requires evidence-linked ASR
- missing identity fields => `BLOCKED_PENDING_REVIEW`
- policy-only protocol, no runtime privilege escalation

## Compatibility
Policy-only. No runtime logic. No execution-path impact.
