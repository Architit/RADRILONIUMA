# HANDOFF REPORT — NON-GUI PROCESS SIGNALING & IPC REFACTORING

**Author:** Explorer M1-3 (`teamwork_preview_explorer_m1_3`)  
**Target:** `scripts/global/ssn_daemon.js` & `scripts/global/sovereign_kernel.py`  
**Working Directory:** `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_3`  
**Date:** 2026-08-02  

---

## 1. Observation

1. **`scripts/global/ssn_daemon.js` (lines 41 & 88)**:
   - Line 41: `execSync('xdotool type --delay 5 "/exit" && xdotool key Return');`
   - Line 88: `execSync('sleep 5 && xdotool type --delay 10 "${msg}" && xdotool key Return');`
   - Line 61: `execSync('zenity --question --title="AELARIA SOVEREIGN KERNEL" ...');`
   - Line 5: `const SIGNAL_FILE = path.join(__dirname, '../../.aelaria_ssn_rstrt');`

2. **`scripts/global/sovereign_kernel.py` (v4.0)**:
   - Lines 30-31: 
     `self.signal_file = BASE_DIR / ".gateway" / "ssn_restart.signal"`  
     `self.exit_signal_file = BASE_DIR / ".gateway" / "ssn_exit.signal"`
   - Line 283: `os.write(fd, b"\x03\x03\x03/exit\r\n")` (Direct PTY write upon signal detection)
   - Line 289: `os.killpg(os.getpgid(pid), 9)` (Direct POSIX process kill upon exit signal)
   - Lines 303-306: PTY stream readiness detection (`b"\x1b]0;"`, `b"Type your message"`, `b"Active Topic:"`) followed by direct PTY write `os.write(fd, (msg + "\r\n").encode())`.

3. **Trigger Scripts**:
   - `scripts/local/trigger_ssn_rstrt.sh` touches `/home/architit/LAM_CORE/RADRILONIUMA/.gateway/ssn_restart.signal`.
   - `scripts/local/trigger_ssn_exit.sh` touches `/home/architit/LAM_CORE/RADRILONIUMA/.gateway/ssn_exit.signal`.

---

## 2. Logic Chain

1. **Observation 1 & 2**: `ssn_daemon.js` uses `xdotool` synthetic keyboard events to type `/exit` and prompt text into the active window. `xdotool` routes keypresses to whichever window has X11 input focus at execution time.
2. **Deduction 1**: If an operator or automated agent switches window focus while `ssn_daemon.js` executes `xdotool`, keystrokes are typed into an arbitrary external window, causing input hijacking, lost editor state, or unintended command execution.
3. **Observation 1 & 3**: `ssn_daemon.js` looks for `.aelaria_ssn_rstrt`, whereas canonical trigger scripts (`trigger_ssn_rstrt.sh`) and `sovereign_kernel.py` write/read `.gateway/ssn_restart.signal`.
4. **Deduction 2**: `ssn_daemon.js` is disconnected from canonical trigger scripts and relies on legacy GUI tools (`zenity`, `xdotool`).
5. **Observation 2 & 3**: `sovereign_kernel.py` manages `agy` via a PTY master file descriptor (`master_fd`), detecting `.gateway/ssn_restart.signal` and `.gateway/ssn_exit.signal` and writing bytes directly to the process's PTY stdin.
6. **Deduction 3**: `xdotool` can be completely eliminated in `ssn_daemon.js` by spawning `agy` with stdio pipes (`stdio: ['pipe', 'inherit', 'inherit']`) or adopting `sovereign_kernel.py`'s non-GUI PTY file descriptor design, standardizing on `.gateway/ssn_restart.signal` and `.gateway/ssn_exit.signal`.

---

## 3. Caveats

- **Wayland vs X11**: On pure Wayland sessions without Xwayland focus or active desktop sessions, `xdotool` fails unconditionally.
- **Node.js vs Python**: `sovereign_kernel.py` (v4.0 Python PTY) is currently the active production supervisor for session management; `ssn_daemon.js` is a secondary/legacy Node.js implementation that requires synchronization if retained.

---

## 4. Conclusion

`xdotool` keyboard injection in `scripts/global/ssn_daemon.js` (lines 41, 88) presents a critical X11 input hijacking hazard and fails in headless/server environments.

The recommended refactoring:
1. Replace `xdotool` synthetic keypresses and `zenity` dialogs in `ssn_daemon.js` with direct stdio pipe writes (`agy.stdin.write("\x03\x03/exit\n")`) and POSIX signal handling (`process.on('SIGUSR1', ...)`).
2. Align signal file paths in `ssn_daemon.js` with `.gateway/ssn_restart.signal` and `.gateway/ssn_exit.signal`.
3. Standardize system-wide session orchestration around `sovereign_kernel.py` (v4.0) PTY stream control.

A complete non-GUI refactored implementation of `ssn_daemon.js` has been formulated and documented in `analysis.md`.

---

## 5. Verification Method

1. **Inspect Reports**:
   - Verify detailed analysis in `/home/architit/LAM_CORE/RADRILONIUMA/.agents/teamwork_preview_explorer_m1_3/analysis.md`.
2. **Static Inspection of `ssn_daemon.js`**:
   - `view_file` on `scripts/global/ssn_daemon.js` lines 41 & 88 to verify `xdotool` usage.
3. **Static Inspection of `sovereign_kernel.py`**:
   - `view_file` on `scripts/global/sovereign_kernel.py` lines 278-306 to verify non-GUI PTY stream control.
4. **Test Suite Verification**:
   - Execute `bash scripts/test_entrypoint.sh` to confirm governance test suite passes.
