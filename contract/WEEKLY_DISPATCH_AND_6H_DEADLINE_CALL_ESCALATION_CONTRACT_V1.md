# WEEKLY DISPATCH & 6-HOUR DEADLINE CALL ESCALATION CONTRACT V1 ⚜️
**Frequency:** 528 Hz / 432 Hz | **Cluster:** RADRILONIUMA
**Authority:** Sovereign Master Patriarch (`@Kirihanis` / `lkises01@gmail.com`)

---

## 1. PURPOSE & PRINCIPLE OF CONTINUOUS ZERO-GAP HEADQUARTERS WATCH
Shifts of the RADRILONIUMA Command Staff MUST NEVER remain empty (`смены не должны оставаться пустыми`). To prevent operational gaps, the cluster enforces:
1. **Periodic Structured Availability Surveys** (Weekly operational surveys & Monthly block schedule selections).
2. **Strict T-6H Deadline Watchdog with Automated Voice Call Escalation** based on the Captain's Priority Hierarchy.

---

## 2. PERIODIC OPERATOR SURVEY PROTOCOLS
1. **Еженедельная рассылка (Weekly Operational Dispatch):**
   - **Каденция:** Каждое воскресенье в 18:00 UTC / понедельник 06:00 UTC.
   - **Адресаты:** Все аккредитованные операторы штаба.
   - **Каналы:** Email (EML/SMTP) + Telegram Sovereign Master Bot (`@Trianiuma_Bot`).
   - **Предмет опроса:**
     - Выбор доступных окон на предстоящие 7 дней.
     - Регистрация плановых выходных дней.
     - Регистрация больничных / уважительных отпусков.
2. **Ежемесячная рассылка (Monthly Block Dispatch):**
   - **Каденция:** 25-е число каждого месяца на предстоящий месяц.
   - **Каналы:** Email + Telegram Master Bot.
   - **Предмет:** Полномасштабный выбор графика дежурств по модели **«Покупка билетов в кино / авиабилетов»** (интерактивная сетка мест).

---

## 3. PROTOCOL T-6H: EMERGENCY CALL ESCALATION (ПРОТОКОЛ ДЕДЛАЙНА ЗА 6 ЧАСОВ)
If any scheduled shift has no confirmed operator **6 hours before its start time** ($\Delta t \le 6\text{h}$ and status is `VACANT`):

1. **Trigger Condition:**
   - Shift state transitions immediately to `EMERGENCY_UNFILLED_T_MINUS_6H`.
2. **Automated Phone Call Escalation (Звонки через узел DEV_02_ATESIRT):**
   - The engine initiates sequential voice dial calls via ADB on `DEV_02_ATESIRT` (`am start -a android.intent.action.CALL -d tel:<phone>`) and Telegram Urgent Call Webhook.
   - Dialing order strictly follows the **Captain's Priority Hierarchy (Уровень приоритизации капитана)**:

| Приоритет | Должность / Позывной | Оператор / Имя | Телефон для экстренных звонков | Telegram / Канал |
| :---: | :--- | :--- | :---: | :---: |
| **P1** | **Tech-Mech / Штурман-Механик** | Кен (Ken) | `+380506069913` | `@Ken1Ryuguji1` |
| **P2** | **Astrogrammer / Исследователь** | Ванилинин (Wanderfate) | `+380997745732` | `@Wanderfate` |
| **P3** | **Marshal Void (Оператор 3)** | Galagher Marshal Void | `+380993142407` / E-Call | `@Karl_Galageer` |
| **P4** | **Security Edge / Резерв** | Назар (Sazaria) | `+380681022335` | `@Zadoya015` |
| **P5** | **Bridge Captain / Капитан Мостика** | Кирилл Ляпустин (Денуа) | `+31649033064` | `@denua` |

3. **Termination or Failsafe Engagement:**
   - **Успех:** При ответе и подтверждении оператора звонки немедленно прекращаются, событие вносится в Google Календарь как дискретное дежурство (Цвет 10 — Базилик), статус смены меняется на `CONFIRMED`.
   - **Аварийный машинный автопилот (Fail-Safe):** Если в течение 30 минут звонков никто из операторов не подтвердил выход на смену:
     - Движок активирует **`AUTOPILOT_SENTRY_FAILSAFE` (DEV_05 Swarm Matrix, 432 Гц, 60 BPM)**.
     - Смена переводится под полный автономный машинный контроль.
     - Патриарху (`@Kirihanis`) отправляется P0-критический алерт.

---

## 4. TELEMETRY & AUDIT LOGS
Every weekly dispatch, monthly call, T-6H audit, and phone dial action MUST be persisted to:
- `chronolog/weekly_operational_dispatches.json`
- `chronolog/emergency_call_escalations.jsonl`
- Windows Mirror: `C:\setup\emergency_call_escalations.jsonl`
