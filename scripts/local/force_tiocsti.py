import fcntl
import termios
import sys
import time
from pathlib import Path

TARGET_TTY = '/dev/pts/0'

def inject(text):
    try:
        with open(TARGET_TTY, 'w') as fd:
            for byte in text.encode('utf-8'):
                fcntl.ioctl(fd.fileno(), termios.TIOCSTI, bytes([byte]))
    except Exception as e:
        print(f"Injection failed: {e}")

def get_msg():
    state_file = Path("/home/architit/LAM_CORE/RADRILONIUMA/WORKFLOW_SNAPSHOT_STATE.md")
    content = state_file.read_text(encoding="utf-8")
    return content.split("## NEW_CHAT_INIT_MESSAGE")[1].strip()

msg = get_msg()

# 1. Type /exit
inject("/exit\n")
time.sleep(3)

# 2. Start gemini
inject("gemini\n")
time.sleep(7)

# 3. Inject payload
inject(msg + "\n")
