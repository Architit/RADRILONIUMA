.class public final Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;
.super Ljava/lang/Object;
.source "GapBuffer.kt"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGapBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GapBuffer.kt\nandroidx/compose/foundation/text2/input/internal/PartialGapBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,334:1\n1#2:335\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0001J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0096\u0002J2\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;",
        "",
        "text",
        "(Ljava/lang/CharSequence;)V",
        "bufEnd",
        "",
        "bufStart",
        "buffer",
        "Landroidx/compose/foundation/text2/input/internal/GapBuffer;",
        "length",
        "getLength",
        "()I",
        "contentEquals",
        "",
        "other",
        "get",
        "",
        "index",
        "replace",
        "",
        "start",
        "end",
        "textStart",
        "textEnd",
        "subSequence",
        "startIndex",
        "endIndex",
        "toString",
        "",
        "Companion",
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
.field public static final $stable:I

.field public static final BUF_SIZE:I = 0xff

.field public static final Companion:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer$Companion;

.field public static final NOWHERE:I = -0x1

.field public static final SURROUNDING_SIZE:I = 0x40


# instance fields
.field private bufEnd:I

.field private bufStart:I

.field private buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

.field private text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->Companion:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    const/4 p1, -0x1

    .line 218
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    .line 219
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufEnd:I

    return-void
.end method

.method public static synthetic replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 244
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p5

    :cond_1
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 239
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace(IILjava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->get(I)C

    move-result p1

    return p1
.end method

.method public final contentEquals(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)C
    .locals 4

    .line 304
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 305
    :cond_0
    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    if-ge p1, v1, :cond_1

    .line 306
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 308
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;->length()I

    move-result v1

    .line 309
    iget v2, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    add-int v3, v1, v2

    if-ge p1, v3, :cond_2

    sub-int/2addr p1, v2

    .line 310
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;->get(I)C

    move-result p1

    return p1

    .line 312
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufEnd:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getLength()I
    .locals 4

    .line 226
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0

    .line 227
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufEnd:I

    iget v3, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;->length()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final bridge length()I
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->getLength()I

    move-result v0

    return v0
.end method

.method public final replace(IILjava/lang/CharSequence;II)V
    .locals 8

    if-gt p1, p2, :cond_6

    if-gt p4, p5, :cond_5

    if-ltz p1, :cond_4

    if-ltz p4, :cond_3

    .line 251
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    sub-int v1, p5, p4

    if-nez v0, :cond_0

    add-int/lit16 v0, v1, 0x80

    const/16 v2, 0xff

    .line 254
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v2, v0, [C

    const/16 v3, 0x40

    .line 257
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 258
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 261
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    sub-int v6, p1, v4

    const/4 v7, 0x0

    invoke-static {v5, v2, v7, v6, p1}, Landroidx/compose/foundation/text2/input/internal/ToCharArray_androidKt;->toCharArray(Ljava/lang/CharSequence;[CIII)V

    .line 264
    iget-object p1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    sub-int/2addr v0, v3

    add-int/2addr v3, p2

    invoke-static {p1, v2, v0, p2, v3}, Landroidx/compose/foundation/text2/input/internal/ToCharArray_androidKt;->toCharArray(Ljava/lang/CharSequence;[CIII)V

    .line 272
    invoke-static {p3, v2, v4, p4, p5}, Landroidx/compose/foundation/text2/input/internal/ToCharArray_androidKt;->toCharArray(Ljava/lang/CharSequence;[CIII)V

    .line 274
    new-instance p1, Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    add-int/2addr v4, v1

    invoke-direct {p1, v2, v4, v0}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;-><init>([CII)V

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    .line 279
    iput v6, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    .line 280
    iput v3, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufEnd:I

    return-void

    .line 285
    :cond_0
    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    sub-int v2, p1, v1

    sub-int v3, p2, v1

    if-ltz v2, :cond_2

    .line 287
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;->length()I

    move-result v1

    if-le v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    move v2, v3

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 297
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;->replace(IILjava/lang/CharSequence;II)V

    return-void

    .line 290
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    .line 293
    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufEnd:I

    .line 294
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace(IILjava/lang/CharSequence;II)V

    return-void

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "textStart must be non-negative, but was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 248
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "start must be non-negative, but was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 247
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "textStart="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " > textEnd="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 246
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "start="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " > end="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 316
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 319
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/GapBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget v4, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufStart:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text2/input/internal/GapBuffer;->append(Ljava/lang/StringBuilder;)V

    .line 323
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->bufEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
