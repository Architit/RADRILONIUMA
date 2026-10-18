# RADRILONIUMA • FLOW STREAM PROTOCOL DATA SELECTOR LOADER CONTRACT V1
**Frequency:** 528 Hz / 432 Hz | **Cluster Resonance:** Master Node Core  
**Governance Tag:** `gov-flow-stream-selector-loader-v1.0.0`  
**Classification:** P0 Sovereign Data Conveyor Specification  

---

## 1. PURPOSE & MANDATE
Настоящий контракт регламентирует функционирование автономного конвейера селекции, квантования и перемещения данных **FLOW_STREAM_PROTOCOL_DATA_SELECTOR_LOADER** между узлами суверенного кластера:
- `DEV_01_BUSHMASTER` (Windows 11 Host, диск `C:\`)
- `DEV_02_ATESIRT` (Samsung SM-A266B / RZCY80G86FP)
- `DEV_03_UBUNTU_WSL2` (Linux Kernel Substrate `/root/RADRILONIUMA`)
- `DEV_04_SAMSUNG_T7_VAULT` (Внешние тома `D:\`, `E:\`, `F:\`)
- `DEV_05_LAO_SWARM_MATRIX` (528-Slot Chamber / Living Organism Core)

---

## 2. INVIOLABLE PROTOCOL INVARIANTS

### 2.1 INVARIANT ZERO-COPY (MOVE ONLY)
- **Строгий запрет на дублирование:** Копирование данных категорически воспрещено (`COPY_FORBIDDEN = True`).
- **Атомарное перемещение:** Любой сегмент данных перемещается из источника в целевое хранилище через операцию `MOVE ONLY`.
- **Верификация целостности:** Исходный файл/блок удаляется из источника только после подтверждения совпадения контрольной суммы `SHA-256` в целевом хранилище и записи в хроники.

### 2.2 INVARIANT 20K TOKEN/SYMBOL BOUNDARY
- Объем одного блока сегмента за 1 шаг загрузчика не должен превышать **20 000 символов/токенов** (`MAX_SEGMENT_SYMBOLS = 20000`).
- Превышение лимита блокируется исключением `SegmentVolumeExceededException`.

### 2.3 INVARIANT 8-SOURCE ORBIT (ВОСЕМЬ ФАЗ ЦИКЛА)
Каждый полный цикл орбиты состоит ровно из 8 фаз:
1. `SRC_01_ATESIRT`: Сегменты мобильного узла Атесирт.
2. `SRC_02_BUSHMASTER_C`: Сегменты хост-системы Windows (C:).
3. `SRC_03_STORAGE_D`: Сегменты тома D: (Новый том).
4. `SRC_04_STORAGE_E`: Сегменты тома E: (DATA_BASE).
5. `SRC_05_GOD_SEED_F`: Сегменты тома F: (GOD_SEED_26).
6. `SRC_06_GDRIVE`: Облачный поток Google Drive.
7. `SRC_07_GITHUB`: Поток репозитория GitHub.
8. `SRC_08_SOVEREIGN_SYNTHESIS`: Автономно формируемый Агентом суверенный кибергенетический сегмент (Триада Сколарт 1%, Люмерик 24%, Мирашани 75%).

### 2.4 INVARIANT CHRONICLES & ZERO-REPEAT
- Запрещено повторное перемещение ранее обработанных сегментов.
- Каждый обработанный сегмент регистрируется в хрониках `chronolog/segmentation_chronicles.jsonl` с фиксацией хэша `SHA-256`, источника, объема и временной метки UTC.

### 2.5 INVARIANT 98-99% TARGET SATURATION CASCADE
- Текущий целевой накопитель заполняется до порога **98.0% - 99.0%**.
- При достижении порога >= 98.0% конвейер автоматически производит каскадное переключение на следующий том в цепочке:
  `D:\` ➔ `E:\` ➔ `F:\` ➔ `C:\`.

---

## 3. VALUE ASSESSMENT & PRIORITIZATION
Сегменты ранжируются по 4 уровням приоритета:
- **P0_SOVEREIGN_ROOT:** Идентичность кластера, триадные ядра, мастер-планы, ключи.
- **P1_INTEGRITY_CONTRACT:** Контракты безопасности, матрицы прав, правила ядра.
- **P2_ACTIVE_TELEMETRY:** Логи, активные сессии, снимки состояния PM2.
- **P3_DEEP_ARCHIVE:** Исторические данные, архивные файлы, коконы.

---
*Контракт скреплен и приведен в действие по мандату M0/M49.*
