.class public final Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
.super Ljava/lang/Object;
.source "EditingBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditingBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditingBuffer.kt\nandroidx/compose/foundation/text2/input/internal/EditingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 92\u00020\u0001:\u00019B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011H\u0002J\u0006\u0010,\u001a\u00020)J\u0016\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011J\u0011\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0011H\u0086\u0002J\u0006\u00101\u001a\u000202J\u001e\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u000204J\u0016\u00105\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011J\u0016\u00106\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011J\u0006\u00107\u001a\u00020\u0007J\u0008\u00108\u001a\u00020\u0003H\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00058F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R$\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0014R\u0017\u0010\u0004\u001a\u00020\u00058F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010\u001aR$\u0010%\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0014\"\u0004\u0008\'\u0010\u001a\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "",
        "text",
        "",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "changeTracker",
        "Landroidx/compose/foundation/text2/input/internal/ChangeTracker;",
        "getChangeTracker",
        "()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;",
        "composition",
        "getComposition-MzsxiRA",
        "()Landroidx/compose/ui/text/TextRange;",
        "<set-?>",
        "",
        "compositionEnd",
        "getCompositionEnd",
        "()I",
        "compositionStart",
        "getCompositionStart",
        "cursor",
        "getCursor",
        "setCursor",
        "(I)V",
        "gapBuffer",
        "Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;",
        "length",
        "getLength",
        "getSelection-d9O1mEE",
        "()J",
        "value",
        "selectionEnd",
        "getSelectionEnd",
        "setSelectionEnd",
        "selectionStart",
        "getSelectionStart",
        "setSelectionStart",
        "checkRange",
        "",
        "start",
        "end",
        "commitComposition",
        "delete",
        "get",
        "",
        "index",
        "hasComposition",
        "",
        "replace",
        "",
        "setComposition",
        "setSelection",
        "toAnnotatedString",
        "toString",
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

.field public static final Companion:Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;

.field public static final NOWHERE:I = -0x1


# instance fields
.field private final changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

.field private compositionEnd:I

.field private compositionStart:I

.field private final gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

.field private selectionEnd:I

.field private selectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->Companion:Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;J)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    .line 47
    new-instance p1, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    .line 52
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    .line 61
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 80
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    .line 138
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->checkRange(II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 7

    .line 135
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    invoke-direct {p0, v6, p2, p3, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method private final checkRange(II)V
    .locals 3

    .line 285
    const-string v0, ") offset is outside of text region "

    if-ltz p1, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_0

    .line 291
    iget-object p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result p1

    if-gt p2, p1, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "end ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final setSelectionEnd(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 64
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set selectionEnd to a negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setSelectionStart(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 55
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set selectionStart to a negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final commitComposition()V
    .locals 1

    const/4 v0, -0x1

    .line 276
    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 277
    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    return-void
.end method

.method public final delete(II)V
    .locals 12

    .line 198
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->checkRange(II)V

    .line 199
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    .line 201
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->trackChange(III)V

    .line 203
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v6

    const-string p1, ""

    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 206
    iget p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    iget p2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    .line 205
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBufferKt;->updateRangeAfterDelete-pWDy79M(JJ)J

    move-result-wide p1

    .line 209
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionStart(I)V

    .line 210
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionEnd(I)V

    .line 212
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    iget p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    iget p2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    .line 214
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBufferKt;->updateRangeAfterDelete-pWDy79M(JJ)J

    move-result-wide p1

    .line 215
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 219
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final get(I)C
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    return-object v0
.end method

.method public final getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCompositionEnd()I
    .locals 1

    .line 80
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    return v0
.end method

.method public final getCompositionStart()I
    .locals 1

    .line 72
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    return v0
.end method

.method public final getCursor()I
    .locals 2

    .line 114
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public final getLength()I
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    return v0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 101
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSelectionEnd()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    return v0
.end method

.method public final getSelectionStart()I
    .locals 1

    .line 52
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    return v0
.end method

.method public final hasComposition()Z
    .locals 2

    .line 86
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final replace(IILjava/lang/CharSequence;)V
    .locals 9

    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->checkRange(II)V

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 p1, 0x0

    move p2, v8

    :goto_0
    if-ge p2, v2, :cond_0

    .line 160
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1, p2}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, v2

    :goto_1
    if-le v1, v8, :cond_1

    if-le v0, p1, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 167
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    sub-int/2addr v0, p1

    invoke-virtual {v3, p2, v1, v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->trackChange(III)V

    .line 174
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v8

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 181
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v8

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionStart(I)V

    .line 182
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v8, p1

    invoke-direct {p0, v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionEnd(I)V

    const/4 p1, -0x1

    .line 187
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 188
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    return-void
.end method

.method public final setComposition(II)V
    .locals 3

    .line 254
    const-string v0, ") offset is outside of text region "

    if-ltz p1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_1

    .line 259
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    if-ge p1, p2, :cond_0

    .line 268
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 269
    iput p2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do not set reversed or empty range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "end ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final setCursor(I)V
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    return-void
.end method

.method public final setSelection(II)V
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 234
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 236
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionStart(I)V

    .line 237
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionEnd(I)V

    return-void
.end method

.method public final toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 7

    .line 282
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
