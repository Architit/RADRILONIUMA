# ==============================================================================
# ⚜️ GOOGLE COLAB NODE SETUP FOR FACTORIO-AI CLUSTER ⚜️
# ==============================================================================
# Скопируйте и запустите этот код в первой ячейке вашего Google Colab.
# Он установит Ray, Tailscale (в режиме userspace) и подключит Colab к вашей сети.

# 1. Установка необходимых библиотек
!pip install ray[default]

# 2. Скачивание и установка Tailscale в Colab
!curl -fsSL https://tailscale.com/install.sh | sh

# 3. Запуск демона tailscaled в фоновом режиме пользователя (без прав root на tun-устройство)
import subprocess
import time
import os

print("⌛ Запуск Tailscale daemon...")
subprocess.Popen(
    ["tailscaled", "--tun=userspace-networking", "--socks5-server=localhost:1055", "--outbound-http-proxy-listen=localhost:1055"],
    stdout=subprocess.DEVNULL,
    stderr=subprocess.DEVNULL,
    preexec_fn=os.setpgrp
)
time.sleep(3)

# 4. Авторизация сессии Colab в вашей сети Tailscale
print("👉 Кликните по ссылке ниже для авторизации Google Colab в вашей сети Tailscale:")
!tailscale up --accept-dns=false

# 5. Инструкция по подключению к Ray Head (Local Laptop / Oracle Node)
print("\n========================================================")
print("✅ Узел Tailscale запущен!")
print("Для подключения этой ноды к нашему Ray-кластеру, скопируйте")
print("и запустите в следующей ячейке Colab этот код:")
print("--------------------------------------------------------")
print("import os")
print("import ray")
print("os.environ['ALL_PROXY'] = 'socks5://localhost:1055'")
print("os.environ['HTTP_PROXY'] = 'http://localhost:1055'")
print("os.environ['HTTPS_PROXY'] = 'http://localhost:1055'")
print("!ray start --address='100.118.17.5:6379' --block")
print("========================================================")
