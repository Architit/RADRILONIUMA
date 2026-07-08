# INTERNAL KEY PROTOCOL 1 — ZEROIZATION

mode: lifeflowstream
security_model: zero trust
scope: local internal systems, all ecosystem paths

## Purpose
- Immediately invalidate unauthorized or potentially exposed access keys.
- Close unauthorized gates/channels/flows on local internal gateways.

## Coverage Requirement (mandatory)
- Applies to all identity classes:
  - `admin`
  - `operator`
  - `developer`
  - `service_account`
  - `machine_to_machine`
  - `automation/scheduler`
- Applies to all access paths:
  - `cli/local shell`
  - `api/http/grpc`
  - `message bus / queue`
  - `job scheduler / cron`
  - `inter-service channel`
  - `gateway-to-gateway flow`
- No class/path may be excluded.

## Preconditions
- Incident ticket ID is assigned.
- System owner and security owner are identified.
- Change window is approved (or emergency mode declared).

## Procedure
1. Freeze issuance:
- stop new key creation on target system until zeroization ends.

2. Enumerate keys:
- list all active local keys/tokens/certs for every gateway/channel/flow in scope.
- classify by owner, scope, last use, privilege level.
- tag each key with `identity_class` and `path_class`.

3. Mark unauthorized set:
- `UNAUTHORIZED`, `UNKNOWN_OWNER`, `EXPOSED`, `STALE`.

4. Revoke/disable:
- disable all keys in unauthorized set.
- disable dormant high-privilege keys by policy.

5. Gate closure:
- deny traffic on unauthorized channels/flows.
- enforce default deny on gateway ACL/policy.
- apply deny rules across all path classes, not only admin routes.

6. Validate closure:
- verify revoked keys fail authentication.
- verify blocked channels return deny/unauthorized.

## Outputs
- Revocation log with timestamps.
- List of revoked key IDs (no secret material).
- Gateway/channel closure report.
- Ecosystem coverage report by identity/path class.

## Do Not
- Do not store raw secrets in logs/docs.
- Do not re-enable revoked keys without formal review.
