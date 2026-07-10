import ray
import socket
import time

# Connect to the remote Ray cluster on Colab
ray.init(address="100.112.225.15:6379")

@ray.remote
def get_node_info():
    time.sleep(1)
    hostname = socket.gethostname()
    try:
        ip_address = socket.gethostbyname(hostname)
    except Exception:
        ip_address = "unknown"
    return {
        "hostname": hostname,
        "ip": ip_address,
        "node_id": ray.get_runtime_context().get_node_id()
    }

print("⌛ Отправка параллельных задач в Ray-кластер...")
# Запускаем 4 параллельные задачи
futures = [get_node_info.remote() for _ in range(4)]

# Собираем результаты
results = ray.get(futures)

print("\n==================================================")
print("     ⚜️ РЕЗУЛЬТАТЫ РАСПРЕДЕЛЕНИЯ В CLUSTER RAY ⚜️")
print("==================================================")
for i, res in enumerate(results):
    print(f"Задача {i+1} выполнена на узле:")
    print(f"  - Имя хоста (Hostname): {res['hostname']}")
    print(f"  - IP-адрес: {res['ip']}")
    print(f"  - Ray Node ID: {res['node_id']}")
    print("--------------------------------------------------")
