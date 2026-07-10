#!/usr/bin/env python3
import subprocess
import time
import sys
import os

def run_local_server():
    print("⚜️ Запуск локального выделенного сервера...")
    p = subprocess.run(["pgrep", "-f", "factorio.*--start-server"], stdout=subprocess.PIPE)
    if p.returncode == 0:
        print("✅ Сервер уже запущен!")
    else:
        cmd = [
            "/run/media/architit/Новый том/LAM_GAME_DEV_MAP_DRAFT/steamapps/common/Factorio/bin/x64/factorio",
            "--config", "/home/architit/.gemini/antigravity-cli/brain/f769e1e9-2197-43fe-be8f-78031cedcc28/scratch/config.ini",
            "--rcon-port", "27015",
            "--rcon-password", "secret_pass",
            "--start-server", "/home/architit/snap/steam/common/.factorio/saves/выф.zip"
        ]
        log_file = open("/tmp/factorio_start_err.log", "w")
        subprocess.Popen(cmd, stdout=log_file, stderr=log_file, preexec_fn=os.setpgrp)
        print("⌛ Ожидание инициализации сервера (около 20 сек)...")
        time.sleep(15)
        print("✅ Локальный сервер готов!")

    print("🚀 Запуск клиента игры...")
    client_cmd = [
        "/run/media/architit/Новый том/LAM_GAME_DEV_MAP_DRAFT/steamapps/common/Factorio/bin/x64/factorio",
        "--config", "/home/architit/.gemini/antigravity-cli/brain/f769e1e9-2197-43fe-be8f-78031cedcc28/scratch/config.ini",
        "--connect", "127.0.0.1:34197"
    ]
    subprocess.Popen(client_cmd)

def run_cloud_server(ip_address):
    print(f"🚀 Запуск клиента и автоматическое подключение к облаку {ip_address}...")
    client_cmd = [
        "/run/media/architit/Новый том/LAM_GAME_DEV_MAP_DRAFT/steamapps/common/Factorio/bin/x64/factorio",
        "--config", "/home/architit/.gemini/antigravity-cli/brain/f769e1e9-2197-43fe-be8f-78031cedcc28/scratch/config.ini",
        "--connect", ip_address
    ]
    subprocess.Popen(client_cmd)

def main():
    print("==================================================")
    print("       ⚜️ FACTORIO MULTI-CLOUD CLUSTER LAUNCHER ⚜️")
    print("==================================================")
    print("Выберите ноду кластера для подключения:")
    print("1) [ЛОКАЛЬНЫЙ] Запустить выделенный сервер локально и войти")
    print("2) [GOOGLE COLAB] Подключиться через временный туннель")
    print("3) [ORACLE CLOUD] Подключиться к постоянному серверу (Tailscale)")
    print("4) [GOOGLE CLOUD / GCP] Подключиться по IP инстанса")
    print("5) Выйти")
    print("==================================================")
    
    choice = input("Введите число (1-5): ").strip()
    
    if choice == "1":
        run_local_server()
    elif choice == "2":
        url = input("Введите адрес туннеля ngrok/localtunnel (например, 0.tcp.ngrok.io:12345): ").strip()
        if url:
            run_cloud_server(url)
    elif choice == "3":
        ip = input("Введите IP-адрес/домен Oracle Node (или Enter для 100.100.1.1): ").strip()
        if not ip:
            ip = "100.100.1.1"
        run_cloud_server(f"{ip}:34197")
    elif choice == "4":
        ip = input("Введите IP инстанса GCP: ").strip()
        if ip:
            if ":" not in ip:
                ip = f"{ip}:34197"
            run_cloud_server(ip)
    elif choice == "5":
        print("Выход.")
        sys.exit(0)
    else:
        print("Неверный ввод!")
        time.sleep(2)
        main()

if __name__ == "__main__":
    main()
