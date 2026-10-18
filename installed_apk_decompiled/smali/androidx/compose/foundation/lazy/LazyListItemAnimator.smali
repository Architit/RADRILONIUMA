.class public final Landroidx/compose/foundation/lazy/LazyListItemAnimator;
.super Ljava/lang/Object;
.source "LazyListItemAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n101#2,2:332\n33#2,6:334\n103#2:340\n33#2,4:341\n38#2:351\n33#2,6:354\n33#2,6:362\n33#2,6:374\n33#2,6:382\n1#3:345\n13579#4,2:346\n13579#4:348\n13580#4:350\n12744#4,2:369\n13644#4,2:388\n13646#4:392\n13644#4,2:393\n13646#4:396\n86#5:349\n79#5:390\n86#5:391\n79#5:395\n1011#6,2:352\n1002#6,2:360\n1855#6:368\n1856#6:371\n1011#6,2:372\n1002#6,2:380\n*S KotlinDebug\n*F\n+ 1 LazyListItemAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemAnimator\n*L\n72#1:332,2\n72#1:334,6\n72#1:340\n97#1:341,4\n97#1:351\n149#1:354,6\n157#1:362,6\n193#1:374,6\n208#1:382,6\n122#1:346,2\n130#1:348\n130#1:350\n178#1:369,2\n257#1:388,2\n257#1:392\n268#1:393,2\n268#1:396\n134#1:349\n260#1:390\n261#1:391\n275#1:395\n148#1:352,2\n156#1:360,2\n165#1:368\n165#1:371\n192#1:372,2\n207#1:380,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0004J\"\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001f\u001a\u00020\tH\u0002JT\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020\u001cJ\u0010\u0010-\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000bj\u0008\u0012\u0004\u0012\u00020\u0001`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006/"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator;",
        "",
        "()V",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "keyToItemInfoMap",
        "",
        "Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;",
        "movingAwayKeys",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z",
        "getAnimation",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "key",
        "placeableIndex",
        "initializeAnimation",
        "",
        "item",
        "mainAxisOffset",
        "itemInfo",
        "onMeasured",
        "consumedScroll",
        "layoutWidth",
        "layoutHeight",
        "positionedItems",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "isVertical",
        "isLookingAhead",
        "hasLookaheadOccurred",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reset",
        "startPlacementAnimationsIfNeeded",
        "ItemInfo",
        "foundation_release"
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
.field private firstVisibleIndex:I

.field private keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final keyToItemInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayKeys:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    return-void
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z
    .locals 4

    .line 287
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 288
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final initializeAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;)V
    .locals 11

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v7

    .line 250
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-wide v1, v7

    move v4, p2

    .line 251
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v1, v7

    move v3, p2

    .line 253
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v1

    .line 257
    :goto_0
    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object p2

    .line 389
    array-length p3, p2

    move v3, v0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v4, p2, v0

    add-int/lit8 v5, v3, 0x1

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v9

    .line 390
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v3, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    .line 391
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    add-int/2addr v6, v9

    invoke-static {v3, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    .line 261
    invoke-virtual {v4, v9, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic initializeAnimation$default(Landroidx/compose/foundation/lazy/LazyListItemAnimator;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 246
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 243
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;)V

    return-void
.end method

.method private final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V
    .locals 12

    .line 267
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 268
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    .line 394
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    if-eqz v4, :cond_1

    .line 270
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v6

    .line 271
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v8

    .line 272
    sget-object v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    sub-int/2addr v3, v10

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    sub-int/2addr v10, v8

    invoke-static {v3, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    .line 275
    invoke-virtual {v4, v8, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animatePlacementDelta--gyyYBs(J)V

    .line 277
    :cond_0
    invoke-virtual {v4, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    aget-object p1, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ZZZLkotlinx/coroutines/CoroutineScope;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "ZZZ",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v1, p9

    .line 68
    iget-object v10, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 69
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v11

    .line 70
    iput-object v11, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 335
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-ge v3, v2, :cond_1

    .line 336
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 333
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 72
    invoke-direct {v6, v4}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->reset()V

    return-void

    .line 79
    :cond_2
    :goto_1
    iget v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    .line 80
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v12

    :goto_2
    iput v3, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    if-eqz p6, :cond_4

    move v13, v8

    goto :goto_3

    :cond_4
    move v13, v7

    :goto_3
    if-eqz p6, :cond_5

    .line 86
    invoke-static {v12, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    goto :goto_4

    .line 88
    :cond_5
    invoke-static {v0, v12}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    :goto_4
    if-nez p7, :cond_7

    if-nez p8, :cond_6

    goto :goto_5

    :cond_6
    move v15, v12

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v15, 0x1

    .line 95
    :goto_6
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    iget-object v5, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 342
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    move v5, v12

    :goto_7
    if-ge v5, v0, :cond_13

    .line 343
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 344
    move-object/from16 v12, v16

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 99
    iget-object v14, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    move/from16 p8, v0

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {v6, v12}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 101
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    if-nez v0, :cond_d

    .line 104
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;-><init>()V

    .line 105
    invoke-virtual {v0, v12, v1}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V

    .line 106
    iget-object v14, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v14, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_8

    .line 107
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v10, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v9

    goto :goto_8

    :cond_8
    const/4 v9, -0x1

    .line 108
    :goto_8
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v14

    if-eq v14, v9, :cond_a

    const/4 v14, -0x1

    if-eq v9, v14, :cond_a

    if-ge v9, v2, :cond_9

    .line 111
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 113
    :cond_9
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_a
    const/4 v14, 0x0

    .line 118
    invoke-virtual {v12, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v17

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    goto :goto_9

    :cond_b
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    .line 116
    :goto_9
    invoke-direct {v6, v12, v14, v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;)V

    const/4 v12, -0x1

    if-ne v9, v12, :cond_11

    if-eqz v10, :cond_11

    .line 122
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    .line 346
    array-length v9, v0

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v9, :cond_11

    aget-object v12, v0, v14

    if-eqz v12, :cond_c

    .line 123
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->animateAppearance()V

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_d
    if-eqz v15, :cond_11

    .line 129
    invoke-virtual {v0, v12, v1}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Lkotlinx/coroutines/CoroutineScope;)V

    .line 130
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v0

    .line 348
    array-length v9, v0

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v9, :cond_10

    aget-object v1, v0, v14

    if-eqz v1, :cond_e

    .line 132
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v7

    sget-object v16, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    move/from16 v18, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    .line 134
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v7

    .line 349
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v9, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v7

    .line 134
    invoke-virtual {v1, v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setRawOffset--gyyYBs(J)V

    goto :goto_c

    :cond_e
    move/from16 v18, v9

    move-object/from16 v17, v10

    :cond_f
    :goto_c
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v1, p9

    move-object/from16 v10, v17

    move/from16 v9, v18

    goto :goto_b

    :cond_10
    move-object/from16 v17, v10

    .line 137
    invoke-direct {v6, v12}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    goto :goto_e

    :cond_11
    :goto_d
    move-object/from16 v17, v10

    goto :goto_e

    :cond_12
    move-object/from16 v17, v10

    .line 142
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v10, v17

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_13
    move-object/from16 v17, v10

    if-eqz v15, :cond_17

    if-eqz v17, :cond_17

    .line 148
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$1;

    move-object/from16 v7, v17

    invoke-direct {v1, v7}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_f

    :cond_14
    move-object/from16 v7, v17

    .line 149
    :goto_f
    iget-object v8, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 355
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v9, :cond_15

    .line 356
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 357
    move-object v10, v1

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 150
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v1

    add-int v12, v0, v1

    rsub-int/lit8 v2, v12, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 152
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/LazyListItemAnimator;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;ILjava/lang/Object;)V

    .line 153
    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    add-int/lit8 v14, v14, 0x1

    move v0, v12

    goto :goto_10

    .line 156
    :cond_15
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_16

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v1, v7}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    :cond_16
    iget-object v8, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 363
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v9, :cond_18

    .line 364
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 365
    move-object v10, v1

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    add-int v2, v13, v0

    .line 159
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v1

    add-int v12, v0, v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 160
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/LazyListItemAnimator;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ILandroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;ILjava/lang/Object;)V

    .line 161
    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    add-int/lit8 v14, v14, 0x1

    move v0, v12

    goto :goto_11

    :cond_17
    move-object/from16 v7, v17

    .line 165
    :cond_18
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 368
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 168
    invoke-interface {v11, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 171
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p5

    goto :goto_12

    :cond_19
    move-object/from16 v4, p5

    .line 173
    invoke-virtual {v4, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    const/4 v8, 0x1

    .line 174
    invoke-virtual {v5, v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->setNonScrollableItem(Z)V

    .line 175
    iget-object v9, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-static {v9, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;

    .line 178
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    move-result-object v9

    .line 369
    array-length v10, v9

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v10, :cond_1b

    aget-object v12, v9, v14

    if-eqz v12, :cond_1a

    .line 178
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress()Z

    move-result v12

    if-ne v12, v8, :cond_1a

    goto :goto_14

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_13

    :cond_1b
    if-eqz v7, :cond_1c

    .line 179
    invoke-interface {v7, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v8

    if-ne v2, v8, :cond_1c

    .line 180
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 182
    :cond_1c
    :goto_14
    iget v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    if-ge v2, v1, :cond_1d

    .line 183
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 185
    :cond_1d
    iget-object v1, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 192
    :cond_1e
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v1, v11}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    :cond_1f
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_15
    if-ge v14, v1, :cond_22

    .line 376
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 377
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 194
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v4

    add-int/2addr v2, v4

    if-eqz p7, :cond_20

    .line 196
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_16

    :cond_20
    rsub-int/lit8 v4, v2, 0x0

    :goto_16
    move/from16 v5, p2

    move/from16 v7, p3

    .line 200
    invoke-virtual {v3, v4, v5, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    if-eqz v15, :cond_21

    .line 202
    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    :cond_21
    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    :cond_22
    move/from16 v5, p2

    move/from16 v7, p3

    .line 207
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_23

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v1, v11}, Landroidx/compose/foundation/lazy/LazyListItemAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    :cond_23
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_17
    if-ge v14, v1, :cond_26

    .line 384
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 385
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz p7, :cond_24

    .line 210
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v4

    add-int/2addr v8, v4

    add-int/2addr v8, v2

    goto :goto_18

    :cond_24
    add-int v8, v13, v2

    .line 213
    :goto_18
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v4

    add-int/2addr v2, v4

    .line 215
    invoke-virtual {v3, v8, v5, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    if-eqz v15, :cond_25

    .line 217
    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    :cond_25
    add-int/lit8 v14, v14, 0x1

    goto :goto_17

    .line 223
    :cond_26
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v1, p4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 224
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    iget-object v0, v6, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 239
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemAnimator;->firstVisibleIndex:I

    return-void
.end method
