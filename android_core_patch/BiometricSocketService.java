package com.architit.radriloniuma;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import java.util.UUID;

public class BiometricSocketService extends Service {
    private ServerSocket serverSocket;
    private Thread serverThread;
    private BluetoothServerSocket btServerSocket;
    private Thread btServerThread;
    private boolean isRunning = false;
    private static final int PORT = 9090; 
    private static final UUID BT_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    public static boolean TRUSTED_NODE_CONNECTED = false;

    @Override
    public void onCreate() {
        super.onCreate();
        isRunning = true;
        serverThread = new Thread(new SocketServerThread());
        serverThread.start();
        btServerThread = new Thread(new BluetoothServerThread());
        btServerThread.start();
        Log.d("RADRILONIUMA", "BiometricSocketService started TCP and Bluetooth listeners");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        isRunning = false;
        try {
            if (serverSocket != null) serverSocket.close();
            if (btServerSocket != null) btServerSocket.close();
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

    private class BluetoothServerThread implements Runnable {
        @Override
        public void run() {
            try {
                BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
                if (adapter != null) {
                    btServerSocket = adapter.listenUsingRfcommWithServiceRecord("RADRILONIUMA_BRIDGE", BT_UUID);
                    while (isRunning) {
                        BluetoothSocket socket = btServerSocket.accept();
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
                        socket.close();
                    }
                }
            } catch (Exception e) {
                Log.e("RADRILONIUMA", "Bluetooth listener error", e);
            }
        }
    }
}
