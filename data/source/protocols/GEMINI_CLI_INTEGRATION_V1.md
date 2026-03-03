# GEMINI CLI INTEGRATION CONTRACT V1

contract_type: cli_integration
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: ${ts}

## Purpose
- Formalize the use of @google/gemini-cli as a cognitive interface and MCP Gateway.
- Bridge the external LLM reasoning capabilities with the internal TSPT workflow.

## Constraints
- The CLI MUST NOT execute code directly in the host environment without Architect consent.
- All structural changes proposed by Gemini CLI MUST be exported as.patch files.
- Integration with external Data Lakes (Google Drive) MUST use declarative MCP configurations.
