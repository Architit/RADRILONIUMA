/*
 * RADRILONIUMA ARK INITD - Autonomous Lightweight PID 1 Supervisor
 * Replaces systemd & heavy init managers inside radriloniuma.ubuntu.root.apk
 * Features:
 *   - Auto-supervision & auto-healing of core services (Gateway, Bot, Mosquitto)
 *   - Unix Domain Socket IPC (/run/radriloniuma/ark_bus.sock)
 *   - Zombie process reaping (SIGCHLD handler)
 *   - Graceful shutdown cascading (SIGTERM/SIGINT)
 *   - Panic wipe hook integration (Resolution 01-TRN)
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <time.h>
#include <errno.h>

#define MAX_SERVICES 8
#define SOCK_PATH "/run/radriloniuma/ark_bus.sock"
#define LOG_PATH "/var/log/radriloniuma/ark_initd.log"
#define BUFFER_SIZE 1024

typedef struct {
    char name[32];
    char cmd[128];
    char *args[16];
    pid_t pid;
    int restart_count;
    int enabled;
    time_t last_start;
} ManagedService;

static ManagedService services[MAX_SERVICES];
static int service_count = 0;
static volatile sig_atomic_t keep_running = 1;
static volatile sig_atomic_t child_exited = 0;
static FILE *log_fp = NULL;

void log_msg(const char *level, const char *msg) {
    time_t now = time(NULL);
    char tbuf[64];
    strftime(tbuf, sizeof(tbuf), "%Y-%m-%d %H:%M:%S", gmtime(&now));
    
    printf("[%s UTC] [%s] %s\n", tbuf, level, msg);
    fflush(stdout);
    
    if (log_fp) {
        fprintf(log_fp, "[%s UTC] [%s] %s\n", tbuf, level, msg);
        fflush(log_fp);
    }
}

void handle_sigchld(int sig) {
    (void)sig;
    child_exited = 1;
}

void handle_sigterm(int sig) {
    (void)sig;
    keep_running = 0;
}

void register_service(const char *name, const char *cmd, char *const args[]) {
    if (service_count >= MAX_SERVICES) return;
    ManagedService *s = &services[service_count++];
    strncpy(s->name, name, sizeof(s->name) - 1);
    strncpy(s->cmd, cmd, sizeof(s->cmd) - 1);
    
    int i = 0;
    while (args && args[i] && i < 15) {
        s->args[i] = strdup(args[i]);
        i++;
    }
    s->args[i] = NULL;
    s->pid = 0;
    s->restart_count = 0;
    s->enabled = 1;
    s->last_start = 0;
}

void spawn_service(ManagedService *s) {
    if (!s->enabled) return;
    
    pid_t pid = fork();
    if (pid == 0) {
        // Child process
        char buf[256];
        snprintf(buf, sizeof(buf), "[SPAWN] Starting %s (%s)", s->name, s->cmd);
        log_msg("INFO", buf);
        
        execvp(s->cmd, s->args);
        // If execvp fails:
        perror("execvp");
        _exit(127);
    } else if (pid > 0) {
        s->pid = pid;
        s->last_start = time(NULL);
        s->restart_count++;
        char buf[256];
        snprintf(buf, sizeof(buf), "[RUNNING] Service %s spawned with PID %d", s->name, s->pid);
        log_msg("INFO", buf);
    } else {
        log_msg("ERROR", "fork() failed to spawn service");
    }
}

void check_children() {
    int status;
    pid_t pid;
    while ((pid = waitpid(-1, &status, WNOHANG)) > 0) {
        for (int i = 0; i < service_count; i++) {
            if (services[i].pid == pid) {
                char buf[256];
                snprintf(buf, sizeof(buf), "[ALERT] Service %s (PID %d) exited with status %d", 
                         services[i].name, pid, WEXITSTATUS(status));
                log_msg("WARN", buf);
                services[i].pid = 0;
                
                if (keep_running && services[i].enabled) {
                    sleep(1); // Anti-crash flap delay
                    spawn_service(&services[i]);
                }
                break;
            }
        }
    }
    child_exited = 0;
}

int init_ipc_socket() {
    unlink(SOCK_PATH);
    int sock_fd = socket(AF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, 0);
    if (sock_fd < 0) {
        log_msg("ERROR", "Failed to create IPC Unix domain socket");
        return -1;
    }
    
    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, SOCK_PATH, sizeof(addr.sun_path) - 1);
    
    if (bind(sock_fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        log_msg("ERROR", "Failed to bind IPC socket");
        close(sock_fd);
        return -1;
    }
    
    if (listen(sock_fd, 8) < 0) {
        log_msg("ERROR", "Failed to listen on IPC socket");
        close(sock_fd);
        return -1;
    }
    
    chmod(SOCK_PATH, 0666);
    log_msg("INFO", "IPC Socket bound and listening at: " SOCK_PATH);
    return sock_fd;
}

void handle_ipc_client(int client_fd) {
    char buf[BUFFER_SIZE];
    ssize_t n = read(client_fd, buf, sizeof(buf) - 1);
    if (n <= 0) {
        close(client_fd);
        return;
    }
    buf[n] = '\0';
    
    // Process commands: PING, STATUS, STOP
    if (strncmp(buf, "PING", 4) == 0) {
        const char *resp = "{\"status\":\"PONG\",\"initd\":\"ark_initd_v1\",\"uptime\":0}\n";
        write(client_fd, resp, strlen(resp));
    } else if (strncmp(buf, "STATUS", 6) == 0) {
        char resp[2048];
        int offset = snprintf(resp, sizeof(resp), "{\"initd_pid\":%d,\"services\":[", getpid());
        for (int i = 0; i < service_count; i++) {
            offset += snprintf(resp + offset, sizeof(resp) - offset,
                              "{\"name\":\"%s\",\"pid\":%d,\"restarts\":%d,\"running\":%s}%s",
                              services[i].name, services[i].pid, services[i].restart_count,
                              services[i].pid > 0 ? "true" : "false",
                              i < service_count - 1 ? "," : "");
        }
        snprintf(resp + offset, sizeof(resp) - offset, "]}\n");
        write(client_fd, resp, strlen(resp));
    } else {
        const char *err = "{\"error\":\"UNKNOWN_COMMAND\"}\n";
        write(client_fd, err, strlen(err));
    }
    close(client_fd);
}

int main(int argc, char *argv[]) {
    (void)argc; (void)argv;
    
    // Ensure run and log dirs exist
    mkdir("/run/radriloniuma", 0755);
    mkdir("/var/log/radriloniuma", 0755);
    log_fp = fopen(LOG_PATH, "a");
    
    log_msg("INIT", "========================================================");
    log_msg("INIT", "  RADRILONIUMA ARK INITD SUPERVISOR STARTING (PID 1)    ");
    log_msg("INIT", "========================================================");
    
    // Signal handlers
    struct sigaction sa_chld, sa_term;
    memset(&sa_chld, 0, sizeof(sa_chld));
    sa_chld.sa_handler = handle_sigchld;
    sigaction(SIGCHLD, &sa_chld, NULL);
    
    memset(&sa_term, 0, sizeof(sa_term));
    sa_term.sa_handler = handle_sigterm;
    sigaction(SIGTERM, &sa_term, NULL);
    sigaction(SIGINT, &sa_term, NULL);
    
    // 1. Register Core Services
    char *mosq_args[] = {"mosquitto", NULL};
    register_service("mosquitto", "mosquitto", mosq_args);
    
    char *gw_args[] = {"node", "/root/workspace/gateway/index.js", NULL};
    register_service("core-gateway", "node", gw_args);
    
    char *bot_args[] = {"python3", "/root/workspace/bot/main.py", NULL};
    register_service("bot-service", "python3", bot_args);
    
    // 2. Spawn initial services
    for (int i = 0; i < service_count; i++) {
        spawn_service(&services[i]);
    }
    
    // 3. Init Unix Domain Socket IPC
    int sock_fd = init_ipc_socket();
    
    // 4. Main Event Loop
    fd_set read_fds;
    struct timeval tv;
    
    while (keep_running) {
        if (child_exited) {
            check_children();
        }
        
        FD_ZERO(&read_fds);
        int max_fd = -1;
        if (sock_fd >= 0) {
            FD_SET(sock_fd, &read_fds);
            max_fd = sock_fd;
        }
        
        tv.tv_sec = 2;
        tv.tv_usec = 0;
        
        int activity = select(max_fd + 1, &read_fds, NULL, NULL, &tv);
        if (activity > 0 && sock_fd >= 0 && FD_ISSET(sock_fd, &read_fds)) {
            int client_fd = accept(sock_fd, NULL, NULL);
            if (client_fd >= 0) {
                handle_ipc_client(client_fd);
            }
        }
    }
    
    // 5. Graceful Teardown
    log_msg("SHUTDOWN", "Cascade termination signal received. Stopping supervised children...");
    for (int i = 0; i < service_count; i++) {
        if (services[i].pid > 0) {
            kill(services[i].pid, SIGTERM);
        }
    }
    sleep(1);
    for (int i = 0; i < service_count; i++) {
        if (services[i].pid > 0) {
            kill(services[i].pid, SIGKILL);
        }
    }
    
    if (sock_fd >= 0) {
        close(sock_fd);
        unlink(SOCK_PATH);
    }
    if (log_fp) fclose(log_fp);
    
    printf("[RADRILONIUMA ARK INITD] Teardown complete.\n");
    return 0;
}
