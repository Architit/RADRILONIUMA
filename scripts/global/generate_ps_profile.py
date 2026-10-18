#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • POWERSHELL PROFILE GENERATOR (UTF-8 WITH BOM)
Generates Microsoft.PowerShell_profile.ps1 with strict UTF-8 BOM encoding to prevent CP1251 mojibake.
Includes Native C# LiveTitleTicker thread (1-sec tick) & Unified Multi-Provider Update Orchestrator.
"""

import sys
from pathlib import Path

PROFILE_PATH = Path("/mnt/c/Users/BushM/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1")

PROFILE_CONTENT = r'''# RADRILONIUMA TERMINAL COCKPIT & AGY CLI SESSION MIRROR (QUIET MODE - NO NOISE LOGS)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding  = [System.Text.Encoding]::UTF8
$OutputEncoding           = [System.Text.Encoding]::UTF8

$global:AgySessionStartTime = Get-Date

# 1. Initialize Native C# Live Title Ticker (Continuous 1-second background thread)
if (-not ([System.Management.Automation.PSTypeName]'Radriloniuma.LiveTitleTicker').Type) {
    try {
        $tickerCode = @"
using System;
using System.Runtime.InteropServices;
using System.Threading;

namespace Radriloniuma {
    public class LiveTitleTicker {
        [DllImport("kernel32.dll", CharSet = CharSet.Auto)]
        public static extern bool SetConsoleTitle(string title);

        [DllImport("kernel32.dll")]
        public static extern ulong GetTickCount64();

        private static Thread _thread;
        private static bool _running = false;
        private static DateTime _startTime = DateTime.Now;
        public static string CurrentLocation = "";

        public static void Start() {
            if (_running) return;
            _running = true;
            _startTime = DateTime.Now;
            _thread = new Thread(RunLoop);
            _thread.IsBackground = true;
            _thread.Name = "LiveTitleTicker";
            _thread.Start();
        }

        public static void ResetSession() {
            _startTime = DateTime.Now;
        }

        private static void RunLoop() {
            char[] glyphs = new char[] { '\u269C', '\u25C8', '\u25C7', '\u2727' };
            int i = 0;
            while (_running) {
                try {
                    DateTime now = DateTime.Now;
                    TimeSpan sess = now - _startTime;
                    string timeStr = now.ToString("HH:mm:ss");
                    string sessStr = string.Format("{0:D2}:{1:D2}:{2:D2}", (int)sess.TotalHours, sess.Minutes, sess.Seconds);
                    ulong ms = GetTickCount64();
                    TimeSpan uptime = TimeSpan.FromMilliseconds(ms);
                    string uptimeStr = string.Format("{0}d {1:D2}h {2:D2}m {3:D2}s", (int)uptime.TotalDays, uptime.Hours, uptime.Minutes, uptime.Seconds);
                    char glyph = glyphs[i % glyphs.Length];
                    i++;
                    string loc = CurrentLocation;
                    if (string.IsNullOrEmpty(loc)) loc = "C:\\Users\\BushM";
                    string title = string.Format("[{0} | CLI:{1} | UP:{2}] {3} agy:{4}", timeStr, sessStr, uptimeStr, glyph, loc);
                    SetConsoleTitle(title);
                } catch { }
                Thread.Sleep(1000);
            }
        }
    }
}
"@
        Add-Type -TypeDefinition $tickerCode -ErrorAction SilentlyContinue
    } catch {}
}

# 1.1 Start continuous 1000ms title ticker
try {
    [Radriloniuma.LiveTitleTicker]::CurrentLocation = (Get-Location).Path
    [Radriloniuma.LiveTitleTicker]::Start()
} catch {}

# 2. Cache user desktop logon time once
try {
    $global:AgyLogonStartTime = (Get-CimInstance Win32_LogonSession -ErrorAction SilentlyContinue | Where-Object { $_.LogonType -in 2, 10, 11 } | Sort-Object StartTime -Descending | Select-Object -First 1).StartTime
} catch {
    $global:AgyLogonStartTime = $null
}

function global:Get-AgyUptime {
    try {
        $ms = [Radriloniuma.LiveTitleTicker]::GetTickCount64()
    } catch {
        $ms = [Math]::Abs([System.Environment]::TickCount)
    }
    return [TimeSpan]::FromMilliseconds($ms)
}

$global:AgyPromptTickIndex = 0

function global:Show-AgyBanner {
    $uptime = Get-AgyUptime
    $fleur = [char]0x269C
    Write-Host "$fleur  ===========================================================================" -ForegroundColor DarkGreen
    Write-Host "$fleur  RADRILONIUMA CYBERNETIC NEXUS :: AGY CLI & TERMINAL COCKPIT" -ForegroundColor Yellow
    Write-Host ("$fleur  [СТАРТ УСТРОЙСТВА / UPTIME: {0}д {1:D2}ч {2:D2}м {3:D2}с]" -f [int]$uptime.TotalDays, $uptime.Hours, $uptime.Minutes, $uptime.Seconds) -ForegroundColor Green
    Write-Host ("$fleur  [СЕССИЯ AGY CLI: СТАРТ {0:HH:mm:ss} | РЕЗОНАНС: 528 Hz | МАТРИЦА 68 РЕЖИМОВ]" -f $global:AgySessionStartTime) -ForegroundColor DarkYellow
    Write-Host ("$fleur  [УЗЛЫ: DEV_01_BUSHMASTER <-> DEV_02_ATESIRT (Samsung SM-A266B) | GW: 192.168.137.1:3000]" ) -ForegroundColor Cyan
    Write-Host "$fleur  ===========================================================================`n" -ForegroundColor DarkGreen
}

# 3. Unified Session Dispatcher: ssn rstrt / ssn rbt / ssn restart / ssn reboot
function global:ssn {
    param([string]$action = "restart")
    $fleur = [char]0x269C
    switch ($action.ToLower()) {
        { $_ -in "rstrt", "restart" } {
            $global:AgySessionStartTime = Get-Date
            try { [Radriloniuma.LiveTitleTicker]::ResetSession() } catch {}
            Clear-Host
            Show-AgyBanner
            Write-Host "$fleur СЕССИЯ AGY CLI ПЕРЕЗАПУЩЕНА (РЕЗОНАНС 528 Hz) $fleur`n" -ForegroundColor Green
            Write-Host "$fleur [АВТО-СКАНИРОВАНИЕ] Запуск поиска, загрузки и установки обновлений всех провайдеров..." -ForegroundColor Yellow
            if (Test-Path "C:\setup\Invoke-RadriloniumaUnifiedUpdate.ps1") {
                & "C:\setup\Invoke-RadriloniumaUnifiedUpdate.ps1"
            }
        }
        { $_ -in "rbt", "reboot" } {
            $global:AgySessionStartTime = Get-Date
            try { [Radriloniuma.LiveTitleTicker]::ResetSession() } catch {}
            Clear-Host
            Show-AgyBanner
            Write-Host "$fleur СЕССИЯ И СУВЕРЕННОЕ ЯДРО ПЕРЕЗАГРУЖЕНЫ (РЕЗОНАНС 528 Hz) $fleur`n" -ForegroundColor Green
            Write-Host "$fleur [АВТО-СКАНИРОВАНИЕ] Запуск поиска, загрузки и установки обновлений всех провайдеров..." -ForegroundColor Yellow
            if (Test-Path "C:\setup\Invoke-RadriloniumaUnifiedUpdate.ps1") {
                & "C:\setup\Invoke-RadriloniumaUnifiedUpdate.ps1"
            }
        }
        default {
            Write-Host "Команда: ssn [rstrt | restart | rbt | reboot]" -ForegroundColor Yellow
        }
    }
}

function global:Restart-AgySession { ssn restart }
Set-Alias -Name agy-restart -Value Restart-AgySession -Force
Set-Alias -Name ssn-restart -Value Restart-AgySession -Force
Set-Alias -Name agy-rbt -Value Restart-AgySession -Force
Set-Alias -Name ssn-rbt -Value Restart-AgySession -Force

function global:prompt {
    $uptime = Get-AgyUptime
    $sess = (Get-Date) - $global:AgySessionStartTime
    $timeStr = (Get-Date).ToString("HH:mm:ss")
    $sessStr = ("{0:D2}:{1:D2}:{2:D2}" -f [int]$sess.TotalHours, $sess.Minutes, $sess.Seconds)
    $uptimeStr = ("{0}d {1:D2}h {2:D2}m" -f [int]$uptime.TotalDays, $uptime.Hours, $uptime.Minutes)
    
    # Animated Solfeggio glyph pulse
    $pulseGlyphs = @([char]0x269C, [char]0x25C8, [char]0x25C7, [char]0x2727)
    $glyph = $pulseGlyphs[$global:AgyPromptTickIndex % $pulseGlyphs.Count]
    $global:AgyPromptTickIndex++
    
    try {
        [Radriloniuma.LiveTitleTicker]::CurrentLocation = (Get-Location).Path
    } catch {}

    Write-Host ("[$timeStr | CLI:$sessStr | UP:$uptimeStr] " ) -NoNewline -ForegroundColor DarkYellow
    Write-Host "$glyph  agy:$(Get-Location)" -NoNewline -ForegroundColor Green
    return "> "
}

# =============================================================================
# RADRILONIUMA • ONE-HAND CONTROLLER & SYS-HEAL MACROS (PROTOCOLS ALPHA / BETA / GAMMA)
# =============================================================================

Set-Alias -Name a -Value agy -Force -ErrorAction SilentlyContinue

function global:Test-IsAdmin {
    return ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# [ff] — Полный сброс Центра обновления Windows (Протокол Alpha)
function global:ff {
    if (-not (Test-IsAdmin)) {
        Write-Host "[RADRILONIUMA] Запуск ff с правами Администратора (UAC)..." -ForegroundColor Yellow
        $cmdText = @"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Write-Host "=== [RADRILONIUMA ALPHA :: СБРОС ЦЕНТРА ОБНОВЛЕНИЯ WINDOWS] ===" -ForegroundColor Cyan
Stop-Service -Name wuauserv, bits, cryptSvc, msiserver -Force -ErrorAction SilentlyContinue
Remove-Item -Path "`$env:SystemRoot\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "`$env:SystemRoot\SoftwareDistribution\DataStore\*" -Recurse -Force -ErrorAction SilentlyContinue
Start-Service -Name cryptSvc, bits, wuauserv -ErrorAction SilentlyContinue
Write-Host "[RADRILONIUMA] Службы перезапущены, кэш очищен." -ForegroundColor Green
Get-Service -Name wuauserv, bits, cryptSvc | Format-Table -AutoSize
Write-Host "`nНажмите любую клавишу для выхода..."
[Console]::ReadKey()
"@
        $enc = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($cmdText))
        Start-Process powershell -Verb RunAs -ArgumentList "-NoExit", "-EncodedCommand", $enc
        return
    }
    Write-Host "=== [RADRILONIUMA ALPHA :: СБРОС ЦЕНТРА ОБНОВЛЕНИЯ WINDOWS] ===" -ForegroundColor Cyan
    Stop-Service -Name wuauserv, bits, cryptSvc, msiserver -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:SystemRoot\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:SystemRoot\SoftwareDistribution\DataStore\*" -Recurse -Force -ErrorAction SilentlyContinue
    Start-Service -Name cryptSvc, bits, wuauserv -ErrorAction SilentlyContinue
    Write-Host "[RADRILONIUMA] Службы перезапущены, кэш очищен." -ForegroundColor Green
    Get-Service -Name wuauserv, bits, cryptSvc | Format-Table -AutoSize
}

# [dd] — Санитария драйвера HVCI oem1.inf (ki117516.inf / igdkmd64.sys) (Протокол Beta)
function global:dd {
    if (-not (Test-IsAdmin)) {
        Write-Host "[RADRILONIUMA] Запуск dd с правами Администратора (UAC)..." -ForegroundColor Yellow
        $cmdText = @"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Write-Host "=== [RADRILONIUMA BETA :: САНИТАРИЯ ДРАЙВЕРА HVCI / OEM1.INF] ===" -ForegroundColor Cyan
`$matched = pnputil /enum-drivers | Select-String -Pattern "oem1\.inf" -Context 0,4
if (`$matched) {
    Write-Host "[RADRILONIUMA] Обнаружен конфликтующий пакет oem1.inf (ki117516.inf / igdkmd64.sys):" -ForegroundColor Yellow
    `$matched | Out-String | Write-Host
    pnputil /delete-driver oem1.inf /uninstall /force
    pnputil /scan-devices
    Write-Host "[RADRILONIUMA] oem1.inf удален. Защита целостности памяти (HVCI) разблокирована." -ForegroundColor Green
} else {
    Write-Host "[RADRILONIUMA] Конфликтующий пакет oem1.inf не обнаружен или уже удален." -ForegroundColor Green
}
Write-Host "`nНажмите любую клавишу для выхода..."
[Console]::ReadKey()
"@
        $enc = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($cmdText))
        Start-Process powershell -Verb RunAs -ArgumentList "-NoExit", "-EncodedCommand", $enc
        return
    }
    Write-Host "=== [RADRILONIUMA BETA :: САНИТАРИЯ ДРАЙВЕРА HVCI / OEM1.INF] ===" -ForegroundColor Cyan
    $matched = pnputil /enum-drivers | Select-String -Pattern "oem1\.inf" -Context 0,4
    if ($matched) {
        Write-Host "[RADRILONIUMA] Обнаружен конфликтующий пакет oem1.inf (ki117516.inf / igdkmd64.sys):" -ForegroundColor Yellow
        $matched | Out-String | Write-Host
        pnputil /delete-driver oem1.inf /uninstall /force
        pnputil /scan-devices
        Write-Host "[RADRILONIUMA] oem1.inf удален. Защита целостности памяти (HVCI) разблокирована." -ForegroundColor Green
    } else {
        Write-Host "[RADRILONIUMA] Конфликтующий пакет oem1.inf не обнаружен или уже удален." -ForegroundColor Green
    }
}

# [ss] — Проверка и восстановление системных файлов DISM + SFC (Протокол Gamma)
function global:ss {
    if (-not (Test-IsAdmin)) {
        Write-Host "[RADRILONIUMA] Запуск ss с правами Администратора (UAC)..." -ForegroundColor Yellow
        $cmdText = @"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Write-Host "=== [RADRILONIUMA GAMMA :: САМОИСЦЕЛЕНИЕ DISM + SFC] ===" -ForegroundColor Cyan
DISM.exe /Online /Cleanup-Image /RestoreHealth
sfc /scannow
Write-Host "[RADRILONIUMA] Целостность системного хранилища проверена." -ForegroundColor Green
Write-Host "`nНажмите любую клавишу для выхода..."
[Console]::ReadKey()
"@
        $enc = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($cmdText))
        Start-Process powershell -Verb RunAs -ArgumentList "-NoExit", "-EncodedCommand", $enc
        return
    }
    Write-Host "=== [RADRILONIUMA GAMMA :: САМОИСЦЕЛЕНИЕ DISM + SFC] ===" -ForegroundColor Cyan
    DISM.exe /Online /Cleanup-Image /RestoreHealth
    sfc /scannow
    Write-Host "[RADRILONIUMA] Целостность системного хранилища проверена." -ForegroundColor Green
}

# [zz] — Компактный статус узла, служб, ADB и PM2 HUD
function global:zz {
    Clear-Host
    if (Get-Command Show-AgyBanner -ErrorAction SilentlyContinue) { Show-AgyBanner }
    Write-Host "=== УЗЕЛ DEV_01_BUSHMASTER :: СТАТУС КОНТУРА RADRILONIUMA ===" -ForegroundColor Cyan
    Write-Host "Алиасы: [a] agy | [ssn rstrt] Перезапуск + Обновление | [ff] WU-Reset | [dd] Driver-Clean | [ss] DISM+SFC | [zz] HUD" -ForegroundColor DarkYellow
    
    Write-Host "`n[1. СЛУЖБЫ WINDOWS]" -ForegroundColor Yellow
    Get-Service -Name wuauserv, bits, cryptSvc -ErrorAction SilentlyContinue | Format-Table -AutoSize
    
    Write-Host "[2. СВЯЗЬ ADB :: DEV_02_ATESIRT]" -ForegroundColor Yellow
    if (Test-Path "C:\setup\platform-tools\adb.exe") {
        & "C:\setup\platform-tools\adb.exe" devices -l
    } else {
        Write-Host "ADB не найден в C:\setup\platform-tools\" -ForegroundColor Red
    }
    
    Write-Host "`n[3. ДЕМОНЫ PM2 :: DEV_03_UBUNTU_WSL2]" -ForegroundColor Yellow
    wsl -u root bash -c "pm2 status"
    
    Write-Host "`n[4. СТАТУС ДРАЙВЕРА OEM1.INF]" -ForegroundColor Yellow
    $drv = pnputil /enum-drivers | Select-String -Pattern "oem1\.inf" -Context 0,2
    if ($drv) {
        Write-Host "⚠️  oem1.inf активен в системе (блокирует HVCI). Запустите 'dd' для удаления." -ForegroundColor Yellow
    } else {
        Write-Host "✅ oem1.inf отсутствует (HVCI чист)." -ForegroundColor Green
    }
}
'''

def main():
    PROFILE_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(PROFILE_PATH, "w", encoding="utf-8-sig") as f:
        f.write(PROFILE_CONTENT)
    print(f"[OK] Profile written with UTF-8 BOM to {PROFILE_PATH}")

if __name__ == "__main__":
    main()
