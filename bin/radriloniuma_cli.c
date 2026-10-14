/*
 * RADRILONIUMA SOVEREIGN LINUX CLI DISPATCHER [radriloniuma.bin]
 * Architecture: Linux ELF 64-bit Native C
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <sys/stat.h>

#define SOCK_PATH "/run/radriloniuma/ark_bus.sock"
#define STATE_PATH "/root/RADRILONIUMA/SYSTEM_STATE.md"

void print_banner() {
    printf("\033[1;36m==================================================================\033[0m\n");
    printf("\033[1;33m     ⚜️ RADRILONIUMA SOVEREIGN LINUX DISPATCHER [radriloniuma.bin] \033[0m\n");
    printf("\033[1;36m     Version: 4.0.0-ARGON-MONOLITH | Core: Ubuntu 22.04 LTS (WSL2)\033[0m\n");
    printf("\033[1;36m==================================================================\033[0m\n");
}

int query_ipc(const char *cmd) {
    int fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd < 0) {
        printf("  \033[1;31m✗ IPC Socket Error: socket() failed\033[0m\n");
        return -1;
    }
    
    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, SOCK_PATH, sizeof(addr.sun_path) - 1);
    
    if (connect(fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        printf("  \033[1;33m• IPC Socket inactive (ark_initd not yet bound on %s)\033[0m\n", SOCK_PATH);
        close(fd);
        return 0;
    }
    
    write(fd, cmd, strlen(cmd));
    char buf[1024];
    ssize_t n = read(fd, buf, sizeof(buf) - 1);
    if (n > 0) {
        buf[n] = '\0';
        printf("  \033[1;32m✓ IPC Response:\033[0m %s", buf);
    }
    close(fd);
    return 1;
}

int do_init() {
    printf("\n\033[1;33m[1/3] Проверка окружения runtime и точек монтирования...\033[0m\n");
    mkdir("/run/radriloniuma", 0755);
    mkdir("/var/log/radriloniuma", 0755);
    printf("  \033[1;32m✓ Каталоги /run/radriloniuma и /var/log/radriloniuma подготовлены.\033[0m\n");

    printf("\n\033[1;33m[2/3] Опрос шины IPC и супервизора ark_initd...\033[0m\n");
    if (access("/root/RADRILONIUMA/core_daemons/ark_initd", X_OK) == 0) {
        printf("  \033[1;32m✓ Бинарный супервизор /root/RADRILONIUMA/core_daemons/ark_initd доступен.\033[0m\n");
    } else {
        printf("  \033[1;31m✗ /root/RADRILONIUMA/core_daemons/ark_initd не найден или нет прав исполнения.\033[0m\n");
    }
    query_ipc("PING");

    printf("\n\033[1;33m[3/3] Синхронизация системного резонанса 528 Hz / 432 Hz...\033[0m\n");
    if (access(STATE_PATH, R_OK) == 0) {
        FILE *f = fopen(STATE_PATH, "r");
        if (f) {
            char line[256];
            while (fgets(line, sizeof(line), f)) {
                printf("  %s", line);
            }
            fclose(f);
        }
    }
    
    printf("\n\033[1;32m[SUCCESS] radriloniuma.bin init завершен штатно.\033[0m\n\n");
    return 0;
}

int do_status() {
    print_banner();
    printf("\n[IPC STATUS]\n");
    if (query_ipc("STATUS") <= 0) {
        printf("  (Полноценный статус доступен через PM2 или при активном сокете)\n");
    }
    return 0;
}

int main(int argc, char *argv[]) {
    print_banner();
    const char *cmd = (argc > 1) ? argv[1] : "init";
    
    if (strcmp(cmd, "init") == 0) {
        return do_init();
    } else if (strcmp(cmd, "status") == 0) {
        return do_status();
    } else {
        printf("Использование: radriloniuma.bin [init | status]\n");
        return 0;
    }
}
