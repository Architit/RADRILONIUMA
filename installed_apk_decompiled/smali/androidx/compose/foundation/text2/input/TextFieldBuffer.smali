.class public final Landroidx/compose/foundation/text2/input/TextFieldBuffer;
.super Ljava/lang/Object;
.source "TextFieldBuffer.kt"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldBuffer.kt\nandroidx/compose/foundation/text2/input/TextFieldBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextFieldBuffer.kt\nandroidx/compose/foundation/text2/input/TextFieldBufferKt\n*L\n1#1,646:1\n1#2:647\n589#3,43:648\n*S KotlinDebug\n*F\n+ 1 TextFieldBuffer.kt\nandroidx/compose/foundation/text2/input/TextFieldBuffer\n*L\n162#1:648,43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001VB%\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010!\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\"\u001a\u00020#H\u0016J\u0016\u0010!\u001a\u00060\u0001j\u0002`\u00022\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J&\u0010!\u001a\u00060\u0001j\u0002`\u00022\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u0011H\u0016J\u0006\u0010(\u001a\u00020%J\u000e\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\u0011J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u0011H\u0002J\u001a\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/J\u0008\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u0011H\u0002J\u001a\u00103\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u0010/J \u00105\u001a\u0002012\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u0011H\u0002J\u000e\u00109\u001a\u0002012\u0006\u0010*\u001a\u00020\u0011J\u000e\u0010:\u001a\u0002012\u0006\u0010*\u001a\u00020\u0011J\u000e\u0010;\u001a\u0002012\u0006\u0010*\u001a\u00020\u0011J\u000e\u0010<\u001a\u0002012\u0006\u0010*\u001a\u00020\u0011J\u001e\u0010=\u001a\u0002012\u0006\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%J9\u0010=\u001a\u0002012\u0006\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010>\u001a\u00020\u00112\u0008\u0008\u0002\u0010?\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008@J(\u0010A\u001a\u0002012\u0006\u0010*\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u00152\u0006\u0010C\u001a\u00020\u00152\u0006\u0010D\u001a\u00020\u0015H\u0002J\"\u0010E\u001a\u0002012\u0006\u0010-\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u0015H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010GJ\u0006\u0010H\u001a\u000201J\u0018\u0010I\u001a\u0002012\u0006\u0010-\u001a\u00020\u001a\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008J\u0010KJ\u0018\u0010L\u001a\u0002012\u0006\u0010-\u001a\u00020\u001a\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010KJ\u0015\u0010N\u001a\u0002012\u0006\u0010O\u001a\u00020%H\u0000\u00a2\u0006\u0002\u0008PJ\u0008\u0010Q\u001a\u00020RH\u0016J\u001c\u0010S\u001a\u00020\u00042\n\u0008\u0002\u0010T\u001a\u0004\u0018\u00010\u001aH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008UR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00158G\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0013R&\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a@BX\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001f\u001a\u00020\u001a8F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001dR\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006W"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer;",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "initialValue",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "initialChanges",
        "Landroidx/compose/foundation/text2/input/internal/ChangeTracker;",
        "sourceValue",
        "(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/ChangeTracker;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V",
        "buffer",
        "Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;",
        "changeTracker",
        "changes",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;",
        "getChanges",
        "()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;",
        "codepointLength",
        "",
        "getCodepointLength",
        "()I",
        "hasSelection",
        "",
        "()Z",
        "length",
        "getLength",
        "<set-?>",
        "Landroidx/compose/ui/text/TextRange;",
        "selectionInChars",
        "getSelectionInChars-d9O1mEE",
        "()J",
        "J",
        "selectionInCodepoints",
        "getSelectionInCodepoints-d9O1mEE",
        "append",
        "char",
        "",
        "text",
        "",
        "start",
        "end",
        "asCharSequence",
        "charAt",
        "index",
        "charIndexToCodepointIndex",
        "charsToCodepoints",
        "range",
        "charsToCodepoints-GEjPoXI",
        "(J)J",
        "clearChangeList",
        "",
        "codepointIndexToCharIndex",
        "codepointsToChars",
        "codepointsToChars-GEjPoXI",
        "onTextWillChange",
        "replaceStart",
        "replaceEnd",
        "newLength",
        "placeCursorAfterCharAt",
        "placeCursorAfterCodepointAt",
        "placeCursorBeforeCharAt",
        "placeCursorBeforeCodepointAt",
        "replace",
        "textStart",
        "textEnd",
        "replace$foundation_release",
        "requireValidIndex",
        "startExclusive",
        "endExclusive",
        "inCodepoints",
        "requireValidRange",
        "requireValidRange-72CqOWE",
        "(JZ)V",
        "revertAllChanges",
        "selectCharsIn",
        "selectCharsIn-5zc-tL8",
        "(J)V",
        "selectCodepointsIn",
        "selectCodepointsIn-5zc-tL8",
        "setTextIfChanged",
        "newText",
        "setTextIfChanged$foundation_release",
        "toString",
        "",
        "toTextFieldCharSequence",
        "composition",
        "toTextFieldCharSequence-OEnZFl4$foundation_release",
        "ChangeList",
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
.field private final buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

.field private changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

.field private selectionInChars:J

.field private final sourceValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/ChangeTracker;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->sourceValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 59
    new-instance p3, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p3, v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    if-eqz p2, :cond_0

    .line 65
    new-instance p3, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    invoke-direct {p3, p2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    .line 103
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/ChangeTracker;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, p1

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;-><init>(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/ChangeTracker;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    return-void
.end method

.method private final charIndexToCodepointIndex(I)I
    .locals 0

    return p1
.end method

.method private final charsToCodepoints-GEjPoXI(J)J
    .locals 1

    .line 441
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->charIndexToCodepointIndex(I)I

    move-result v0

    .line 442
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->charIndexToCodepointIndex(I)I

    move-result p1

    .line 440
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    return-wide p1
.end method

.method private final clearChangeList()V
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    :cond_0
    return-void
.end method

.method private final codepointIndexToCharIndex(I)I
    .locals 0

    return p1
.end method

.method private final codepointsToChars-GEjPoXI(J)J
    .locals 1

    .line 436
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->codepointIndexToCharIndex(I)I

    move-result v0

    .line 437
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->codepointIndexToCharIndex(I)I

    move-result p1

    .line 435
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    return-wide p1
.end method

.method private final onTextWillChange(III)V
    .locals 3

    .line 198
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    .line 199
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->trackChange(III)V

    .line 202
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 203
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 204
    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p2

    .line 205
    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    if-ge v1, v0, :cond_1

    return-void

    :cond_1
    if-gt p2, v0, :cond_2

    if-gt p1, v1, :cond_2

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_2
    if-le p2, v0, :cond_3

    if-ge v1, p1, :cond_3

    add-int/2addr v0, p3

    move p2, v0

    goto :goto_2

    :cond_3
    if-lt p2, p1, :cond_5

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    :goto_0
    add-int/2addr p2, p3

    :cond_4
    :goto_1
    add-int v0, v1, p3

    goto :goto_2

    :cond_5
    if-ge v0, p2, :cond_6

    add-int p2, v0, p3

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    goto :goto_1

    .line 238
    :cond_6
    :goto_2
    invoke-static {p2, v0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public static synthetic replace$foundation_release$default(Landroidx/compose/foundation/text2/input/TextFieldBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 149
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p5

    :cond_1
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 144
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace$foundation_release(IILjava/lang/CharSequence;II)V

    return-void
.end method

.method private final requireValidIndex(IZZZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 409
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-eqz p4, :cond_2

    .line 414
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->charIndexToCodepointIndex(I)I

    move-result p2

    .line 415
    invoke-direct {p0, p3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->charIndexToCodepointIndex(I)I

    move-result p3

    :cond_2
    if-gt p2, p1, :cond_3

    if-ge p1, p3, :cond_3

    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 419
    const-string/jumbo p4, "codepoints"

    goto :goto_2

    :cond_4
    const-string/jumbo p4, "chars"

    .line 420
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to be in ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final requireValidRange-72CqOWE(JZ)V
    .locals 4

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    if-eqz p3, :cond_0

    .line 428
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->charsToCodepoints-GEjPoXI(J)J

    move-result-wide v0

    .line 429
    :cond_0
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/text/TextRange;->contains-5zc-tL8(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    .line 430
    const-string/jumbo p3, "codepoints"

    goto :goto_0

    :cond_1
    const-string/jumbo p3, "chars"

    .line 431
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to be in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void
.end method

.method public static synthetic toTextFieldCharSequence-OEnZFl4$foundation_release$default(Landroidx/compose/foundation/text2/input/TextFieldBuffer;Landroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->toTextFieldCharSequence-OEnZFl4$foundation_release(Landroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 11

    .line 185
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 186
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 187
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v4

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 185
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 11

    .line 169
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 172
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v4

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v5

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 169
    :cond_0
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 11

    .line 177
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v1

    sub-int v2, p3, p2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 180
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v4

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v5

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 177
    :cond_0
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public final asCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/text2/input/EmptyChangeList;->INSTANCE:Landroidx/compose/foundation/text2/input/EmptyChangeList;

    :goto_0
    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    return-object v0
.end method

.method public final getCodepointLength()I
    .locals 3

    .line 76
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    return v0
.end method

.method public final getSelectionInChars-d9O1mEE()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-wide v0
.end method

.method public final getSelectionInCodepoints-d9O1mEE()J
    .locals 2

    .line 112
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->charsToCodepoints-GEjPoXI(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasSelection()Z
    .locals 2

    .line 96
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final placeCursorAfterCharAt(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 348
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->requireValidIndex(IZZZ)V

    add-int/2addr p1, v1

    .line 349
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final placeCursorAfterCodepointAt(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 327
    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->requireValidIndex(IZZZ)V

    add-int/2addr p1, v1

    .line 328
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getCodepointLength()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->codepointIndexToCharIndex(I)I

    move-result p1

    .line 329
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final placeCursorBeforeCharAt(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->requireValidIndex(IZZZ)V

    .line 309
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final placeCursorBeforeCodepointAt(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->requireValidIndex(IZZZ)V

    .line 287
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->codepointIndexToCharIndex(I)I

    move-result p1

    .line 288
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final replace(IILjava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x0

    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace$foundation_release(IILjava/lang/CharSequence;II)V

    return-void
.end method

.method public final replace$foundation_release(IILjava/lang/CharSequence;II)V
    .locals 7

    if-gt p1, p2, :cond_1

    if-gt p4, p5, :cond_0

    sub-int v0, p5, p4

    .line 153
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 154
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace(IILjava/lang/CharSequence;II)V

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected textStart="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " <= textEnd="

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

    .line 151
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Expected start="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " <= end="

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

.method public final revertAllChanges()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->sourceValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->sourceValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    .line 267
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->clearChangeList()V

    return-void
.end method

.method public final selectCharsIn-5zc-tL8(J)V
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->requireValidRange-72CqOWE(JZ)V

    .line 391
    iput-wide p1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final selectCodepointsIn-5zc-tL8(J)V
    .locals 1

    const/4 v0, 0x1

    .line 369
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->requireValidRange-72CqOWE(JZ)V

    .line 370
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->codepointsToChars-GEjPoXI(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final setTextIfChanged$foundation_release(Ljava/lang/CharSequence;)V
    .locals 13

    .line 162
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    check-cast v0, Ljava/lang/CharSequence;

    .line 649
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 651
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 654
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v4

    move v5, v3

    move v6, v5

    :cond_0
    const/4 v7, 0x1

    if-nez v4, :cond_2

    .line 660
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    :cond_2
    :goto_0
    if-nez v6, :cond_4

    add-int/lit8 v8, v1, -0x1

    .line 668
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v2, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    move v6, v7

    :cond_4
    :goto_1
    if-ge v3, v1, :cond_5

    if-ge v5, v2, :cond_5

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    :cond_5
    move v9, v1

    move v12, v2

    move v8, v3

    move v11, v5

    goto :goto_2

    :cond_6
    move v9, v1

    move v12, v2

    move v8, v4

    move v11, v8

    :goto_2
    if-lt v8, v9, :cond_7

    if-lt v11, v12, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, p0

    move-object v10, p1

    .line 163
    invoke-virtual/range {v7 .. v12}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace$foundation_release(IILjava/lang/CharSequence;II)V

    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTextFieldCharSequence-OEnZFl4$foundation_release(Landroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 3

    .line 397
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 398
    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectionInChars:J

    .line 396
    invoke-static {v0, v1, v2, p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object p1

    return-object p1
.end method
