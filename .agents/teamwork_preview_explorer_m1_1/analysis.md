# Analysis: Credential Redaction & Security Hardening

## 1. Executive Summary & Problem Scope

This investigation focuses on Milestone M1 requirement **Feature 2: Redact Hardcoded Sudo PIN & Credentials**. 
Specifically, two files in the codebase contain hardcoded plaintext credentials that violate security standards and the zero credential exposure mandate:
1. `core_daemons/nexus_telemetry.py` (Line 38): Hardcoded sudo PIN `3773` passed via shell pipeline (`echo 3773 | sudo -S dmesg | tail -n 20`).
2. `cluster_launcher.py` (Line 17): Hardcoded RCON password `"secret_pass"`.

This analysis provides a comprehensive problem evaluation, safe refactoring strategy, exact before/after code proposals, and verification protocols.

---

## 2. Deep Dive Investigation: `core_daemons/nexus_telemetry.py`

### 2.1 Current Implementation & Flaws

**Location:** `/home/architit/LAM_CORE/RADRILONIUMA/core_daemons/nexus_telemetry.py` lines 33–42

```python
33:     def check_dataflow_integrity(self):
34:         self.log("Verifying dataflow parameters and driver hooks...")
35:         try:
36:             # Use sudo to read dmesg as it requires root permissions
37:             # Using the known system PIN 3773
38:             dmesg_tail = subprocess.check_output("echo 3773 | sudo -S dmesg | tail -n 20", shell=True).decode("utf-8")
39:             if "error" in dmesg_tail.lower() or "fail" in dmesg_tail.lower():
40:                 self.log("Potential dataflow interruption detected in recent kernel logs.", "WARN")
41:         except Exception as e:
42:             self.log(f"Dataflow check failed: {e}", "ERROR")
```

### Identified Security & Architectural Vulnerabilities:

1. **Hardcoded Sudo PIN Exposure (`3773`)**:
   - Storing sudo PINs in plain text in source code exposes system administration privileges to git history, logs, and any repository readers.
2. **Process Table Exposure**:
   - `echo 3773 | sudo -S dmesg` executes via shell, causing `echo 3773` and `sudo -S dmesg` to appear in process listings (`ps aux`) visible to non-root users on shared systems.
3. **Environment Inflexibility & Brittle Execution**:
   - If the daemon runs on a system where sudo PIN is not 3773, or in a non-interactive CI/container environment without root or sudo privileges, the command fails or hangs.
4. **Shell Injection Hazard (`shell=True`)**:
   - Using `shell=True` with string concatenation is insecure and creates unnecessary shell process overhead.
5. **Missing Interface Contract Standard**:
   - According to `PROJECT.md`, `nexus_telemetry` must expose `collect_kernel_logs()` and `send_telemetry_event(event_type, payload)` with telemetry events outputted as JSON Lines to `.gateway/telemetry_events.jsonl`.

### 2.2 Proposed Solution & Refactoring Strategy

1. **Eliminate Hardcoded PIN**: Completely remove `3773` from source code and comments.
2. **Multi-Tiered Safe Retrieval in `collect_kernel_logs()`**:
   - **Tier 1 (Direct non-sudo execution)**: Attempt running `["dmesg"]` directly without `sudo`. (Succeeds if `kernel.dmesg_restrict = 0` or process runs with root privileges).
   - **Tier 2 (Non-interactive sudo execution)**: Attempt running `["sudo", "-n", "dmesg"]`. (Succeeds if passwordless sudo for `dmesg` is configured in `/etc/sudoers`).
   - **Tier 3 (Environment Variable `SUDO_PIN` / `SUDO_PASSWORD`)**: If an environment variable is explicitly provided, pass it securely via `subprocess.run(..., input=pin + "\n")` without using shell pipelines.
   - **Tier 4 (Graceful Fallback)**: If non-root / non-interactive without permissions, log an informative warning message ("Kernel log access restricted: non-root / non-interactive environment"), returning an empty list without raising an unhandled exception or failing the process.
3. **Python Slicing**: Replace `tail -n 20` with native Python list slicing `lines[-20:]`.
4. **JSON Lines Event Logging**: Implement `send_telemetry_event()` to append events to `.gateway/telemetry_events.jsonl`.

---

## 3. Deep Dive Investigation: `cluster_launcher.py`

### 3.1 Current Implementation & Flaws

**Location:** `/home/architit/LAM_CORE/RADRILONIUMA/cluster_launcher.py` lines 13–19

```python
13:         cmd = [
14:             "/run/media/architit/Новый том/LAM_GAME_DEV_MAP_DRAFT/steamapps/common/Factorio/bin/x64/factorio",
15:             "--config", "/home/architit/.gemini/antigravity-cli/brain/f769e1e9-2197-43fe-be8f-78031cedcc28/scratch/config.ini",
16:             "--rcon-port", "27015",
17:             "--rcon-password", "secret_pass",
18:             "--start-server", "/home/architit/snap/steam/common/.factorio/saves/выф.zip"
19:         ]
```

### Identified Vulnerabilities:

1. **Hardcoded RCON Password (`"secret_pass"`)**:
   - Embeds plain text password in line 17 of `cluster_launcher.py`.
2. **Lack of Environment Variable Configuration**:
   - Does not support standard environment variables (e.g. `RCON_PASSWORD` or `FACTORIO_RCON_PASSWORD`).

### 3.2 Proposed Solution & Refactoring Strategy

Replace hardcoded `"secret_pass"` with environment variable resolution and a redacted default:

```python
rcon_password = os.environ.get("FACTORIO_RCON_PASSWORD") or os.environ.get("RCON_PASSWORD") or "REDACTED_DEFAULT_RCON_PASS"
```

In `cmd`:
```python
"--rcon-password", rcon_password,
```

This guarantees zero secrets exposed in committed source code while allowing operational environments to inject custom passwords via `export RCON_PASSWORD=...`.

---

## 4. Proposed Code Snippets (Before -> After)

### 4.1 Proposed Refactoring: `core_daemons/nexus_telemetry.py`

```python
# Before (lines 33-42):
    def check_dataflow_integrity(self):
        self.log("Verifying dataflow parameters and driver hooks...")
        try:
            # Use sudo to read dmesg as it requires root permissions
            # Using the known system PIN 3773
            dmesg_tail = subprocess.check_output("echo 3773 | sudo -S dmesg | tail -n 20", shell=True).decode("utf-8")
            if "error" in dmesg_tail.lower() or "fail" in dmesg_tail.lower():
                self.log("Potential dataflow interruption detected in recent kernel logs.", "WARN")
        except Exception as e:
            self.log(f"Dataflow check failed: {e}", "ERROR")

# After (Refactored & Hardened):
    def collect_kernel_logs(self, lines=20):
        """Collect recent kernel dmesg logs safely without embedding credentials."""
        try:
            # Attempt 1: Direct execution without sudo (root or dmesg_restrict=0)
            res = subprocess.run(["dmesg"], capture_output=True, text=True, timeout=5)
            if res.returncode == 0:
                log_lines = [line for line in res.stdout.strip().split("\n") if line]
                return log_lines[-lines:]

            # Attempt 2: Non-interactive sudo (-n)
            res = subprocess.run(["sudo", "-n", "dmesg"], capture_output=True, text=True, timeout=5)
            if res.returncode == 0:
                log_lines = [line for line in res.stdout.strip().split("\n") if line]
                return log_lines[-lines:]

            # Attempt 3: Secure environment variable input (SUDO_PIN / SUDO_PASSWORD)
            sudo_pin = os.environ.get("SUDO_PIN") or os.environ.get("SUDO_PASSWORD")
            if sudo_pin:
                res = subprocess.run(["sudo", "-S", "dmesg"], input=sudo_pin + "\n", capture_output=True, text=True, timeout=5)
                if res.returncode == 0:
                    log_lines = [line for line in res.stdout.strip().split("\n") if line]
                    return log_lines[-lines:]

            self.log("Kernel log access restricted: non-root / non-interactive environment without sudo permissions", "WARN")
            return []
        except Exception as e:
            self.log(f"Failed to collect kernel logs: {e}", "ERROR")
            return []

    def send_telemetry_event(self, event_type, payload):
        """Send telemetry event to .gateway/telemetry_events.jsonl"""
        try:
            base_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
            gateway_dir = os.path.join(base_dir, ".gateway")
            os.makedirs(gateway_dir, exist_ok=True)
            event_path = os.path.join(gateway_dir, "telemetry_events.jsonl")
            
            event_data = {
                "timestamp": datetime.now().isoformat(),
                "event_type": event_type,
                "payload": payload
            }
            with open(event_path, "a") as f:
                f.write(json.dumps(event_data) + "\n")
        except Exception as e:
            self.log(f"Failed to send telemetry event: {e}", "ERROR")

    def check_dataflow_integrity(self):
        self.log("Verifying dataflow parameters and driver hooks...")
        logs = self.collect_kernel_logs(20)
        dmesg_tail = "\n".join(logs)
        if dmesg_tail and ("error" in dmesg_tail.lower() or "fail" in dmesg_tail.lower()):
            self.log("Potential dataflow interruption detected in recent kernel logs.", "WARN")
            self.send_telemetry_event("DATAFLOW_WARN", {"kernel_log_sample": dmesg_tail})
```

---

### 4.2 Proposed Refactoring: `cluster_launcher.py`

```python
# Before (lines 13-19):
        cmd = [
            "/run/media/architit/Новый том/LAM_GAME_DEV_MAP_DRAFT/steamapps/common/Factorio/bin/x64/factorio",
            "--config", "/home/architit/.gemini/antigravity-cli/brain/f769e1e9-2197-43fe-be8f-78031cedcc28/scratch/config.ini",
            "--rcon-port", "27015",
            "--rcon-password", "secret_pass",
            "--start-server", "/home/architit/snap/steam/common/.factorio/saves/выф.zip"
        ]

# After (Refactored & Hardened):
        rcon_password = os.environ.get("FACTORIO_RCON_PASSWORD") or os.environ.get("RCON_PASSWORD") or "REDACTED_DEFAULT_RCON_PASS"
        cmd = [
            "/run/media/architit/Новый том/LAM_GAME_DEV_MAP_DRAFT/steamapps/common/Factorio/bin/x64/factorio",
            "--config", "/home/architit/.gemini/antigravity-cli/brain/f769e1e9-2197-43fe-be8f-78031cedcc28/scratch/config.ini",
            "--rcon-port", "27015",
            "--rcon-password", rcon_password,
            "--start-server", "/home/architit/snap/steam/common/.factorio/saves/выф.zip"
        ]
```

---

## 5. Verification Plan

1. **Automated Test Suite**:
   Execute `bash scripts/test_entrypoint.sh --all` to verify full test suite passes.
2. **Credential Scanning**:
   Run grep scans to confirm zero remaining instances of hardcoded secrets:
   - `grep -rn "3773" core_daemons/ cluster_launcher.py` -> 0 results
   - `grep -rn "secret_pass" core_daemons/ cluster_launcher.py` -> 0 results
3. **Behavioral Verification**:
   - Run `python3 core_daemons/nexus_telemetry.py` in non-root environment and verify it completes gracefully with WARN log and zero exceptions.
   - Verify `collect_kernel_logs()` and `send_telemetry_event()` output structured JSON to `.gateway/telemetry_events.jsonl`.
