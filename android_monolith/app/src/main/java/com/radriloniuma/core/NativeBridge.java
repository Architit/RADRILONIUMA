package com.radriloniuma.core;

public class NativeBridge {
    static {
        System.loadLibrary("radriloniuma_jni");
    }

    /**
     * Native call into JNI C layer to fork & execve Ubuntu monolith environment.
     * @param rootfsPath Absolute path to rootfs folder (e.g. /data/data/com.radriloniuma.core/files/rootfs)
     * @param nativeLibDir Absolute path to native libraries (containing libproot.so)
     * @param hasRoot True if su is available, False for libproot.so fallback
     * @return PID of spawned container supervisor
     */
    public static native int bootMonolith(String rootfsPath, String nativeLibDir, boolean hasRoot);
}
