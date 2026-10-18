# ==============================================================================
# RADRILONIUMA • SOVEREIGN PURGE & DECOUPLING SCRIPT FOR bushmanset@outlook.com
# Target Node: DEV_01_BUSHMASTER (Windows 11 Host)
# ==============================================================================
$ErrorActionPreference = 'Continue'
Write-Host "⚜️ [1/5] Purging stored MicrosoftAccount & WindowsLive credentials for bushmanset@outlook.com..." -ForegroundColor Cyan

$targets = @(
    "MicrosoftAccount:target=SSO_POP_User:user=bushmanset@outlook.com",
    "LegacyGeneric:target=MicrosoftAccount:user=bushmanset@outlook.com",
    "MicrosoftAccount:target=SSO_POP_Device",
    "WindowsLive:target=virtualapp/didlogical"
)
foreach ($t in $targets) {
    cmdkey /delete:$t 2>$null
    Write-Host "  -> Deleted credential target: $t"
}

Write-Host "⚜️ [2/5] Stopping & Unlinking Microsoft OneDrive..." -ForegroundColor Cyan
Stop-Process -Name "OneDrive" -Force -ErrorAction SilentlyContinue
if (Test-Path "$env:SystemRoot\System32\OneDriveSetup.exe") {
    & "$env:SystemRoot\System32\OneDriveSetup.exe" /uninstall
} elseif (Test-Path "$env:SystemRoot\SysWOW64\OneDriveSetup.exe") {
    & "$env:SystemRoot\SysWOW64\OneDriveSetup.exe" /uninstall
}

Write-Host "⚜️ [3/5] Removing IdentityCRL & CloudAP cached tokens from HKCU Registry..." -ForegroundColor Cyan
Remove-Item -Path "HKCU:\Software\Microsoft\IdentityCRL\StoredIdentities\bushmanset@outlook.com" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\IdentityCRL\UserExtendedProperties\bushmanset@outlook.com" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\Software\Microsoft\OneDrive\Accounts" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "⚜️ [4/5] Clearing Edge / WebAccountManager (TokenBroker) cache for bushmanset@outlook.com..." -ForegroundColor Cyan
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\TokenBroker\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\OneAuth\accounts\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:LOCALAPPDATA\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy\AC\TokenBroker\Accounts\*" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "⚜️ [5/5] Ensuring Local Sovereign Administrator Account 'Architit' is active..." -ForegroundColor Cyan
Enable-LocalUser -Name "Architit" -ErrorAction SilentlyContinue
Add-LocalGroupMember -Group "Administrators" -Member "Architit" -ErrorAction SilentlyContinue

Write-Host "✅ [COMPLETE] Account bushmanset@outlook.com credentials & tokens purged. Ready for OS Reset / Ubuntu Autoinstall." -ForegroundColor Green
