# SUBTREE MYCELIAL STRATEGY V1

contract_type: subtree_mycelial_strategy
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:30:58Z

## Purpose
- Define safe propagation of LRPT/TSPT governance structures to downstream repositories.
- Standardize rollout waves, prerequisites, and verification checkpoints.

## Scope
- Strategy and governance artifacts only.
- No automatic subtree push execution from DevKit runtime.

## Core Rules
- Rollout is wave-based and evidence-backed.
- Every target repository must pass preflight and governance checks before promotion.
- Rollback path must be declared per wave.
