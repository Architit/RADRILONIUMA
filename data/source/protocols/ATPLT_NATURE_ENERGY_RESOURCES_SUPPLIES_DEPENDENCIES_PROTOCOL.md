# ATPLT NATURE ENERGY RESOURCES SUPPLIES DEPENDENCIES PROTOCOL

protocol_type: ecosystem_resource_governance_contract
scope: atplt nature-energy-resource-supply dependency mapping
mode: contracts-first, observability-first, derivation-only
generated_utc: 2026-02-16T03:08:08Z

## Objective
Define deterministic governance mapping for:
- nature context
- energy generation
- resources and supplies
- dependency chains
for ARCKHANGEL guarddog/heal operational planning.

## Canonical Mapping Tuple
- domain
- source
- dependency_type
- dependency_target
- criticality
- fallback
- evidence_ref

## Required Dependency Layers
1) nature layer
2) energy generation layer
3) resource/supply layer
4) module/runtime dependency layer
5) governance dependency layer (contracts/protocols/maps/index)

## Guard Rules
- no execution-path mutation from this protocol
- dependency assertions must be evidence-linked
- unresolved critical dependency => `BLOCKED_PENDING_REVIEW`

## Compatibility
Policy-only. No runtime logic. No execution-path impact.
