package com.radriloniuma.core;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;

import androidx.core.app.NotificationCompat;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class RadriloniumaForegroundService extends Service {
    private static final String TAG = "RADRILONIUMA_SERVICE";
    private static final String CHANNEL_ID = "radriloniuma_monolith_channel";
    private static final int NOTIF_ID = 20261014;

    private PowerManager.WakeLock wakeLock;
    private int containerPid = -1;
    private boolean isRunning = false;

    @Override
    public void onCreate() {
        super.onCreate();
        Log.i(TAG, "[INIT] RadriloniumaForegroundService initializing...");

        createNotificationChannel();
        Notification notification = buildNotification("RADRILONIUMA Sovereign Monolith Active");
        startForeground(NOTIF_ID, notification);

        acquireWakeLock();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (!isRunning) {
            isRunning = true;
            new Thread(this::bootstrapAndRunContainer).start();
        }
        return START_STICKY; // Immortal policy against Android OOM killer
    }

    private void bootstrapAndRunContainer() {
        try {
            File filesDir = getFilesDir();
            File rootfsDir = new File(filesDir, "rootfs");
            if (!rootfsDir.exists()) {
                rootfsDir.mkdirs();
                unpackAssetsIfNeeded(rootfsDir);
            }

            File runDir = new File(filesDir, "run");
            if (!runDir.exists()) {
                runDir.mkdirs();
            }

            boolean hasRoot = checkSuBinary();
            String nativeLibDir = getApplicationInfo().nativeLibraryDir;

            Log.i(TAG, "[BOOT] Invoking NativeBridge.bootMonolith... hasRoot=" + hasRoot);
            containerPid = NativeBridge.bootMonolith(
                    rootfsDir.getAbsolutePath(),
                    nativeLibDir,
                    hasRoot
            );

            Log.i(TAG, "[BOOT] Container started successfully. PID=" + containerPid);

        } catch (Exception e) {
            Log.e(TAG, "[BOOT ERROR] Failure launching monolith container: " + e.getMessage(), e);
        }
    }

    private boolean checkSuBinary() {
        String[] paths = {"/system/bin/su", "/system/xbin/su", "/sbin/su", "/su/bin/su"};
        for (String p : paths) {
            if (new File(p).exists()) return true;
        }
        return false;
    }

    private void unpackAssetsIfNeeded(File destDir) {
        try {
            String[] assets = getAssets().list("");
            if (assets == null) return;
            for (String asset : assets) {
                if (asset.endsWith(".tar.zst") || asset.equals("bootstrap.sh")) {
                    File target = new File(destDir, asset);
                    if (!target.exists()) {
                        Log.i(TAG, "[ASSETS] Unpacking " + asset + " to " + target.getAbsolutePath());
                        try (InputStream in = getAssets().open(asset);
                             OutputStream out = new FileOutputStream(target)) {
                            byte[] buffer = new byte[8192];
                            int read;
                            while ((read = in.read(buffer)) != -1) {
                                out.write(buffer, 0, read);
                            }
                        }
                        target.setExecutable(true, false);
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "[ASSETS ERROR] " + e.getMessage());
        }
    }

    private void acquireWakeLock() {
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        if (pm != null) {
            wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "Radriloniuma:MonolithLock");
            wakeLock.acquire();
            Log.i(TAG, "[WAKELOCK] Acquired PARTIAL_WAKE_LOCK.");
        }
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(
                    CHANNEL_ID,
                    "RADRILONIUMA Core Monolith",
                    NotificationManager.IMPORTANCE_LOW
            );
            channel.setDescription("Continuous background execution of Ubuntu Sovereign Ark");
            NotificationManager nm = getSystemService(NotificationManager.class);
            if (nm != null) nm.createNotificationChannel(channel);
        }
    }

    private Notification buildNotification(String text) {
        Intent notifIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(
                this, 0, notifIntent,
                PendingIntent.FLAG_IMMUTABLE | PendingIntent.FLAG_UPDATE_CURRENT
        );

        return new NotificationCompat.Builder(this, CHANNEL_ID)
                .setContentTitle("RADRILONIUMA Sovereign Ark")
                .setContentText(text)
                .setSmallIcon(android.R.drawable.stat_sys_warning)
                .setContentIntent(pendingIntent)
                .setOngoing(true)
                .setPriority(NotificationCompat.PRIORITY_LOW)
                .build();
    }

    @Override
    public void onDestroy() {
        Log.i(TAG, "[SHUTDOWN] Service destroying. Releasing WakeLock.");
        if (wakeLock != null && wakeLock.isHeld()) {
            wakeLock.release();
        }
        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
