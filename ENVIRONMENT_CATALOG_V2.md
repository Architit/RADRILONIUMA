# ENVIRONMENT_CATALOG_V2

version: v2.0.0
last_updated_utc: 2026-03-03T09:00:00Z

## Profiles

| env_id | shell | workspace_class | description | state |
|---|---|---|---|---|
| ENV_LOCAL_NEXUS_BASH | bash | nexus_local_workspace | primary RADRILONIUMA execution profile | ACTIVE |
| ENV_LOCAL_NEXUS_PWSH | powershell | nexus_local_workspace | compatibility profile for PowerShell preflight | ACTIVE |

## Gate Notes
- Any undeclared environment usage should be classified as `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED`.

