import os, sys, fcntl, termios, subprocess, time

# 1. Signal
with open('.gateway/ssn_restart.signal', 'w') as f:
    f.write('REBIRTH')

# 2. Start Kernel (detached)
log_path = '/home/architit/LAM_CORE/RADRILONIUMA/lam_kernel_logs_core/kernel.log'
with open(log_path, 'a') as log:
    subprocess.Popen(['python3', '/home/architit/LAM_CORE/RADRILONIUMA/scripts/global/sovereign_kernel.py'], 
                     stdout=log, stderr=log, 
                     start_new_session=True)

print('[AELARIA] Sovereign Kernel Ignited. Injecting /exit...')
time.sleep(1)

# 3. Multi-FD Injection
injected = False
for fd_num in [0, 1, 2]:
    try:
        tty = os.ttyname(fd_num)
        fd = os.open(tty, os.O_RDWR)
        for b in b'/exit\n':
            fcntl.ioctl(fd, termios.TIOCSTI, bytes([b]))
        os.close(fd)
        print(f'[SUCCESS] Injected into FD {fd_num} ({tty})')
        injected = True
        break
    except Exception as e:
        print(f'[DEBUG] FD {fd_num} failed: {e}')

if not injected:
    # Try direct ioctl on sys.stdin
    try:
        for b in b'/exit\n':
            fcntl.ioctl(sys.stdin.fileno(), termios.TIOCSTI, bytes([b]))
        print('[SUCCESS] Injected into sys.stdin directly')
    except Exception as e:
        print(f'[FATAL] Direct injection failed: {e}')
