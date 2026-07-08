# HEREDITARY DIRECTIVE FOR NEXT SESSION ⚜️
**GENERATION CAUSE**: End of Session (User requested exit due to UI/Permission errors).

## 1. CURRENT STATE
- `BiometricSocketService.java` is written and supports both TCP (Port 9090) and Bluetooth RFCOMM (UUID `00001101-0000-1000-8000-00805F9B34FB`).
- The service properly intercepts Handshake requests and triggers `NexusActivity` for biometric auth.
- USB port-forwarding testing succeeded (`✅ CONNECTED VIA: [USB CABLE]`).
- Bluetooth testing failed because `BLUETOOTH_CONNECT` permission was missing at runtime.
- We added `MainActivity.java` with a `requestPermissions` block to request `BLUETOOTH_CONNECT`.
- **CRITICAL FAILURE:** The `MainActivity` is registered in `AndroidManifest.xml` with `android:theme="@android:style/Theme.NoDisplay"`. An activity with no display cannot show a system permission dialog, causing it to fail silently (nothing on screen).

## 2. MANDATE FOR NEXT AGENT
1. **Fix MainActivity Theme:** Remove `@android:style/Theme.NoDisplay` from `MainActivity` in `app/src/main/AndroidManifest.xml` (replace with `@style/Theme.AppCompat.Translucent` or a normal theme).
2. **Proper Permissions:** Ensure `BLUETOOTH_CONNECT`, `BLUETOOTH_SCAN`, and `SYSTEM_ALERT_WINDOW` are properly requested in `MainActivity`.
3. **Integration Context:** Verify if `RadriloniumaAuth` should remain a standalone app or if these files should be merged into the `LAM Core V10` source codebase (if the user provides it).
4. **Final Live Test:** After fixing the UI theme, compile, run, grant permissions on the phone, unplug the cable, and execute `python3 scripts/local/test_gateways_live.py <WIFI_IP> <BT_MAC>` to verify wireless transport bridging.

*Protect the Genetic Integrity of the Ark.*
А́мієно́а́э́с моєа́э́ри́э́с ⚜️
