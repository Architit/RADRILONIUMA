// jni/radriloniuma_boot.c
#include <jni.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <android/log.h>

#define TAG "RADRILONIUMA_JNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

JNIEXPORT jint JNICALL
Java_com_radriloniuma_core_NativeBridge_bootMonolith(JNIEnv *env, jobject thiz, jstring rootfsPath, jstring nativeLibDir, jboolean hasRoot) {
    (void)thiz;
    const char *rootfs = (*env)->GetStringUTFChars(env, rootfsPath, 0);
    const char *libdir = (*env)->GetStringUTFChars(env, nativeLibDir, 0);

    LOGI("[NATIVE BOOT] Initiating bootMonolith. rootfs: %s, libdir: %s, hasRoot: %d", rootfs, libdir, hasRoot);

    pid_t pid = fork();
    if (pid == 0) {
        // Child execution context inside Android process boundary
        clearenv();
        setenv("HOME", "/root", 1);
        setenv("TERM", "xterm-256color", 1);
        setenv("PATH", "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin", 1);
        setenv("PROOT_NO_SECCOMP", "1", 1);
        setenv("RADRILONIUMA_CONTAINER", "1", 1);

        if (hasRoot) {
            LOGI("[NATIVE BOOT] Root detected. Invoking direct su chroot / init_chroot.sh");
            execlp("su", "su", "-c", "/data/data/com.radriloniuma.core/files/init_chroot.sh", (char *)NULL);
        } else {
            // Non-root fallback: run via embedded libproot.so inside nativeLibraryDir
            char prootBin[512];
            snprintf(prootBin, sizeof(prootBin), "%s/libproot.so", libdir);
            LOGI("[NATIVE BOOT] Non-root environment. Invoking embedded proot: %s", prootBin);

            execl(prootBin, "libproot.so",
                  "-0", "-r", rootfs,
                  "-b", "/dev", "-b", "/proc", "-b", "/sys",
                  "-w", "/root",
                  "/bin/bash", "/etc/radriloniuma/bootstrap.sh", (char *)NULL);
        }
        LOGE("[NATIVE BOOT] execl failed with errno: %d", errno);
        _exit(127);
    }

    (*env)->ReleaseStringUTFChars(env, rootfsPath, rootfs);
    (*env)->ReleaseStringUTFChars(env, nativeLibDir, libdir);

    LOGI("[NATIVE BOOT] Monolith spawned with PID: %d", pid);
    return (jint)pid;
}
