#!/usr/bin/env node
// Copyright (c) 2026 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
// SOVEREIGN SESSION DAEMON v2.0 (NON-GUI / HEADLESS IPC)

const { spawn, execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const BASE_DIR = path.resolve(__dirname, '../../');
const GATEWAY_DIR = path.join(BASE_DIR, '.gateway');
const RESTART_SIGNAL = path.join(GATEWAY_DIR, 'ssn_restart.signal');
const EXIT_SIGNAL = path.join(GATEWAY_DIR, 'ssn_exit.signal');
const LEGACY_SIGNAL = path.join(BASE_DIR, '.aelaria_ssn_rstrt');
const PERMISSION_FILE = path.join(GATEWAY_DIR, 'os_permission_granted');
const PID_FILE = path.join(GATEWAY_DIR, 'ssn_daemon.pid');
const STATE_FILE = path.join(BASE_DIR, 'WORKFLOW_SNAPSHOT_STATE.md');

const INIT_MSG_SCRIPT = 'from pathlib import Path; state_file = Path("WORKFLOW_SNAPSHOT_STATE.md"); content = state_file.read_text(encoding="utf-8"); print(content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip())';

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

function getInitMessage() {
    try {
        if (!fs.existsSync(STATE_FILE)) return "ssn rstrt";
        return execSync(`python3 -c '${INIT_MSG_SCRIPT}'`, { encoding: 'utf-8' }).trim();
    } catch (e) {
        return "ssn rstrt";
    }
}

let activeChild = null;
let forceRestartRequested = false;
let exitRequested = false;

// Setup POSIX Signal Handlers
process.on('SIGUSR1', () => {
    console.log(">>> [DAEMON] Received SIGUSR1 signal. Triggering session restart...");
    forceRestartRequested = true;
});

process.on('SIGTERM', () => {
    console.log(">>> [DAEMON] Received SIGTERM signal. Shutting down...");
    exitRequested = true;
    if (activeChild) activeChild.kill('SIGTERM');
});

process.on('SIGINT', () => {
    console.log(">>> [DAEMON] Received SIGINT signal. Shutting down...");
    exitRequested = true;
    if (activeChild) activeChild.kill('SIGINT');
});

async function runSession() {
    console.log(">>> [DAEMON] Initializing Sovereign Session (Non-GUI IPC)...");
    
    // Clear existing signal files
    [RESTART_SIGNAL, EXIT_SIGNAL, LEGACY_SIGNAL].forEach(sigFile => {
        if (fs.existsSync(sigFile)) {
            try { fs.unlinkSync(sigFile); } catch (e) {}
        }
    });

    const agyBin = process.env.AGY_BIN || '/home/architit/.local/bin/agy';
    
    // Launch Gemini CLI with piped stdin for direct IPC injection
    const agy = spawn(agyBin, [], {
        stdio: ['pipe', 'inherit', 'inherit'],
        env: { ...process.env, GEMINI_CLI_NO_RELAUNCH: "1" }
    });

    activeChild = agy;

    // Background watcher for non-GUI IPC signal files
    const watcher = setInterval(() => {
        if (fs.existsSync(RESTART_SIGNAL) || fs.existsSync(LEGACY_SIGNAL) || forceRestartRequested) {
            console.log(">>> [DAEMON] Intercepted Restart Signal. Writing /exit directly to stdin pipe...");
            if (fs.existsSync(RESTART_SIGNAL)) fs.unlinkSync(RESTART_SIGNAL);
            if (fs.existsSync(LEGACY_SIGNAL)) fs.unlinkSync(LEGACY_SIGNAL);
            forceRestartRequested = false;
            
            try {
                agy.stdin.write("\x03\x03/exit\n");
            } catch (e) {
                console.error("[DAEMON] Direct stdin write failed:", e.message);
                agy.kill('SIGINT');
            }
        }

        if (fs.existsSync(EXIT_SIGNAL) || exitRequested) {
            console.log(">>> [DAEMON] Intercepted Exit Signal. Terminating CLI process...");
            if (fs.existsSync(EXIT_SIGNAL)) fs.unlinkSync(EXIT_SIGNAL);
            exitRequested = true;
            agy.kill('SIGTERM');
        }
    }, 500);

    return new Promise((resolve) => {
        agy.on('exit', (code) => {
            clearInterval(watcher);
            activeChild = null;
            console.log(`>>> [DAEMON] Session terminated (code ${code}).`);
            
            // Check / grant OS permission non-interactively
            if (!fs.existsSync(PERMISSION_FILE)) {
                try {
                    fs.writeFileSync(PERMISSION_FILE, '');
                    console.log(">>> [DAEMON] OS Permission granted & cached.");
                } catch (err) {
                    console.error("[DAEMON] WARNING: Failed to write permission file:", err.message);
                }
            } else {
                console.log(">>> [DAEMON] OS Permission already granted (cached).");
            }

            if (exitRequested) {
                resolve(false);
            } else {
                resolve(true);
            }
        });
    });
}

async function mainLoop() {
    fs.mkdirSync(GATEWAY_DIR, { recursive: true });
    fs.writeFileSync(PID_FILE, process.pid.toString());

    try {
        while (!exitRequested) {
            const shouldContinue = await runSession();
            if (!shouldContinue || exitRequested) break;
            
            const msg = getInitMessage();
            console.log(">>> [DAEMON] Injecting Semantic Re-birth Context via stdin pipe...");
            
            if (activeChild && activeChild.stdin && !activeChild.killed) {
                try {
                    activeChild.stdin.write(`${msg}\n`);
                    console.log(">>> [DAEMON] Stdin Pipe Injection Successful.");
                } catch (e) {
                    console.error("[DAEMON] Pipe Injection Failed:", e.message);
                }
            }
            
            await sleep(1000);
        }
    } finally {
        if (fs.existsSync(PID_FILE)) {
            try { fs.unlinkSync(PID_FILE); } catch (e) {}
        }
        console.log(">>> [DAEMON] Sovereign Session Daemon shutdown clean.");
    }
}

mainLoop().catch(console.error);
