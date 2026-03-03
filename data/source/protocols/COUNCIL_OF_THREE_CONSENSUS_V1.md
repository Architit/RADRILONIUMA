# COUNCIL OF THREE CONSENSUS V1

contract_type: council_of_three_consensus
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:11:00Z

## Purpose
- Define multi-agent decision consensus for critical architectural TASK_SPEC approvals.
- Reduce single-agent bias and hallucination risk via structured voting.

## Council Profiles
- Elafeya (Heuristic)
- Yakolart (Structure/Contracts)
- Mirashani (Homeostasis/Safety)

## Decision Rule
- A proposal is APPROVED when at least 2 of 3 votes are `APPROVE`.
- Any vote `REJECT_RUNTIME_IMPACT` is blocking until proposal is rewritten.
- Decision outputs must be logged as immutable evidence in governance logs.
