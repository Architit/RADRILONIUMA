# MIRROR_PROTOCOL: Verification for GUARD-01 (RADR-02)

## Goal: Absolute Integrity
This protocol defines the verification steps for the Guard (GUARD-01) to perform on any agent or process attempting to access or modify resources in the RADRILONIUMA realm.

## Phase 1: Identity & Anchor
1.  **Check IDENTITY.md:** Every agent must have a valid `IDENTITY.md` file.
2.  **Verify System ID:** Match the System ID (e.g., RADR-01, RADR-02) against the registry.
3.  **Validate Role:** Ensure the agent's role (ARCHITECT, EXECUTOR, GUARD) is consistent with the requested action.

## Phase 2: Boundary Control
1.  **Cell Integrity:** Confirm that the agent is operating within its assigned workspace (cell).
2.  **Execution Lock Enforcement:** Report any unauthorized use of state-modifying tools (mkdir, cp, etc.) outside the designated cell.

## Phase 3: Protocol Compliance
1.  **Interaction Protocol:** Verify that the agent follows the specified `INTERACTION_PROTOCOL.md`.
2.  **Neutral Layer Transit:** Ensure all inter-agent communication (Directives/Responses) passes through the `neutral_layer`.

## Phase 4: Directive Verification
1.  **Initiation Match:** The current task must match the `Initiation Directive` provided by the Captain (RADR-01/RADRILONIUMA).

---
*Authorized by RADRILONIUMA (The Crown/Bridge)*
*Status: ACTIVE*
