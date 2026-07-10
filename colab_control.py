import json
import urllib.request
import subprocess
import time
import os
import websocket

XAUTH = "/run/user/1000/.mutter-Xwaylandauth.6SBBS3"
DISPLAY = ":0"

def get_colab_tab():
    try:
        with urllib.request.urlopen("http://localhost:9222/json", timeout=2) as response:
            tabs = json.loads(response.read().decode())
            for tab in tabs:
                if "colab.research.google.com" in tab.get("url", ""):
                    return tab
    except Exception:
        return None
    return None

# 1. Проверяем, запущен ли Chrome с флагом отладки
tab = get_colab_tab()

if not tab:
    print("⚠️ Chrome не запущен в режиме отладки или вкладка Colab не найдена.")
    print("🔄 Перезапускаем Google Chrome с флагом --remote-debugging-port=9222 (ваши вкладки будут восстановлены)...")
    
    # Убиваем текущий Chrome
    subprocess.run(["pkill", "-f", "chrome"])
    time.sleep(2)
    
    # Запускаем Chrome с портом отладки на дисплее пользователя
    env = os.environ.copy()
    env["DISPLAY"] = DISPLAY
    env["XAUTHORITY"] = XAUTH
    subprocess.Popen(
        [
            "google-chrome",
            "--remote-debugging-port=9222",
            "--remote-allow-origins=*",
            "--user-data-dir=/tmp/chrome-debug-profile",
            "https://colab.research.google.com/drive/14u6kgKq0cunCFrs07rGq5XjR47HrrYIM"
        ],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
        env=env,
        preexec_fn=os.setpgrp
    )
    
    # Ждем запуска браузера
    print("⏳ Ожидание восстановления сессии Chrome...")
    for _ in range(15):
        time.sleep(1)
        tab = get_colab_tab()
        if tab:
            break

if not tab:
    print("❌ Не удалось найти вкладку Google Colab после перезапуска Chrome.")
    print("Пожалуйста, убедитесь, что Chrome открыт и вкладка Colab активна.")
    exit(1)

ws_url = tab["webSocketDebuggerUrl"]
print(f"✅ Найдена вкладка Colab: {tab['title']}")
print(f"🔌 Подключение к WebSocket отладки: {ws_url}")

# 2. Подключаемся по WebSocket к вкладке Colab
ws = websocket.create_connection(ws_url)

# 3. Выводим вкладку Colab на передний план
ws.send(json.dumps({
    "id": 1,
    "method": "Page.bringToFront"
}))
ws.recv()

# 4. Имитируем нажатие Ctrl+F9 (Выполнить все ячейки) в контексте страницы
js_run_all = """
console.log("⚜️ Активация автозапуска ячеек через API...");
const event = new KeyboardEvent('keydown', {
    key: 'F9',
    keyCode: 120,
    code: 'F9',
    ctrlKey: true,
    bubbles: true,
    cancelable: true
});
document.dispatchEvent(event);
"""

ws.send(json.dumps({
    "id": 2,
    "method": "Runtime.evaluate",
    "params": {
        "expression": js_run_all
    }
}))
response = json.loads(ws.recv())

if "error" in response or (response.get("result", {}).get("result", {}).get("subtype") == "error"):
    print(f"❌ Ошибка выполнения скрипта в браузере: {response}")
else:
    print("🚀 Сигнал 'Выполнить все ячейки (Ctrl+F9)' успешно отправлен в Google Colab!")

ws.close()
