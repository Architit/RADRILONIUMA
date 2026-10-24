.class public Lcom/architit/radriloniuma/NexusActivity;
.super Landroid/app/Activity;
.source "NexusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/architit/radriloniuma/NexusActivity$OrganItem;
    }
.end annotation


# instance fields
.field private activeTab:I

.field private allOrgans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/architit/radriloniuma/NexusActivity$OrganItem;",
            ">;"
        }
    .end annotation
.end field

.field private cliIn:Ljava/io/BufferedReader;

.field private cliOut:Ljava/io/OutputStream;

.field private cliProcess:Ljava/lang/Process;

.field private clockTicker:Ljava/lang/Runnable;

.field private contentFrame:Landroid/widget/FrameLayout;

.field private dockButtons:[Landroid/widget/Button;

.field private mainHandler:Landroid/os/Handler;

.field private nodesCardsLayout:Landroid/widget/LinearLayout;

.field private nodesView:Landroid/widget/ScrollView;

.field private organsListLayout:Landroid/widget/LinearLayout;

.field private organsViewContainer:Landroid/widget/LinearLayout;

.field private rootContainer:Landroid/widget/FrameLayout;

.field private securityCardsLayout:Landroid/widget/LinearLayout;

.field private securityView:Landroid/widget/ScrollView;

.field private selectedDeckFilter:Ljava/lang/String;

.field private subtitleText:Landroid/widget/TextView;

.field private terminalInput:Landroid/widget/EditText;

.field private terminalOutput:Landroid/widget/TextView;

.field private terminalScroll:Landroid/widget/ScrollView;

.field private terminalViewContainer:Landroid/widget/LinearLayout;

.field private timeTelemetryText:Landroid/widget/TextView;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/architit/radriloniuma/NexusActivity;->activeTab:I

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->dockButtons:[Landroid/widget/Button;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->allOrgans:Ljava/util/List;

    .line 92
    const-string v0, "ALL"

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->selectedDeckFilter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/architit/radriloniuma/NexusActivity;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->switchTab(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/architit/radriloniuma/NexusActivity;)Ljava/io/BufferedReader;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliIn:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/architit/radriloniuma/NexusActivity;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity;->cliIn:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/architit/radriloniuma/NexusActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->updateSecurityStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/architit/radriloniuma/NexusActivity;)I
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getBatteryPercentage()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/architit/radriloniuma/NexusActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getLiveRamCompact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity;->selectedDeckFilter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->populateOrgansList()V

    return-void
.end method

.method static synthetic access$400(Lcom/architit/radriloniuma/NexusActivity;Lcom/architit/radriloniuma/NexusActivity$OrganItem;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->showOrganDetailDialog(Lcom/architit/radriloniuma/NexusActivity$OrganItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/NexusActivity;->executeCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/architit/radriloniuma/NexusActivity;)Ljava/lang/Process;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$802(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    return-object p1
.end method

.method static synthetic access$902(Lcom/architit/radriloniuma/NexusActivity;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method private addNodeCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 454
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 455
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 456
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 458
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 459
    const-string v2, "#091d12"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 460
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#1a4c2a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 461
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 462
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 471
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 473
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NODE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 477
    const/high16 v3, 0x41380000    # 11.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 479
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 480
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 486
    const/high16 v4, 0x41180000    # 9.5f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 489
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ROLE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const-string v2, "#2dd4bf"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 498
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 499
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 500
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    const-string v2, "#cbd5e1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 507
    const/high16 v2, 0x41180000    # 9.5f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 508
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 509
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const-string v2, "#94a3b8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 516
    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 517
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 518
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    return-void
.end method

.method private addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v3, 0xa

    const/16 v4, 0x8

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1032
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1033
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1034
    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1036
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1037
    const-string v2, "#091d11"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1038
    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#1a4c2a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1039
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1040
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1044
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1045
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1048
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1050
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1051
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1053
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1054
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1055
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1056
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1061
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1062
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1064
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1065
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1066
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1068
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1069
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    const-string v2, "#94a3b8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1071
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1072
    const/high16 v2, 0x41180000    # 9.5f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1073
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1074
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1077
    return-void
.end method

.method private buildBottomDock()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 261
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 263
    const-string v0, "#08140c"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 264
    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v0

    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 266
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 267
    const-string v3, "#07120a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 268
    invoke-direct {p0, v9}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const-string v4, "#1a4527"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 269
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "[ 01: \u0423\u0417\u041b\u042b ]"

    aput-object v0, v3, v1

    const-string v0, "[ 02: 68 \u041e\u0420\u0413\u0410\u041d\u041e\u0412 ]"

    aput-object v0, v3, v9

    const-string v0, "[ 03: \u0422\u0415\u0420\u041c\u0418\u041d\u0410\u041b ]"

    aput-object v0, v3, v10

    const/4 v0, 0x3

    const-string v4, "[ 04: \u0417\u0410\u0429\u0418\u0422\u0410 ]"

    aput-object v4, v3, v0

    move v0, v1

    .line 278
    :goto_0
    if-ge v0, v8, :cond_0

    .line 280
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 281
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 283
    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 284
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 285
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    invoke-virtual {v4, v1, v5, v1, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 286
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 287
    invoke-direct {p0, v10}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    invoke-direct {p0, v10}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v7

    invoke-virtual {v5, v6, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v5, Lcom/architit/radriloniuma/NexusActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/architit/radriloniuma/NexusActivity$1;-><init>(Lcom/architit/radriloniuma/NexusActivity;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v5, p0, Lcom/architit/radriloniuma/NexusActivity;->dockButtons:[Landroid/widget/Button;

    aput-object v4, v5, v0

    .line 298
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object v2
.end method

.method private buildHeaderHUD()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x6

    const/4 v8, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    const-string v1, "#0a1a10"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 207
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 209
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 210
    const-string v2, "#09170e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 211
    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#1b4728"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 219
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    .line 220
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    const-string v3, "RADRILONIUMA OS 2026.10.24"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 223
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    const/high16 v3, 0x41480000    # 12.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 225
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 226
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    .line 229
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    const-string v3, "2026-10-24 --:--:--"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    const-string v3, "#facc15"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 232
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    const/high16 v3, 0x41280000    # 10.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 235
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->timeTelemetryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 243
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 245
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    .line 246
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    const-string v3, "528 Hz LOCKED | CARRIER: 528 Hz / 432 Hz"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    const-string v3, "#2dd4bf"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    const/high16 v3, 0x41180000    # 9.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 250
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 251
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 252
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    return-object v0
.end method

.method private buildMasterCockpitUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 161
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootContainer:Landroid/widget/FrameLayout;

    .line 162
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootContainer:Landroid/widget/FrameLayout;

    const-string v1, "#061009"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 165
    new-instance v0, Lcom/architit/radriloniuma/ResonantCanvasView;

    invoke-direct {v0, p0}, Lcom/architit/radriloniuma/ResonantCanvasView;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->rootContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildHeaderHUD()Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    .line 179
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 181
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildBottomDock()Landroid/view/View;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->rootContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->rootContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->setContentView(Landroid/view/View;)V

    .line 194
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildNodesTabView()V

    .line 195
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildOrgansTabView()V

    .line 196
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildTerminalTabView()V

    .line 197
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildSecurityTabView()V

    .line 200
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->switchTab(I)V

    .line 201
    return-void
.end method

.method private buildNodesTabView()V
    .locals 5

    .prologue
    const/16 v3, 0xc

    const/16 v4, 0xa

    const/4 v2, -0x1

    .line 345
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesView:Landroid/widget/ScrollView;

    .line 346
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesView:Landroid/widget/ScrollView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesView:Landroid/widget/ScrollView;

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 350
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    .line 351
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 352
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 353
    return-void
.end method

.method private buildOrgansTabView()V
    .locals 12

    .prologue
    .line 525
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    .line 526
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 527
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 532
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 533
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 535
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 536
    const-string v2, "// 68 MCP ORGANS DIRECTORY (SLOTS 001 - 068)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const-string v2, "#2dd4bf"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 539
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 541
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 542
    const-string v3, "Manifest: 2026.18.10.03.37.23 | 5 Decks: core, lam, hardware, portals, special"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const-string v3, "#a3e635"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 545
    const/high16 v3, 0x41180000    # 9.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 553
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 554
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 555
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 557
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "ALL"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "CORE"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "LAM"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "HARDWARE"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "PORTALS"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "SPECIAL"

    aput-object v4, v3, v0

    .line 558
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 559
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 560
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 562
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 563
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v9

    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 565
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 566
    const-string v8, "#0e2a19"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 567
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    const-string v9, "#1c5632"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 568
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 569
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    const-string v7, "#22c55e"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 572
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 574
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 575
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    new-instance v7, Lcom/architit/radriloniuma/NexusActivity$2;

    invoke-direct {v7, p0, v5}, Lcom/architit/radriloniuma/NexusActivity$2;-><init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 587
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 592
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 596
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsListLayout:Landroid/widget/LinearLayout;

    .line 597
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsListLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 600
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->populateOrgansList()V

    .line 603
    return-void
.end method

.method private buildSecurityTabView()V
    .locals 5

    .prologue
    const/16 v3, 0xc

    const/16 v4, 0xa

    const/4 v2, -0x1

    .line 916
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityView:Landroid/widget/ScrollView;

    .line 917
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityView:Landroid/widget/ScrollView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityView:Landroid/widget/ScrollView;

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 921
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    .line 922
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 923
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 924
    return-void
.end method

.method private buildTerminalTabView()V
    .locals 12

    .prologue
    .line 718
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    .line 719
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 720
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 725
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 726
    const-string v1, "// NATIVE INTERACTIVE SHELL (/system/bin/sh)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    const-string v1, "#2dd4bf"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 729
    const/high16 v1, 0x41380000    # 11.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 730
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 734
    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 735
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 736
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 738
    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "id"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "uname -a"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "df -h"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "ps -A"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "netstat"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "ip a"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "clear"

    aput-object v4, v3, v0

    .line 739
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 740
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 741
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 742
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 743
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 744
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v9

    const/4 v10, 0x3

    invoke-direct {p0, v10}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 746
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 747
    const-string v8, "#0e2818"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 748
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    const-string v9, "#1c542f"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 749
    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 750
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 751
    const-string v7, "#22c55e"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 753
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 755
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 756
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    new-instance v7, Lcom/architit/radriloniuma/NexusActivity$4;

    invoke-direct {v7, p0, v5}, Lcom/architit/radriloniuma/NexusActivity$4;-><init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 771
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    .line 776
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 778
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 781
    const-string v1, "#030a05"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 782
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    const-string v2, "#184525"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 783
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 784
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 787
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    .line 788
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    const-string v1, "#22c55e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 789
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 790
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    const/high16 v1, 0x41280000    # 10.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 791
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    const-string v1, "RADRILONIUMA OS [Version 2026.10.24-SOVEREIGN]\n(c) Architit living cluster substrate. All rights reserved.\nShell connected to /system/bin/sh\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 793
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 797
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 798
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 800
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    .line 801
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const-string v2, "sh> enter command..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const-string v2, "#375540"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 803
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const-string v2, "#22c55e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 804
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 805
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const/high16 v2, 0x41380000    # 11.5f

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 806
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 807
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 809
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 810
    const-string v2, "#07190e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 811
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#1b522b"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 812
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 813
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 815
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 816
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 819
    const-string v2, "RUN"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 820
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 821
    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 822
    const-string v2, "#061009"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 824
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 825
    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 826
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 827
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 829
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 831
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 832
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$5;

    invoke-direct {v2, p0}, Lcom/architit/radriloniuma/NexusActivity$5;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 846
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 848
    return-void
.end method

.method private checkAllFilesAccess()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 1022
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v2, "isExternalStorageManager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1023
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1028
    :goto_0
    return v0

    .line 1024
    :catch_0
    move-exception v0

    move v0, v1

    .line 1025
    goto :goto_0

    .line 1028
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 9

    .prologue
    const/4 v3, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 433
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 437
    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 438
    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 440
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 441
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 442
    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 443
    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 447
    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 448
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 450
    return-object v0
.end method

.method private dpToPx(I)I
    .locals 2

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1196
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private executeCommand(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 903
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_1
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalOutput:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Write Error]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getBatteryPercentage()I
    .locals 4

    .prologue
    .line 1105
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1106
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/architit/radriloniuma/NexusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_0

    .line 1108
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1109
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1110
    if-ltz v1, :cond_0

    if-lez v0, :cond_0

    .line 1111
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1115
    :goto_0
    return v0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private getLiveBatteryInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getBatteryPercentage()I

    move-result v0

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% (Hardware Managed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLiveIpAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1167
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 1169
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1170
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1171
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1172
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1173
    if-eqz v1, :cond_1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1180
    :goto_0
    return-object v0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    :cond_2
    const-string v0, "127.0.0.1 (Loopback)"

    goto :goto_0
.end method

.method private getLiveRamCompact()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1125
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1126
    if-eqz v0, :cond_0

    .line 1127
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1128
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1129
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    .line 1130
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1134
    :goto_0
    return-object v0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    :cond_0
    const-string v0, "OK"

    goto :goto_0
.end method

.method private getLiveRamInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1139
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1140
    if-eqz v0, :cond_0

    .line 1141
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1142
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1143
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x40000000

    div-long/2addr v2, v4

    .line 1144
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v4, 0x40000000

    div-long/2addr v0, v4

    .line 1145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GB / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1148
    :goto_0
    return-object v0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    :cond_0
    const-string v0, "Available"

    goto :goto_0
.end method

.method private getLiveStorageInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1153
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1154
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 1156
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    .line 1157
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    .line 1158
    mul-long/2addr v4, v2

    const-wide/32 v6, 0x40000000

    div-long/2addr v4, v6

    .line 1159
    mul-long/2addr v0, v2

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GB free / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GB total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1162
    :goto_0
    return-object v0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    const-string v0, "Storage OK"

    goto :goto_0
.end method

.method private initNativeTerminal()V
    .locals 2

    .prologue
    .line 851
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$6;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$6;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 894
    return-void
.end method

.method private loadOrgansManifest()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "organs_manifest.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 119
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 120
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v0, "organs"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_4

    move v0, v3

    .line 126
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 127
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 129
    new-instance v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/architit/radriloniuma/NexusActivity$OrganItem;-><init>(Lcom/architit/radriloniuma/NexusActivity$1;)V

    .line 130
    const-string v8, "slot"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v0, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->slot:Ljava/lang/String;

    .line 131
    const-string v8, "organ_id"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->organId:Ljava/lang/String;

    .line 132
    const-string v8, "name"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->name:Ljava/lang/String;

    .line 133
    const-string v8, "slug"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->slug:Ljava/lang/String;

    .line 134
    const-string v8, "tool_name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enqueue_task_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->toolName:Ljava/lang/String;

    .line 135
    const-string v5, "resonance"

    const-string v8, "528 Hz"

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->resonance:Ljava/lang/String;

    .line 136
    const-string v5, "deck"

    const-string v8, "core"

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->deck:Ljava/lang/String;

    .line 137
    const-string v5, "status"

    const-string v8, "ONLINE"

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->status:Ljava/lang/String;

    .line 138
    const-string v5, "version"

    const-string v8, "2026.18.10.03.37.23"

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->version:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/architit/radriloniuma/NexusActivity;->allOrgans:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    move v1, v2

    .line 145
    :goto_1
    const/16 v0, 0x44

    if-gt v1, v0, :cond_4

    .line 146
    new-instance v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;

    invoke-direct {v4, v14}, Lcom/architit/radriloniuma/NexusActivity$OrganItem;-><init>(Lcom/architit/radriloniuma/NexusActivity$1;)V

    .line 147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->slot:Ljava/lang/String;

    .line 148
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "ORGAN_%02d_SUBSTRATE_CORE"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->organId:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cluster Organ #"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->name:Ljava/lang/String;

    .line 150
    const/16 v0, 0xc

    if-gt v1, v0, :cond_0

    const-string v0, "core"

    :goto_2
    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->deck:Ljava/lang/String;

    .line 151
    const-string v0, "528 Hz"

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->resonance:Ljava/lang/String;

    .line 152
    const-string v0, "ONLINE"

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->status:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueue_task_organ_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->toolName:Ljava/lang/String;

    .line 154
    const-string v0, "2026.18.10.03.37.23"

    iput-object v0, v4, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->version:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->allOrgans:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 150
    :cond_0
    const/16 v0, 0x1a

    if-gt v1, v0, :cond_1

    const-string v0, "lam"

    goto :goto_2

    :cond_1
    const/16 v0, 0x28

    if-gt v1, v0, :cond_2

    const-string v0, "hardware"

    goto :goto_2

    :cond_2
    const/16 v0, 0x36

    if-gt v1, v0, :cond_3

    const-string v0, "portals"

    goto :goto_2

    :cond_3
    const-string v0, "special"

    goto :goto_2

    .line 158
    :cond_4
    return-void
.end method

.method private populateOrgansList()V
    .locals 15

    .prologue
    const/high16 v14, 0x41180000    # 9.5f

    const/16 v13, 0x8

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 606
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->organsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 609
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->allOrgans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;

    .line 610
    iget-object v4, p0, Lcom/architit/radriloniuma/NexusActivity;->selectedDeckFilter:Ljava/lang/String;

    const-string v5, "ALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 611
    iget-object v4, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->deck:Ljava/lang/String;

    iget-object v5, p0, Lcom/architit/radriloniuma/NexusActivity;->selectedDeckFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 617
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 618
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 619
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v5

    invoke-direct {p0, v13}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v7

    invoke-direct {p0, v13}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 621
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 622
    const-string v6, "#081c10"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 623
    invoke-direct {p0, v11}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    const-string v7, "#184c28"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 624
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 625
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 629
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    invoke-direct {p0, v12}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v7

    invoke-virtual {v5, v2, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 630
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 634
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 636
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 637
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SLOT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->slot:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const-string v7, "#facc15"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 640
    const/high16 v7, 0x41280000    # 10.5f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 642
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->organId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const-string v8, "#22c55e"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 645
    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 646
    const/high16 v8, 0x41280000    # 10.5f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 647
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 648
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 651
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->resonance:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ONLINE]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const-string v9, "#2dd4bf"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 654
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 656
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 663
    iget-object v6, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    const-string v6, "#e2e8f0"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 666
    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 667
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 668
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 671
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DECK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->deck:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | TOOL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->toolName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    const-string v6, "#64748b"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 675
    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 676
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 677
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    new-instance v5, Lcom/architit/radriloniuma/NexusActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/architit/radriloniuma/NexusActivity$3;-><init>(Lcom/architit/radriloniuma/NexusActivity;Lcom/architit/radriloniuma/NexusActivity$OrganItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->organsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 690
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// TOTAL DISPLAYED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / 68 ORGANS (CARRIER 528 Hz / 432 Hz)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    const-string v1, "#4ade80"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 693
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 694
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 695
    invoke-direct {p0, v12}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v13}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v12}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 696
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 697
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    return-void
.end method

.method private requestCorePermissions()V
    .locals 4

    .prologue
    .line 1185
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1189
    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showOrganDetailDialog(Lcom/architit/radriloniuma/NexusActivity$OrganItem;)V
    .locals 3

    .prologue
    .line 701
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 702
    iget-object v1, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->organId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSLOT: SLOT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDECK CLASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->deck:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRESONANCE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->resonance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSTATUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nMCP TOOL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/architit/radriloniuma/NexusActivity$OrganItem;->toolName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPROTOCOL: SOVEREIGN LIVING COCON MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 712
    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 714
    return-void
.end method

.method private startTelemetryLoop()V
    .locals 2

    .prologue
    .line 1081
    new-instance v0, Lcom/architit/radriloniuma/NexusActivity$8;

    invoke-direct {v0, p0}, Lcom/architit/radriloniuma/NexusActivity$8;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->clockTicker:Ljava/lang/Runnable;

    .line 1100
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->clockTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    return-void
.end method

.method private switchTab(I)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 305
    iput p1, p0, Lcom/architit/radriloniuma/NexusActivity;->activeTab:I

    .line 306
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 308
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    .line 309
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 310
    if-ne v0, p1, :cond_0

    .line 311
    const-string v2, "#163d23"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 312
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 313
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->dockButtons:[Landroid/widget/Button;

    aget-object v2, v2, v0

    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    :goto_1
    invoke-direct {p0, v5}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 320
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->dockButtons:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const-string v2, "#0d2415"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 316
    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#163d23"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 317
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity;->dockButtons:[Landroid/widget/Button;

    aget-object v2, v2, v0

    const-string v3, "#528263"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 323
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_2
    return-void

    .line 325
    :pswitch_0
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->updateNodesData()V

    .line 326
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->organsViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 332
    :pswitch_2
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->terminalViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 335
    :pswitch_3
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->updateSecurityStatus()V

    .line 336
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->securityView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateNodesData()V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 356
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 359
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 361
    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 363
    const-string v2, "#091d11"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 364
    invoke-direct {p0, v8}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    const-string v3, "#1e5630"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 365
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    const-string v1, "\u0421\u041a\u041e\u041b\u0410\u0420\u0422: 1% GOD SEED"

    const-string v2, "#facc15"

    const-string v3, "#1c1800"

    invoke-direct {p0, v1, v2, v3}, Lcom/architit/radriloniuma/NexusActivity;->createBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 369
    const-string v2, "\u041b\u042e\u041c\u0415\u0420\u0418\u041a: 24% ANGEL"

    const-string v3, "#2dd4bf"

    const-string v4, "#00201c"

    invoke-direct {p0, v2, v3, v4}, Lcom/architit/radriloniuma/NexusActivity;->createBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 370
    const-string v3, "\u041c\u0418\u0420\u0410\u0428\u0410\u041d\u0418: 75% DEMON"

    const-string v4, "#22c55e"

    const-string v5, "#031d0b"

    invoke-direct {p0, v3, v4, v5}, Lcom/architit/radriloniuma/NexusActivity;->createBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    const-string v1, "// 5 HARDWARE CLUSTER NODES \u2022 LIVING MATRIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const-string v1, "#2dd4bf"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 382
    const/high16 v1, 0x41380000    # 11.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 383
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v1

    invoke-direct {p0, v7}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v2

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 384
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->nodesCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    const-string v1, "DEV_01_BUSHMASTER"

    const-string v2, "MASTER_OPERATOR_STATION"

    const-string v3, "Windows 11 Host PC (Intel/AMD x86_64)"

    const-string v4, "CWD: C:\\Users\\BushM | ADB Bridge: tcp:5037"

    const-string v5, "ONLINE [HOST]"

    const-string v6, "#22c55e"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/architit/radriloniuma/NexusActivity;->addNodeCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getLiveBatteryInfo()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getLiveRamInfo()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getLiveStorageInfo()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->getLiveIpAddress()Ljava/lang/String;

    move-result-object v6

    .line 400
    const-string v1, "DEV_02_ATESIRT"

    const-string v2, "AUTONOMOUS_MOBILE_EDGE_NODE"

    const-string v3, "Samsung Galaxy A26 5G (SM-A266B / RZCY80G86FP)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BATTERY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " | RAM: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\nSTORAGE: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\nIP: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ONLINE [ACTIVE]"

    const-string v6, "#22c55e"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/architit/radriloniuma/NexusActivity;->addNodeCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "DEV_03_UBUNTU_WSL2"

    const-string v2, "LIVING_KERNEL_SUBSTRATE"

    const-string v3, "Ubuntu 24.04 LTS Substrate (/root/RADRILONIUMA)"

    const-string v4, "ORGANS: 68/68 Online | PM2: 8 Daemons Active\nCARRIER: 528 Hz Solfeggio / 432 Hz Baseline"

    const-string v5, "ONLINE [KERNEL]"

    const-string v6, "#22c55e"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/architit/radriloniuma/NexusActivity;->addNodeCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v1, "DEV_04_SAMSUNG_T7_VAULT"

    const-string v2, "PERMANENT_HARDWARE_VAULT_1TB"

    const-string v3, "Samsung PSSD T7 1TB (NTFS)"

    const-string v4, "MOUNT: F:\\ / /mnt/f | Genesis Seed Mirror: SECURED"

    const-string v5, "SECURED [VAULT]"

    const-string v6, "#2dd4bf"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/architit/radriloniuma/NexusActivity;->addNodeCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "DEV_05_LAO_SWARM_MATRIX"

    const-string v2, "528-SLOT LIVING ORGANISM CORE"

    const-string v3, "Carrier Frequencies: 528 Hz / 432 Hz"

    const-string v4, "SWARM: Self-healing Autonomous Mesh | Quorum: 5/5 Synchronized"

    const-string v5, "RESONATING [528Hz]"

    const-string v6, "#facc15"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/architit/radriloniuma/NexusActivity;->addNodeCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private updateSecurityStatus()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 927
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 929
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 930
    const-string v3, "// CROSS-NODE PERMISSIONS & SECURITY AUDIT"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    const-string v3, "#2dd4bf"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 933
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 934
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 935
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 938
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->checkAllFilesAccess()Z

    move-result v4

    .line 939
    const-string v5, "MANAGE_EXTERNAL_STORAGE"

    const-string v6, "Full filesystem access to /sdcard and cluster seeds"

    .line 941
    if-eqz v4, :cond_0

    const-string v0, "GRANTED [UPHEALED]"

    move-object v3, v0

    .line 942
    :goto_0
    if-eqz v4, :cond_1

    const-string v0, "#22c55e"

    .line 939
    :goto_1
    invoke-direct {p0, v5, v6, v3, v0}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    .line 946
    const-string v5, "SYSTEM_ALERT_WINDOW"

    const-string v6, "LAM Floating Service & HUD overlay capability"

    .line 948
    if-eqz v4, :cond_2

    const-string v0, "GRANTED [UPHEALED]"

    move-object v3, v0

    .line 949
    :goto_2
    if-eqz v4, :cond_3

    const-string v0, "#22c55e"

    .line 946
    :goto_3
    invoke-direct {p0, v5, v6, v3, v0}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 954
    if-eqz v0, :cond_9

    .line 955
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    .line 957
    :goto_4
    const-string v4, "DEVICEIDLE_WHITELIST"

    const-string v5, "Unrestricted background execution without sleep"

    .line 959
    if-eqz v0, :cond_4

    const-string v3, "WHITELISTED [UPHEALED]"

    .line 960
    :goto_5
    if-eqz v0, :cond_5

    const-string v0, "#22c55e"

    .line 957
    :goto_6
    invoke-direct {p0, v4, v5, v3, v0}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_8

    .line 966
    :try_start_0
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "canRequestPackageInstalls"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 967
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 970
    :goto_7
    const-string v4, "REQUEST_INSTALL_PACKAGES"

    const-string v5, "Autonomous updates of cluster nodes & organs"

    .line 972
    if-eqz v0, :cond_6

    const-string v3, "GRANTED [UPHEALED]"

    .line 973
    :goto_8
    if-eqz v0, :cond_7

    const-string v0, "#22c55e"

    .line 970
    :goto_9
    invoke-direct {p0, v4, v5, v3, v0}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v0, "INTERACTION_PROTOCOL"

    const-string v3, "Mandates M0, M0.1, M0.2, M49 Cross-Node Active"

    const-string v4, "LOCKED_ENFORCED"

    const-string v5, "#22c55e"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v0, "KERNEL_BOUNDARY_CONTRACT"

    const-string v3, "Controlled Execution Mode active on 528 Hz carrier"

    const-string v4, "LOCKED_ENFORCED"

    const-string v5, "#22c55e"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v0, "GLOBAL_PERMISSIONS_MATRIX"

    const-string v3, "Cross-node security bridge: DEV_01 <-> DEV_02 verified"

    const-string v4, "SYNCHRONIZED"

    const-string v5, "#2dd4bf"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/architit/radriloniuma/NexusActivity;->addPermissionCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 993
    const-string v3, ">> EXECUTE PROTOCOL AUDIT & UPHEAL <<"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 994
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 995
    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 996
    const-string v2, "#061009"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 998
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 999
    const-string v3, "#22c55e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1000
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1001
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1005
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/architit/radriloniuma/NexusActivity;->dpToPx(I)I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1006
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$7;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$7;-><init>(Lcom/architit/radriloniuma/NexusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->securityCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1017
    return-void

    .line 941
    :cond_0
    const-string v0, "RESTRICTED"

    move-object v3, v0

    goto/16 :goto_0

    .line 942
    :cond_1
    const-string v0, "#ef4444"

    goto/16 :goto_1

    .line 948
    :cond_2
    const-string v0, "RESTRICTED"

    move-object v3, v0

    goto/16 :goto_2

    .line 949
    :cond_3
    const-string v0, "#ef4444"

    goto/16 :goto_3

    .line 959
    :cond_4
    const-string v3, "OPTIMIZED"

    goto/16 :goto_5

    .line 960
    :cond_5
    const-string v0, "#facc15"

    goto/16 :goto_6

    .line 968
    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_7

    .line 972
    :cond_6
    const-string v3, "RESTRICTED"

    goto/16 :goto_8

    .line 973
    :cond_7
    const-string v0, "#facc15"

    goto/16 :goto_9

    :cond_8
    move v0, v2

    goto/16 :goto_7

    :cond_9
    move v0, v1

    goto/16 :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/architit/radriloniuma/NexusActivity;->requestWindowFeature(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/architit/radriloniuma/NexusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->mainHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->loadOrgansManifest()V

    .line 108
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->initNativeTerminal()V

    .line 109
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->buildMasterCockpitUI()V

    .line 110
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->startTelemetryLoop()V

    .line 111
    invoke-direct {p0}, Lcom/architit/radriloniuma/NexusActivity;->requestCorePermissions()V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1202
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->clockTicker:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity;->clockTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity;->cliProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :cond_1
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v0

    goto :goto_0
.end method
