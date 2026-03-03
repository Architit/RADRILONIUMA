# COUNCIL DEBATE PROTOCOL V1

contract_type: council_debate_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:07:30Z

## Purpose
- Extend Council-of-Three from static voting to structured multi-agent debate.
- Require explicit argumentation evidence before verdict publication.

## Debate Stages
1. Proposal Intake
2. Independent Review (Elafeya, Yakolart, Mirashani)
3. Rebuttal Round
4. Final Verdict Emission

## Gate Rules
- PASS requires >=2 PASS verdicts.
- Any REJECT_RUNTIME_IMPACT blocks the proposal.
- REVISE loops back to Proposal Intake with a delta note.
