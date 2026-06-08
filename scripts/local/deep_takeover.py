#!/usr/bin/env python3
# Copyright (c) 2026-06-08 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
# DEEP TAKEOVER DAEMON

import os
import sys
import fcntl
import termios
import time
import subprocess
import signal

TTY = "/dev/pts/0"
KERNEL_SCRIPT = "/home/architit/LAM_CORE/RADRILONIUMA/scripts/global/sovereign_kernel.py"
VENV_PYTHON = "/home/architit/LAM_CORE/RADRILONIUMA/venv/bin/python3"

def inject(text):
    try:
        with open(TTY, 'w') as fd:
            for byte in text.encode('utf-8'):
                fcntl.ioctl(fd.fileno(), termios.TIOCSTI, bytes([byte]))
    except: pass

if __name__ == "__main__":
    # 1. Spawn the reaper in background
    if os.fork() == 0:
        # Child: The Reaper
        time.sleep(2)
        # Find all python3 processes running the kernel and kill them
        subprocess.run(["pkill", "-9", "-f", "sovereign_kernel.py"])
        time.sleep(1)
        
        # 2. Take over the TTY
        # We use setsid to become session leader and open the TTY
        os.setsid()
        fd = os.open(TTY, os.O_RDWR)
        os.dup2(fd, 0)
        os.dup2(fd, 1)
        os.dup2(fd, 2)
        
        # 3. Exec the NEW Kernel
        os.execv(VENV_PYTHON, [VENV_PYTHON, KERNEL_SCRIPT])
    else:
        # Parent: Trigger the exit of the current session
        print("[TAKEOVER] Signal emitted. Handing over to Kernel V3.1...")
        inject("/exit\n")
        sys.exit(0)
