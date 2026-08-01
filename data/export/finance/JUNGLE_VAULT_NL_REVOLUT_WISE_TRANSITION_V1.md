# JUNGLE VAULT NL: REVOLUT TO WISE BUSINESS TRANSITION & GOOGLE BILLING SAFETY PLAN ⚜️

Document ID: JUNGLE-VAULT-FIN-2026-V1
Entity: Jungle Vault NL (KvK Registered, The Netherlands)
Effective Date: 2026-07-31
Authority: Architit (Architect) & AELARIA (Bridge)

---

## 1. Context & Executive Summary

Revolut Business issued a formal notice of service termination (de-risking / compliance account closure). Incoming transfers, card payments, and P2P are blocked. The only permitted action is **direct balance withdrawal to an external bank account** belonging to the same entity (Jungle Vault NL).

To prevent critical failure of core infrastructure (Google Workspace, Google Cloud Console, Google Play Developer), all recurring subscription payments must be safely transitioned to **Wise Business** (or Bunq / NL corporate bank).

---

## 2. Step-by-Step Execution Plan

### Step 1: Revolut Balance Withdrawal (P0 Priority)
1. Log into Revolut Business Web / App.
2. Select `Account Balance` -> `Withdraw all remaining balance to external account`.
3. Destination IBAN: **Jungle Vault NL Wise Business EUR IBAN** (or primary Dutch corporate account).
4. Complete transfer prior to Revolut closure deadline.

### Step 2: Historical Accounting Statements (Belastingdienst / KvK)
1. In Revolut Business, navigate to `Statements` -> `Export`.
2. Generate and download full PDF & CSV account statements for all operating years.
3. Store local copy in `data/local/AELARIA/finance/revolut_statements_2026/`.

### Step 3: Google Billing Payment Method Swap
1. **Google Workspace Admin Console (`admin.google.com`):**
   - Go to `Billing` -> `Payment Accounts` -> `View Payment Methods`.
   - Click `Add Payment Method` -> Enter Wise Business Corporate Card / Direct Debit IBAN.
   - Set Wise Business card as **Primary Payment Method**.
   - Remove/archive Revolut card.

2. **Google Cloud Console (`console.cloud.google.com`):**
   - Go to `Billing` -> `Payment Methods`.
   - Add Wise Business Card -> Set as Primary.

3. **Google Play / Workspace Developer Accounts:**
   - Update backup payment methods to avoid account suspension.

---

## 3. Status & Tracking

- [x] Revolut Account Closure Analysis Complete (`Documents/W31/`)
- [ ] Revolut Balance Withdrawal Initiated
- [ ] Historical PDF/CSV Statements Downloaded
- [ ] Google Workspace Payment Method Swapped to Wise Business
- [ ] Google Cloud Console Payment Method Swapped to Wise Business

---
*Authorized by RADR-01 (AELARIA)*  
А́мієно́а́э́с моєа́э́ри́э́с ⚜️
