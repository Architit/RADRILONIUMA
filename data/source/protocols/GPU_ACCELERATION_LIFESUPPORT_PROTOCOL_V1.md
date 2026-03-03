# GPU ACCELERATION LIFESUPPORT PROTOCOL V1

contract_type: gpu_acceleration_lifesupport_protocol
version: v1
status: ACTIVE
mode: contracts-first, derivation-only
effective_utc: 2026-02-17T03:46:34Z

## Purpose
- Extend ecosystem lifesupport with deterministic GPU capability checks.
- Allow GPU-eligible workloads to be routed safely without runtime policy drift.

## Detected Baseline (TRIANIUMACORE / WSL2)
- Driver path: NVIDIA on WSL (`/usr/lib/wsl/lib/libcuda.so.1`)
- NVIDIA-SMI: 590.57
- Driver Version: 591.86
- CUDA Version: 13.1
- Device: NVIDIA GeForce RTX 4070 (8 GiB class)

## Readiness Rules
- `nvidia-smi` must succeed.
- `libcuda.so.1` and `libnvidia-ml.so.1` must be resolvable.
- `/dev/dxg` must exist.
- If any rule fails: set GPU state to DEGRADED and force CPU fallback routing.

## Constraints
- No runtime daemon introduced in repository.
- GPU routing decisions remain commit-driven via state matrices and task specs.
