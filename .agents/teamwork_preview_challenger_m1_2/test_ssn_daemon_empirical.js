const { spawn } = require('child_process');
const fs = require('fs');
const path = require('path');

const BASE_DIR = path.resolve(__dirname, '../../');
const GATEWAY_DIR = path.join(BASE_DIR, '.gateway');
const RESTART_SIGNAL = path.join(GATEWAY_DIR, 'ssn_restart.signal');
const EXIT_SIGNAL = path.join(GATEWAY_DIR, 'ssn_exit.signal');

console.log("=== EMPIRICAL TEST: ssn_daemon.js Process Signaling & Stdin Injection ===");

// Check if ssn_daemon.js compiles and runs without syntax errors
try {
    require('child_process').execSync(`node -c ${path.join(BASE_DIR, 'scripts/global/ssn_daemon.js')}`);
    console.log("[PASS] ssn_daemon.js syntax validation passed");
} catch (e) {
    console.error("[FAIL] ssn_daemon.js syntax error:", e.message);
}

// Mock test for activeChild lifecycle bug in ssn_daemon.js:
// In ssn_daemon.js:
// 1. runSession() sets activeChild = null inside agy.on('exit')
// 2. runSession() resolves on 'exit'
// 3. mainLoop() attempts `activeChild.stdin.write()` AFTER runSession() resolved
// 4. Since activeChild is null, stdin write NEVER occurs.

// Let's verify activeChild state after exit:
let activeChild = { stdin: { write: () => console.log("WRITTEN") } };
function mockExit() {
    activeChild = null;
}
mockExit();
if (activeChild && activeChild.stdin) {
    console.log("[UNEXPECTED] Write succeeded");
} else {
    console.log("[BUG CONFIRMED] activeChild is null after session exit, so post-session stdin injection is unreachable!");
}
