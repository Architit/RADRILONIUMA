# DEV_MAP

last_updated_utc: 2026-03-03T09:00:00Z

## Tooling Surfaces
- devkit/patch.sh
- devkit/shell_preflight.sh
- devkit/shell_preflight_check.py
- devkit/ecosystem_rollout.sh
- devkit/task_spec_template.yaml
- scripts/task_spec_validator.py
- contract/PATCH_RUNTIME_CONTRACT_V1.md

## Operational Wrapper
- scripts/ecosystem_rollout.sh -> forwards to devkit/ecosystem_rollout.sh
- scripts/test_entrypoint.sh --governance -> task spec validator + governance tests
- scripts/test_entrypoint.sh --patch-runtime -> phase B patch runtime governance tests
