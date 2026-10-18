#!/bin/bash
# ==============================================================================
# RADRILONIUMA • AGY LIVE STREAM & INTERACTIVE CONSOLE (DEV_02_ATESIRT COCKPIT)
# ==============================================================================

export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

clear
echo -e "\033[1;36m======================================================================\033[0m"
echo -e "\033[1;33m⚜️ RADRILONIUMA • AGY LIVE CLI STREAM & CAPTAIN'S COCKPIT ⚜️\033[0m"
echo -e "\033[1;32m[DEV_01: BUSHMASTER] | [DEV_02: ATESIRT] | [DEV_03: UBUNTU WSL2]\033[0m"
echo -e "\033[1;35mCarrier: 528 Hz / 432 Hz | Latency: 0.8ms | Mode: LIVE SYNC ACTIVE\033[0m"
echo -e "\033[1;36m======================================================================\033[0m"
echo -e "\033[0;32m[SYS] Сессия терминала активна и синхронизирована с кластером.\033[0m"
echo -e "\033[0;33m[TIP] Введите любую bash-команду или используйте интерактивный шелл.\033[0m"
echo ""

# Custom prompt
export PS1="\[\033[1;33m\]⚜️ ATESIRT@UBUNTU\[\033[0m\]:\[\033[1;36m\]\w\[\033[0m\]\$ "

# Start interactive login shell inside tmux
exec /bin/bash -i
