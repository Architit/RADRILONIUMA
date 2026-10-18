.class public final Landroidx/compose/animation/core/PathEasing;
.super Ljava/lang/Object;
.source "PathEasing.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/animation/core/PathEasing;",
        "Landroidx/compose/animation/core/Easing;",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "(Landroidx/compose/ui/graphics/Path;)V",
        "offsetX",
        "",
        "offsetY",
        "transform",
        "",
        "fraction",
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
.field public static final $stable:I


# instance fields
.field private final offsetX:[F

.field private final offsetY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Path;)V
    .locals 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;->PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 54
    invoke-interface {v0}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_5

    const v3, 0x3b03126f    # 0.002f

    div-float v3, p1, v3

    float-to-int v3, v3

    add-int/lit8 v4, v3, 0x1

    .line 62
    new-array v5, v4, [F

    move v6, v1

    :goto_0
    if-ge v6, v4, :cond_0

    aput v2, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput-object v5, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    .line 63
    new-array v5, v4, [F

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    aput v2, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iput-object v5, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    :goto_2
    if-ge v1, v4, :cond_4

    int-to-float v2, v1

    mul-float/2addr v2, p1

    int-to-float v5, v3

    div-float/2addr v2, v5

    .line 67
    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/PathMeasure;->getPosition-tuRUvjQ(F)J

    move-result-wide v5

    .line 68
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    aput v7, v2, v1

    .line 69
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    aput v5, v2, v1

    if-lez v1, :cond_3

    .line 70
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    aget v5, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget v2, v2, v6

    cmpg-float v2, v5, v2

    if-ltz v2, :cond_2

    goto :goto_3

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path needs to be continuously increasing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void

    .line 55
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path cannot be zero in length. Ensure that supplied Path starts at [0,0] and ends at [1,1]"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public transform(F)F
    .locals 8

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    .line 84
    :cond_1
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->binarySearch$default([FFIIILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    iget-object p1, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    aget p1, p1, v0

    return p1

    .line 90
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 91
    iget-object v1, p0, Landroidx/compose/animation/core/PathEasing;->offsetX:[F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3

    .line 92
    iget-object p1, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->last([F)F

    move-result p1

    return p1

    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 96
    aget v3, v1, v2

    aget v1, v1, v0

    sub-float/2addr v3, v1

    sub-float/2addr p1, v1

    div-float/2addr p1, v3

    .line 101
    iget-object v1, p0, Landroidx/compose/animation/core/PathEasing;->offsetY:[F

    aget v0, v1, v0

    .line 102
    aget v1, v1, v2

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method
