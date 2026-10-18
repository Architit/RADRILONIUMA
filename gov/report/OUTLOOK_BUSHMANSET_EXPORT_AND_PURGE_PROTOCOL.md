# ПРОТОКОЛ АРХИВНОГО ЭКСПОРТА И ПОЛНОГО УДАЛЕНИЯ АККАУНТА `bushmanset@outlook.com` ⚜️

- **Дата формирования:** `2026-10-18T00:04:26.498784+00:00`
- **Целевой аккаунт:** `Set Kabanov` (`bushmanset@outlook.com`)
- **Узел:** `DEV_01_BUSHMASTER` (`SID: S-1-5-21-1580045317-2821804310-1610502708-1001`)
- **Директория архивного слепка на Samsung PSSD T7 (`E:`):** `E:\RADRILONIUMA_ARCHIVE_2026_10_18\OUTLOOK_BUSHMANSET_ARCHIVE\`

---

## 1. Выгруженные и заархивированные артефакты
1. **Токены Windows Credential Manager (`windows_credentials_cmdkey.txt`):**
   - `MicrosoftAccount:target=SSO_POP_User:user=bushmanset@outlook.com`
   - `LegacyGeneric:target=MicrosoftAccount:user=bushmanset@outlook.com`
   - `MicrosoftAccount:target=SSO_POP_Device` (`User: 02ietqqirhslmgxo`)
   - `WindowsLive:target=virtualapp/didlogical` (`User: 02ietqqirhslmgxo`)
2. **Ветки реестра идентификации и облачной привязки:**
   - `HKCU_IdentityCRL.reg` (`HKCU\Software\Microsoft\IdentityCRL`)
   - `HKCU_OneDrive.reg` (`HKCU\Software\Microsoft\OneDrive`)
   - `HKCU_AccountPicture.reg` (`HKCU\Software\Microsoft\Windows\CurrentVersion\AccountPicture`)
3. **Манифест локальных пользователей (`local_users_manifest.json`) и данные `OneDrive_Backup`:**
   - Сохранены на внешний накопитель `DEV_04_SAMSUNG_T7_VAULT` (`E:\RADRILONIUMA_ARCHIVE_2026_10_18\OUTLOOK_BUSHMANSET_ARCHIVE\`).

---

## 2. Исполняемый протокол деинсталляции и очистки (`C:\setup\purge_bushmanset_outlook_account.ps1`)
1. **Фаза 1 (Credential Purge):** Удаление всех 4 ключей `MicrosoftAccount` / `WindowsLive` через `cmdkey /delete`.
2. **Фаза 2 (OneDrive Unlink):** Принудительная остановка `OneDrive.exe` и деинсталляция связки (`OneDriveSetup.exe /uninstall`).
3. **Фаза 3 (Registry IdentityCRL Wipe):** Очистка `StoredIdentities\bushmanset@outlook.com` и `UserExtendedProperties\bushmanset@outlook.com`.
4. **Фаза 4 (TokenBroker & WebAccountManager Purge):** Очистка кэшей `TokenBroker\Cache`, `OneAuth\accounts` и `Microsoft.AAD.BrokerPlugin`.
5. **Фаза 5 (Полный сброс Windows и замена на Ubuntu / RADRILONIUMA Jarvis OS):** Форматирование системного диска `Disk 0` (`SAMSUNG MZYLF128HCHP-000L2`) через автоустановщик `RADRILONIUMA JARVIS OS BIOS BOOT AUTO-STARTUP GATEWAY BOOTLOADER >>> UBUNTU`.
