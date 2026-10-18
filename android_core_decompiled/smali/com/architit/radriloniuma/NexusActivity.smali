.class public Lcom/architit/radriloniuma/NexusActivity;
.super Landroid/app/Activity;
.source "NexusActivity.java"


# instance fields
.field private cliOut:Ljava/io/OutputStream;

.field private cliProcess:Ljava/lang/Process;

.field private desktopArea:Landroid/widget/FrameLayout;

.field private isStartMenuOpen:Z

.field private rootLayout:Landroid/widget/RelativeLayout;

.field private settingsLayout:Landroid/widget/LinearLayout;

.field private startMenu:Landroid/widget/LinearLayout;

.field private terminalInput:Landroid/widget/EditText;

.field private terminalLayout:Landroid/widget/LinearLayout;

.field private terminalOutput:Landroid/widget/TextView;

.field private terminalScroll:Landroid/widget/ScrollView;

.field private timeHandler:Landroid/os/Handler;

.field private timeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->timeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/architit/radriloniuma/NexusActivity;->isStartMenuOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->bootstrapUbuntu()V

    return-void
.end method

.method static synthetic access$100(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->toggleStartMenu()V

    return-void
.end method

.method static synthetic access$1000(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/architit/radriloniuma/NexusActivity;)Ljava/lang/Process;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/architit/radriloniuma/NexusActivity;->timeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/architit/radriloniuma/NexusActivity;->timeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->openTerminalApp()V

    return-void
.end method

.method static synthetic access$300(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->openSettingsApp()V

    return-void
.end method

.method static synthetic access$400(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->closeSettingsApp()V

    return-void
.end method

.method static synthetic access$500(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->checkAndRequestPermissions()V

    return-void
.end method

.method static synthetic access$600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->updateStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->closeTerminalApp()V

    return-void
.end method

.method static synthetic access$900(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private appendOutput(Ljava/lang/String;)V
    .locals 1

    .line 469
    new-instance v0, Lcom/architit/radriloniuma/NexusActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/architit/radriloniuma/NexusActivity$12;-><init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bootstrapUbuntu()V
    .locals 7

    const-string v0, "bootstrap_ubuntu.sh"

    .line 540
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ubuntu"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "start_ubuntu.sh"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 548
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 551
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 552
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 556
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 558
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 560
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private buildOSLayout()V
    .locals 13

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootLayout:Landroid/widget/RelativeLayout;

    const-string v1, "#050608"

    .line 69
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v2, "#0a0b10"

    .line 75
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v2, 0x14

    const/16 v3, 0xa

    .line 76
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 77
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "RADRILONIUMA OS v00.00.00"

    .line 84
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "#9d00ff"

    .line 85
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v7, 0x41400000    # 12.0f

    .line 87
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/architit/radriloniuma/NexusActivity;->timeText:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v10, p0, Lcom/architit/radriloniuma/NexusActivity;->timeText:Landroid/widget/TextView;

    sget-object v11, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v10, p0, Lcom/architit/radriloniuma/NexusActivity;->timeText:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v4, p0, Lcom/architit/radriloniuma/NexusActivity;->timeText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 104
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v7, "#10121b"

    .line 105
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v7, 0x10

    .line 106
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x78

    invoke-direct {v7, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    .line 110
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u2756 START"

    .line 115
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "#00E5FF"

    .line 116
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 118
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v10, 0x1e

    .line 119
    invoke-virtual {v7, v10, v2, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v10, "#1a1b26"

    .line 120
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 121
    new-instance v10, Lcom/architit/radriloniuma/NexusActivity$2;

    invoke-direct {v10, p0}, Lcom/architit/radriloniuma/NexusActivity$2;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/architit/radriloniuma/NexusActivity;->desktopArea:Landroid/widget/FrameLayout;

    .line 130
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    .line 133
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v7, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    iget-object v10, p0, Lcom/architit/radriloniuma/NexusActivity;->desktopArea:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\ud83d\udd31\nSOVEREIGN\nMATRIX"

    .line 139
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "#111520"

    .line 140
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x42400000    # 48.0f

    .line 141
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v10, 0x11

    .line 142
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 144
    iget-object v10, p0, Lcom/architit/radriloniuma/NexusActivity;->desktopArea:Landroid/widget/FrameLayout;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v7, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v7, "#151620"

    .line 152
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 153
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v11, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v7, 0x8

    new-array v8, v7, [F

    .line 154
    fill-array-data v8, :array_0

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 155
    iget-object v8, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v5, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x1f4

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0x9

    .line 162
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 164
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$3;

    invoke-direct {v2, p0}, Lcom/architit/radriloniuma/NexusActivity$3;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    const-string v3, ">_ TERMINAL"

    invoke-direct {p0, v3, v2}, Lcom/architit/radriloniuma/NexusActivity;->createStartMenuItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    const-string v2, "\u2728 GEMINI CORE"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/architit/radriloniuma/NexusActivity;->createStartMenuItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    const-string v2, "\ud83e\udd16 AGENTS"

    invoke-direct {p0, v2, v3}, Lcom/architit/radriloniuma/NexusActivity;->createStartMenuItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$4;

    invoke-direct {v2, p0}, Lcom/architit/radriloniuma/NexusActivity$4;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    const-string v3, "\u2699\ufe0f SETTINGS"

    invoke-direct {p0, v3, v2}, Lcom/architit/radriloniuma/NexusActivity;->createStartMenuItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->desktopArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 190
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildTerminalLayout()V

    .line 191
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildSettingsLayout()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private buildSettingsLayout()V
    .locals 7

    .line 239
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    const-string v2, "#050608"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 242
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#10121b"

    .line 247
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0x14

    .line 248
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 250
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u2699 OS CONFIGURATION"

    .line 251
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 252
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 255
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, " \u2715 CLOSE "

    .line 259
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "#ff0055"

    .line 260
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 262
    new-instance v4, Lcom/architit/radriloniuma/NexusActivity$5;

    invoke-direct {v4, p0}, Lcom/architit/radriloniuma/NexusActivity$5;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 272
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x28

    .line 274
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v4, "SYSTEM & POWER"

    .line 277
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->createSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "Enable Background WakeLock (Keep OS Alive)"

    .line 279
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->createSettingToggle(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 280
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "Keep Screen On (Prevent Sleep)"

    .line 283
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->createSettingToggle(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 284
    new-instance v5, Lcom/architit/radriloniuma/NexusActivity$6;

    invoke-direct {v5, p0}, Lcom/architit/radriloniuma/NexusActivity$6;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "MATRIX INTEGRATION"

    .line 296
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->createSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "Auto-Boot Ubuntu Core on OS Startup"

    .line 298
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->createSettingToggle(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 299
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "Mount Device Storage (/sdcard) to Core"

    .line 302
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->createSettingToggle(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    .line 303
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "SYNC GITHUB TREES & AGENTS"

    .line 306
    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->createSettingAction(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 307
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "MAINTENANCE & SECURITY"

    .line 310
    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->createSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "GRANT MANAGE_EXTERNAL_STORAGE PERMISSION"

    .line 312
    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->createSettingAction(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 313
    new-instance v4, Lcom/architit/radriloniuma/NexusActivity$7;

    invoke-direct {v4, p0}, Lcom/architit/radriloniuma/NexusActivity$7;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "FLUSH TERMINAL BUFFER"

    .line 320
    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->createSettingAction(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 321
    new-instance v4, Lcom/architit/radriloniuma/NexusActivity$8;

    invoke-direct {v4, p0}, Lcom/architit/radriloniuma/NexusActivity$8;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "FACTORY RESET UBUNTU KERNEL"

    .line 329
    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->createSettingAction(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    const-string v4, "#330011"

    .line 330
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 331
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 332
    new-instance v3, Lcom/architit/radriloniuma/NexusActivity$9;

    invoke-direct {v3, p0}, Lcom/architit/radriloniuma/NexusActivity$9;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildTerminalLayout()V
    .locals 9

    .line 390
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 392
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    const-string v2, "#080a0f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 393
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#1a1b26"

    .line 398
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0xf

    .line 399
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 401
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Terminal"

    .line 402
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    .line 403
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 405
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, " \u2715 "

    .line 409
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, -0x10000

    .line 410
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 412
    new-instance v6, Lcom/architit/radriloniuma/NexusActivity$10;

    invoke-direct {v6, p0}, Lcom/architit/radriloniuma/NexusActivity$10;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    iget-object v4, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    .line 423
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 424
    iget-object v4, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    const-string v4, "#e2e8f0"

    .line 427
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 430
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 431
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#0a0b10"

    .line 437
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0xa

    .line 438
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 440
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "root@os:~# "

    .line 441
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#00f0ff"

    .line 442
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 444
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    .line 447
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 448
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 449
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 451
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 452
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 454
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$11;

    invoke-direct {v2, p0}, Lcom/architit/radriloniuma/NexusActivity$11;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 464
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkAndRequestPermissions()V
    .locals 6

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.CAMERA"

    .line 578
    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v5, "android.permission.RECORD_AUDIO"

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 580
    invoke-virtual {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    aput-object v5, v1, v2

    const/4 v0, 0x2

    aput-object v4, v1, v0

    const/4 v0, 0x3

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v1, v0

    const/16 v0, 0x64

    .line 581
    invoke-virtual {p0, v1, v0}, Lcom/architit/radriloniuma/NexusActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 590
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 591
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8f8

    .line 593
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.DEFAULT"

    .line 594
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "package:%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 595
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v1, v0}, Lcom/architit/radriloniuma/NexusActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0, v1, v0}, Lcom/architit/radriloniuma/NexusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private closeSettingsApp()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private closeTerminalApp()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private createSectionTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 355
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#00E5FF"

    .line 357
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 359
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x28

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 360
    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private createSettingAction(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 375
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 377
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 378
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const-string v1, "#10121b"

    .line 380
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 381
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    const/16 v2, 0xa

    .line 384
    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createSettingToggle(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 2

    .line 365
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 367
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 368
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 369
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextSize(F)V

    const/16 p1, 0xa

    const/16 v1, 0xf

    .line 370
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/CheckBox;->setPadding(IIII)V

    return-object v0
.end method

.method private createStartMenuItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 1

    .line 195
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x1e

    .line 200
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private openSettingsApp()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->desktopArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->settingsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private openTerminalApp()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->desktopArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->startNativeTerminal()V

    :cond_1
    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\n"

    const-string v1, "root@os:~# "

    .line 484
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 486
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 488
    iget-object p1, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n[ERROR] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private startClock()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->timeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$15;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$15;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startNativeTerminal()V
    .locals 5

    const-string v0, "sh "

    .line 497
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "start_ubuntu.sh"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \"/bin/bash\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sh"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    .line 501
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    .line 503
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$13;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$13;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 516
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$14;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$14;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "[SYS] Native Terminal Link Established.\n\n"

    .line 529
    invoke-direct {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "[CRITICAL] OS Bootstrapping in progress. Please wait.\n"

    .line 531
    invoke-direct {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CRITICAL ERROR] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private toggleStartMenu()V
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/architit/radriloniuma/NexusActivity;->isStartMenuOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/architit/radriloniuma/NexusActivity;->isStartMenuOpen:Z

    .line 207
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->startMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateStatus(Ljava/lang/String;)V
    .locals 1

    .line 607
    new-instance v0, Lcom/architit/radriloniuma/NexusActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/architit/radriloniuma/NexusActivity$16;-><init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildOSLayout()V

    .line 52
    iget-object p1, p0, Lcom/architit/radriloniuma/NexusActivity;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->checkAndRequestPermissions()V

    .line 57
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->startClock()V

    .line 58
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/architit/radriloniuma/NexusActivity$1;

    invoke-direct {v0, p0}, Lcom/architit/radriloniuma/NexusActivity$1;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
