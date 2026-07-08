package com.architit.radriloniuma;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class BiometricSocketService extends Service {
    private ServerSocket serverSocket;
    private Thread serverThread;
    private boolean isRunning = false;
    private static final int PORT = 9090; 
    public static boolean TRUSTED_NODE_CONNECTED = false;

    @Override
    public void onCreate() {
        super.onCreate();
        isRunning = true;
        serverThread = new Thread(new SocketServerThread());
        serverThread.start();
        Log.d("RADRILONIUMA", "BiometricSocketService started on port " + PORT);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        isRunning = false;
        try {
            if (serverSocket != null) serverSocket.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public IBinder onBind(Intent intent) { return null; }

    private class SocketServerThread implements Runnable {
        @Override
        public void run() {
            try {
                serverSocket = new ServerSocket(PORT);
                while (isRunning) {
                    Socket socket = serverSocket.accept();
                    InputStream in = socket.getInputStream();
                    byte[] buffer = new byte[1024];
                    int bytesRead = in.read(buffer);
                    if (bytesRead > 0) {
                        String request = new String(buffer, 0, bytesRead).trim();
                        if (request.equals("HANDSHAKE_REQUEST")) {
                            Intent authIntent = new Intent(BiometricSocketService.this, NexusActivity.class);
                            authIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                            authIntent.putExtra("REQUIRE_BIOMETRICS", true);
                            startActivity(authIntent);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
