.class public Lcom/architit/radriloniuma/ResonantCanvasView;
.super Landroid/view/View;
.source "ResonantCanvasView.java"


# instance fields
.field private animating:Z

.field private circlePaint:Landroid/graphics/Paint;

.field private cornerPaint:Landroid/graphics/Paint;

.field private gridPaint:Landroid/graphics/Paint;

.field private pulsePaint:Landroid/graphics/Paint;

.field private pulsePhase:F

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->animating:Z

    .line 22
    invoke-direct {p0}, Lcom/architit/radriloniuma/ResonantCanvasView;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    const-string v1, "#0e2918"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    const-string v1, "#164526"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    const-string v1, "#22c55e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    const-string v1, "#22c55e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    const-string v1, "#1a5930"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0}, Lcom/architit/radriloniuma/ResonantCanvasView;->getWidth()I

    move-result v8

    .line 63
    invoke-virtual {p0}, Lcom/architit/radriloniuma/ResonantCanvasView;->getHeight()I

    move-result v9

    .line 64
    if-lez v8, :cond_0

    if-gtz v9, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v0, "#061009"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 70
    const/16 v7, 0x78

    .line 71
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_2

    .line 72
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    int-to-float v4, v9

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    add-int v0, v6, v7

    move v6, v0

    goto :goto_1

    .line 74
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, v9, :cond_3

    .line 75
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v8

    int-to-float v4, v6

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    add-int v0, v6, v7

    move v6, v0

    goto :goto_2

    .line 79
    :cond_3
    int-to-float v0, v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 80
    int-to-float v0, v9

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 82
    const/high16 v0, 0x430c0000    # 140.0f

    iget-object v1, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    const/high16 v0, 0x438c0000    # 280.0f

    iget-object v1, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    const/high16 v0, 0x43d20000    # 420.0f

    iget-object v1, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    const/high16 v0, 0x430c0000    # 140.0f

    iget v1, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 88
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    iget v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 89
    const/16 v2, 0x14

    if-ge v0, v2, :cond_4

    const/16 v0, 0x14

    .line 90
    :cond_4
    const/16 v2, 0x78

    if-le v0, v2, :cond_5

    const/16 v0, 0x78

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    iget-object v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    const/high16 v0, 0x43480000    # 200.0f

    sub-float v1, v6, v0

    const/high16 v0, 0x43480000    # 200.0f

    sub-float v2, v7, v0

    const/high16 v0, 0x43480000    # 200.0f

    add-float v3, v6, v0

    const/high16 v0, 0x43480000    # 200.0f

    add-float v4, v7, v0

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    const/high16 v0, 0x43480000    # 200.0f

    sub-float v1, v6, v0

    const/high16 v0, 0x43480000    # 200.0f

    add-float v2, v7, v0

    const/high16 v0, 0x43480000    # 200.0f

    add-float v3, v6, v0

    const/high16 v0, 0x43480000    # 200.0f

    sub-float v4, v7, v0

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->gridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/high16 v10, 0x42200000    # 40.0f

    .line 100
    const/high16 v1, 0x41c00000    # 24.0f

    .line 102
    add-float v3, v1, v10

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    add-float v4, v1, v10

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    int-to-float v0, v8

    sub-float/2addr v0, v1

    sub-float v3, v0, v10

    int-to-float v0, v8

    sub-float v5, v0, v1

    iget-object v7, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    int-to-float v0, v8

    sub-float v3, v0, v1

    int-to-float v0, v8

    sub-float v5, v0, v1

    add-float v6, v1, v10

    iget-object v7, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 108
    int-to-float v0, v9

    sub-float v2, v0, v1

    add-float v3, v1, v10

    int-to-float v0, v9

    sub-float v4, v0, v1

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    int-to-float v0, v9

    sub-float/2addr v0, v1

    sub-float v2, v0, v10

    int-to-float v0, v9

    sub-float v4, v0, v1

    iget-object v5, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    int-to-float v0, v8

    sub-float/2addr v0, v1

    sub-float v3, v0, v10

    int-to-float v0, v9

    sub-float v4, v0, v1

    int-to-float v0, v8

    sub-float v5, v0, v1

    int-to-float v0, v9

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    int-to-float v0, v8

    sub-float v3, v0, v1

    int-to-float v0, v9

    sub-float/2addr v0, v1

    sub-float v4, v0, v10

    int-to-float v0, v8

    sub-float v5, v0, v1

    int-to-float v0, v9

    sub-float v6, v0, v1

    iget-object v7, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->cornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 115
    const-string v0, "528 Hz RES | 432 Hz BASE | HARMONIZED"

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v2, v1

    int-to-float v3, v9

    sub-float/2addr v3, v1

    const/high16 v4, 0x41700000    # 15.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    const-string v0, "NODE_02_ARM64_EDGE // ATESIRT"

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x420c0000    # 35.0f

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    iget-boolean v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->animating:Z

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    .line 120
    iget v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    const v1, 0x40c90e56    # 6.283f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 121
    iget v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    const v1, 0x40c90e56    # 6.283f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/architit/radriloniuma/ResonantCanvasView;->pulsePhase:F

    .line 123
    :cond_6
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/architit/radriloniuma/ResonantCanvasView;->postInvalidateDelayed(J)V

    goto/16 :goto_0
.end method
