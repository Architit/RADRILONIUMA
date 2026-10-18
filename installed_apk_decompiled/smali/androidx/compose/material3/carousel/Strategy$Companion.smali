.class public final Landroidx/compose/material3/carousel/Strategy$Companion;
.super Ljava/lang/Object;
.source "Strategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/carousel/Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/Strategy$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,509:1\n1549#2:510\n1620#2,3:511\n1855#2,2:514\n*S KotlinDebug\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/Strategy$Companion\n*L\n405#1:510\n405#1:511,3\n432#1:514,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001!B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J&\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J(\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f*\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0010H\u0002\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Strategy$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/compose/material3/carousel/Strategy;",
        "carouselMainAxisSize",
        "",
        "keylineList",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "create$material3_release",
        "getEndKeylineSteps",
        "",
        "defaultKeylines",
        "getShiftPointRange",
        "Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;",
        "stepsCount",
        "",
        "shiftPoint",
        "Landroidx/collection/FloatList;",
        "interpolation",
        "getStartKeylineSteps",
        "getStepInterpolationPoints",
        "totalShiftDistance",
        "steps",
        "isShiftingLeft",
        "",
        "moveKeylineAndCreateShiftedKeylineList",
        "from",
        "srcIndex",
        "dstIndex",
        "move",
        "",
        "Landroidx/compose/material3/carousel/Keyline;",
        "ShiftPointRange",
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/carousel/Strategy$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getShiftPointRange(Landroidx/compose/material3/carousel/Strategy$Companion;ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion;->getShiftPointRange(ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$move(Landroidx/compose/material3/carousel/Strategy$Companion;Ljava/util/List;II)Ljava/util/List;
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion;->move(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getEndKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "F)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 294
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p1, p2}, Landroidx/compose/material3/carousel/KeylineList;->isLastFocalItemAtEndOfContainer(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastFocalIndex()I

    move-result v1

    .line 301
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastNonAnchorIndex()I

    move-result v2

    sub-int v1, v2, v1

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    .line 306
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->getCutoff()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 308
    invoke-direct {p0, p1, v3, v3, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p1

    .line 307
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 320
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/carousel/KeylineList;

    sub-int v6, v2, v4

    .line 324
    move-object v7, p1

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-ge v6, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 325
    invoke-virtual {p1, v6}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v6

    .line 326
    invoke-virtual {v5, v6}, Landroidx/compose/material3/carousel/KeylineList;->lastIndexBeforeFocalRangeWithSize(F)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    .line 333
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getLastNonAnchorIndex()I

    move-result v7

    .line 331
    invoke-direct {p0, v5, v7, v6, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v5

    .line 337
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final getShiftPointRange(ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    .locals 6

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p2, v0}, Landroidx/collection/FloatList;->get(I)F

    move-result v1

    const/4 v2, 0x1

    .line 432
    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 514
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 433
    invoke-virtual {p2, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v4

    cmpg-float v5, p3, v4

    if-gtz v5, :cond_0

    .line 435
    new-instance p1, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    add-int/lit8 p2, v2, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 438
    invoke-static {v3, v0, v1, v4, p3}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result p3

    .line 435
    invoke-direct {p1, p2, v2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;-><init>(IIF)V

    return-object p1

    :cond_0
    move v1, v4

    goto :goto_0

    .line 443
    :cond_1
    new-instance p1, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    invoke-direct {p1, v0, v0, v3}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;-><init>(IIF)V

    return-object p1
.end method

.method private final getStartKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "F)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 223
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->isFirstFocalItemAtStartOfContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstNonAnchorIndex()I

    move-result v1

    .line 230
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocalIndex()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    .line 235
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->getCutoff()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 237
    invoke-direct {p0, p1, v3, v3, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p1

    .line 236
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    .line 249
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/carousel/KeylineList;

    add-int v5, v1, v3

    .line 251
    move-object v6, p1

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-lez v5, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 253
    invoke-virtual {p1, v5}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v5

    .line 254
    invoke-virtual {v4, v5}, Landroidx/compose/material3/carousel/KeylineList;->firstIndexAfterFocalRangeWithSize(F)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstNonAnchorIndex()I

    move-result v5

    .line 260
    invoke-direct {p0, v4, v5, v6, p2}, Landroidx/compose/material3/carousel/Strategy$Companion;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v4

    .line 259
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;Z)",
            "Landroidx/collection/FloatList;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 400
    invoke-static {v0}, Landroidx/collection/FloatListKt;->mutableFloatListOf(F)Landroidx/collection/MutableFloatList;

    move-result-object v1

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    .line 402
    check-cast v1, Landroidx/collection/FloatList;

    return-object v1

    .line 405
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 511
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 406
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/carousel/KeylineList;

    .line 407
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/carousel/KeylineList;

    if-eqz p3, :cond_1

    .line 409
    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v6

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v5}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v5

    sub-float/2addr v6, v5

    goto :goto_1

    .line 411
    :cond_1
    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v5}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v5

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v6}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v6

    sub-float v6, v5, v6

    :goto_1
    div-float/2addr v6, p1

    .line 414
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v3, v5, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Landroidx/collection/MutableFloatList;->get(I)F

    move-result v3

    add-float/2addr v3, v6

    .line 415
    :goto_2
    invoke-virtual {v1, v3}, Landroidx/collection/MutableFloatList;->add(F)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 512
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 417
    check-cast v1, Landroidx/collection/FloatList;

    return-object v1
.end method

.method private final move(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;II)",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/Keyline;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    .line 451
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 452
    invoke-interface {p1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p1
.end method

.method private final moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 3

    if-le p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 356
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/compose/material3/carousel/KeylineList;->get(I)Landroidx/compose/material3/carousel/Keyline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    .line 357
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getPivotIndex()I

    move-result v2

    add-int/2addr v2, v0

    .line 358
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getPivot()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Keyline;->getOffset()F

    move-result v0

    add-float/2addr v0, v1

    .line 359
    new-instance v1, Landroidx/compose/material3/carousel/Strategy$Companion$moveKeylineAndCreateShiftedKeylineList$1;

    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy$Companion$moveKeylineAndCreateShiftedKeylineList$1;-><init>(Landroidx/compose/material3/carousel/KeylineList;II)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p4, v2, v0, v1}, Landroidx/compose/material3/carousel/KeylineKt;->keylineListOf(FIFLkotlin/jvm/functions/Function1;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final create$material3_release(FLandroidx/compose/material3/carousel/KeylineList;)Landroidx/compose/material3/carousel/Strategy;
    .locals 9

    .line 173
    invoke-direct {p0, p2, p1}, Landroidx/compose/material3/carousel/Strategy$Companion;->getStartKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;

    move-result-object v2

    .line 175
    invoke-direct {p0, p2, p1}, Landroidx/compose/material3/carousel/Strategy$Companion;->getEndKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;F)Ljava/util/List;

    move-result-object v3

    .line 178
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result p1

    .line 179
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v1

    sub-float v4, p1, v1

    .line 180
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result p1

    .line 181
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/carousel/Keyline;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v0

    sub-float v5, p1, v0

    .line 183
    new-instance p1, Landroidx/compose/material3/carousel/Strategy;

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0, v4, v2, v0}, Landroidx/compose/material3/carousel/Strategy$Companion;->getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object v6

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v5, v3, v0}, Landroidx/compose/material3/carousel/Strategy$Companion;->getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 183
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFLandroidx/collection/FloatList;Landroidx/collection/FloatList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
