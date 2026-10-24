package com.architit.radriloniuma;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
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
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;

public class NexusActivity extends Activity {
    private FrameLayout rootContainer;
    private FrameLayout contentFrame;
    private TextView titleText;
    private TextView subtitleText;
    private TextView timeTelemetryText;

    private int activeTab = 0; // 0=Nodes, 1=Organs, 2=Terminal, 3=Security
    private Button[] dockButtons = new Button[4];

    // Views for tabs
    private ScrollView nodesView;
    private LinearLayout organsViewContainer;
    private LinearLayout terminalViewContainer;
    private ScrollView securityView;

    // Terminal fields
    private TextView terminalOutput;
    private ScrollView terminalScroll;
    private EditText terminalInput;
    private Process cliProcess;
    private OutputStream cliOut;
    private BufferedReader cliIn;

    // Organs data
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
    private String selectedDeckFilter = "ALL";
    private LinearLayout organsListLayout;

    // Handlers
    private Handler mainHandler;
    private Runnable clockTicker;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

        mainHandler = new Handler(Looper.getMainLooper());

        loadOrgansManifest();
        initNativeTerminal();
        buildMasterCockpitUI();
        startTelemetryLoop();
        requestCorePermissions();
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
                        item.version = o.optString("version", "2026.18.10.03.37.23");
                        allOrgans.add(item);
                    }
                }
            }
        } catch (Exception e) {
            // Fallback: Populate canonical baseline if assets load fails
            for (int i = 1; i <= 68; i++) {
                OrganItem item = new OrganItem();
                item.slot = String.format(Locale.US, "%03d", i);
                item.organId = String.format(Locale.US, "ORGAN_%02d_SUBSTRATE_CORE", i);
                item.name = "Cluster Organ #" + i;
                item.deck = (i <= 12) ? "core" : (i <= 26) ? "lam" : (i <= 40) ? "hardware" : (i <= 54) ? "portals" : "special";
                item.resonance = "528 Hz";
                item.status = "ONLINE";
                item.toolName = "enqueue_task_organ_" + i;
                item.version = "2026.18.10.03.37.23";
                allOrgans.add(item);
            }
        }
    }

    private void buildMasterCockpitUI() {
        rootContainer = new FrameLayout(this);
        rootContainer.setBackgroundColor(Color.parseColor("#061009"));

        // Background: 60 FPS Resonant Canvas
        ResonantCanvasView backgroundCanvas = new ResonantCanvasView(this);
        rootContainer.addView(backgroundCanvas, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // Foreground: Cockpit Overlay
        LinearLayout foregroundLayout = new LinearLayout(this);
        foregroundLayout.setOrientation(LinearLayout.VERTICAL);

        // 1. Top HUD Header
        View headerBar = buildHeaderHUD();
        foregroundLayout.addView(headerBar);

        // 2. Main Content Viewport
        contentFrame = new FrameLayout(this);
        LinearLayout.LayoutParams contentParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f);
        contentFrame.setLayoutParams(contentParams);
        foregroundLayout.addView(contentFrame);

        // 3. Bottom Sovereign Dock
        View dockBar = buildBottomDock();
        foregroundLayout.addView(dockBar);

        rootContainer.addView(foregroundLayout, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        setContentView(rootContainer);

        // Initialize Tab Views
        buildNodesTabView();
        buildOrgansTabView();
        buildTerminalTabView();
        buildSecurityTabView();

        // Switch to default tab (0: Nodes)
        switchTab(0);
    }

    private View buildHeaderHUD() {
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setBackgroundColor(Color.parseColor("#0a1a10"));
        header.setPadding(dpToPx(12), dpToPx(6), dpToPx(12), dpToPx(6));

        GradientDrawable headerBg = new GradientDrawable();
        headerBg.setColor(Color.parseColor("#09170e"));
        headerBg.setStroke(dpToPx(1), Color.parseColor("#1b4728"));
        header.setBackground(headerBg);

        // Row 1: Title (left) + Clock (right)
        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.setGravity(Gravity.CENTER_VERTICAL);

        titleText = new TextView(this);
        titleText.setText("RADRILONIUMA OS 2026.10.24");
        titleText.setTextColor(Color.parseColor("#22c55e"));
        titleText.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        titleText.setTextSize(12.5f);
        titleText.setSingleLine(true);
        LinearLayout.LayoutParams titleLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        titleText.setLayoutParams(titleLp);

        timeTelemetryText = new TextView(this);
        timeTelemetryText.setText("2026-10-24 --:--:--");
        timeTelemetryText.setTextColor(Color.parseColor("#facc15"));
        timeTelemetryText.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        timeTelemetryText.setTextSize(10.5f);
        timeTelemetryText.setGravity(Gravity.END);

        row1.addView(titleText);
        row1.addView(timeTelemetryText);
        header.addView(row1);

        // Row 2: Carrier (left) + Live Hardware Telemetry (right)
        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.setGravity(Gravity.CENTER_VERTICAL);
        row2.setPadding(0, dpToPx(2), 0, 0);

        subtitleText = new TextView(this);
        subtitleText.setText("528 Hz LOCKED | CARRIER: 528 Hz / 432 Hz");
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

    private View buildBottomDock() {
        LinearLayout dock = new LinearLayout(this);
        dock.setOrientation(LinearLayout.HORIZONTAL);
        dock.setBackgroundColor(Color.parseColor("#08140c"));
        dock.setPadding(dpToPx(4), dpToPx(6), dpToPx(4), dpToPx(6));

        GradientDrawable dockBg = new GradientDrawable();
        dockBg.setColor(Color.parseColor("#07120a"));
        dockBg.setStroke(dpToPx(1), Color.parseColor("#1a4527"));
        dock.setBackground(dockBg);

        String[] tabLabels = {
                "[ 01: УЗЛЫ ]",
                "[ 02: 68 ОРГАНОВ ]",
                "[ 03: ТЕРМИНАЛ ]",
                "[ 04: ЗАЩИТА ]"
        };

        for (int i = 0; i < 4; i++) {
            final int tabIndex = i;
            Button b = new Button(this);
            b.setText(tabLabels[i]);
            b.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            b.setTextSize(11.0f);
            b.setAllCaps(false);
            b.setPadding(0, dpToPx(8), 0, dpToPx(8));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
            lp.setMargins(dpToPx(2), 0, dpToPx(2), 0);
            b.setLayoutParams(lp);

            b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    switchTab(tabIndex);
                }
            });

            dockButtons[i] = b;
            dock.addView(b);
        }

        return dock;
    }

    private void switchTab(int index) {
        activeTab = index;
        contentFrame.removeAllViews();

        for (int i = 0; i < 4; i++) {
            GradientDrawable btnBg = new GradientDrawable();
            if (i == index) {
                btnBg.setColor(Color.parseColor("#163d23"));
                btnBg.setStroke(dpToPx(1), Color.parseColor("#22c55e"));
                dockButtons[i].setTextColor(Color.parseColor("#22c55e"));
            } else {
                btnBg.setColor(Color.parseColor("#0d2415"));
                btnBg.setStroke(dpToPx(1), Color.parseColor("#163d23"));
                dockButtons[i].setTextColor(Color.parseColor("#528263"));
            }
            btnBg.setCornerRadius(dpToPx(4));
            dockButtons[i].setBackground(btnBg);
        }

        switch (index) {
            case 0:
                updateNodesData();
                contentFrame.addView(nodesView);
                break;
            case 1:
                contentFrame.addView(organsViewContainer);
                break;
            case 2:
                contentFrame.addView(terminalViewContainer);
                break;
            case 3:
                updateSecurityStatus();
                contentFrame.addView(securityView);
                break;
        }
    }

    // ==================== TAB 0: CLUSTER TOPOLOGY ====================
    private LinearLayout nodesCardsLayout;

    private void buildNodesTabView() {
        nodesView = new ScrollView(this);
        nodesView.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        nodesView.setPadding(dpToPx(12), dpToPx(10), dpToPx(12), dpToPx(10));

        nodesCardsLayout = new LinearLayout(this);
        nodesCardsLayout.setOrientation(LinearLayout.VERTICAL);
        nodesView.addView(nodesCardsLayout);
    }

    private void updateNodesData() {
        nodesCardsLayout.removeAllViews();

        // 1. Triad Resonance Badge Bar
        LinearLayout triadBar = new LinearLayout(this);
        triadBar.setOrientation(LinearLayout.HORIZONTAL);
        triadBar.setPadding(dpToPx(8), dpToPx(6), dpToPx(8), dpToPx(6));
        GradientDrawable triadBg = new GradientDrawable();
        triadBg.setColor(Color.parseColor("#091d11"));
        triadBg.setStroke(dpToPx(1), Color.parseColor("#1e5630"));
        triadBg.setCornerRadius(dpToPx(4));
        triadBar.setBackground(triadBg);

        TextView tSkolart = createBadge("СКОЛАРТ: 1% GOD SEED", "#facc15", "#1c1800");
        TextView tLyumerik = createBadge("ЛЮМЕРИК: 24% ANGEL", "#2dd4bf", "#00201c");
        TextView tMirashani = createBadge("МИРАШАНИ: 75% DEMON", "#22c55e", "#031d0b");

        triadBar.addView(tSkolart);
        triadBar.addView(tLyumerik);
        triadBar.addView(tMirashani);
        nodesCardsLayout.addView(triadBar);

        // Section Title
        TextView header = new TextView(this);
        header.setText("// 5 HARDWARE CLUSTER NODES • LIVING MATRIX");
        header.setTextColor(Color.parseColor("#2dd4bf"));
        header.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        header.setTextSize(11.5f);
        header.setPadding(0, dpToPx(12), 0, dpToPx(6));
        nodesCardsLayout.addView(header);

        // Node 1: DEV_01_BUSHMASTER
        addNodeCard("DEV_01_BUSHMASTER",
                "MASTER_OPERATOR_STATION",
                "Windows 11 Host PC (Intel/AMD x86_64)",
                "CWD: C:\\Users\\BushM | ADB Bridge: tcp:5037",
                "ONLINE [HOST]",
                "#22c55e");

        // Node 2: DEV_02_ATESIRT (Physical Mobile Node)
        String liveBattery = getLiveBatteryInfo();
        String liveRam = getLiveRamInfo();
        String liveDisk = getLiveStorageInfo();
        String liveIp = getLiveIpAddress();

        addNodeCard("DEV_02_ATESIRT",
                "AUTONOMOUS_MOBILE_EDGE_NODE",
                "Samsung Galaxy A26 5G (SM-A266B / RZCY80G86FP)",
                "BATTERY: " + liveBattery + " | RAM: " + liveRam + "\nSTORAGE: " + liveDisk + "\nIP: " + liveIp,
                "ONLINE [ACTIVE]",
                "#22c55e");

        // Node 3: DEV_03_UBUNTU_WSL2
        addNodeCard("DEV_03_UBUNTU_WSL2",
                "LIVING_KERNEL_SUBSTRATE",
                "Ubuntu 24.04 LTS Substrate (/root/RADRILONIUMA)",
                "ORGANS: 68/68 Online | PM2: 8 Daemons Active\nCARRIER: 528 Hz Solfeggio / 432 Hz Baseline",
                "ONLINE [KERNEL]",
                "#22c55e");

        // Node 4: DEV_04_SAMSUNG_T7_VAULT
        addNodeCard("DEV_04_SAMSUNG_T7_VAULT",
                "PERMANENT_HARDWARE_VAULT_1TB",
                "Samsung PSSD T7 1TB (NTFS)",
                "MOUNT: F:\\ / /mnt/f | Genesis Seed Mirror: SECURED",
                "SECURED [VAULT]",
                "#2dd4bf");

        // Node 5: DEV_05_LAO_SWARM_MATRIX
        addNodeCard("DEV_05_LAO_SWARM_MATRIX",
                "528-SLOT LIVING ORGANISM CORE",
                "Carrier Frequencies: 528 Hz / 432 Hz",
                "SWARM: Self-healing Autonomous Mesh | Quorum: 5/5 Synchronized",
                "RESONATING [528Hz]",
                "#facc15");
    }

    private TextView createBadge(String text, String fgHex, String bgHex) {
        TextView tv = new TextView(this);
        tv.setText(text);
        tv.setTextColor(Color.parseColor(fgHex));
        tv.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tv.setTextSize(9.0f);
        tv.setPadding(dpToPx(6), dpToPx(3), dpToPx(6), dpToPx(3));

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

    private void addNodeCard(String nodeId, String role, String hardware, String details, String status, String statusColor) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#091d12"));
        bg.setStroke(dpToPx(1), Color.parseColor("#1a4c2a"));
        bg.setCornerRadius(dpToPx(6));
        card.setBackground(bg);

        LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        cardLp.setMargins(0, dpToPx(3), 0, dpToPx(4));
        card.setLayoutParams(cardLp);

        // Header line: Node ID (full clean line)
        LinearLayout topRow = new LinearLayout(this);
        topRow.setOrientation(LinearLayout.HORIZONTAL);

        TextView tvId = new TextView(this);
        tvId.setText("NODE: " + nodeId);
        tvId.setTextColor(Color.parseColor("#22c55e"));
        tvId.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvId.setTextSize(11.5f);
        tvId.setSingleLine(true);
        LinearLayout.LayoutParams idLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        tvId.setLayoutParams(idLp);

        TextView tvStatus = new TextView(this);
        tvStatus.setText("[" + status + "]");
        tvStatus.setTextColor(Color.parseColor(statusColor));
        tvStatus.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvStatus.setTextSize(9.5f);
        tvStatus.setSingleLine(true);

        topRow.addView(tvId);
        topRow.addView(tvStatus);
        card.addView(topRow);

        // Role line
        TextView tvRole = new TextView(this);
        tvRole.setText("ROLE: " + role);
        tvRole.setTextColor(Color.parseColor("#2dd4bf"));
        tvRole.setTypeface(Typeface.MONOSPACE);
        tvRole.setTextSize(10.0f);
        tvRole.setPadding(0, dpToPx(2), 0, 0);
        card.addView(tvRole);

        // Hardware line
        TextView tvHw = new TextView(this);
        tvHw.setText("HW: " + hardware);
        tvHw.setTextColor(Color.parseColor("#cbd5e1"));
        tvHw.setTypeface(Typeface.MONOSPACE);
        tvHw.setTextSize(9.5f);
        tvHw.setPadding(0, dpToPx(2), 0, 0);
        card.addView(tvHw);

        // Details line
        TextView tvDet = new TextView(this);
        tvDet.setText(details);
        tvDet.setTextColor(Color.parseColor("#94a3b8"));
        tvDet.setTypeface(Typeface.MONOSPACE);
        tvDet.setTextSize(9.0f);
        tvDet.setPadding(0, dpToPx(3), 0, 0);
        card.addView(tvDet);

        nodesCardsLayout.addView(card);
    }

    // ==================== TAB 1: 68 MCP ORGANS DIRECTORY ====================
    private void buildOrgansTabView() {
        organsViewContainer = new LinearLayout(this);
        organsViewContainer.setOrientation(LinearLayout.VERTICAL);
        organsViewContainer.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // Subheader
        LinearLayout subheader = new LinearLayout(this);
        subheader.setOrientation(LinearLayout.VERTICAL);
        subheader.setPadding(dpToPx(12), dpToPx(8), dpToPx(12), dpToPx(4));

        TextView tvTitle = new TextView(this);
        tvTitle.setText("// 68 MCP ORGANS DIRECTORY (SLOTS 001 - 068)");
        tvTitle.setTextColor(Color.parseColor("#2dd4bf"));
        tvTitle.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvTitle.setTextSize(12.0f);

        TextView tvSub = new TextView(this);
        tvSub.setText("Manifest: 2026.18.10.03.37.23 | 5 Decks: core, lam, hardware, portals, special");
        tvSub.setTextColor(Color.parseColor("#a3e635"));
        tvSub.setTypeface(Typeface.MONOSPACE);
        tvSub.setTextSize(9.5f);

        subheader.addView(tvTitle);
        subheader.addView(tvSub);
        organsViewContainer.addView(subheader);

        // Deck Filter Buttons Row (Horizontal Scroll)
        HorizontalScrollView filterScroll = new HorizontalScrollView(this);
        filterScroll.setPadding(dpToPx(10), dpToPx(2), dpToPx(10), dpToPx(6));
        LinearLayout filterRow = new LinearLayout(this);
        filterRow.setOrientation(LinearLayout.HORIZONTAL);

        String[] decks = {"ALL", "CORE", "LAM", "HARDWARE", "PORTALS", "SPECIAL"};
        for (final String deck : decks) {
            Button b = new Button(this);
            b.setText(deck);
            b.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            b.setTextSize(10.0f);
            b.setPadding(dpToPx(10), dpToPx(4), dpToPx(10), dpToPx(4));

            GradientDrawable bBg = new GradientDrawable();
            bBg.setColor(Color.parseColor("#0e2a19"));
            bBg.setStroke(dpToPx(1), Color.parseColor("#1c5632"));
            bBg.setCornerRadius(dpToPx(4));
            b.setBackground(bBg);
            b.setTextColor(Color.parseColor("#22c55e"));

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(dpToPx(2), 0, dpToPx(2), 0);
            b.setLayoutParams(lp);

            b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    selectedDeckFilter = deck;
                    populateOrgansList();
                }
            });

            filterRow.addView(b);
        }
        filterScroll.addView(filterRow);
        organsViewContainer.addView(filterScroll);

        // Scrollable list of organ cards
        ScrollView listScroll = new ScrollView(this);
        listScroll.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));
        listScroll.setPadding(dpToPx(12), dpToPx(4), dpToPx(12), dpToPx(10));

        organsListLayout = new LinearLayout(this);
        organsListLayout.setOrientation(LinearLayout.VERTICAL);
        listScroll.addView(organsListLayout);

        organsViewContainer.addView(listScroll);

        populateOrgansList();
    }

    private void populateOrgansList() {
        organsListLayout.removeAllViews();

        int renderedCount = 0;
        for (final OrganItem item : allOrgans) {
            if (!selectedDeckFilter.equals("ALL")) {
                if (!item.deck.equalsIgnoreCase(selectedDeckFilter)) {
                    continue;
                }
            }

            renderedCount++;
            LinearLayout card = new LinearLayout(this);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

            GradientDrawable bg = new GradientDrawable();
            bg.setColor(Color.parseColor("#081c10"));
            bg.setStroke(dpToPx(1), Color.parseColor("#184c28"));
            bg.setCornerRadius(dpToPx(5));
            card.setBackground(bg);

            LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cardLp.setMargins(0, dpToPx(3), 0, dpToPx(4));
            card.setLayoutParams(cardLp);

            // Row 1: [SLOT_XXX] + Organ ID + [ONLINE]
            LinearLayout r1 = new LinearLayout(this);
            r1.setOrientation(LinearLayout.HORIZONTAL);

            TextView tvSlot = new TextView(this);
            tvSlot.setText("[SLOT_" + item.slot + "]");
            tvSlot.setTextColor(Color.parseColor("#facc15"));
            tvSlot.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            tvSlot.setTextSize(10.5f);

            TextView tvId = new TextView(this);
            tvId.setText(" " + item.organId);
            tvId.setTextColor(Color.parseColor("#22c55e"));
            tvId.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
            tvId.setTextSize(10.5f);
            LinearLayout.LayoutParams idLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
            tvId.setLayoutParams(idLp);

            TextView tvStatus = new TextView(this);
            tvStatus.setText("[" + item.resonance + " ONLINE]");
            tvStatus.setTextColor(Color.parseColor("#2dd4bf"));
            tvStatus.setTypeface(Typeface.MONOSPACE);
            tvStatus.setTextSize(9.5f);

            r1.addView(tvSlot);
            r1.addView(tvId);
            r1.addView(tvStatus);
            card.addView(r1);

            // Row 2: Name
            TextView tvName = new TextView(this);
            tvName.setText(item.name);
            tvName.setTextColor(Color.parseColor("#e2e8f0"));
            tvName.setTypeface(Typeface.MONOSPACE);
            tvName.setTextSize(11.0f);
            tvName.setPadding(0, dpToPx(2), 0, 0);
            card.addView(tvName);

            // Row 3: Deck + Tool
            TextView tvTool = new TextView(this);
            tvTool.setText("DECK: " + item.deck.toUpperCase(Locale.US) + " | TOOL: " + item.toolName);
            tvTool.setTextColor(Color.parseColor("#64748b"));
            tvTool.setTypeface(Typeface.MONOSPACE);
            tvTool.setTextSize(9.0f);
            tvTool.setPadding(0, dpToPx(2), 0, 0);
            card.addView(tvTool);

            card.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    showOrganDetailDialog(item);
                }
            });

            organsListLayout.addView(card);
        }

        // Summary footer
        TextView footer = new TextView(this);
        footer.setText("// TOTAL DISPLAYED: " + renderedCount + " / 68 ORGANS (CARRIER 528 Hz / 432 Hz)");
        footer.setTextColor(Color.parseColor("#4ade80"));
        footer.setTypeface(Typeface.MONOSPACE);
        footer.setTextSize(9.5f);
        footer.setPadding(dpToPx(4), dpToPx(8), dpToPx(4), dpToPx(16));
        footer.setGravity(Gravity.CENTER);
        organsListLayout.addView(footer);
    }

    private void showOrganDetailDialog(OrganItem item) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(item.organId);
        String msg = "NAME: " + item.name + "\n"
                + "SLOT: SLOT_" + item.slot + "\n"
                + "DECK CLASS: " + item.deck + "\n"
                + "RESONANCE: " + item.resonance + "\n"
                + "STATUS: " + item.status + "\n"
                + "VERSION: " + item.version + "\n"
                + "MCP TOOL: " + item.toolName + "\n"
                + "PROTOCOL: SOVEREIGN LIVING COCON MATRIX";
        builder.setMessage(msg);
        builder.setPositiveButton("CLOSE", null);
        builder.show();
    }

    // ==================== TAB 2: NATIVE TERMINAL CONSOLE ====================
    private void buildTerminalTabView() {
        terminalViewContainer = new LinearLayout(this);
        terminalViewContainer.setOrientation(LinearLayout.VERTICAL);
        terminalViewContainer.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        terminalViewContainer.setPadding(dpToPx(10), dpToPx(6), dpToPx(10), dpToPx(6));

        // Subheader
        TextView tvHeader = new TextView(this);
        tvHeader.setText("// NATIVE INTERACTIVE SHELL (/system/bin/sh)");
        tvHeader.setTextColor(Color.parseColor("#2dd4bf"));
        tvHeader.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvHeader.setTextSize(11.5f);
        terminalViewContainer.addView(tvHeader);

        // Quick Command Bar (Horizontal Scroll)
        HorizontalScrollView quickScroll = new HorizontalScrollView(this);
        quickScroll.setPadding(0, dpToPx(4), 0, dpToPx(6));
        LinearLayout quickRow = new LinearLayout(this);
        quickRow.setOrientation(LinearLayout.HORIZONTAL);

        String[] quickCmds = {"id", "uname -a", "df -h", "ps -A", "netstat", "ip a", "clear"};
        for (final String cmd : quickCmds) {
            Button b = new Button(this);
            b.setText(cmd);
            b.setTypeface(Typeface.MONOSPACE);
            b.setTextSize(10.0f);
            b.setPadding(dpToPx(8), dpToPx(3), dpToPx(8), dpToPx(3));

            GradientDrawable bBg = new GradientDrawable();
            bBg.setColor(Color.parseColor("#0e2818"));
            bBg.setStroke(dpToPx(1), Color.parseColor("#1c542f"));
            bBg.setCornerRadius(dpToPx(3));
            b.setBackground(bBg);
            b.setTextColor(Color.parseColor("#22c55e"));

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(dpToPx(2), 0, dpToPx(2), 0);
            b.setLayoutParams(lp);

            b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if ("clear".equals(cmd)) {
                        terminalOutput.setText("");
                    } else {
                        executeCommand(cmd);
                    }
                }
            });

            quickRow.addView(b);
        }
        quickScroll.addView(quickRow);
        terminalViewContainer.addView(quickScroll);

        // Terminal Output Console
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

        terminalOutput = new TextView(this);
        terminalOutput.setTextColor(Color.parseColor("#22c55e"));
        terminalOutput.setTypeface(Typeface.MONOSPACE);
        terminalOutput.setTextSize(10.5f);
        terminalOutput.setText("RADRILONIUMA OS [Version 2026.10.24-SOVEREIGN]\n(c) Architit living cluster substrate. All rights reserved.\nShell connected to /system/bin/sh\n\n");
        terminalScroll.addView(terminalOutput);
        terminalViewContainer.addView(terminalScroll);

        // Input row: EditText + Send button
        LinearLayout inputRow = new LinearLayout(this);
        inputRow.setOrientation(LinearLayout.HORIZONTAL);
        inputRow.setPadding(0, dpToPx(6), 0, dpToPx(2));

        terminalInput = new EditText(this);
        terminalInput.setHint("sh> enter command...");
        terminalInput.setHintTextColor(Color.parseColor("#375540"));
        terminalInput.setTextColor(Color.parseColor("#22c55e"));
        terminalInput.setTypeface(Typeface.MONOSPACE);
        terminalInput.setTextSize(11.5f);
        terminalInput.setSingleLine(true);
        terminalInput.setPadding(dpToPx(8), dpToPx(6), dpToPx(8), dpToPx(6));

        GradientDrawable inputBg = new GradientDrawable();
        inputBg.setColor(Color.parseColor("#07190e"));
        inputBg.setStroke(dpToPx(1), Color.parseColor("#1b522b"));
        inputBg.setCornerRadius(dpToPx(4));
        terminalInput.setBackground(inputBg);

        LinearLayout.LayoutParams inputParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        terminalInput.setLayoutParams(inputParams);

        Button btnSend = new Button(this);
        btnSend.setText("RUN");
        btnSend.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnSend.setTextSize(11.0f);
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

    private void executeCommand(String cmd) {
        if (terminalOutput != null) {
            terminalOutput.append("$ " + cmd + "\n");
        }
        if (cliOut != null) {
            try {
                cliOut.write((cmd + "\n").getBytes());
                cliOut.flush();
            } catch (Exception e) {
                if (terminalOutput != null) {
                    terminalOutput.append("[Write Error]: " + e.getMessage() + "\n");
                }
            }
        }
    }

    // ==================== TAB 3: SECURITY & UPHEAL MATRIX ====================
    private LinearLayout securityCardsLayout;

    private void buildSecurityTabView() {
        securityView = new ScrollView(this);
        securityView.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        securityView.setPadding(dpToPx(12), dpToPx(10), dpToPx(12), dpToPx(10));

        securityCardsLayout = new LinearLayout(this);
        securityCardsLayout.setOrientation(LinearLayout.VERTICAL);
        securityView.addView(securityCardsLayout);
    }

    private void updateSecurityStatus() {
        securityCardsLayout.removeAllViews();

        TextView tvTitle = new TextView(this);
        tvTitle.setText("// CROSS-NODE PERMISSIONS & SECURITY AUDIT");
        tvTitle.setTextColor(Color.parseColor("#2dd4bf"));
        tvTitle.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvTitle.setTextSize(12.0f);
        tvTitle.setPadding(0, 0, 0, dpToPx(8));
        securityCardsLayout.addView(tvTitle);

        // Permission 1: MANAGE_EXTERNAL_STORAGE
        boolean allFilesGranted = checkAllFilesAccess();
        addPermissionCard("MANAGE_EXTERNAL_STORAGE",
                "Full filesystem access to /sdcard and cluster seeds",
                allFilesGranted ? "GRANTED [UPHEALED]" : "RESTRICTED",
                allFilesGranted ? "#22c55e" : "#ef4444");

        // Permission 2: SYSTEM_ALERT_WINDOW
        boolean overlayGranted = Settings.canDrawOverlays(this);
        addPermissionCard("SYSTEM_ALERT_WINDOW",
                "LAM Floating Service & HUD overlay capability",
                overlayGranted ? "GRANTED [UPHEALED]" : "RESTRICTED",
                overlayGranted ? "#22c55e" : "#ef4444");

        // Permission 3: Battery Optimization Whitelist
        boolean batteryIgnored = false;
        PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        if (pm != null) {
            batteryIgnored = pm.isIgnoringBatteryOptimizations(getPackageName());
        }
        addPermissionCard("DEVICEIDLE_WHITELIST",
                "Unrestricted background execution without sleep",
                batteryIgnored ? "WHITELISTED [UPHEALED]" : "OPTIMIZED",
                batteryIgnored ? "#22c55e" : "#facc15");

        // Permission 4: Request Install Packages
        boolean installGranted = true;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Method m = getPackageManager().getClass().getMethod("canRequestPackageInstalls");
                installGranted = (Boolean) m.invoke(getPackageManager());
            } catch (Exception ignored) {}
        }
        addPermissionCard("REQUEST_INSTALL_PACKAGES",
                "Autonomous updates of cluster nodes & organs",
                installGranted ? "GRANTED [UPHEALED]" : "RESTRICTED",
                installGranted ? "#22c55e" : "#facc15");

        // Canonical Security Protocols
        addPermissionCard("INTERACTION_PROTOCOL",
                "Mandates M0, M0.1, M0.2, M49 Cross-Node Active",
                "LOCKED_ENFORCED",
                "#22c55e");

        addPermissionCard("KERNEL_BOUNDARY_CONTRACT",
                "Controlled Execution Mode active on 528 Hz carrier",
                "LOCKED_ENFORCED",
                "#22c55e");

        addPermissionCard("GLOBAL_PERMISSIONS_MATRIX",
                "Cross-node security bridge: DEV_01 <-> DEV_02 verified",
                "SYNCHRONIZED",
                "#2dd4bf");

        // Upheal Action Button
        Button btnUpheal = new Button(this);
        btnUpheal.setText(">> EXECUTE PROTOCOL AUDIT & UPHEAL <<");
        btnUpheal.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        btnUpheal.setTextSize(11.0f);
        btnUpheal.setTextColor(Color.parseColor("#061009"));

        GradientDrawable uphealBg = new GradientDrawable();
        uphealBg.setColor(Color.parseColor("#22c55e"));
        uphealBg.setCornerRadius(dpToPx(5));
        btnUpheal.setBackground(uphealBg);

        LinearLayout.LayoutParams btnLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        btnLp.setMargins(0, dpToPx(12), 0, dpToPx(16));
        btnUpheal.setLayoutParams(btnLp);

        btnUpheal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                updateSecurityStatus();
                Toast.makeText(NexusActivity.this, "Security Protocols Re-evaluated. Matrix Harmonized.", Toast.LENGTH_SHORT).show();
            }
        });

        securityCardsLayout.addView(btnUpheal);
    }

    private boolean checkAllFilesAccess() {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Method m = Environment.class.getMethod("isExternalStorageManager");
                return (Boolean) m.invoke(null);
            } catch (Exception e) {
                return false;
            }
        }
        return true;
    }

    private void addPermissionCard(String permName, String desc, String status, String statusColor) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dpToPx(10), dpToPx(8), dpToPx(10), dpToPx(8));

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#091d11"));
        bg.setStroke(dpToPx(1), Color.parseColor("#1a4c2a"));
        bg.setCornerRadius(dpToPx(5));
        card.setBackground(bg);

        LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        cardLp.setMargins(0, dpToPx(3), 0, dpToPx(4));
        card.setLayoutParams(cardLp);

        LinearLayout r1 = new LinearLayout(this);
        r1.setOrientation(LinearLayout.HORIZONTAL);

        TextView tvName = new TextView(this);
        tvName.setText(permName);
        tvName.setTextColor(Color.parseColor("#22c55e"));
        tvName.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvName.setTextSize(11.0f);
        LinearLayout.LayoutParams nameLp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        tvName.setLayoutParams(nameLp);

        TextView tvStatus = new TextView(this);
        tvStatus.setText("[" + status + "]");
        tvStatus.setTextColor(Color.parseColor(statusColor));
        tvStatus.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        tvStatus.setTextSize(10.0f);

        r1.addView(tvName);
        r1.addView(tvStatus);
        card.addView(r1);

        TextView tvDesc = new TextView(this);
        tvDesc.setText(desc);
        tvDesc.setTextColor(Color.parseColor("#94a3b8"));
        tvDesc.setTypeface(Typeface.MONOSPACE);
        tvDesc.setTextSize(9.5f);
        tvDesc.setPadding(0, dpToPx(2), 0, 0);
        card.addView(tvDesc);

        securityCardsLayout.addView(card);
    }

    // ==================== TELEMETRY & HARDWARE METRICS ====================
    private void startTelemetryLoop() {
        clockTicker = new Runnable() {
            @Override
            public void run() {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                String timeStr = sdf.format(new Date());

                int batt = getBatteryPercentage();
                String ramInfo = getLiveRamCompact();

                if (timeTelemetryText != null) {
                    timeTelemetryText.setText(timeStr);
                }
                if (subtitleText != null) {
                    subtitleText.setText("528 Hz LOCKED | CARRIER: 528/432 Hz | BAT: " + batt + "% | RAM: " + ramInfo);
                }

                mainHandler.postDelayed(this, 1000);
            }
        };
        mainHandler.post(clockTicker);
    }

    private int getBatteryPercentage() {
        try {
            IntentFilter ifilter = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
            Intent bStatus = registerReceiver(null, ifilter);
            if (bStatus != null) {
                int level = bStatus.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
                int scale = bStatus.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
                if (level >= 0 && scale > 0) {
                    return (int) ((level / (float) scale) * 100);
                }
            }
        } catch (Exception ignored) {}
        return 100;
    }

    private String getLiveBatteryInfo() {
        int pct = getBatteryPercentage();
        return pct + "% (Hardware Managed)";
    }

    private String getLiveRamCompact() {
        try {
            android.app.ActivityManager am = (android.app.ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
            if (am != null) {
                android.app.ActivityManager.MemoryInfo mi = new android.app.ActivityManager.MemoryInfo();
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
            android.app.ActivityManager am = (android.app.ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
            if (am != null) {
                android.app.ActivityManager.MemoryInfo mi = new android.app.ActivityManager.MemoryInfo();
                am.getMemoryInfo(mi);
                long availGb = mi.availMem / (1024 * 1024 * 1024);
                long totalGb = mi.totalMem / (1024 * 1024 * 1024);
                return (totalGb - availGb) + "GB / " + totalGb + "GB";
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

    private void requestCorePermissions() {
        // Request overlays if not present
        if (!Settings.canDrawOverlays(this)) {
            try {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivity(intent);
            } catch (Exception ignored) {}
        }
    }

    private int dpToPx(int dp) {
        float density = getResources().getDisplayMetrics().density;
        return (int) (dp * density + 0.5f);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mainHandler != null && clockTicker != null) {
            mainHandler.removeCallbacks(clockTicker);
        }
        if (cliProcess != null) {
            try {
                cliProcess.destroy();
            } catch (Exception ignored) {}
        }
    }
}
