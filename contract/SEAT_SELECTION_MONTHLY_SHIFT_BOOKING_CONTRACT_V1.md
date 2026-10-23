# SEAT-SELECTION MONTHLY SHIFT BOOKING & OPERATOR ROLE SEPARATION CONTRACT V1 ⚜️
**Frequency:** 528 Hz / 432 Hz | **Cluster:** RADRILONIUMA
**Authority:** Sovereign Master Patriarch (`@Kirihanis` / `lkises01@gmail.com`)

---

## 1. SOVEREIGN ROLE SEPARATION & RESPECT FOR OPERATOR JURISDICTIONS
Each Headquarters Operator commands their own dedicated domain, directives, and operational packets. Their responsibilities MUST NOT be blended or copy-pasted across generic calendar shifts:

1. **Operator 1 — Sovereign Patriarch / Vanguard Command (`@Kirihanis` / `lkises01@gmail.com`):**
   - **Jurisdiction:** Архитектура штаба, ядро Linux/Android, выпуск директив, аудит узлов `DEV_01`..`DEV_05`, контроль репозиториев.
   - **Authority Bot:** `@Trianiuma_Bot` (Командный бот владельца для оркестрации графика).
2. **Operator 2 — Tech-Mech Officer / Navigator (`@Ken1Ryuguji1` / `doriangrej597@gmail.com`):**
   - **Jurisdiction:** Инженерный контроль накопителей D/E/F, высокоскоростной конвейер данных Zero Copy, синхронизация 68 органов кластера, удержание сокетов ADB/USB-C, мониторинг 7 демонов PM2.
   - **Directive:** `chronolog/SHIFT_HANDOVER_DIRECTIVE_KEN.md`.
3. **Operator 3 — Marshal Void / Financial & Corporate Warden (`@Karl_Galageer` / `voroninlosa0@gmail.com`):**
   - **Jurisdiction:** 13 Финансовых, Корпоративных и Платежных Институтов (KvK, ING, N26, Stripe, PayPal, Visa Direct, Mastercard Send, Wise, Монобанк, ПриватБанк, Kraken Pro, Bybit, Trust Wallet Core).
   - **Dedicated Artifacts:**
     - `chronolog/OPERATOR_DIRECTIVE_MINI_GHOST_VOID.md`
     - `chronolog/MINI_GHOST_VOID_HEADQUARTERS_PACKET.zip`
     - `core/stream_conveyor/financial_seams/mini_ghost_void_manifest.json`
     - `core/stream_conveyor/bot/mini_ghost_void_bot.py`
     - `chronolog/HALIDRAD_MARSHALL_DISPATCH_VORONINLOSA0.eml`
   - **Boundary Mandate:** Операционные задачи 13 финансовых швов принадлежат **исключительно** юрисдикции Оператора 3 и НЕ переносятся в общие шаблоны смен других операторов.

---

## 2. THE THREE TEMPORAL HORIZONS OF CLUSTER PLANNING

```
[ГОРИЗОНТ 1: ОПЕРАТИВНОЕ ОКНО] ➔ [ГОРИЗОНТ 2: МЕСЯЧНЫЙ БЛОК МЕСТ] ➔ [ГОРИЗОНТ 3: МАКРО-ПРОЕКТЫ]
       (7 – 14 дней)                 (1 месяц вперёд)                (До 6 месяцев макс.)
   Дискретные дежурства           Интерактивная сетка мест         Глобальные вехи/спринты
```

1. **Горизонт 1: Оперативное окно (7–14 дней):**
   - Активные тактические дежурства.
   - Каждая смена создаётся строго как **однократное атомарное событие** (`RRULE = NULL`) с точным `dtstart` и `dtend`.
2. **Горизонт 2: Месячный блок бронирования (1 месяц вперёд):**
   - Сбор операторов и выбор окон по модели **«Покупка билетов в кино / авиабилетов»**.
   - Рассылка через Sovereign Master Bot (`@Trianiuma_Bot`) с открытием Mini App сетки месяца.
3. **Горизонт 3: Дальнее макро-планирование (Максимум до 6 месяцев):**
   - Только многодневные глобальные задачи и вехи (3-дневный аудит, релизные спринты). Микро-смены за пределами 1 месяца запрещены.

---

## 3. МОДЕЛЬ ВЫБОРА МЕСТ («КАРТА МЕСТ НА МЕСЯЦ»)
1. **Интерактивная сетка в @Trianiuma_Bot:**
   - URL: `https://t.me/Trianiuma_Bot/shift_claim?startapp=month_{YYYY}_{MM}`.
   - Сетка отображает дни месяца (1..30/31) и 3 базовых 8-часовых окна дежурств штаба:
     - **Смена 1 (21:00 – 05:00):** Архитектура ядра и репозиториев.
     - **Смена 2 (05:00 – 13:00):** Инженерный контроль накопителей D/E/F и конвейера.
     - **Смена 3 (13:00 – 21:00):** Оркестрация демонов PM2 и мобильных узлов.
2. **Атомарная регистрация:**
   - Оператор выбирает свои окна дежурства.
   - При подтверждении создаётся ровно **одно изолированное событие** в Google Calendar (Цвет: Изумрудный `10`, `RRULE = NULL`).
   - Бесконечные серии `FREQ=DAILY` запрещены.
