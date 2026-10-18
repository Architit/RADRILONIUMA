.class public final Landroidx/compose/material3/carousel/Arrangement$Companion;
.super Ljava/lang/Object;
.source "Arrangement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/carousel/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0002JH\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0012JP\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Arrangement$Companion;",
        "",
        "()V",
        "MediumItemFlexPercentage",
        "",
        "calculateLargeSize",
        "availableSpace",
        "smallCount",
        "",
        "smallSize",
        "mediumCount",
        "largeCount",
        "findLowestCostArrangement",
        "Landroidx/compose/material3/carousel/Arrangement;",
        "targetSmallSize",
        "smallSizeRange",
        "Landroidx/annotation/FloatRange;",
        "smallCounts",
        "",
        "targetMediumSize",
        "mediumCounts",
        "targetLargeSize",
        "largeCounts",
        "fit",
        "priority",
        "mediumSize",
        "largeSize",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/carousel/Arrangement$Companion;-><init>()V

    return-void
.end method

.method private final calculateLargeSize(FIFII)F
    .locals 1

    int-to-float p2, p2

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    add-float/2addr p2, p4

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    int-to-float p2, p5

    add-float/2addr p2, p4

    div-float/2addr p1, p2

    return p1
.end method

.method private final fit(IFIFLandroidx/annotation/FloatRange;IFIF)Landroidx/compose/material3/carousel/Arrangement;
    .locals 13

    move/from16 v6, p3

    move/from16 v7, p6

    .line 171
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->from()D

    move-result-wide v0

    double-to-float v0, v0

    .line 172
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->to()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v2, p4

    .line 170
    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    move/from16 v8, p8

    int-to-float v9, v8

    mul-float v1, p9, v9

    int-to-float v10, v7

    mul-float v2, p7, v10

    add-float/2addr v1, v2

    int-to-float v2, v6

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    sub-float v1, p2, v1

    const/4 v11, 0x0

    if-lez v6, :cond_0

    cmpl-float v3, v1, v11

    if-lez v3, :cond_0

    div-float/2addr v1, v2

    .line 186
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->to()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    goto :goto_1

    :cond_0
    if-lez v6, :cond_1

    cmpg-float v3, v1, v11

    if-gez v3, :cond_1

    div-float/2addr v1, v2

    .line 192
    invoke-interface/range {p5 .. p5}, Landroidx/annotation/FloatRange;->from()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v6, :cond_2

    move v12, v0

    goto :goto_2

    :cond_2
    move v12, v11

    :goto_2
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move v3, v12

    move/from16 v4, p6

    move/from16 v5, p8

    .line 198
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/carousel/Arrangement$Companion;->calculateLargeSize(FIFII)F

    move-result v0

    add-float v1, v0, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    if-lez v7, :cond_5

    cmpg-float v2, v0, p9

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    sub-float v2, p9, v0

    mul-float/2addr v2, v9

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    mul-float/2addr v3, v10

    .line 211
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    div-float v2, v3, v10

    sub-float/2addr v1, v2

    div-float/2addr v3, v9

    add-float/2addr v0, v3

    goto :goto_3

    :cond_4
    div-float v2, v3, v10

    add-float/2addr v1, v2

    div-float/2addr v3, v9

    sub-float/2addr v0, v3

    :cond_5
    :goto_3
    move v9, v0

    move v4, v1

    .line 223
    new-instance v10, Landroidx/compose/material3/carousel/Arrangement;

    move-object v0, v10

    move v1, p1

    move v2, v12

    move/from16 v3, p3

    move/from16 v5, p6

    move v6, v9

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Arrangement;-><init>(IFIFIFI)V

    return-object v10
.end method


# virtual methods
.method public final findLowestCostArrangement(FFLandroidx/annotation/FloatRange;[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;
    .locals 24

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    .line 106
    array-length v14, v13

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_5

    aget v16, v13, v11

    .line 107
    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_4

    aget v17, v1, v9

    .line 108
    array-length v8, v0

    move-object v7, v2

    move/from16 v18, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    aget v5, v0, v6

    move-object/from16 v2, p0

    move/from16 v3, v18

    move/from16 v4, p1

    move/from16 v19, v6

    move/from16 v6, p2

    move-object v15, v7

    move-object/from16 v7, p3

    move/from16 v20, v8

    move/from16 v8, v17

    move/from16 v21, v9

    move/from16 v9, p5

    move/from16 v22, v10

    move/from16 v10, v16

    move/from16 v23, v11

    move/from16 v11, p7

    .line 109
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/carousel/Arrangement$Companion;->fit(IFIFLandroidx/annotation/FloatRange;IFIF)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v2

    if-eqz v15, :cond_1

    .line 121
    invoke-static {v2, v12}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v3

    .line 122
    invoke-static {v15, v12}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto :goto_3

    :cond_0
    move-object v7, v15

    goto :goto_4

    .line 125
    :cond_1
    :goto_3
    invoke-static {v2, v12}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    move-object v7, v2

    :goto_4
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v6, v19, 0x1

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    goto :goto_2

    :cond_3
    move-object v15, v7

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    add-int/lit8 v9, v21, 0x1

    move-object v2, v15

    move/from16 v3, v18

    goto :goto_1

    :cond_4
    move/from16 v23, v11

    add-int/lit8 v11, v23, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method
