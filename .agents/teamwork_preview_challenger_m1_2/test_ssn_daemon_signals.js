const { spawn } = require('child_process');
const fs = require('fs');
const path = require('path');

const BASE_DIR = path.resolve(__dirname, '../../');
const GATEWAY_DIR = path.join(BASE_DIR, '.gateway');
const RESTART_SIGNAL = path.join(GATEWAY_DIR, 'ssn_restart.signal');
const EXIT_SIGNAL = path.join(GATEWAY_DIR, 'ssn_exit.signal');

console.log("=== EMPIRICAL TEST: ssn_daemon.js Signal Handling ===");

// We will launch ssn_daemon.js with AGY_BIN set to a mock script that logs stdin and exits when receiving /exit
const mockAgyPath = path.join(__dirname, 'mock_agy.sh');
fs.writeFileSync(mockAgyPath, `#!/bin/bash
echo "MOCK AGY STARTED"
while read -r line; do
  echo "MOCK AGY RECEIVED: $line"
  if [[ "$line" == *"/exit"* ]]; then
    echo "MOCK AGY EXITING"
    exit 0
  fi
done
`, { mode: 0o755 });

fs.mkdirSync(GATEWAY_DIR, { recursive: true });

const daemon = spawn('node', [path.join(BASE_DIR, 'scripts/global/ssn_daemon.js')], {
    env: { ...process.env, AGY_BIN: mockAgyPath },
    stdio: ['ignore', 'pipe', 'pipe']
});

let daemonLogs = '';
daemon.stdout.on('data', (d) => {
    const text = d.toString();
    daemonLogs += text;
    console.log('[DAEMON STDOUT]', text.trim());
});
daemon.stderr.on('data', (d) => console.error('[DAEMON STDERR]', d.toString().trim()));

setTimeout(() => {
    console.log("--- Creating ssn_restart.signal ---");
    fs.writeFileSync(RESTART_SIGNAL, "1");
}, 1200);

setTimeout(() => {
    console.log("--- Creating ssn_exit.signal ---");
    fs.writeFileSync(EXIT_SIGNAL, "1");
}, 3000);

setTimeout(() => {
    daemon.kill('SIGKILL');
    if (fs.existsSync(mockAgyPath)) fs.unlinkSync(mockAgyPath);
    console.log("=== SIGNAL TEST SUMMARY ===");
    if (daemonLogs.includes("Intercepted Restart Signal") && daemonLogs.includes("Intercepted Exit Signal")) {
        console.log("[PASS] Signal intercept watcher successfully detected restart and exit signals!");
    } else {
        console.log("[FAIL] Signal intercept failed to catch signals. Logs:\n" + daemonLogs);
    }
    process.exit(0);
}, 4500);
