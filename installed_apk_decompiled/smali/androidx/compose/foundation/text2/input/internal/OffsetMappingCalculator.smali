.class public final Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
.super Ljava/lang/Object;
.source "OffsetMappingCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOffsetMappingCalculator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OffsetMappingCalculator.kt\nandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 OffsetMappingCalculator.kt\nandroidx/compose/foundation/text2/input/internal/OpArray\n*L\n1#1,416:1\n1#2:417\n390#3,21:418\n*S KotlinDebug\n*F\n+ 1 OffsetMappingCalculator.kt\nandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator\n*L\n298#1:418,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J=\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007R\u0016\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;",
        "",
        "()V",
        "ops",
        "Landroidx/compose/foundation/text2/input/internal/OpArray;",
        "[I",
        "opsSize",
        "",
        "map",
        "Landroidx/compose/ui/text/TextRange;",
        "offset",
        "fromSource",
        "",
        "map-fzxv0v0",
        "(IZ)J",
        "mapFromDest",
        "mapFromDest--jx7JFs",
        "(I)J",
        "mapFromSource",
        "mapFromSource--jx7JFs",
        "mapStep",
        "opOffset",
        "untransformedLen",
        "transformedLen",
        "mapStep-C6u-MEY",
        "(IIIIZ)J",
        "recordEditOperation",
        "",
        "sourceStart",
        "sourceEnd",
        "newLength",
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
.field private ops:[I

.field private opsSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 254
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/OpArray;->constructor-impl(I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    return-void
.end method

.method private final map-fzxv0v0(IZ)J
    .locals 12

    .line 298
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->opsSize:I

    xor-int/lit8 v2, p2, 0x1

    if-ltz v1, :cond_3

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v3, p1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v2, v1, 0x3

    .line 425
    aget v8, v0, v2

    add-int/lit8 v4, v2, 0x1

    .line 426
    aget v9, v0, v4

    add-int/lit8 v2, v2, 0x2

    .line 427
    aget v10, v0, v2

    move-object v2, p0

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, p2

    .line 299
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapStep-C6u-MEY(IIIIZ)J

    move-result-wide v2

    move-object v4, p0

    move v5, p1

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, p2

    .line 306
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapStep-C6u-MEY(IIIIZ)J

    move-result-wide v4

    .line 317
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 318
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    move v3, p1

    move p1, v2

    goto :goto_0

    :cond_0
    move p2, p1

    move p1, v3

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    move v4, p1

    :goto_1
    if-ge v2, v1, :cond_2

    mul-int/lit8 v3, v2, 0x3

    .line 432
    aget v9, v0, v3

    add-int/lit8 v5, v3, 0x1

    .line 433
    aget v10, v0, v5

    add-int/lit8 v3, v3, 0x2

    .line 434
    aget v11, v0, v3

    move-object v3, p0

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, p2

    .line 299
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapStep-C6u-MEY(IIIIZ)J

    move-result-wide v3

    move-object v5, p0

    move v6, p1

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, p2

    .line 306
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapStep-C6u-MEY(IIIIZ)J

    move-result-wide v5

    .line 317
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v7

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 318
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    move v4, p1

    move p1, v3

    goto :goto_1

    :cond_2
    move p2, p1

    move p1, v4

    goto :goto_2

    :cond_3
    move p2, p1

    .line 321
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    return-wide p1
.end method

.method private final mapStep-C6u-MEY(IIIIZ)J
    .locals 1

    if-eqz p5, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    if-eqz p5, :cond_1

    move p3, p4

    :cond_1
    if-ge p1, p2, :cond_2

    .line 335
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p1

    goto :goto_1

    :cond_2
    if-ne p1, p2, :cond_4

    if-nez v0, :cond_3

    add-int/2addr p3, p2

    .line 340
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    goto :goto_1

    .line 343
    :cond_3
    invoke-static {p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p1

    goto :goto_1

    :cond_4
    add-int p4, p2, v0

    if-ge p1, p4, :cond_6

    if-nez p3, :cond_5

    .line 350
    invoke-static {p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p1

    goto :goto_1

    :cond_5
    add-int/2addr p3, p2

    .line 353
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    goto :goto_1

    :cond_6
    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 358
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p1

    :goto_1
    return-wide p1
.end method


# virtual methods
.method public final mapFromDest--jx7JFs(I)J
    .locals 2

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->map-fzxv0v0(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final mapFromSource--jx7JFs(I)J
    .locals 2

    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->map-fzxv0v0(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final recordEditOperation(III)V
    .locals 4

    if-ltz p3, :cond_2

    .line 263
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    if-ne p2, p3, :cond_0

    return-void

    .line 271
    :cond_0
    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->opsSize:I

    add-int/lit8 v1, v1, 0x1

    .line 272
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/OpArray;->getSize-impl([I)I

    move-result v2

    if-le v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 273
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    invoke-static {v3}, Landroidx/compose/foundation/text2/input/internal/OpArray;->getSize-impl([I)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 274
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    invoke-static {v2, v0}, Landroidx/compose/foundation/text2/input/internal/OpArray;->copyOf-S4-kM8k([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    .line 276
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->ops:[I

    iget v2, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->opsSize:I

    invoke-static {v0, v2, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/OpArray;->set-impl([IIIII)V

    .line 277
    iput v1, p0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->opsSize:I

    return-void

    .line 262
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected newLen to be \u2265 0, was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
