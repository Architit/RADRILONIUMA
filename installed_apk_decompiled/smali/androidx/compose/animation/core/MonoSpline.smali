.class public final Landroidx/compose/animation/core/MonoSpline;
.super Ljava/lang/Object;
.source "MonoSpline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000c2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0002J8\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0003J\u0016\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0003J\u0018\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J8\u0010 \u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J(\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000c2\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u001eH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/animation/core/MonoSpline;",
        "",
        "time",
        "",
        "y",
        "",
        "([FLjava/util/List;)V",
        "isExtrapolate",
        "",
        "slopeTemp",
        "tangents",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "timePoints",
        "values",
        "copyData",
        "diff",
        "",
        "h",
        "x",
        "y1",
        "y2",
        "t1",
        "t2",
        "getPos",
        "",
        "t",
        "v",
        "Landroidx/compose/animation/core/AnimationVector;",
        "j",
        "",
        "getSlope",
        "interpolate",
        "makeFloatArray",
        "a",
        "b",
        "animation-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final isExtrapolate:Z

.field private final slopeTemp:[F

.field private final tangents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private final timePoints:[F

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([FLjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    .line 30
    iput-boolean v3, v0, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    .line 34
    array-length v3, v1

    const/4 v4, 0x0

    .line 35
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    array-length v5, v5

    .line 36
    new-array v6, v5, [F

    iput-object v6, v0, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    add-int/lit8 v6, v3, -0x1

    .line 37
    invoke-direct {v0, v6, v5}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 38
    invoke-direct {v0, v3, v5}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)Ljava/util/ArrayList;

    move-result-object v8

    move v9, v4

    :goto_0
    if-ge v9, v5, :cond_2

    move v10, v4

    :goto_1
    if-ge v10, v6, :cond_1

    add-int/lit8 v11, v10, 0x1

    .line 41
    aget v12, v1, v11

    aget v13, v1, v10

    sub-float/2addr v12, v13

    .line 42
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    aget v14, v14, v9

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    aget v15, v15, v9

    sub-float/2addr v14, v15

    div-float/2addr v14, v12

    aput v14, v13, v9

    if-nez v10, :cond_0

    .line 44
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v9

    aput v10, v12, v9

    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    aget v13, v13, v9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v9

    add-float/2addr v13, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v13, v10

    aput v13, v12, v9

    :goto_2
    move v10, v11

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    add-int/lit8 v11, v3, -0x2

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v9

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_3
    if-ge v3, v6, :cond_6

    move v9, v4

    :goto_4
    if-ge v9, v5, :cond_5

    .line 53
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v9

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-nez v10, :cond_3

    .line 54
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aput v11, v10, v9

    add-int/lit8 v10, v3, 0x1

    .line 55
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aput v11, v10, v9

    move/from16 v16, v5

    goto :goto_5

    .line 57
    :cond_3
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v9

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v9

    div-float/2addr v10, v11

    add-int/lit8 v11, v3, 0x1

    .line 58
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    aget v12, v12, v9

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    aget v13, v13, v9

    div-float/2addr v12, v13

    float-to-double v13, v10

    move/from16 v16, v5

    float-to-double v4, v12

    .line 59
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v13, v4

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    cmpl-double v5, v13, v17

    if-lez v5, :cond_4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v5, v4

    .line 62
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    mul-float/2addr v10, v5

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    aget v13, v13, v9

    mul-float/2addr v10, v13

    aput v10, v4, v9

    .line 63
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    mul-float/2addr v5, v12

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v9

    mul-float/2addr v5, v10

    aput v5, v4, v9

    :cond_4
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_5
    move/from16 v16, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 68
    :cond_6
    iput-object v1, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    .line 69
    invoke-direct {v0, v2}, Landroidx/compose/animation/core/MonoSpline;->copyData(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    .line 70
    iput-object v8, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    return-void
.end method

.method private final copyData(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private final diff(FFFFFF)F
    .locals 4

    mul-float v0, p2, p2

    const/4 v1, -0x6

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    const/4 v2, 0x6

    int-to-float v2, v2

    mul-float v3, v2, p2

    mul-float/2addr p4, v3

    add-float/2addr v1, p4

    mul-float/2addr v2, v0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    mul-float/2addr v3, p3

    sub-float/2addr v1, v3

    const/4 p3, 0x3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    mul-float p4, p3, p6

    mul-float/2addr p4, v0

    add-float/2addr v1, p4

    mul-float/2addr p3, p5

    mul-float/2addr p3, v0

    add-float/2addr v1, p3

    const/4 p3, 0x2

    int-to-float p3, p3

    mul-float/2addr p3, p1

    mul-float/2addr p3, p6

    mul-float/2addr p3, p2

    sub-float/2addr v1, p3

    const/4 p3, 0x4

    int-to-float p3, p3

    mul-float/2addr p3, p1

    mul-float/2addr p3, p5

    mul-float/2addr p3, p2

    sub-float/2addr v1, p3

    mul-float/2addr p1, p5

    add-float/2addr v1, p1

    return v1
.end method

.method private final getSlope(FI)F
    .locals 12

    .line 303
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    const/4 v2, 0x0

    .line 304
    aget v3, v0, v2

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 306
    aget v0, v0, v3

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 310
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v2, 0x1

    aget v4, v0, v3

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_2

    .line 311
    aget v0, v0, v2

    sub-float/2addr v4, v0

    sub-float/2addr p1, v0

    div-float v7, p1, v4

    .line 313
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v8, p1, p2

    .line 314
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v9, p1, p2

    .line 315
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v10, p1, p2

    .line 316
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v11, p1, p2

    move-object v5, p0

    move v6, v4

    .line 317
    invoke-direct/range {v5 .. v11}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result p1

    div-float/2addr p1, v4

    return p1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private final interpolate(FFFFFF)F
    .locals 5

    mul-float v0, p2, p2

    mul-float v1, v0, p2

    const/4 v2, -0x2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, p4

    const/4 v3, 0x3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float/2addr p4, v3

    add-float/2addr v2, p4

    const/4 p4, 0x2

    int-to-float p4, p4

    mul-float v4, p4, v1

    mul-float/2addr v4, p3

    add-float/2addr v2, v4

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    add-float/2addr v2, p3

    mul-float/2addr p6, p1

    mul-float p3, p6, v1

    add-float/2addr v2, p3

    mul-float p3, p1, p5

    mul-float/2addr v1, p3

    add-float/2addr v2, v1

    mul-float/2addr p6, v0

    sub-float/2addr v2, p6

    mul-float/2addr p4, p1

    mul-float/2addr p4, p5

    mul-float/2addr p4, v0

    sub-float/2addr v2, p4

    mul-float/2addr p3, p2

    add-float/2addr v2, p3

    return v2
.end method

.method private final makeFloatArray(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 80
    new-array v2, p2, [F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getPos(FI)F
    .locals 13

    .line 152
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    .line 153
    iget-boolean v2, p0, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 154
    aget v2, v0, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 155
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, p2

    iget-object v1, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v3

    sub-float/2addr p1, v1

    invoke-direct {p0, v1, p2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result p2

    :goto_0
    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 157
    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 158
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, p2

    iget-object v1, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v2

    sub-float/2addr p1, v1

    invoke-direct {p0, v1, p2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result p2

    goto :goto_0

    .line 161
    :cond_1
    aget v2, v0, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 162
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget p1, p1, p2

    return p1

    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 164
    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 165
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget p1, p1, p2

    return p1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ge v3, v1, :cond_6

    .line 169
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v2, v0, v3

    cmpg-float v4, p1, v2

    if-nez v4, :cond_4

    .line 170
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget p1, p1, p2

    return p1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 172
    aget v0, v0, v4

    cmpg-float v5, p1, v0

    if-gez v5, :cond_5

    sub-float v7, v0, v2

    sub-float/2addr p1, v2

    div-float v8, p1, v7

    .line 175
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v9, p1, p2

    .line 176
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v10, p1, p2

    .line 177
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v11, p1, p2

    .line 178
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    aget v12, p1, p2

    move-object v6, p0

    .line 179
    invoke-direct/range {v6 .. v12}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result p1

    return p1

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final getPos(FLandroidx/compose/animation/core/AnimationVector;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    .line 189
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v0, v0

    .line 190
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v9, v1

    .line 191
    iget-boolean v1, v7, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v1, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    .line 193
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {p0, v3, v0}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    move v0, v2

    :goto_0
    if-ge v0, v9, :cond_0

    .line 195
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 199
    aget v1, v1, v3

    cmpl-float v4, p1, v1

    if-ltz v4, :cond_7

    .line 200
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {p0, v1, v0}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    :goto_1
    if-ge v2, v9, :cond_2

    .line 202
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v2

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v3

    sub-float v1, p1, v1

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {v8, v2, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v1, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    move v0, v2

    :goto_2
    if-ge v0, v9, :cond_4

    .line 209
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v0, -0x1

    .line 213
    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_7

    :goto_3
    if-ge v2, v9, :cond_6

    .line 215
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v2

    invoke-virtual {v8, v2, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v0, v0, -0x1

    move v10, v2

    :goto_4
    if-ge v10, v0, :cond_b

    .line 221
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v10

    cmpg-float v1, p1, v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    if-ge v1, v9, :cond_8

    .line 223
    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v1

    invoke-virtual {v8, v1, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 226
    :cond_8
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v11, v10, 0x1

    aget v3, v1, v11

    cmpg-float v4, p1, v3

    if-gez v4, :cond_a

    .line 227
    aget v0, v1, v10

    sub-float v12, v3, v0

    sub-float v0, p1, v0

    div-float v13, v0, v12

    move v14, v2

    :goto_6
    if-ge v14, v9, :cond_9

    .line 230
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v3, v0, v14

    .line 231
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v4, v0, v14

    .line 232
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v5, v0, v14

    .line 233
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v6, v0, v14

    move-object v0, p0

    move v1, v12

    move v2, v13

    .line 234
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result v0

    invoke-virtual {v8, v14, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    move v10, v11

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final getPos(F[F)V
    .locals 14

    move-object v7, p0

    .line 96
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v0, v0

    .line 97
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v8, v1

    .line 98
    iget-boolean v1, v7, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v1, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    .line 100
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {p0, v3, v0}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    move v0, v2

    :goto_0
    if-ge v0, v8, :cond_0

    .line 102
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 106
    aget v1, v1, v3

    cmpl-float v4, p1, v1

    if-ltz v4, :cond_7

    .line 107
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {p0, v1, v0}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    :goto_1
    if-ge v2, v8, :cond_2

    .line 109
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v2

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v3

    sub-float v1, p1, v1

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    aput v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v1, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_4

    .line 116
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aget v1, v1, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v0, -0x1

    .line 120
    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_7

    :goto_3
    if-ge v2, v8, :cond_6

    .line 122
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v2

    aput v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v0, v0, -0x1

    move v9, v2

    :goto_4
    if-ge v9, v0, :cond_b

    .line 128
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v9

    cmpg-float v1, p1, v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    if-ge v1, v8, :cond_8

    .line 130
    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v1

    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 133
    :cond_8
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v10, v9, 0x1

    aget v3, v1, v10

    cmpg-float v4, p1, v3

    if-gez v4, :cond_a

    .line 134
    aget v0, v1, v9

    sub-float v11, v3, v0

    sub-float v0, p1, v0

    div-float v12, v0, v11

    move v13, v2

    :goto_6
    if-ge v13, v8, :cond_9

    .line 137
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v3, v0, v13

    .line 138
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v4, v0, v13

    .line 139
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v5, v0, v13

    .line 140
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v6, v0, v13

    move-object v0, p0

    move v1, v11

    move v2, v12

    .line 141
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result v0

    aput v0, p2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    move v9, v10

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final getSlope(FLandroidx/compose/animation/core/AnimationVector;)V
    .locals 14

    move-object v7, p0

    .line 277
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v0, v0

    .line 278
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v8, v1

    .line 279
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v1, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 281
    aget v1, v1, v3

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v9, v2

    :goto_1
    if-ge v9, v0, :cond_3

    .line 285
    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v10, v9, 0x1

    aget v4, v3, v10

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_2

    .line 286
    aget v0, v3, v9

    sub-float v11, v4, v0

    sub-float/2addr v1, v0

    div-float v12, v1, v11

    move v13, v2

    :goto_2
    if-ge v13, v8, :cond_3

    .line 289
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v3, v0, v13

    .line 290
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v4, v0, v13

    .line 291
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v5, v0, v13

    .line 292
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v6, v0, v13

    move-object v0, p0

    move v1, v11

    move v2, v12

    .line 293
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v11

    move-object/from16 v3, p2

    invoke-virtual {v3, v13, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v3, p2

    move v9, v10

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final getSlope(F[F)V
    .locals 14

    move-object v7, p0

    .line 247
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v0, v0

    .line 248
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v8, v1

    .line 249
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v1, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 251
    aget v1, v1, v3

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v9, v2

    :goto_1
    if-ge v9, v0, :cond_3

    .line 255
    iget-object v3, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v10, v9, 0x1

    aget v4, v3, v10

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_2

    .line 256
    aget v0, v3, v9

    sub-float v11, v4, v0

    sub-float/2addr v1, v0

    div-float v12, v1, v11

    move v13, v2

    :goto_2
    if-ge v13, v8, :cond_3

    .line 259
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v3, v0, v13

    .line 260
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v4, v0, v13

    .line 261
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v5, v0, v13

    .line 262
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v6, v0, v13

    move-object v0, p0

    move v1, v11

    move v2, v12

    .line 263
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v11

    aput v0, p2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    move v9, v10

    goto :goto_1

    :cond_3
    return-void
.end method
