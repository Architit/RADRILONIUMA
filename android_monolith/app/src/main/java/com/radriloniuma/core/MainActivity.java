package com.radriloniuma.core;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private TextView statusTextView;
    private TextView logTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Simple programmatic UI for terminal and sovereign status
        LinearLayout rootLayout = new LinearLayout(this);
        rootLayout.setOrientation(LinearLayout.VERTICAL);
        rootLayout.setPadding(32, 48, 32, 32);
        rootLayout.setBackgroundColor(0xFF0F141C);

        TextView titleView = new TextView(this);
        titleView.setText("⚜️ RADRILONIUMA CORE MONOLITH");
        titleView.setTextSize(20);
        titleView.setTextColor(0xFFF59E0B);
        titleView.setGravity(Gravity.CENTER);
        rootLayout.addView(titleView);

        statusTextView = new TextView(this);
        statusTextView.setText("\nStatus: INITIALIZING...\nEnvironment: Ubuntu 22.04 LTS Monolith\nTarget: targetSdkVersion 28 (W^X Bypass Active)\nSupervisor: ark_initd (PID 1)\n");
        statusTextView.setTextColor(0xFF10B981);
        statusTextView.setTextSize(14);
        rootLayout.addView(statusTextView);

        Button startBtn = new Button(this);
        startBtn.setText("START / RESTART MONOLITH SERVICE");
        startBtn.setBackgroundColor(0xFF1E3A8A);
        startBtn.setTextColor(0xFFFFFFFF);
        startBtn.setOnClickListener(v -> startMonolithService());
        rootLayout.addView(startBtn);

        ScrollView scrollView = new ScrollView(this);
        scrollView.setLayoutParams(new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1.0f));

        logTextView = new TextView(this);
        logTextView.setText("\n[BOOT LOGS]\n- Termux deprecation: ENFORCED (0 months)\n- JNI Native Bridge: LOADED\n- Background policy: IMMORTAL FOREGROUND SERVICE\n- Unix Domain Socket: /run/radriloniuma/ark_bus.sock\n");
        logTextView.setTextColor(0xFF94A3B8);
        logTextView.setTextSize(12);
        scrollView.addView(logTextView);
        rootLayout.addView(scrollView);

        setContentView(rootLayout);

        // Auto-start service
        startMonolithService();
    }

    private void startMonolithService() {
        Intent serviceIntent = new Intent(this, RadriloniumaForegroundService.class);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(serviceIntent);
        } else {
            startService(serviceIntent);
        }
        statusTextView.setText("\nStatus: ACTIVE & SUPERVISED\nEnvironment: Ubuntu 22.04 LTS Monolith\nTarget: targetSdkVersion 28 (W^X Bypass Active)\nSupervisor: ark_initd (PID 1)\n");
    }
}
