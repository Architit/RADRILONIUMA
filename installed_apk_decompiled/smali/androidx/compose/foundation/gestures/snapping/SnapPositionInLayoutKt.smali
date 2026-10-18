.class public final Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;
.super Ljava/lang/Object;
.source "SnapPositionInLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u001a@\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "calculateDistanceToDesiredSnapPosition",
        "",
        "mainAxisViewPortSize",
        "",
        "beforeContentPadding",
        "afterContentPadding",
        "itemSize",
        "itemOffset",
        "itemIndex",
        "snapPositionInLayout",
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F
    .locals 6

    move-object v0, p6

    move v1, p0

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, p5

    .line 73
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;->position(IIIII)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p4

    sub-float/2addr p1, p0

    return p1
.end method
