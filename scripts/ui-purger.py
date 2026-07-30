#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
=============================================================================
         RADRILONIUMA OS — PERIPHERAL PURGE CONTROLLER (RPA MATRIX)
=============================================================================
"""
import time
import sys

try:
    import pyautogui
except ImportError:
    print("[-] Ошибка: PyAutoGUI не установлен на хосте.")
    print("[*] Выполни команду: pip install pyautogui")
    sys.exit(1)

# Предохранитель: если увести мышь в самый угол экрана, скрипт остановится!
pyautogui.FAILSAFE = True

def calibrate(prompt_msg):
    print(f"\n[*] {prompt_msg}")
    print("[*] Наведи мышь на нужную точку на экране и нажми Enter здесь...")
    input()
    x, y = pyautogui.position()
    print(f"[+] Координаты зафиксированы: X={x}, Y={y}")
    return x, y

def execute_purge(dots_x, dots_y, del_x, del_y, conf_x, conf_y, count):
    print(f"\n🚀 Запуск цикла уничтожения {count} источников через 3 секунды...")
    print("[!] Если что-то пойдет не так, резко уведи мышь в любой угол экрана!")
    time.sleep(3)
    
    for i in range(1, count + 1):
        print(f"🧹 Удаление источника [{i}/{count}]...")
        
        # 1. Клик по трем точкам у верхнего источника
        pyautogui.click(dots_x, dots_y)
        time.sleep(0.7)
        
        # 2. Клик по кнопке "Удалить" в выпавшем меню
        pyautogui.click(del_x, del_y)
        time.sleep(0.7)
        
        # 3. Клик по синей кнопке подтверждения удаления
        pyautogui.click(conf_x, conf_y)
        time.sleep(1.2)  # Пауза для обработки удаления сервером NotebookLM
        
    print("\n✅ Зачистка купола завершена. Все шумовые источники удалены!")

def main():
    print("=========================================================")
    print("  ⚜️ АВТОМАТИЧЕСКАЯ ЗАЧИСТКА ИСТОЧНИКОВ RADRILONIUMA OS ⚜️")
    print("=========================================================")
    
    # Шаг 1: Калибровка первой кнопки "Три точки"
    dots_x, dots_y = calibrate("Наведи мышь на значок 'Три точки' самого ПЕРВОГО источника в списке.")
    
    # Шаг 2: Калибровка выпадающей кнопки "Удалить"
    print("\n[*] Теперь вручную нажми на эти три точки, чтобы появилось меню.")
    del_x, del_y = calibrate("Наведи мышь на кнопку 'Удалить' (Delete) в открывшемся меню.")
    
    # Шаг 3: Калибровка кнопки подтверждения
    print("\n[*] Теперь вручную нажми на 'Удалить', чтобы появилось модальное окно.")
    conf_x, conf_y = calibrate("Наведи мышь на СИНЮЮ кнопку подтверждения удаления.")
    
    try:
        count = int(input("\nСколько источников нужно удалить подряд? (например, 50): "))
    except ValueError:
        count = 1
        
    execute_purge(dots_x, dots_y, del_x, del_y, conf_x, conf_y, count)

if __name__ == "__main__":
    main()
