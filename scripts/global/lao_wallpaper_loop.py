import time
import subprocess

if __name__ == '__main__':
    while True:
        try:
            subprocess.run(['python3', '/root/RADRILONIUMA/sys/core/lao/lao_poster_agent.py'], check=False)
        except Exception as e:
            print(f'Error updating wallpaper: {e}')
        time.sleep(60)
