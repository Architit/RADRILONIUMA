#!/usr/bin/env bash
# [SENSITIVE] Изолированный мост проверки аппаратного статуса для WSL
# Читает состояние из зашифрованного сокета/раздела хоста или проброшенного токена

GATE_STATUS_FILE="/mnt/wsl/shared/.hw_gate.status"
TOKEN_VALID_TIME=30 # Время жизни статуса в секундах

function check_hw_gate() {
    if [[ ! -f "$GATE_STATUS_FILE" ]]; then
        echo "[DENIED] Аппаратный шлюз недоступен. Физический кабель или SIM не верифицированы." >&2
        return 1
    fi

    # Проверка актуальности метки времени (защита от заморозки сессии)
    local file_time=$(stat -c %Y "$GATE_STATUS_FILE")
    local curr_time=$(date +%s)
    local diff=$((curr_time - file_time))

    if (( diff > TOKEN_VALID_TIME )); then
        echo "[EXPIRED] Таймаут аппаратного токена ($diff сек). Требуется повторный хэндшейк." >&2
        return 1
    fi

    local status=$(cat "$GATE_STATUS_FILE" | awk '{print $1}')
    if [[ "$status" == "CLEAR_TRUSTED_NODE" ]]; then
        return 0
    else
        echo "[BLOCKED] Узел не верифицирован. Статус: $status" >&2
        return 1
    fi
}
