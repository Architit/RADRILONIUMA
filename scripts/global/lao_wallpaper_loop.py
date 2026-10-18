import time
import subprocess
from pathlib import Path

VENV_PYTHON = "/root/RADRILONIUMA/venv/bin/python3"
AGENT_SCRIPT = "/root/RADRILONIUMA/sys/core/lao/lao_poster_agent.py"

if __name__ == '__main__':
    while True:
        try:
            subprocess.run([VENV_PYTHON, AGENT_SCRIPT], check=False)
        except Exception as e:
            print(f'Error updating wallpaper: {e}')
        
        # Aligned to 10-second cadence for real-time seconds ticking with zero drift
        now_ts = time.time()
        sleep_sec = 10.0 - (now_ts % 10.0)
        if sleep_sec < 0.5:
            sleep_sec += 10.0
        time.sleep(sleep_sec)
