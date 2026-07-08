# LEARNING SIGNAL CONTRACT V1

contract_type: learning_signal_contract
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:12:03Z

## Purpose
- Convert operational outcomes into static semantic learning signals.
- Prevent recurrence of previously observed failure patterns.
- Provide deterministic preconditions for agent task generation.

## Rules
- Learning signals are stored only as static artifacts in LRPT/journal.
- No model fine-tuning or runtime self-modification is allowed.
- Every critical failure class must produce a normalized signal entry.
- Council verdicts may update signal severity and mitigation notes.

## Mandatory Precondition Binding
- Before generating or approving a critical TASK_SPEC, agents must read
  LRPT/journal/SYNAPTIC_WEIGHTS_V1.yaml and apply active constraints.
