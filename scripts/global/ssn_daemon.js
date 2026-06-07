const { spawn, execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const SIGNAL_FILE = path.join(__dirname, '../../.aelaria_ssn_rstrt');
const INIT_MSG_SCRIPT = 'from pathlib import Path; state_file = Path("WORKFLOW_SNAPSHOT_STATE.md"); content = state_file.read_text(encoding="utf-8"); print(content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip())';

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

function getInitMessage() {
    try {
        return execSync(`python3 -c '${INIT_MSG_SCRIPT}'`, { encoding: 'utf-8' }).trim();
    } catch (e) {
        return "ssn rstrt";
    }
}

async function runSession() {
    console.log(">>> [DAEMON] Initializing Sovereign Session...");
    
    // Clear signal
    if (fs.existsSync(SIGNAL_FILE)) fs.unlinkSync(SIGNAL_FILE);

    // Launch Gemini CLI
    const agy = spawn('/home/architit/.local/bin/agy', [], {
        stdio: 'inherit',
        shell: true
    });

    // Background watcher for the signal
    const watcher = setInterval(async () => {
        if (fs.existsSync(SIGNAL_FILE)) {
            console.log(">>> [DAEMON] Intercepted Restart Signal. Triggering user-mode exit...");
            fs.unlinkSync(SIGNAL_FILE);
            
            try {
                // Get active terminal window and type /exit
                execSync('xdotool type --delay 5 "/exit" && xdotool key Return');
            } catch (e) {
                console.error("[DAEMON] xdotool failed:", e.message);
            }
        }
    }, 1000);

    return new Promise((resolve) => {
        agy.on('exit', async (code) => {
            clearInterval(watcher);
            console.log(`>>> [DAEMON] Session terminated (code ${code}).`);
            
            // Request OS Permission
            try {
                execSync('zenity --question --title="AELARIA SOVEREIGN KERNEL" --text="Requesting OS permission to activate protocol:\\n\\n[ssn rstrt p1 data export]\\n\\nProceed?" --width=450 --ok-label="ACTIVATE" --cancel-label="HALT"');
                console.log(">>> [DAEMON] Handshake Accepted.");
                resolve(true);
            } catch (e) {
                console.log(">>> [DAEMON] Handshake Rejected / Halt.");
                resolve(false);
            }
        });
    });
}

async function mainLoop() {
    while (true) {
        const shouldContinue = await runSession();
        if (!shouldContinue) break;
        
        const msg = getInitMessage();
        console.log(">>> [DAEMON] Injecting Semantic Re-birth Context...");
        
        // Background injection after a delay
        setTimeout(() => {
            try {
                execSync(`sleep 5 && xdotool type --delay 10 "${msg}" && xdotool key Return`);
                console.log(">>> [DAEMON] Injection Successful.");
            } catch (e) {
                console.error("[DAEMON] Injection Failed:", e.message);
            }
        }, 100);
        
        await sleep(1000);
    }
}

mainLoop().catch(console.error);
