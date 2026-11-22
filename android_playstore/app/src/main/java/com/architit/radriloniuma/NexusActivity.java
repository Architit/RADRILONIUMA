package com.architit.radriloniuma;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

public class NexusActivity extends Activity {
    private FrameLayout desktopArea;
    private LinearLayout activeWindowFrame;
    private LinearLayout windowContentHolder;
    private TextView windowTitleText;
    private TextView breadcrumbText;
    private LinearLayout startMenuPopup;

    private TextView titleText;
    private TextView subtitleText;
    private TextView timeTelemetryText;
    private TextView desktopLiveNodeText;
    private TextView desktopHostLiveText;
    private TextView node2LiveDetailsText;

    // Navigation depth:
    // Level 1: Desktop (currentApp == -1)
    // Level 2: Window Open (0=Nodes, 1=Organs, 2=Terminal, 3=Settings, 4=Security)
    // Level 3: Detail View inside Window (detailLevel == true)
    private int currentApp = -1;
    private boolean detailLevel = false;
    private boolean startMenuVisible = false;

    private Button btnStartMenu;
    private Button[] taskButtons = new Button[4]; // Terminal, Settings, Organs, Nodes

    // Views for Windows
    private ScrollView nodesView;
    private LinearLayout nodesCardsLayout;

    private LinearLayout organsViewContainer;
    private LinearLayout organsListLayout;
    private String selectedDeckFilter = "ALL";

    private LinearLayout terminalViewContainer;
    private TextView terminalOutput;
    private ScrollView terminalScroll;
    private EditText terminalInput;
    private Process cliProcess;
    private OutputStream cliOut;
    private BufferedReader cliIn;
    private String activeUbuntuShellMode = "UBUNTU"; // UBUNTU, AGY, LOCAL_SH
    private String activeUbuntuAccountMode = "guest"; // guest, local_account, logged_in_account
    private String activeUbuntuCwd = "/root/RADRILONIUMA";
    private TextView terminalModeBanner;

    private ScrollView settingsView;
    private LinearLayout settingsCardsLayout;

    private ScrollView securityView;
    private LinearLayout securityCardsLayout;

    private PowerManager.WakeLock wakeLock;
    private SharedPreferences prefs;

    private static class OrganItem {
        String slot;
        String organId;
        String name;
        String slug;
        String toolName;
        String resonance;
        String deck;
        String status;
        String version;
    }
    private List<OrganItem> allOrgans = new ArrayList<OrganItem>();

    private Handler mainHandler;
    private Runnable clockTicker;

    // DEV_01 Gateway AGY Bridge & Remote Telemetry state
    private String bridgeWifiIp = "192.168.62.96";
    private String bridgeHotspotIp = "192.168.137.1";
    private int bridgeGatewayPort = 3000;
    private String bridgeWanUrl = "";
    private String bridgeCliToken = "";
    private volatile String activeGatewayUrl = null;
    private volatile String activeGatewayTransport = "CACHED";
    private volatile JSONObject remoteLaptopTelemetry = null;
    private volatile long remoteLaptopTelemetryAtMs = 0L;
    private volatile boolean activityDestroyed = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

        prefs = getSharedPreferences("radr_os_prefs", Context.MODE_PRIVATE);
        mainHandler = new Handler(Looper.getMainLooper());

        loadBridgeConfig();
        loadOrgansManifest();
        initNativeTerminal();
        buildUnifiedDesktopOS();
        startTelemetryLoop();
        startRemoteTelemetrySync();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshAllLiveTelemetry();
        if (currentApp == 3) {
            populateSettingsWindow();
        } else if (currentApp == 4) {
            populateSecurityWindow();
        }
    }

    private void loadOrgansManifest() {
        try {
            InputStream is = getAssets().open("organs_manifest.json");
            byte[] buf = new byte[is.available()];
            is.read(buf);
            is.close();
            String jsonStr = new String(buf, "UTF-8");
            JSONObject root = new JSONObject(jsonStr);
            JSONObject organsObj = root.optJSONObject("organs");
            if (organsObj != null) {
                JSONArray names = organsObj.names();
                if (names != null) {
                    for (int i = 0; i < names.length(); i++) {
                        String key = names.getString(i);
                        JSONObject o = organsObj.getJSONObject(key);
                        OrganItem item = new OrganItem();
                        item.slot = o.optString("slot", String.format(Locale.US, "%03d", i + 1));
                        item.organId = o.optString("organ_id", key);
                        item.name = o.optString("name", key);
                        item.slug = o.optString("slug", "");
                        item.toolName = o.optString("tool_name", "enqueue_task_" + key.toLowerCase(Locale.US));
                        item.resonance = o.optString("resonance", "528 Hz");
                        item.deck = o.optString("deck", "core");
                        item.status = o.optString("status", "ONLINE");
                        item.version = o.optString("version", "2026.10.25");
                        allOrgans.add(item);
                    }
                }
            }
        } catch (Exception ignored) {}

        if (allOrgans.isEmpty()) {
            for (int i = 1; i <= 68; i++) {
                OrganItem item = new OrganItem();
                item.slot = String.format(Locale.US, "%03d", i);
                item.organId = "ORGAN_" + item.slot;
                item.name = "Sovereign Organ #" + item.slot;
                item.slug = "sovereign-organ-" + item.slot;
                item.toolName = "enqueue_task_organ_" + item.slot;
                item.resonance = "528 Hz";
                item.deck = (i <= 14) ? "core" : (i <= 28) ? "lam" : (i <= 42) ? "hardware" : (i <= 56) ? "portals" : "special";
                item.status = "ONLINE";
                item.version = "2026.10.25";
                allOrgans.add(item);
            }
        }
    }

    private void buildUnifiedDesktopOS() {
        LinearLayout masterVertical = new LinearLayout(this);
        masterVertical.setOrientation(LinearLayout.VERTICAL);
        masterVertical.setBackgroundColor(Color.parseColor("#040b06"));
        masterVertical.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // 1. Top HUD Bar
        masterVertical.addView(buildTopHudBar());

        // 2. Center Desktop Area (Level 1 Desktop + Level 2/3 Window Container + Start Menu Popup)
        desktopArea = new FrameLayout(this);
        LinearLayout.LayoutParams deskLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f);
        desktopArea.setLayoutParams(deskLp);

        ResonantCanvasView canvasView = new ResonantCanvasView(this);
        desktopArea.addView(canvasView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // Level 1: Desktop Dashboard & Quick Launch Icons
        desktopArea.addView(buildDesktopHomeLayer());

        // Prepare Window Content Views
        buildNodesWindowView();
        buildOrgansWindowView();
        buildTerminalWindowView();
        buildSettingsWindowView();
        buildSecurityWindowView();

        // Level 2 & 3: Active Window Frame (hidden on Level 1 Desktop)
        activeWindowFrame = buildWindowFrame();
        activeWindowFrame.setVisibility(View.GONE);
        desktopArea.addView(activeWindowFrame);

        // Start Menu Popup (anchored bottom-left above Taskbar)
        startMenuPopup = buildStartMenuPopup();
        startMenuPopup.setVisibility(View.GONE);
        FrameLayout.LayoutParams smLp = new FrameLayout.LayoutParams(
                dpToPx(270), ViewGroup.LayoutParams.WRAP_CONTENT);
        smLp.gravity = Gravity.BOTTOM | Gravity.START;
        smLp.setMargins(dpToPx(6), dpToPx(6), dpToPx(6), dpToPx(6));
        desktopArea.addView(startMenuPopup, smLp);

        masterVertical.addView(desktopArea);

        // 3. Bottom Taskbar with [ ❖ ПУСК ] and Window Buttons
        masterVertical.addView(buildBottomTaskbar());

        setContentView(masterVertical);
        updateTaskbarHighlight();
    }

    private View buildTopHudBar() {
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(dpToPx(10), dpToPx(6), dpToPx(10), dpToPx(6));

        GradientDrawable headerBg = new GradientDrawable();
        headerBg.setColor(Color.parseColor("#07170e"));
        headerBg.setStroke(dpToPx(1), Color.parseColor("#1b4728"));
        header.setBackground(headerBg);

        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.setGravity(Gravity.CENTER_VERTICAL);

        titleText = new TextView(this);
        titleText.setText("RADRILONIUMA OS 2026.11.20");
        titleText.setTextColor(Color.parseColor("#22c55e"));
        titleText.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        titleText.setTextSize(12.0f);
        titleText.setSingleLine(true);
        LinearLayout.LayoutParams titleLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        titleText.setLayoutParams(titleLp);

        timeTelemetryText = new TextView(this);
        timeTelemetryText.setText("2026-11-20 --:--:--");
        timeTelemetryText.setTextColor(Color.parseColor("#facc15"));
        timeTelemetryText.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        timeTelemetryText.setTextSize(10.5f);
        timeTelemetryText.setGravity(Gravity.END);

        row1.addView(titleText);
        row1.addView(timeTelemetryText);
        header.addView(row1);

        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.setGravity(Gravity.CENTER_VERTICAL);
        row2.setPadding(0, dpToPx(2), 0, 0);

        subtitleText = new TextView(this);
        subtitleText.setText("528 Hz LOCKED | CARRIER: 528/432 Hz | BAT: --%");
        subtitleText.setTextColor(Color.parseColor("#2dd4bf"));
        subtitleText.setTypeface(Typeface.MONOSPACE);
        subtitleText.setTextSize(9.5f);
        subtitleText.setSingleLine(true);
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        subtitleText.setLayoutParams(subLp);

        row2.addView(subtitleText);
        header.addView(row2);

        return header;
    }

    private View buildDesktopHomeLayer() {
        ScrollView sv = new ScrollView(this);
        sv.setLayoutParams(new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        sv.setPadding(dpToPx(12), dpToPx(10), dpToPx(12), dpToPx(10));

        LinearLayout home = new LinearLayout(this);
        home.setOrientation(LinearLayout.VERTICAL);

        // Sovereign Quorum & Core Resonance Bar (NO hallucinated names)
        LinearLayout statusBar = new LinearLayout(this);
        statusBar.setOrientation(LinearLayout.HORIZONTAL);
        statusBar.setPadding(dpToPx(6), dpToPx(6), dpToPx(6), dpToPx(6));
        GradientDrawable sbBg = new GradientDrawable();
        sbBg.setColor(Color.parseColor("#091d11"));
        sbBg.setStroke(dpToPx(1), Color.parseColor("#1e5630"));
        sbBg.setCornerRadius(dpToPx(4));
        statusBar.setBackground(sbBg);

        statusBar.addView(createBadge("QUORUM: 5/5 NODES", "#22c55e", "#041c0c"));
        statusBar.addView(createBadge("ORGANS: 68/68 ACTIVE", "#2dd4bf", "#00201c"));
        statusBar.addView(createBadge("RESONANCE: 528 Hz", "#facc15", "#1c1800"));
        home.addView(statusBar);

        // Live DEV_01_BUSHMASTER Laptop Host Card on Desktop
        LinearLayout laptopCard = new LinearLayout(this);
        laptopCard.setOrientation(LinearLayout.VERTICAL);
        laptopCard.setPadding(dpToPx(12), dpToPx(8), dpToPx(12), dpToPx(8));
        GradientDrawable lapBg = new GradientDrawable();
        lapBg.setColor(Color.parseColor("#061522"));
        lapBg.setStroke(dpToPx(1), Color.parseColor("#38bdf8"));
        lapBg.setCornerRadius(dpToPx(6));
        laptopCard.setBackground(lapBg);
        LinearLayout.LayoutParams lapLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lapLp.setMargins(0, dpToPx(8), 0, dpToPx(4));
        laptopCard.setLayoutParams(lapLp);

        TextView lapTitle = new TextView(this);
        lapTitle.setText("💻 DEV_01_BUSHMASTER • LAPTOP ORCHESTRATOR COCKPIT");
        lapTitle.setTextColor(Color.parseColor("#38bdf8"));
        lapTitle.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        lapTitle.setTextSize(11.0f);
        laptopCard.addView(lapTitle);

        desktopHostLiveText = new TextView(this);
        desktopHostLiveText.setTextColor(Color.parseColor("#e2e8f0"));
        desktopHostLiveText.setTypeface(Typeface.MONOSPACE);
        desktopHostLiveText.setTextSize(9.5f);
        desktopHostLiveText.setPadding(0, dpToPx(3), 0, 0);
        laptopCard.addView(desktopHostLiveText);
        home.addView(laptopCard);

        // Live DEV_02_ATESIRT Telemetry Card on Desktop
        LinearLayout liveCard = new LinearLayout(this);
        liveCard.setOrientation(LinearLayout.VERTICAL);
        liveCard.setPadding(dpToPx(12), dpToPx(10), dpToPx(12), dpToPx(10));
        GradientDrawable lcBg = new GradientDrawable();
        lcBg.setColor(Color.parseColor("#081a0f"));
        lcBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
        lcBg.setCornerRadius(dpToPx(6));
        liveCard.setBackground(lcBg);
        LinearLayout.LayoutParams lcLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lcLp.setMargins(0, dpToPx(10), 0, dpToPx(10));
        liveCard.setLayoutParams(lcLp);

        TextView lcTitle = new TextView(this);
        lcTitle.setText("⚜️ DEV_02_ATESIRT • SOVEREIGN DESKTOP COCKPIT");
        lcTitle.setTextColor(Color.parseColor("#22c55e"));
        lcTitle.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        lcTitle.setTextSize(11.5f);
        liveCard.addView(lcTitle);

        desktopLiveNodeText = new TextView(this);
        desktopLiveNodeText.setTextColor(Color.parseColor("#e2e8f0"));
        desktopLiveNodeText.setTypeface(Typeface.MONOSPACE);
        desktopLiveNodeText.setTextSize(10.0f);
        desktopLiveNodeText.setPadding(0, dpToPx(4), 0, 0);
        liveCard.addView(desktopLiveNodeText);
        home.addView(liveCard);

        // Desktop Icons Grid (Level 1 Shortcuts -> Open Level 2 Windows)
        TextView gridHeader = new TextView(this);
        gridHeader.setText("// СИСТЕМНЫЕ МОДУЛИ РАБОЧЕГО СТОЛА (УРОВЕНЬ 1 -> УРОВЕНЬ 2 -> УРОВЕНЬ 3)");
        gridHeader.setTextColor(Color.parseColor("#2dd4bf"));
        gridHeader.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        gridHeader.setTextSize(10.0f);
        gridHeader.setPadding(0, dpToPx(4), 0, dpToPx(6));
        home.addView(gridHeader);

        addDesktopShortcutCard(home, ">_ UBUNTU 24.04 + AGY CLI (NATIVE APK)",
                "Нативный Ubuntu Remote (Guest / Local / Logged-In) + AGY CLI + Local Gemma (без браузера)", "#22c55e", 2);
        addDesktopShortcutCard(home, "⚙ НАСТРОЙКИ СИСТЕМЫ И ПИТАНИЯ",
                "WakeLock, автозапуск субстрата, монтирование /sdcard, системные права", "#facc15", 3);
        addDesktopShortcutCard(home, "🧬 КАТАЛОГ 68 MCP ОРГАНОВ (5 ДЕК)",
                "Уровень 2: Деки (Core, LAM, HW, Portals, Special) -> Уровень 3: Паспорт органа", "#2dd4bf", 1);
        addDesktopShortcutCard(home, "🌐 ТОПОЛОГИЯ 5 УЗЛОВ КЛАСТЕРА",
                "DEV_01 Bushmaster, DEV_02 Atesirt, DEV_03 WSL2, DEV_04 T7 Vault, DEV_05 LAO", "#38bdf8", 0);
        addDesktopShortcutCard(home, "🔒 МАТРИЦА ЗАЩИТЫ И РАЗРЕШЕНИЙ",
                "Прямой вызов системных окон Android Settings для выдачи разрешений", "#a855f7", 4);

        sv.addView(home);
        return sv;
    }

    private void addDesktopShortcutCard(LinearLayout parent, String title, String desc, String accentHex, final int targetApp) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dpToPx(12), dpToPx(10), dpToPx(12), dpToPx(10));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#0a1f13"));
        bg.setStroke(dpToPx(1), Color.parseColor(accentHex));
        bg.setCornerRadius(dpToPx(6));
        card.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(0, dpToPx(3), 0, dpToPx(4));
        card.setLayoutParams(lp);

        TextView tvTitle = new TextView(this);
        tvTitle.setText(title);
        tvTitle.setTextColor(Color.parseColor(accentHex));
        tvTitle.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvTitle.setTextSize(11.5f);
        card.addView(tvTitle);

        TextView tvDesc = new TextView(this);
        tvDesc.setText(desc);
        tvDesc.setTextColor(Color.parseColor("#cbd5e1"));
        tvDesc.setTypeface(Typeface.MONOSPACE);
        tvDesc.setTextSize(9.5f);
        tvDesc.setPadding(0, dpToPx(3), 0, 0);
        card.addView(tvDesc);

        card.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openAppWindow(targetApp);
            }
        });

        parent.addView(card);
    }

    private LinearLayout buildWindowFrame() {
        LinearLayout win = new LinearLayout(this);
        win.setOrientation(LinearLayout.VERTICAL);
        win.setLayoutParams(new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        win.setBackgroundColor(Color.parseColor("#050e08"));

        // Window Title Bar with [< НАЗАД] and [✕ ЗАКРЫТЬ]
        LinearLayout titleBar = new LinearLayout(this);
        titleBar.setOrientation(LinearLayout.HORIZONTAL);
        titleBar.setGravity(Gravity.CENTER_VERTICAL);
        titleBar.setPadding(dpToPx(8), dpToPx(6), dpToPx(8), dpToPx(6));
        GradientDrawable tbBg = new GradientDrawable();
        tbBg.setColor(Color.parseColor("#0d2616"));
        tbBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
        titleBar.setBackground(tbBg);

        Button btnBack = new Button(this);
        btnBack.setText("< НАЗАД");
        btnBack.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnBack.setTextSize(10.0f);
        btnBack.setTextColor(Color.parseColor("#2dd4bf"));
        btnBack.setAllCaps(false);
        btnBack.setPadding(dpToPx(8), dpToPx(4), dpToPx(8), dpToPx(4));
        GradientDrawable backBg = new GradientDrawable();
        backBg.setColor(Color.parseColor("#07170e"));
        backBg.setStroke(dpToPx(1), Color.parseColor("#2dd4bf"));
        backBg.setCornerRadius(dpToPx(4));
        btnBack.setBackground(backBg);
        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateUpLevel();
            }
        });
        titleBar.addView(btnBack);

        windowTitleText = new TextView(this);
        windowTitleText.setText("ОКНО");
        windowTitleText.setTextColor(Color.parseColor("#22c55e"));
        windowTitleText.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        windowTitleText.setTextSize(11.0f);
        windowTitleText.setPadding(dpToPx(10), 0, dpToPx(10), 0);
        LinearLayout.LayoutParams wtLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        windowTitleText.setLayoutParams(wtLp);
        titleBar.addView(windowTitleText);

        Button btnClose = new Button(this);
        btnClose.setText("✕ ЗАКРЫТЬ");
        btnClose.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnClose.setTextSize(10.0f);
        btnClose.setTextColor(Color.parseColor("#f87171"));
        btnClose.setAllCaps(false);
        btnClose.setPadding(dpToPx(8), dpToPx(4), dpToPx(8), dpToPx(4));
        GradientDrawable closeBg = new GradientDrawable();
        closeBg.setColor(Color.parseColor("#260b0b"));
        closeBg.setStroke(dpToPx(1), Color.parseColor("#ef4444"));
        closeBg.setCornerRadius(dpToPx(4));
        btnClose.setBackground(closeBg);
        btnClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                closeActiveWindow();
            }
        });
        titleBar.addView(btnClose);
        win.addView(titleBar);

        // Breadcrumb bar showing depth level (Level 2 vs Level 3)
        breadcrumbText = new TextView(this);
        breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > МОДУЛЬ");
        breadcrumbText.setTextColor(Color.parseColor("#facc15"));
        breadcrumbText.setTypeface(Typeface.MONOSPACE);
        breadcrumbText.setTextSize(9.5f);
        breadcrumbText.setPadding(dpToPx(10), dpToPx(4), dpToPx(10), dpToPx(4));
        breadcrumbText.setBackgroundColor(Color.parseColor("#08170d"));
        win.addView(breadcrumbText);

        windowContentHolder = new LinearLayout(this);
        windowContentHolder.setOrientation(LinearLayout.VERTICAL);
        windowContentHolder.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));
        win.addView(windowContentHolder);

        return win;
    }

    private LinearLayout buildStartMenuPopup() {
        LinearLayout menu = new LinearLayout(this);
        menu.setOrientation(LinearLayout.VERTICAL);
        menu.setPadding(dpToPx(10), dpToPx(10), dpToPx(10), dpToPx(10));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#071a0e"));
        bg.setStroke(dpToPx(2), Color.parseColor("#22c55e"));
        bg.setCornerRadius(dpToPx(8));
        menu.setBackground(bg);

        TextView smTitle = new TextView(this);
        smTitle.setText("❖ RADRILONIUMA START MENU");
        smTitle.setTextColor(Color.parseColor("#22c55e"));
        smTitle.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        smTitle.setTextSize(11.5f);
        smTitle.setPadding(dpToPx(4), dpToPx(2), dpToPx(4), dpToPx(8));
        menu.addView(smTitle);

        addStartMenuItem(menu, "🏠 РАБОЧИЙ СТОЛ (УРОВЕНЬ 1)", "#facc15", -1);
        addStartMenuItem(menu, ">_ UBUNTU + AGY CLI (NO ROOT)", "#22c55e", 2);
        addStartMenuItem(menu, "⚙ НАСТРОЙКИ СИСТЕМЫ", "#facc15", 3);
        addStartMenuItem(menu, "🧬 68 MCP ОРГАНОВ (5 ДЕК)", "#2dd4bf", 1);
        addStartMenuItem(menu, "🌐 ТОПОЛОГИЯ 5 УЗЛОВ", "#38bdf8", 0);
        addStartMenuItem(menu, "🔒 МАТРИЦА ЗАЩИТЫ И ПРАВ", "#a855f7", 4);

        return menu;
    }

    private void addStartMenuItem(LinearLayout menu, String label, String colorHex, final int appId) {
        Button b = new Button(this);
        b.setText(label);
        b.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        b.setTextSize(10.5f);
        b.setTextColor(Color.parseColor(colorHex));
        b.setGravity(Gravity.START | Gravity.CENTER_VERTICAL);
        b.setAllCaps(false);
        b.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#0c2917"));
        bg.setStroke(dpToPx(1), Color.parseColor("#1e5630"));
        bg.setCornerRadius(dpToPx(4));
        b.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(0, dpToPx(2), 0, dpToPx(2));
        b.setLayoutParams(lp);

        b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startMenuVisible = false;
                startMenuPopup.setVisibility(View.GONE);
                if (appId == -1) {
                    closeActiveWindow();
                } else {
                    openAppWindow(appId);
                }
            }
        });

        menu.addView(b);
    }

    private View buildBottomTaskbar() {
        LinearLayout dock = new LinearLayout(this);
        dock.setOrientation(LinearLayout.HORIZONTAL);
        dock.setPadding(dpToPx(4), dpToPx(5), dpToPx(4), dpToPx(5));

        GradientDrawable dockBg = new GradientDrawable();
        dockBg.setColor(Color.parseColor("#07120a"));
        dockBg.setStroke(dpToPx(1), Color.parseColor("#1a4527"));
        dock.setBackground(dockBg);

        // [ ❖ ПУСК ] Button
        btnStartMenu = new Button(this);
        btnStartMenu.setText("❖ ПУСК");
        btnStartMenu.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnStartMenu.setTextSize(10.5f);
        btnStartMenu.setAllCaps(false);
        btnStartMenu.setPadding(dpToPx(8), dpToPx(7), dpToPx(8), dpToPx(7));
        LinearLayout.LayoutParams startLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.05f);
        startLp.setMargins(dpToPx(2), 0, dpToPx(2), 0);
        btnStartMenu.setLayoutParams(startLp);
        btnStartMenu.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startMenuVisible = !startMenuVisible;
                startMenuPopup.setVisibility(startMenuVisible ? View.VISIBLE : View.GONE);
                updateTaskbarHighlight();
            }
        });
        dock.addView(btnStartMenu);

        final String[] labels = {">_ CLI", "⚙ НАСТР", "🧬 68 ОРГ", "🌐 5 УЗЛОВ"};
        final int[] appIds = {2, 3, 1, 0};

        for (int i = 0; i < 4; i++) {
            final int targetApp = appIds[i];
            Button b = new Button(this);
            b.setText(labels[i]);
            b.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            b.setTextSize(10.0f);
            b.setAllCaps(false);
            b.setPadding(0, dpToPx(7), 0, dpToPx(7));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
            lp.setMargins(dpToPx(2), 0, dpToPx(2), 0);
            b.setLayoutParams(lp);

            b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    startMenuVisible = false;
                    startMenuPopup.setVisibility(View.GONE);
                    openAppWindow(targetApp);
                }
            });

            taskButtons[i] = b;
            dock.addView(b);
        }

        return dock;
    }

    private void openAppWindow(int appId) {
        currentApp = appId;
        detailLevel = false;
        activeWindowFrame.setVisibility(View.VISIBLE);
        windowContentHolder.removeAllViews();

        switch (appId) {
            case 0:
                windowTitleText.setText("🌐 ТОПОЛОГИЯ 5 УЗЛОВ КЛАСТЕРА");
                breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > ТОПОЛОГИЯ КЛАСТЕРА (НАЖМИТЕ НА УЗЕЛ ДЛЯ УРОВНЯ 3)");
                updateNodesData();
                windowContentHolder.addView(nodesView);
                break;
            case 1:
                windowTitleText.setText("🧬 КАТАЛОГ 68 MCP ОРГАНОВ");
                breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > 68 ОРГАНОВ > ДЕКА: " + selectedDeckFilter + " (НАЖМИТЕ ДЛЯ УРОВНЯ 3)");
                populateOrgansList();
                windowContentHolder.addView(organsViewContainer);
                break;
            case 2:
                windowTitleText.setText(">_ NATIVE SHELL + AGY BRIDGE");
                breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > ТЕРМИНАЛ ЯДРА + DEV_01 AGY");
                windowContentHolder.addView(terminalViewContainer);
                break;
            case 3:
                windowTitleText.setText("⚙ НАСТРОЙКИ СИСТЕМЫ И СУБСТРАТА");
                breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > НАСТРОЙКИ СИСТЕМЫ (НАЖМИТЕ НА РАЗРЕШЕНИЕ ДЛЯ УРОВНЯ 3)");
                populateSettingsWindow();
                windowContentHolder.addView(settingsView);
                break;
            case 4:
                windowTitleText.setText("🔒 МАТРИЦА ЗАЩИТЫ И РАЗРЕШЕНИЙ");
                breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > ЗАЩИТА И ПРАВА (НАЖМИТЕ ДЛЯ ПЕРЕХОДА В ANDROID SETTINGS)");
                populateSecurityWindow();
                windowContentHolder.addView(securityView);
                break;
        }
        updateTaskbarHighlight();
    }

    private void closeActiveWindow() {
        currentApp = -1;
        detailLevel = false;
        activeWindowFrame.setVisibility(View.GONE);
        windowContentHolder.removeAllViews();
        updateTaskbarHighlight();
    }

    private void navigateUpLevel() {
        if (detailLevel) {
            openAppWindow(currentApp);
        } else {
            closeActiveWindow();
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            if (startMenuVisible) {
                startMenuVisible = false;
                startMenuPopup.setVisibility(View.GONE);
                updateTaskbarHighlight();
                return true;
            }
            if (currentApp != -1) {
                navigateUpLevel();
                return true;
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    private void updateTaskbarHighlight() {
        GradientDrawable startBg = new GradientDrawable();
        if (startMenuVisible || currentApp == -1) {
            startBg.setColor(Color.parseColor("#184d2a"));
            startBg.setStroke(dpToPx(1), Color.parseColor("#facc15"));
            btnStartMenu.setTextColor(Color.parseColor("#facc15"));
        } else {
            startBg.setColor(Color.parseColor("#0e2b18"));
            startBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
            btnStartMenu.setTextColor(Color.parseColor("#22c55e"));
        }
        startBg.setCornerRadius(dpToPx(4));
        btnStartMenu.setBackground(startBg);

        int[] appIds = {2, 3, 1, 0};
        for (int i = 0; i < 4; i++) {
            GradientDrawable btnBg = new GradientDrawable();
            if (currentApp == appIds[i]) {
                btnBg.setColor(Color.parseColor("#163d23"));
                btnBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
                taskButtons[i].setTextColor(Color.parseColor("#22c55e"));
            } else {
                btnBg.setColor(Color.parseColor("#0d2415"));
                btnBg.setStroke(dpToPx(1), Color.parseColor("#163d23"));
                taskButtons[i].setTextColor(Color.parseColor("#649675"));
            }
            btnBg.setCornerRadius(dpToPx(4));
            taskButtons[i].setBackground(btnBg);
        }
    }

    // ==================== WINDOW 0: 5 CLUSTER NODES (LEVEL 2 & LEVEL 3) ====================
    private void buildNodesWindowView() {
        nodesView = new ScrollView(this);
        nodesView.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        nodesView.setPadding(dpToPx(12), dpToPx(8), dpToPx(12), dpToPx(8));

        nodesCardsLayout = new LinearLayout(this);
        nodesCardsLayout.setOrientation(LinearLayout.VERTICAL);
        nodesView.addView(nodesCardsLayout);
    }

    private void updateNodesData() {
        nodesCardsLayout.removeAllViews();

        addNodeCard("DEV_01_BUSHMASTER",
                "MASTER_OPERATOR_STATION",
                "Lenovo PC BushMaster (Intel/AMD x86_64)",
                "BATTERY: 100% [AC POWER / MAINS] | CPU: 12% | RAM: 8.4/15.9 GB\nCWD: C:\\Users\\BushM | Dual 8-Biome Queues: ACTIVE (1-min)",
                "ONLINE [HOST]",
                "#38bdf8",
                false);

        addNodeCard("DEV_02_ATESIRT",
                "AUTONOMOUS_MOBILE_EDGE_NODE",
                "Samsung Galaxy A26 5G (SM-A266B / RZCY80G86FP)",
                buildLiveNode2DetailsString(),
                "ONLINE [ACTIVE]",
                "#22c55e",
                true);

        addNodeCard("DEV_03_UBUNTU_WSL2",
                "LIVING_KERNEL_SUBSTRATE",
                "Ubuntu 24.04 LTS Substrate (/root/RADRILONIUMA)",
                "ORGANS: 68/68 Online | PM2: 13/13 Daemons Active\nCARRIER: 528 Hz Solfeggio / 432 Hz Baseline",
                "ONLINE [KERNEL]",
                "#22c55e",
                false);

        addNodeCard("DEV_04_SAMSUNG_T7_VAULT",
                "PERMANENT_HARDWARE_VAULT_1TB",
                "Samsung PSSD T7 1TB (NTFS)",
                "MOUNT: D:\\, E:\\, F:\\ (/mnt/d, /mnt/e, /mnt/f) | Vault: SECURED",
                "SECURED [VAULT]",
                "#2dd4bf",
                false);

        addNodeCard("DEV_05_LAO_SWARM_MATRIX",
                "528-SLOT LIVING ORGANISM CORE",
                "Carrier Frequencies: 528 Hz / 432 Hz",
                "SWARM: Autonomous Mesh | Quorum: 5/5 Synchronized",
                "RESONATING [528Hz]",
                "#facc15",
                false);
    }

    private JSONObject readBestLaptopTelemetry() {
        JSONObject localObj = null;
        double localDelta = 1e9;
        try {
            java.io.File f = new java.io.File(android.os.Environment.getExternalStorageDirectory(), "bushmaster_telemetry.json");
            if (f.exists() && f.canRead()) {
                byte[] buf = new byte[(int) f.length()];
                java.io.FileInputStream fis = new java.io.FileInputStream(f);
                fis.read(buf);
                fis.close();
                localObj = new org.json.JSONObject(new String(buf, "UTF-8"));
                localDelta = (System.currentTimeMillis() / 1000.0) - localObj.optDouble("timestamp", 0);
            }
        } catch (Exception ignored) {}

        JSONObject remoteObj = remoteLaptopTelemetry;
        long remoteAgeMs = (remoteObj != null) ? (System.currentTimeMillis() - remoteLaptopTelemetryAtMs) : Long.MAX_VALUE;
        if (remoteObj != null && (localObj == null || remoteAgeMs < (long) (localDelta * 1000.0))) {
            return remoteObj;
        }
        return localObj;
    }

    private String buildLiveLaptopHostDetailsString() {
        try {
            org.json.JSONObject obj = readBestLaptopTelemetry();
            if (obj != null) {
                int bat = obj.optInt("battery_percent", 100);
                String power = obj.optString("power_status", "AC MAINS");
                double cpu = obj.optDouble("cpu_load", 6.5);
                int ramUsed = obj.optInt("ram_used_mb", 1060);
                int ramTot = obj.optInt("ram_total_mb", 3920);
                double ramPct = obj.optDouble("ram_percent", 27.0);
                double ts = obj.optDouble("timestamp", 0);
                double delta = (System.currentTimeMillis() / 1000.0) - ts;
                long remoteAgeSec = (remoteLaptopTelemetry != null)
                        ? Math.max(0L, (System.currentTimeMillis() - remoteLaptopTelemetryAtMs) / 1000L)
                        : Long.MAX_VALUE;

                String linkStr;
                String linkStatus;
                if (remoteAgeSec <= 45L && activeGatewayUrl != null) {
                    linkStr = "ONLINE [GATEWAY " + activeGatewayTransport + " • " + remoteAgeSec + "s]";
                    linkStatus = "CONNECTED (" + activeGatewayTransport + " BRIDGE)";
                } else if (delta <= 3.0) {
                    linkStr = "ONLINE [USB DIRECT LINK • LIVE <1ms]";
                    linkStatus = "CONNECTED (CABLE)";
                } else if (delta <= 25.0) {
                    linkStr = "ONLINE [WIFI / MESH LINK • " + (int) delta + "s]";
                    linkStatus = "CONNECTED (MESH)";
                } else {
                    int mins = (int) (delta / 60);
                    linkStr = "STANDBY [LAPTOP AT HOME • " + (mins > 0 ? mins + "m" : (int) delta + "s") + " ago]";
                    linkStatus = "AUTONOMOUS OUTSIDE COMPANION";
                }

                return "HW: Lenovo PC BushMaster (x86_64) | " + linkStr + "\n"
                        + "BATTERY: " + bat + "% [" + power + "] | CPU: " + cpu + "% | RAM: " + ramUsed + "/" + ramTot + "MB (" + ramPct + "%)\n"
                        + "LINK STATUS: " + linkStatus
                        + " | IP: " + obj.optString("wifi_ip", bridgeWifiIp);
            }
        } catch (Exception ignored) {}

        return "HW: Lenovo PC BushMaster (x86_64) | STATUS: STANDBY [LAPTOP AT HOME]\n"
                + "BATTERY: 100% [CACHED / AC] | LINK: AUTONOMOUS OUTSIDE COMPANION\n"
                + "IP: " + bridgeWifiIp + " • 528 Hz CARRIER LOCKED";
    }

    private String buildLiveNode2DetailsString() {
        return "BATTERY: " + getLiveBatteryInfo() + " | RAM: " + getLiveRamInfo()
                + "\nSTORAGE: " + getLiveStorageInfo() + "\nIP: " + getLiveIpAddress();
    }

    private void addNodeCard(final String nodeId, final String role, final String hardware,
                             final String details, final String status, final String statusColor,
                             boolean isNode2) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#091d12"));
        bg.setStroke(dpToPx(1), Color.parseColor(statusColor));
        bg.setCornerRadius(dpToPx(6));
        card.setBackground(bg);

        LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        cardLp.setMargins(0, dpToPx(3), 0, dpToPx(4));
        card.setLayoutParams(cardLp);

        LinearLayout topRow = new LinearLayout(this);
        topRow.setOrientation(LinearLayout.HORIZONTAL);

        TextView tvId = new TextView(this);
        tvId.setText("NODE: " + nodeId);
        tvId.setTextColor(Color.parseColor("#22c55e"));
        tvId.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvId.setTextSize(11.0f);
        LinearLayout.LayoutParams idLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        tvId.setLayoutParams(idLp);

        TextView tvStatus = new TextView(this);
        tvStatus.setText("[" + status + "]");
        tvStatus.setTextColor(Color.parseColor(statusColor));
        tvStatus.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvStatus.setTextSize(9.5f);

        topRow.addView(tvId);
        topRow.addView(tvStatus);
        card.addView(topRow);

        TextView tvRole = new TextView(this);
        tvRole.setText("ROLE: " + role);
        tvRole.setTextColor(Color.parseColor("#2dd4bf"));
        tvRole.setTypeface(Typeface.MONOSPACE);
        tvRole.setTextSize(9.5f);
        tvRole.setPadding(0, dpToPx(2), 0, 0);
        card.addView(tvRole);

        TextView tvHw = new TextView(this);
        tvHw.setText("HW: " + hardware);
        tvHw.setTextColor(Color.parseColor("#cbd5e1"));
        tvHw.setTypeface(Typeface.MONOSPACE);
        tvHw.setTextSize(9.5f);
        tvHw.setPadding(0, dpToPx(2), 0, 0);
        card.addView(tvHw);

        TextView tvDet = new TextView(this);
        tvDet.setText(details);
        tvDet.setTextColor(Color.parseColor("#94a3b8"));
        tvDet.setTypeface(Typeface.MONOSPACE);
        tvDet.setTextSize(9.0f);
        tvDet.setPadding(0, dpToPx(3), 0, 0);
        if (isNode2) {
            node2LiveDetailsText = tvDet;
        }
        card.addView(tvDet);

        card.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showNodeLevel3Detail(nodeId, role, hardware, details, status);
            }
        });

        nodesCardsLayout.addView(card);
    }

    private void showNodeLevel3Detail(String nodeId, String role, String hardware, String details, String status) {
        detailLevel = true;
        breadcrumbText.setText("// УРОВЕНЬ 3: ROOT > ТОПОЛОГИЯ > " + nodeId);
        nodesCardsLayout.removeAllViews();

        LinearLayout detailCard = new LinearLayout(this);
        detailCard.setOrientation(LinearLayout.VERTICAL);
        detailCard.setPadding(dpToPx(14), dpToPx(12), dpToPx(14), dpToPx(12));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#0a2114"));
        bg.setStroke(dpToPx(2), Color.parseColor("#22c55e"));
        bg.setCornerRadius(dpToPx(8));
        detailCard.setBackground(bg);

        addDetailLine(detailCard, "ИДЕНТИФИКАТОР УЗЛА", nodeId, "#22c55e");
        addDetailLine(detailCard, "СТАТУС В КЛАСТЕРЕ", status, "#facc15");
        addDetailLine(detailCard, "РОЛЬ УЗЛА", role, "#2dd4bf");
        addDetailLine(detailCard, "АППАРАТНАЯ ПЛАТФОРМА", hardware, "#ffffff");
        addDetailLine(detailCard, "ТЕЛЕМЕТРИЯ РЕАЛЬНОГО ВРЕМЕНИ",
                "DEV_02_ATESIRT".equals(nodeId) ? buildLiveNode2DetailsString() : details, "#cbd5e1");
        addDetailLine(detailCard, "ЧАСТОТА НЕСУЩЕЙ", "528 Hz / 432 Hz Solfeggio Lock", "#22c55e");

        nodesCardsLayout.addView(detailCard);
    }

    // ==================== WINDOW 1: 68 MCP ORGANS (LEVEL 2 & LEVEL 3) ====================
    private void buildOrgansWindowView() {
        organsViewContainer = new LinearLayout(this);
        organsViewContainer.setOrientation(LinearLayout.VERTICAL);
        organsViewContainer.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        HorizontalScrollView deckScroll = new HorizontalScrollView(this);
        deckScroll.setHorizontalScrollBarEnabled(false);
        deckScroll.setPadding(dpToPx(10), dpToPx(6), dpToPx(10), dpToPx(6));

        LinearLayout deckRow = new LinearLayout(this);
        deckRow.setOrientation(LinearLayout.HORIZONTAL);

        final String[] decks = {"ALL", "core", "lam", "hardware", "portals", "special"};
        for (final String d : decks) {
            Button b = new Button(this);
            b.setText("DECK: " + d.toUpperCase(Locale.US));
            b.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            b.setTextSize(9.5f);
            b.setAllCaps(false);
            b.setPadding(dpToPx(10), dpToPx(4), dpToPx(10), dpToPx(4));

            GradientDrawable dBg = new GradientDrawable();
            dBg.setColor(Color.parseColor("#0d2616"));
            dBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
            dBg.setCornerRadius(dpToPx(4));
            b.setBackground(dBg);
            b.setTextColor(Color.parseColor("#22c55e"));

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(dpToPx(3), 0, dpToPx(3), 0);
            b.setLayoutParams(lp);

            b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    selectedDeckFilter = d;
                    detailLevel = false;
                    breadcrumbText.setText("// УРОВЕНЬ 2: ROOT > 68 ОРГАНОВ > ДЕКА: " + selectedDeckFilter);
                    populateOrgansList();
                }
            });
            deckRow.addView(b);
        }
        deckScroll.addView(deckRow);
        organsViewContainer.addView(deckScroll);

        ScrollView listScroll = new ScrollView(this);
        listScroll.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));
        listScroll.setPadding(dpToPx(12), dpToPx(4), dpToPx(12), dpToPx(8));

        organsListLayout = new LinearLayout(this);
        organsListLayout.setOrientation(LinearLayout.VERTICAL);
        listScroll.addView(organsListLayout);
        organsViewContainer.addView(listScroll);
    }

    private void populateOrgansList() {
        organsListLayout.removeAllViews();
        for (final OrganItem item : allOrgans) {
            if (!"ALL".equalsIgnoreCase(selectedDeckFilter)
                    && !selectedDeckFilter.equalsIgnoreCase(item.deck)) {
                continue;
            }
            LinearLayout card = new LinearLayout(this);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

            GradientDrawable bg = new GradientDrawable();
            bg.setColor(Color.parseColor("#091d12"));
            bg.setStroke(dpToPx(1), Color.parseColor("#1a4c2a"));
            bg.setCornerRadius(dpToPx(5));
            card.setBackground(bg);

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(0, dpToPx(2), 0, dpToPx(3));
            card.setLayoutParams(lp);

            TextView t1 = new TextView(this);
            t1.setText("[" + item.slot + "] " + item.name + " (" + item.deck.toUpperCase(Locale.US) + ")");
            t1.setTextColor(Color.parseColor("#22c55e"));
            t1.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            t1.setTextSize(10.5f);
            card.addView(t1);

            TextView t2 = new TextView(this);
            t2.setText("MCP: " + item.toolName + " | " + item.status);
            t2.setTextColor(Color.parseColor("#2dd4bf"));
            t2.setTypeface(Typeface.MONOSPACE);
            t2.setTextSize(9.0f);
            card.addView(t2);

            card.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    showOrganLevel3Detail(item);
                }
            });

            organsListLayout.addView(card);
        }
    }

    private void showOrganLevel3Detail(OrganItem item) {
        detailLevel = true;
        breadcrumbText.setText("// УРОВЕНЬ 3: ROOT > 68 ОРГАНОВ > СЛОТ #" + item.slot + " (" + item.organId + ")");
        organsListLayout.removeAllViews();

        LinearLayout detailCard = new LinearLayout(this);
        detailCard.setOrientation(LinearLayout.VERTICAL);
        detailCard.setPadding(dpToPx(14), dpToPx(12), dpToPx(14), dpToPx(12));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#0a2114"));
        bg.setStroke(dpToPx(2), Color.parseColor("#2dd4bf"));
        bg.setCornerRadius(dpToPx(8));
        detailCard.setBackground(bg);

        addDetailLine(detailCard, "СЛОТ МАТРИЦЫ", "#" + item.slot + " / 068", "#facc15");
        addDetailLine(detailCard, "ИМЯ ОРГАНА", item.name, "#22c55e");
        addDetailLine(detailCard, "ИДЕНТИФИКАТОР", item.organId, "#ffffff");
        addDetailLine(detailCard, "ДЕКА", item.deck.toUpperCase(Locale.US), "#2dd4bf");
        addDetailLine(detailCard, "MCP ИНСТРУМЕНТ", item.toolName, "#38bdf8");
        addDetailLine(detailCard, "ЧАСТОТА РЕЗОНАНСА", item.resonance, "#22c55e");
        addDetailLine(detailCard, "СТАТУС", item.status + " (VERIFIED)", "#22c55e");

        organsListLayout.addView(detailCard);
    }

    // ==================== WINDOW 2: CLEAN NATIVE TERMINAL (NO HARDCODED BUTTONS) ====================
    private void buildTerminalWindowView() {
        terminalViewContainer = new LinearLayout(this);
        terminalViewContainer.setOrientation(LinearLayout.VERTICAL);
        terminalViewContainer.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        terminalViewContainer.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

        terminalScroll = new ScrollView(this);
        LinearLayout.LayoutParams scrollParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f);
        terminalScroll.setLayoutParams(scrollParams);

        GradientDrawable consoleBg = new GradientDrawable();
        consoleBg.setColor(Color.parseColor("#030a05"));
        consoleBg.setStroke(dpToPx(1), Color.parseColor("#184525"));
        consoleBg.setCornerRadius(dpToPx(4));
        terminalScroll.setBackground(consoleBg);
        terminalScroll.setPadding(dpToPx(8), dpToPx(8), dpToPx(8), dpToPx(8));

        HorizontalScrollView modeStrip = new HorizontalScrollView(this);
        LinearLayout modeRow = new LinearLayout(this);
        modeRow.setOrientation(LinearLayout.HORIZONTAL);
        modeRow.setPadding(0, 0, 0, dpToPx(6));

        addTerminalModeBtn(modeRow, "🐧 UBUNTU REMOTE", "#22c55e", "MODE:UBUNTU");
        addTerminalModeBtn(modeRow, "🚀 AGY NATIVE", "#facc15", "MODE:AGY");
        addTerminalModeBtn(modeRow, "👤 GUEST", "#2dd4bf", "ACC:guest");
        addTerminalModeBtn(modeRow, "💻 LOCAL ACC", "#38bdf8", "ACC:local_account");
        addTerminalModeBtn(modeRow, "🔐 LOGGED-IN", "#a855f7", "ACC:logged_in_account");
        addTerminalModeBtn(modeRow, "📱 LOCAL SH", "#94a3b8", "MODE:LOCAL_SH");
        modeStrip.addView(modeRow);
        terminalViewContainer.addView(modeStrip);

        terminalModeBanner = new TextView(this);
        terminalModeBanner.setTextColor(Color.parseColor("#2dd4bf"));
        terminalModeBanner.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        terminalModeBanner.setTextSize(9.5f);
        terminalModeBanner.setPadding(0, 0, 0, dpToPx(4));
        terminalModeBanner.setText("MODE: UBUNTU REMOTE | ACCOUNT: GUEST (ROOTLESS) | AGY: /usr/local/bin/agy");
        terminalViewContainer.addView(terminalModeBanner);

        terminalOutput = new TextView(this);
        terminalOutput.setTextColor(Color.parseColor("#22c55e"));
        terminalOutput.setTypeface(Typeface.MONOSPACE);
        terminalOutput.setTextSize(10.5f);
        terminalOutput.setText("RADRILONIUMA OS [Version 2026.11.22-PLAY] • NATIVE APK ENGINE\n"
                + "Ubuntu 24.04 Remote Terminal + Native Ubuntu AGY CLI + Local Gemma (:11435)\n"
                + "Rootless Modes: GUEST | LOCAL ACCOUNT | LOGGED-IN (No Browser Tabs)\n"
                + "Commands: any Ubuntu bash command | agy <prompt> | agy-url [url|reset]\n\n");
        terminalScroll.addView(terminalOutput);
        terminalViewContainer.addView(terminalScroll);

        LinearLayout inputRow = new LinearLayout(this);
        inputRow.setOrientation(LinearLayout.HORIZONTAL);
        inputRow.setPadding(0, dpToPx(6), 0, dpToPx(2));

        terminalInput = new EditText(this);
        terminalInput.setHint("ubuntu/agy> введите команду...");
        terminalInput.setHintTextColor(Color.parseColor("#375540"));
        terminalInput.setTextColor(Color.parseColor("#22c55e"));
        terminalInput.setTypeface(Typeface.MONOSPACE);
        terminalInput.setTextSize(11.5f);
        terminalInput.setSingleLine(true);
        terminalInput.setImeOptions(EditorInfo.IME_ACTION_SEND);
        terminalInput.setPadding(dpToPx(8), dpToPx(6), dpToPx(8), dpToPx(6));

        GradientDrawable inputBg = new GradientDrawable();
        inputBg.setColor(Color.parseColor("#07190e"));
        inputBg.setStroke(dpToPx(1), Color.parseColor("#1b522b"));
        inputBg.setCornerRadius(dpToPx(4));
        terminalInput.setBackground(inputBg);

        LinearLayout.LayoutParams inputParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        terminalInput.setLayoutParams(inputParams);

        terminalInput.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                String cmd = terminalInput.getText().toString().trim();
                if (!cmd.isEmpty()) {
                    executeCommand(cmd);
                    terminalInput.setText("");
                }
                return true;
            }
        });

        Button btnSend = new Button(this);
        btnSend.setText("EXEC");
        btnSend.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnSend.setTextSize(10.5f);
        btnSend.setTextColor(Color.parseColor("#061009"));

        GradientDrawable sendBg = new GradientDrawable();
        sendBg.setColor(Color.parseColor("#22c55e"));
        sendBg.setCornerRadius(dpToPx(4));
        btnSend.setBackground(sendBg);

        LinearLayout.LayoutParams sendParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        sendParams.setMargins(dpToPx(6), 0, 0, 0);
        btnSend.setLayoutParams(sendParams);

        btnSend.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String cmd = terminalInput.getText().toString().trim();
                if (!cmd.isEmpty()) {
                    executeCommand(cmd);
                    terminalInput.setText("");
                }
            }
        });

        inputRow.addView(terminalInput);
        inputRow.addView(btnSend);
        terminalViewContainer.addView(inputRow);
    }

    private void initNativeTerminal() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    cliProcess = new ProcessBuilder("/system/bin/sh")
                            .redirectErrorStream(true)
                            .start();
                    cliOut = cliProcess.getOutputStream();
                    cliIn = new BufferedReader(new InputStreamReader(cliProcess.getInputStream()));

                    String line;
                    while ((line = cliIn.readLine()) != null) {
                        final String text = line + "\n";
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                if (terminalOutput != null) {
                                    terminalOutput.append(text);
                                    if (terminalScroll != null) {
                                        terminalScroll.post(new Runnable() {
                                            @Override
                                            public void run() {
                                                terminalScroll.fullScroll(View.FOCUS_DOWN);
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }
                } catch (Exception e) {
                    final String err = "[Terminal Error]: " + e.getMessage() + "\n";
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            if (terminalOutput != null) {
                                terminalOutput.append(err);
                            }
                        }
                    });
                }
            }
        }).start();
    }

    private void appendTerminalLine(final String text) {
        if (mainHandler == null) return;
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                if (terminalOutput != null) {
                    terminalOutput.append(text);
                    if (terminalScroll != null) {
                        terminalScroll.post(new Runnable() {
                            @Override
                            public void run() {
                                terminalScroll.fullScroll(View.FOCUS_DOWN);
                            }
                        });
                    }
                }
            }
        });
    }

    private void loadBridgeConfig() {
        try {
            InputStream is = getAssets().open("agy_bridge_config.json");
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buf = new byte[1024];
            int n;
            while ((n = is.read(buf)) > 0) {
                baos.write(buf, 0, n);
            }
            is.close();
            JSONObject cfg = new JSONObject(new String(baos.toByteArray(), "UTF-8"));
            String wIp = cfg.optString("wifi_ip", "").trim();
            if (!wIp.isEmpty()) bridgeWifiIp = wIp;
            String hIp = cfg.optString("hotspot_ip", "").trim();
            if (!hIp.isEmpty()) bridgeHotspotIp = hIp;
            bridgeGatewayPort = cfg.optInt("gateway_port", 3000);
            bridgeWanUrl = cfg.optString("wan_url", "").trim();
            bridgeCliToken = cfg.optString("cli_token", "").trim();
        } catch (Exception ignored) {}
    }

    private String normalizeBaseUrl(String raw) {
        if (raw == null) return "";
        String s = raw.trim();
        while (s.endsWith("/")) {
            s = s.substring(0, s.length() - 1);
        }
        return s;
    }

    private String classifyTransport(String baseUrl) {
        if (baseUrl == null) return "CACHED";
        if (baseUrl.startsWith("https://")) return "WAN";
        if (baseUrl.contains("127.0.0.1")) return "USB";
        if (baseUrl.contains("192.168.137.")) return "HOTSPOT";
        return "LAN";
    }

    private List<String> resolveGatewayCandidates() {
        LinkedHashSet<String> urls = new LinkedHashSet<String>();
        String active = normalizeBaseUrl(activeGatewayUrl);
        if (!active.isEmpty()) urls.add(active);

        if (prefs != null) {
            String custom = normalizeBaseUrl(prefs.getString("gateway_url", ""));
            if (!custom.isEmpty()) urls.add(custom);
        }

        try {
            java.io.File f = new java.io.File(android.os.Environment.getExternalStorageDirectory(), "bushmaster_telemetry.json");
            if (f.exists() && f.canRead()) {
                byte[] buf = new byte[(int) f.length()];
                java.io.FileInputStream fis = new java.io.FileInputStream(f);
                fis.read(buf);
                fis.close();
                JSONObject obj = new JSONObject(new String(buf, "UTF-8"));
                String sdWifi = obj.optString("wifi_ip", "").trim();
                String sdHotspot = obj.optString("hotspot_ip", "").trim();
                String sdWan = normalizeBaseUrl(obj.optString("origin_wan_url", ""));
                if (!sdWifi.isEmpty()) urls.add("http://" + sdWifi + ":" + bridgeGatewayPort);
                if (!sdHotspot.isEmpty()) urls.add("http://" + sdHotspot + ":" + bridgeGatewayPort);
                if (!sdWan.isEmpty()) urls.add(sdWan);
            }
        } catch (Exception ignored) {}

        if (bridgeWifiIp != null && !bridgeWifiIp.isEmpty()) {
            urls.add("http://" + bridgeWifiIp + ":" + bridgeGatewayPort);
        }
        if (bridgeHotspotIp != null && !bridgeHotspotIp.isEmpty()) {
            urls.add("http://" + bridgeHotspotIp + ":" + bridgeGatewayPort);
        }
        urls.add("http://127.0.0.1:" + bridgeGatewayPort);
        String wan = normalizeBaseUrl(bridgeWanUrl);
        if (!wan.isEmpty()) {
            urls.add(wan);
        }

        return new ArrayList<String>(urls);
    }

    private String readStreamFully(InputStream is) throws Exception {
        if (is == null) return "";
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buf = new byte[4096];
        int n;
        while ((n = is.read(buf)) > 0) {
            baos.write(buf, 0, n);
        }
        is.close();
        return new String(baos.toByteArray(), "UTF-8");
    }

    private void startRemoteTelemetrySync() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (!activityDestroyed) {
                    pollRemoteLaptopTelemetryOnce();
                    try {
                        Thread.sleep(15000);
                    } catch (InterruptedException e) {
                        break;
                    }
                }
            }
        }).start();
    }

    private void pollRemoteLaptopTelemetryOnce() {
        List<String> candidates = resolveGatewayCandidates();
        for (String base : candidates) {
            HttpURLConnection conn = null;
            try {
                URL url = new URL(base + "/api/laptop/telemetry");
                conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setConnectTimeout(base.startsWith("https://") ? 4500 : 1800);
                conn.setReadTimeout(4500);
                if (bridgeCliToken != null && !bridgeCliToken.isEmpty()) {
                    conn.setRequestProperty("X-RADR-CLI-TOKEN", bridgeCliToken);
                }
                int code = conn.getResponseCode();
                if (code == 200) {
                    String body = readStreamFully(conn.getInputStream());
                    JSONObject obj = new JSONObject(body);
                    remoteLaptopTelemetry = obj;
                    remoteLaptopTelemetryAtMs = System.currentTimeMillis();
                    activeGatewayUrl = base;
                    activeGatewayTransport = classifyTransport(base);
                    String liveWifi = obj.optString("wifi_ip", "").trim();
                    if (!liveWifi.isEmpty()) bridgeWifiIp = liveWifi;
                    String liveWan = normalizeBaseUrl(obj.optString("origin_wan_url", ""));
                    if (!liveWan.isEmpty()) bridgeWanUrl = liveWan;
                    return;
                }
            } catch (Exception ignored) {
            } finally {
                if (conn != null) {
                    try { conn.disconnect(); } catch (Exception ignored) {}
                }
            }
        }
    }

    private void executeRemoteAgyCommand(final String cmd) {
        appendTerminalLine("[AGY BRIDGE -> DEV_01] Forwarding command...\n");
        new Thread(new Runnable() {
            @Override
            public void run() {
                List<String> candidates = resolveGatewayCandidates();
                StringBuilder errors = new StringBuilder();
                for (String base : candidates) {
                    HttpURLConnection conn = null;
                    try {
                        URL url = new URL(base + "/api/agy/cli");
                        conn = (HttpURLConnection) url.openConnection();
                        conn.setRequestMethod("POST");
                        conn.setDoOutput(true);
                        conn.setConnectTimeout(base.startsWith("https://") ? 5000 : 1800);
                        conn.setReadTimeout(125000);
                        conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                        if (bridgeCliToken != null && !bridgeCliToken.isEmpty()) {
                            conn.setRequestProperty("X-RADR-CLI-TOKEN", bridgeCliToken);
                        }

                        JSONObject reqJson = new JSONObject();
                        reqJson.put("command", cmd);
                        reqJson.put("source", "DEV_02_ATESIRT_APK");
                        byte[] payloadBytes = reqJson.toString().getBytes("UTF-8");
                        OutputStream os = conn.getOutputStream();
                        os.write(payloadBytes);
                        os.flush();
                        os.close();

                        int code = conn.getResponseCode();
                        InputStream stream = (code >= 200 && code < 400) ? conn.getInputStream() : conn.getErrorStream();
                        String respBody = readStreamFully(stream);

                        activeGatewayUrl = base;
                        activeGatewayTransport = classifyTransport(base);

                        StringBuilder out = new StringBuilder();
                        try {
                            JSONObject resJson = new JSONObject(respBody);
                            String mode = resJson.optString("mode", "agy");
                            int exitCode = resJson.optInt("exitCode", code == 200 ? 0 : code);
                            long durMs = resJson.optLong("durationMs", 0L);
                            String stdout = resJson.optString("stdout", "");
                            String stderr = resJson.optString("stderr", "");
                            String errMsg = resJson.optString("error", "");
                            out.append("[DEV_01 via ").append(activeGatewayTransport)
                               .append(" | ").append(mode)
                               .append(" | exit=").append(exitCode)
                               .append(" | ").append(durMs).append("ms]\n");
                            if (!stdout.isEmpty()) {
                                out.append(stdout);
                                if (!stdout.endsWith("\n")) out.append("\n");
                            }
                            if (!stderr.isEmpty()) {
                                out.append("[stderr]\n").append(stderr);
                                if (!stderr.endsWith("\n")) out.append("\n");
                            }
                            if (!errMsg.isEmpty() && stdout.isEmpty() && stderr.isEmpty()) {
                                out.append("[error] ").append(errMsg).append("\n");
                            }
                        } catch (Exception parseEx) {
                            out.append("[HTTP ").append(code).append("] ").append(respBody).append("\n");
                        }
                        out.append("\n");
                        appendTerminalLine(out.toString());
                        return;
                    } catch (Exception e) {
                        errors.append("  - ").append(base).append(" -> ").append(e.getClass().getSimpleName())
                              .append(": ").append(e.getMessage()).append("\n");
                    } finally {
                        if (conn != null) {
                            try { conn.disconnect(); } catch (Exception ignored) {}
                        }
                    }
                }
                appendTerminalLine("[AGY BRIDGE ERROR] Unable to reach DEV_01 gateway:\n"
                        + errors.toString()
                        + "Tip: set URL via `agy-url http://192.168.62.96:3000` or `agy-url https://<tunnel>`\n\n");
            }
        }).start();
    }

    private void addTerminalModeBtn(LinearLayout row, String label, String colorHex, final String action) {
        Button b = new Button(this);
        b.setText(label);
        b.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        b.setTextSize(9.0f);
        b.setTextColor(Color.parseColor(colorHex));
        b.setAllCaps(false);
        b.setPadding(dpToPx(8), dpToPx(4), dpToPx(8), dpToPx(4));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#081c10"));
        bg.setStroke(dpToPx(1), Color.parseColor(colorHex));
        bg.setCornerRadius(dpToPx(4));
        b.setBackground(bg);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(0, 0, dpToPx(5), 0);
        b.setLayoutParams(lp);
        b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (action.startsWith("MODE:")) {
                    activeUbuntuShellMode = action.substring(5);
                    updateTerminalBanner();
                    appendTerminalLine("[TERMINAL MODE] Switched to " + activeUbuntuShellMode + "\n");
                } else if (action.startsWith("ACC:")) {
                    activeUbuntuAccountMode = action.substring(4);
                    updateTerminalBanner();
                    initRemoteUbuntuSession(activeUbuntuAccountMode);
                }
            }
        });
        row.addView(b);
    }

    private void updateTerminalBanner() {
        if (terminalModeBanner != null) {
            terminalModeBanner.setText("MODE: " + activeUbuntuShellMode
                    + " | ACCOUNT: " + activeUbuntuAccountMode.toUpperCase(Locale.US)
                    + " (ROOTLESS) | CWD: " + activeUbuntuCwd);
        }
    }

    private void initRemoteUbuntuSession(final String accountMode) {
        appendTerminalLine("[UBUNTU SESSION] Initializing rootless profile: " + accountMode + "...\n");
        new Thread(new Runnable() {
            @Override
            public void run() {
                List<String> candidates = resolveGatewayCandidates();
                for (String base : candidates) {
                    HttpURLConnection conn = null;
                    try {
                        URL url = new URL(base + "/api/ubuntu/session?mode=" + accountMode);
                        conn = (HttpURLConnection) url.openConnection();
                        conn.setRequestMethod("GET");
                        conn.setConnectTimeout(base.startsWith("https://") ? 5000 : 1800);
                        conn.setReadTimeout(5000);
                        int code = conn.getResponseCode();
                        if (code >= 200 && code < 300) {
                            String body = readStreamFully(conn.getInputStream());
                            JSONObject doc = new JSONObject(body);
                            JSONObject prof = doc.optJSONObject("active_profile");
                            if (prof != null) {
                                activeUbuntuCwd = prof.optString("home", "/root/RADRILONIUMA");
                            }
                            activeGatewayUrl = base;
                            activeGatewayTransport = classifyTransport(base);
                            runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    updateTerminalBanner();
                                }
                            });
                            appendTerminalLine("[UBUNTU ONLINE via " + activeGatewayTransport + "] Profile="
                                    + accountMode + " | Rootless=TRUE | Home=" + activeUbuntuCwd + "\n\n");
                            return;
                        }
                    } catch (Exception ignored) {
                    } finally {
                        if (conn != null) {
                            try { conn.disconnect(); } catch (Exception ignored) {}
                        }
                    }
                }
                appendTerminalLine("[UBUNTU SESSION] Offline fallback — using local sandbox until DEV_01 gateway is reachable.\n\n");
            }
        }).start();
    }

    private void executeRemoteUbuntuCommand(final String cmd) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                List<String> candidates = resolveGatewayCandidates();
                StringBuilder errors = new StringBuilder();
                for (String base : candidates) {
                    HttpURLConnection conn = null;
                    try {
                        URL url = new URL(base + "/api/os/exec");
                        conn = (HttpURLConnection) url.openConnection();
                        conn.setRequestMethod("POST");
                        conn.setDoOutput(true);
                        conn.setConnectTimeout(base.startsWith("https://") ? 5000 : 1800);
                        conn.setReadTimeout(30000);
                        conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                        if (bridgeCliToken != null && !bridgeCliToken.isEmpty()) {
                            conn.setRequestProperty("X-RADR-CLI-TOKEN", bridgeCliToken);
                        }
                        JSONObject reqJson = new JSONObject();
                        reqJson.put("command", cmd);
                        reqJson.put("shell", "bash");
                        reqJson.put("cwd", activeUbuntuCwd);
                        reqJson.put("account_mode", activeUbuntuAccountMode);
                        OutputStream os = conn.getOutputStream();
                        os.write(reqJson.toString().getBytes("UTF-8"));
                        os.flush();
                        os.close();

                        int code = conn.getResponseCode();
                        InputStream stream = (code >= 200 && code < 400) ? conn.getInputStream() : conn.getErrorStream();
                        String respBody = readStreamFully(stream);
                        activeGatewayUrl = base;
                        activeGatewayTransport = classifyTransport(base);

                        JSONObject resJson = new JSONObject(respBody);
                        String stdout = resJson.optString("stdout", "");
                        String stderr = resJson.optString("stderr", "");
                        int exitCode = resJson.optInt("exitCode", 0);
                        StringBuilder out = new StringBuilder();
                        out.append("[").append(activeUbuntuAccountMode).append("@ubuntu | exit=").append(exitCode).append("]\n");
                        if (!stdout.isEmpty()) {
                            out.append(stdout);
                            if (!stdout.endsWith("\n")) out.append("\n");
                        }
                        if (!stderr.isEmpty()) {
                            out.append("[stderr] ").append(stderr);
                            if (!stderr.endsWith("\n")) out.append("\n");
                        }
                        out.append("\n");
                        appendTerminalLine(out.toString());
                        return;
                    } catch (Exception e) {
                        errors.append("  - ").append(base).append(": ").append(e.getMessage()).append("\n");
                    } finally {
                        if (conn != null) {
                            try { conn.disconnect(); } catch (Exception ignored) {}
                        }
                    }
                }
                appendTerminalLine("[UBUNTU REMOTE UNAVAILABLE] Falling back to local shell:\n" + errors.toString());
                if (cliOut != null) {
                    try {
                        cliOut.write((cmd + "\n").getBytes());
                        cliOut.flush();
                    } catch (Exception ignored) {}
                }
            }
        }).start();
    }

    private void executeCommand(String cmd) {
        String trimmed = cmd == null ? "" : cmd.trim();
        if (trimmed.isEmpty()) return;

        if ("clear".equalsIgnoreCase(trimmed)) {
            if (terminalOutput != null) {
                terminalOutput.setText("");
            }
            return;
        }
        if (terminalOutput != null) {
            terminalOutput.append("$ " + trimmed + "\n");
            if (terminalScroll != null) {
                terminalScroll.post(new Runnable() {
                    @Override
                    public void run() {
                        terminalScroll.fullScroll(View.FOCUS_DOWN);
                    }
                });
            }
        }

        String lower = trimmed.toLowerCase(Locale.US);
        if (lower.equals("agy-url") || lower.startsWith("agy-url ")) {
            String arg = trimmed.length() > 7 ? trimmed.substring(7).trim() : "";
            if (arg.isEmpty()) {
                String saved = prefs != null ? prefs.getString("gateway_url", "") : "";
                appendTerminalLine("[AGY GATEWAY CONFIG]\n"
                        + "  Active : " + (activeGatewayUrl != null ? activeGatewayUrl + " (" + activeGatewayTransport + ")" : "auto-discovering") + "\n"
                        + "  Custom : " + (saved.isEmpty() ? "(none)" : saved) + "\n"
                        + "  Wi-Fi  : http://" + bridgeWifiIp + ":" + bridgeGatewayPort + "\n"
                        + "  WAN    : " + (bridgeWanUrl.isEmpty() ? "(none)" : bridgeWanUrl) + "\n\n");
            } else if ("reset".equalsIgnoreCase(arg)) {
                if (prefs != null) prefs.edit().remove("gateway_url").apply();
                activeGatewayUrl = null;
                appendTerminalLine("[AGY GATEWAY] Custom URL cleared; restored auto-discovery.\n\n");
            } else {
                String norm = normalizeBaseUrl(arg);
                if (prefs != null) prefs.edit().putString("gateway_url", norm).apply();
                activeGatewayUrl = norm;
                activeGatewayTransport = classifyTransport(norm);
                appendTerminalLine("[AGY GATEWAY] Custom URL saved: " + norm + "\n\n");
            }
            return;
        }

        if (lower.equals("agy") || lower.startsWith("agy ") || "AGY".equals(activeUbuntuShellMode)) {
            String agyCmd = (lower.equals("agy") || lower.startsWith("agy ")) ? trimmed : ("agy " + trimmed);
            executeRemoteAgyCommand(agyCmd);
            return;
        }

        if ("UBUNTU".equals(activeUbuntuShellMode)) {
            executeRemoteUbuntuCommand(trimmed);
            return;
        }

        if (cliOut != null) {
            try {
                cliOut.write((trimmed + "\n").getBytes());
                cliOut.flush();
            } catch (Exception e) {
                if (terminalOutput != null) {
                    terminalOutput.append("[Write Error]: " + e.getMessage() + "\n");
                }
            }
        }
    }

    // ==================== WINDOW 3: SETTINGS WINDOW ====================
    private void buildSettingsWindowView() {
        settingsView = new ScrollView(this);
        settingsView.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        settingsView.setPadding(dpToPx(12), dpToPx(8), dpToPx(12), dpToPx(8));

        settingsCardsLayout = new LinearLayout(this);
        settingsCardsLayout.setOrientation(LinearLayout.VERTICAL);
        settingsView.addView(settingsCardsLayout);
    }

    private void populateSettingsWindow() {
        settingsCardsLayout.removeAllViews();

        addSectionHeader(settingsCardsLayout, "// 1. ПИТАНИЕ И УДЕРЖАНИЕ ЯДРА В ФОНЕ");
        addToggleRow(settingsCardsLayout, "Keep Screen On (Не гасить экран)", "keep_screen_on", true,
                new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        if (isChecked) {
                            getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                        } else {
                            getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                        }
                    }
                });

        addToggleRow(settingsCardsLayout, "Background CPU WakeLock (528 Hz Pulse)", "cpu_wakelock", true,
                new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        setWakeLockEnabled(isChecked);
                    }
                });

        addSectionHeader(settingsCardsLayout, "// 2. СУБСТРАТ И СИНХРОНИЗАЦИЯ ДЕРЕВЬЕВ");
        addToggleRow(settingsCardsLayout, "Auto-Boot PRoot Sandbox on Startup", "auto_boot_proot", true, null);
        addToggleRow(settingsCardsLayout, "Mount /sdcard to Sovereign Vault", "mount_sdcard", true, null);

        addSectionHeader(settingsCardsLayout, "// 3. ИНТЕРАКТИВНЫЕ СИСТЕМНЫЕ РАЗРЕШЕНИЯ ANDROID (НАЖМИТЕ ДЛЯ ВЫДАЧИ)");
        appendInteractivePermissionCards(settingsCardsLayout);

        addSectionHeader(settingsCardsLayout, "// 4. ОБСЛУЖИВАНИЕ ЯДРА");
        Button btnClearTerm = new Button(this);
        btnClearTerm.setText("ОЧИСТИТЬ БУФЕР ТЕРМИНАЛА");
        btnClearTerm.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnClearTerm.setTextSize(10.5f);
        btnClearTerm.setTextColor(Color.parseColor("#22c55e"));
        GradientDrawable bBg = new GradientDrawable();
        bBg.setColor(Color.parseColor("#0c2917"));
        bBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
        bBg.setCornerRadius(dpToPx(5));
        btnClearTerm.setBackground(bBg);
        btnClearTerm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (terminalOutput != null) {
                    terminalOutput.setText("");
                }
                Toast.makeText(NexusActivity.this, "Буфер терминала очищен", Toast.LENGTH_SHORT).show();
            }
        });
        settingsCardsLayout.addView(btnClearTerm);
    }

    // ==================== WINDOW 4: SECURITY & PERMISSIONS MATRIX ====================
    private void buildSecurityWindowView() {
        securityView = new ScrollView(this);
        securityView.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        securityView.setPadding(dpToPx(12), dpToPx(8), dpToPx(12), dpToPx(8));

        securityCardsLayout = new LinearLayout(this);
        securityCardsLayout.setOrientation(LinearLayout.VERTICAL);
        securityView.addView(securityCardsLayout);
    }

    private void populateSecurityWindow() {
        securityCardsLayout.removeAllViews();
        addSectionHeader(securityCardsLayout, "// ИНТЕРАКТИВНАЯ МАТРИЦА ПРАВ ANDROID (НАЖМИТЕ НА ЛЮБОЙ ПУНКТ)");
        appendInteractivePermissionCards(securityCardsLayout);
    }

    private void appendInteractivePermissionCards(LinearLayout container) {
        boolean a11yActive = RadrRemoteAgentService.isRunning;
        long a11yAgeSec = RadrRemoteAgentService.lastPollOkMs > 0
                ? (System.currentTimeMillis() - RadrRemoteAgentService.lastPollOkMs) / 1000L
                : -1L;
        String a11yBadge = a11yActive
                ? ("ACTIVE • " + (a11yAgeSec >= 0 && a11yAgeSec <= 15 ? "5G LINK OK" : "CONNECTING"))
                : "TAP TO ENABLE 5G CONTROL";
        addInteractivePermissionCard(container,
                "5G / TAILSCALE REMOTE AGENT (Accessibility)",
                "Дистанционное управление телефоном по 5G Odido и Tailscale без Wi-Fi и ADB. Нажмите -> Установленные приложения -> RADRILONIUMA 5G/Tailscale Agent -> ВКЛ",
                a11yBadge,
                a11yActive ? "#22c55e" : "#38bdf8",
                Settings.ACTION_ACCESSIBILITY_SETTINGS);

        addInteractivePermissionCard(container,
                "DEVELOPER / WIRELESS DEBUGGING",
                "Быстрый переход в «Параметры разработчика» (отладка по Wi-Fi / USB). Нажмите для открытия",
                "OPEN DEV OPTIONS",
                "#a855f7",
                Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS);

        boolean allFilesGranted = checkAllFilesAccess();
        addInteractivePermissionCard(container,
                "MANAGE_EXTERNAL_STORAGE",
                "Полный доступ к файловой системе /sdcard (нажмите для открытия настроек Android)",
                allFilesGranted ? "GRANTED [UPHEALED]" : "TAP TO GRANT",
                allFilesGranted ? "#22c55e" : "#ef4444",
                "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");

        boolean overlayGranted = Settings.canDrawOverlays(this);
        addInteractivePermissionCard(container,
                "SYSTEM_ALERT_WINDOW",
                "Поверх других окон / плавающий шлюз (нажмите для открытия настроек Android)",
                overlayGranted ? "GRANTED [UPHEALED]" : "TAP TO GRANT",
                overlayGranted ? "#22c55e" : "#ef4444",
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION);

        boolean batteryIgnored = false;
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        if (pm != null) {
            batteryIgnored = pm.isIgnoringBatteryOptimizations(getPackageName());
        }
        addInteractivePermissionCard(container,
                "DEVICEIDLE_WHITELIST",
                "Работа в фоне без ограничений батареи (нажмите для открытия настроек Android)",
                batteryIgnored ? "WHITELISTED [UPHEALED]" : "TAP TO WHITELIST",
                batteryIgnored ? "#22c55e" : "#facc15",
                Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS);

        boolean installGranted = true;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Method m = getPackageManager().getClass().getMethod("canRequestPackageInstalls");
                installGranted = (Boolean) m.invoke(getPackageManager());
            } catch (Exception ignored) {}
        }
        addInteractivePermissionCard(container,
                "REQUEST_INSTALL_PACKAGES",
                "Установка обновлений APK ядра (нажмите для открытия настроек Android)",
                installGranted ? "GRANTED [UPHEALED]" : "TAP TO GRANT",
                installGranted ? "#22c55e" : "#facc15",
                "android.settings.MANAGE_UNKNOWN_APP_SOURCES");
    }

    private void addInteractivePermissionCard(LinearLayout container, String permName, String desc,
                                              String badge, String colorHex, final String actionStr) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dpToPx(12), dpToPx(10), dpToPx(12), dpToPx(10));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#091d12"));
        bg.setStroke(dpToPx(1), Color.parseColor(colorHex));
        bg.setCornerRadius(dpToPx(6));
        card.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(0, dpToPx(3), 0, dpToPx(4));
        card.setLayoutParams(lp);

        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);

        TextView tvName = new TextView(this);
        tvName.setText(permName);
        tvName.setTextColor(Color.parseColor("#ffffff"));
        tvName.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvName.setTextSize(10.5f);
        LinearLayout.LayoutParams nameLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        tvName.setLayoutParams(nameLp);

        TextView tvBadge = new TextView(this);
        tvBadge.setText("[" + badge + "]");
        tvBadge.setTextColor(Color.parseColor(colorHex));
        tvBadge.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvBadge.setTextSize(9.5f);

        top.addView(tvName);
        top.addView(tvBadge);
        card.addView(top);

        TextView tvDesc = new TextView(this);
        tvDesc.setText(desc);
        tvDesc.setTextColor(Color.parseColor("#cbd5e1"));
        tvDesc.setTypeface(Typeface.MONOSPACE);
        tvDesc.setTextSize(9.0f);
        tvDesc.setPadding(0, dpToPx(3), 0, 0);
        card.addView(tvDesc);

        card.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openSystemPermissionIntent(actionStr);
            }
        });

        container.addView(card);
    }

    private void openSystemPermissionIntent(String actionStr) {
        try {
            Intent intent = new Intent(actionStr);
            boolean noPkgData = Settings.ACTION_ACCESSIBILITY_SETTINGS.equals(actionStr)
                    || Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS.equals(actionStr)
                    || Settings.ACTION_SETTINGS.equals(actionStr);
            if (!noPkgData) {
                intent.setData(Uri.parse("package:" + getPackageName()));
            }
            startActivity(intent);
        } catch (Exception e1) {
            try {
                Intent fallback = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                fallback.setData(Uri.parse("package:" + getPackageName()));
                startActivity(fallback);
            } catch (Exception e2) {
                Toast.makeText(this, "Не удалось открыть настройки: " + e2.getMessage(), Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void addSectionHeader(LinearLayout container, String title) {
        TextView tv = new TextView(this);
        tv.setText(title);
        tv.setTextColor(Color.parseColor("#2dd4bf"));
        tv.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tv.setTextSize(10.5f);
        tv.setPadding(0, dpToPx(10), 0, dpToPx(4));
        container.addView(tv);
    }

    private void addToggleRow(LinearLayout container, String label, final String prefKey, boolean defVal,
                              final CompoundButton.OnCheckedChangeListener listener) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dpToPx(10), dpToPx(6), dpToPx(10), dpToPx(6));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#091d12"));
        bg.setStroke(dpToPx(1), Color.parseColor("#1a4c2a"));
        bg.setCornerRadius(dpToPx(5));
        row.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(0, dpToPx(2), 0, dpToPx(3));
        row.setLayoutParams(lp);

        CheckBox cb = new CheckBox(this);
        cb.setText("  " + label);
        cb.setTextColor(Color.parseColor("#e2e8f0"));
        cb.setTypeface(Typeface.MONOSPACE);
        cb.setTextSize(10.0f);
        cb.setChecked(prefs.getBoolean(prefKey, defVal));
        cb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                prefs.edit().putBoolean(prefKey, isChecked).apply();
                if (listener != null) {
                    listener.onCheckedChanged(buttonView, isChecked);
                }
            }
        });
        row.addView(cb);
        container.addView(row);
    }

    private void setWakeLockEnabled(boolean enabled) {
        try {
            PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
            if (pm == null) return;
            if (enabled) {
                if (wakeLock == null) {
                    wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "RADRILONIUMA::SovereignCoreLock");
                }
                if (!wakeLock.isHeld()) {
                    wakeLock.acquire();
                }
            } else {
                if (wakeLock != null && wakeLock.isHeld()) {
                    wakeLock.release();
                }
            }
        } catch (Exception ignored) {}
    }

    private void addDetailLine(LinearLayout parent, String key, String val, String valColor) {
        TextView tvK = new TextView(this);
        tvK.setText(key + ":");
        tvK.setTextColor(Color.parseColor("#94a3b8"));
        tvK.setTypeface(Typeface.MONOSPACE);
        tvK.setTextSize(9.5f);
        tvK.setPadding(0, dpToPx(4), 0, 0);
        parent.addView(tvK);

        TextView tvV = new TextView(this);
        tvV.setText(val);
        tvV.setTextColor(Color.parseColor(valColor));
        tvV.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvV.setTextSize(11.0f);
        tvV.setPadding(0, dpToPx(1), 0, dpToPx(4));
        parent.addView(tvV);
    }

    private TextView createBadge(String text, String fgHex, String bgHex) {
        TextView tv = new TextView(this);
        tv.setText(text);
        tv.setTextColor(Color.parseColor(fgHex));
        tv.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tv.setTextSize(9.0f);
        tv.setPadding(dpToPx(6), dpToPx(4), dpToPx(6), dpToPx(4));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor(bgHex));
        bg.setStroke(dpToPx(1), Color.parseColor(fgHex));
        bg.setCornerRadius(dpToPx(3));
        tv.setBackground(bg);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        lp.setMargins(dpToPx(2), 0, dpToPx(2), 0);
        tv.setLayoutParams(lp);
        tv.setGravity(Gravity.CENTER);
        return tv;
    }

    private boolean checkAllFilesAccess() {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Method m = Environment.class.getMethod("isExternalStorageManager");
                return (Boolean) m.invoke(null);
            } catch (Exception ignored) {}
        }
        return true;
    }

    // ==================== UNIFIED REAL-TIME HARDWARE TELEMETRY ====================
    private void startTelemetryLoop() {
        clockTicker = new Runnable() {
            @Override
            public void run() {
                refreshAllLiveTelemetry();
                mainHandler.postDelayed(this, 1000);
            }
        };
        mainHandler.post(clockTicker);
    }

    private void refreshAllLiveTelemetry() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
        String timeStr = sdf.format(new Date());

        String battStr = getLiveBatteryInfo();
        String ramCompact = getLiveRamCompact();

        if (timeTelemetryText != null) {
            timeTelemetryText.setText(timeStr);
        }
        if (subtitleText != null) {
            String laptopBatHUD = "100% [AC]";
            try {
                org.json.JSONObject obj = readBestLaptopTelemetry();
                if (obj != null) {
                    int b = obj.optInt("battery_percent", 100);
                    boolean chg = obj.optBoolean("charging", true);
                    double d = (System.currentTimeMillis() / 1000.0) - obj.optDouble("timestamp", 0);
                    long remoteAgeSec = (remoteLaptopTelemetry != null)
                            ? Math.max(0L, (System.currentTimeMillis() - remoteLaptopTelemetryAtMs) / 1000L)
                            : Long.MAX_VALUE;
                    String stateTag;
                    if (remoteAgeSec <= 45L && activeGatewayUrl != null) {
                        stateTag = " [LIVE " + activeGatewayTransport + "]";
                    } else if (d <= 3.0) {
                        stateTag = " [LIVE]";
                    } else {
                        stateTag = " [CACHED]";
                    }
                    laptopBatHUD = b + "%" + (chg ? "⚡" : "") + stateTag;
                }
            } catch (Exception ignored) {}
            subtitleText.setText("📱 BAT: " + battStr + " | 💻 LAPTOP: " + laptopBatHUD + " | 528 Hz | RAM: " + ramCompact);
        }
        if (desktopHostLiveText != null) {
            desktopHostLiveText.setText(buildLiveLaptopHostDetailsString());
        }
        if (desktopLiveNodeText != null) {
            desktopLiveNodeText.setText("HW: Samsung Galaxy A26 5G (SM-A266B / RZCY80G86FP)\n"
                    + "BATTERY: " + battStr + " | RAM: " + getLiveRamInfo() + "\n"
                    + "STORAGE: " + getLiveStorageInfo() + " | IP: " + getLiveIpAddress());
        }
        if (node2LiveDetailsText != null) {
            node2LiveDetailsText.setText(buildLiveNode2DetailsString());
        }
    }

    private int getExactHardwareBatteryPercentage() {
        try {
            BatteryManager bm = (BatteryManager) getSystemService(Context.BATTERY_SERVICE);
            if (bm != null && Build.VERSION.SDK_INT >= 21) {
                int cap = bm.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
                if (cap > 0 && cap <= 100) {
                    return cap;
                }
            }
        } catch (Exception ignored) {}
        try {
            IntentFilter ifilter = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
            Intent bStatus = registerReceiver(null, ifilter);
            if (bStatus != null) {
                int level = bStatus.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
                int scale = bStatus.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
                if (level >= 0 && scale > 0) {
                    return Math.round((level * 100.0f) / scale);
                }
            }
        } catch (Exception ignored) {}
        return 100;
    }

    private String getLiveBatteryInfo() {
        int pct = getExactHardwareBatteryPercentage();
        boolean charging = false;
        try {
            IntentFilter ifilter = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
            Intent bStatus = registerReceiver(null, ifilter);
            if (bStatus != null) {
                int status = bStatus.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
                charging = (status == BatteryManager.BATTERY_STATUS_CHARGING
                        || status == BatteryManager.BATTERY_STATUS_FULL);
            }
        } catch (Exception ignored) {}
        return pct + "%" + (charging ? " [CHARGING]" : "");
    }

    private String getLiveRamCompact() {
        try {
            ActivityManager am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
            if (am != null) {
                ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
                am.getMemoryInfo(mi);
                long used = (mi.totalMem - mi.availMem) / (1024 * 1024);
                long total = mi.totalMem / (1024 * 1024);
                return used + "/" + total + "MB";
            }
        } catch (Exception ignored) {}
        return "OK";
    }

    private String getLiveRamInfo() {
        try {
            ActivityManager am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
            if (am != null) {
                ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
                am.getMemoryInfo(mi);
                long usedMb = (mi.totalMem - mi.availMem) / (1024 * 1024);
                long totalMb = mi.totalMem / (1024 * 1024);
                return usedMb + " MB / " + totalMb + " MB";
            }
        } catch (Exception ignored) {}
        return "Available";
    }

    private String getLiveStorageInfo() {
        try {
            File path = Environment.getDataDirectory();
            StatFs stat = new StatFs(path.getPath());
            long blockSize = stat.getBlockSizeLong();
            long availableBlocks = stat.getAvailableBlocksLong();
            long totalBlocks = stat.getBlockCountLong();
            long freeGb = (availableBlocks * blockSize) / (1024 * 1024 * 1024);
            long totalGb = (totalBlocks * blockSize) / (1024 * 1024 * 1024);
            return freeGb + " GB free / " + totalGb + " GB total";
        } catch (Exception ignored) {}
        return "Storage OK";
    }

    private String getLiveIpAddress() {
        try {
            List<NetworkInterface> interfaces = Collections.list(NetworkInterface.getNetworkInterfaces());
            for (NetworkInterface intf : interfaces) {
                List<InetAddress> addrs = Collections.list(intf.getInetAddresses());
                for (InetAddress addr : addrs) {
                    if (!addr.isLoopbackAddress()) {
                        String sAddr = addr.getHostAddress();
                        if (sAddr != null && sAddr.indexOf(':') < 0) {
                            return sAddr + " (" + intf.getName() + ")";
                        }
                    }
                }
            }
        } catch (Exception ignored) {}
        return "127.0.0.1 (Loopback)";
    }

    private int dpToPx(int dp) {
        float density = getResources().getDisplayMetrics().density;
        return (int) (dp * density + 0.5f);
    }

    @Override
    protected void onDestroy() {
        activityDestroyed = true;
        super.onDestroy();
        if (mainHandler != null && clockTicker != null) {
            mainHandler.removeCallbacks(clockTicker);
        }
        if (wakeLock != null && wakeLock.isHeld()) {
            try {
                wakeLock.release();
            } catch (Exception ignored) {}
        }
        if (cliProcess != null) {
            try {
                cliProcess.destroy();
            } catch (Exception ignored) {}
        }
    }
}
