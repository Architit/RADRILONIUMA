# REVERSE SHIFT EXCHANGE PLANNING & CANDIDATE CASCADE CONTRACT V1 ⚜️
**Frequency:** 528 Hz / 432 Hz | **Cluster:** RADRILONIUMA | **Model:** Exchange Order Book Liquidity Engine

---

## 1. PRINCIPLE OF SHIFT VACANCY & ZERO HARDCODED ATTENDEES
1. **Vacant Event Baseline:**
   - Any scheduled circadian shift created in Google Calendar (`content://com.android.calendar/events`) MUST NOT contain hardcoded pre-assigned guests/attendees.
   - The event serves strictly as a **Market Offer / Shift Vacancy (Свободные места)** issued by the Headquarters Organizer (`lkises01@gmail.com`).
2. **Registration Gate (Strict Acceptance Ingress):**
   - An operator is NEVER registered as a guest (`attendee`) in advance.
   - A user is registered as a guest in Google Calendar ONLY AFTER they explicitly accept the shift invitation ("ДА" / 1-Click Acceptance via Telegram, Webhook, Email, or Interactive Dialog).

---

## 2. THE EXCHANGE MATCHING ENGINE ARCHITECTURE ("ТОРГОВАЯ БИРЖА СМЕН")
The engine operates like a high-frequency financial order book / matching engine:
1. **Candidate Waves (4-Contact Batches):**
   - For each planned shift slot (e.g. Смена 1, Смена 2, Смена 3, Смена 4), the engine draws **4 candidate contacts** from the sovereign operator contact pool (Google Contacts, Gmail, Telegram, GitHub, Roster).
   - Candidate pool rotation ensures orthogonal distribution across shifts:
     - **Shift 1 (06:00 - 12:00):** Dispatches to **Candidate Wave A** (4 operators).
     - **Shift 2 (12:00 - 18:00):** Dispatches to **Candidate Wave B** (4 new operators).
     - **Shift 3 (18:00 - 00:00):** Dispatches to **Candidate Wave C** (4 new operators).
     - **Shift 4 (00:00 - 06:00):** Dispatches to **Candidate Wave D** (4 new operators / night specialists).
2. **5-Minute Timeout & Reverse Evaluation Loop (Реверсивный движок):**
   - A high-precision timer (300 seconds / 5 minutes) starts upon dispatch of each shift wave.
   - **Condition 1 (Order Filled):** If a candidate replies «ДА» / accepts:
     - The candidate is registered immediately in Google Calendar `attendees`.
     - The vacant slot for that shift is marked `CONFIRMED / FILLED`.
     - Remaining candidates in that wave receive a courtesy notice that the shift is filled.
   - **Condition 2 (Timeout / Unfilled Liquidity):** If after 5 minutes there is NO response, or vacant seats remain:
     - The engine triggers **Reverse Cascade**:
     - Pulls the next batch of 4 candidates from the pool.
     - Dispatches an escalated invitation for that unfilled shift.
     - Resets the 5-minute evaluation timer.

---

## 3. CONTACT POOL UNIVERSE & ROTATION QUORUM
Candidates are sourced across:
- **Core Vanguard:**
  - Ken Redmi Tech (`doriangrej597@gmail.com` | TG: `@Ken1Ryuguji1`)
  - Captain Denua (`denua7723@gmail.com` | TG: `@denua`)
  - Galagher Marshal Void (`voroninlosa0@gmail.com` | TG: `@Karl_Galageer`)
  - Astrogrammer Wanderfate (`wanderfate5000@gmail.com` | TG: `@Wanderfate_Astral`)
- **Academy & Citadel Core:**
  - Lady Ayaearias Triania (`elafeatriania@gmail.com`)
  - Trianium CORE (`elariontrianiumag@gmail.com`)
  - Sazaria (`nazarzadoyanchuk5x@gmail.com`)
  - Sam Boluwaji (`bolu7604@gmail.com`)
- **Scientific Reserve:**
  - Ralph Lindeboom (`r.e.f.lindeboom@tudelft.nl`)
  - Paul Ruwet (`paulruwet@google.com`)
  - Mustafa Turan (`dev@hasmcp.com`)
  - JungleVault Store (`junglevault.store@gmail.com`)

---

## 4. TELEMETRY & PERSISTENCE
Every auction cycle, dispatch, timeout, and attendee registration MUST be recorded to:
- `/root/RADRILONIUMA/chronolog/REVERSE_SHIFT_EXCHANGE_STATE.json`
- `/root/RADRILONIUMA/chronolog/reverse_shift_exchange_ledger.jsonl`
- Telemetry mirror to Windows Host at `C:\setup\reverse_shift_exchange_state.json`.
