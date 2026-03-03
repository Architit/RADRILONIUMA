# MCP GATEWAY PROTOCOL V1

contract_type: mcp_gateway_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:16:05Z

## Purpose
- Define a unified Model Context Protocol boundary for external integrations.
- Standardize context access from OneDrive, Google Drive, and local gateway paths.
- Keep zero-trust validation and observability controls at gateway level.

## Scope
- Declarative endpoint registry and access policies only.
- No runtime connector execution inside DevKit.

## Security Rules
- Every endpoint must declare trust class, read/write scope, and retention policy.
- Sentinel guard applies pass/reject filtering before TSPT ingress.
- Any endpoint with missing policy metadata is blocked.
