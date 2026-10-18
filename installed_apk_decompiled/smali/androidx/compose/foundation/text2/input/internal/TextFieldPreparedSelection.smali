.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextPreparedSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,432:1\n159#1,7:444\n159#1,7:451\n155#1,11:458\n155#1,11:469\n155#1,11:480\n155#1,11:491\n155#1,11:502\n155#1,11:513\n155#1,11:524\n155#1,11:535\n155#1,11:546\n155#1,11:557\n155#1,11:568\n155#1,11:579\n155#1,11:590\n155#1,11:601\n155#1,11:612\n155#1,11:623\n159#1,7:634\n159#1,7:641\n155#1,11:648\n155#1,11:659\n155#1,11:670\n155#1,11:681\n159#1,7:692\n495#2,4:433\n500#2:442\n129#3,5:437\n1#4:443\n*S KotlinDebug\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection\n*L\n114#1:444,7\n121#1:451,7\n175#1:458,11\n179#1:469,11\n183#1:480,11\n191#1:491,11\n202#1:502,11\n217#1:513,11\n240#1:524,11\n245#1:535,11\n250#1:546,11\n254#1:557,11\n258#1:568,11\n266#1:579,11\n276#1:590,11\n282#1:601,11\n286#1:612,11\n294#1:623,11\n302#1:634,7\n306#1:641,7\n312#1:648,11\n318#1:659,11\n322#1:670,11\n330#1:681,11\n339#1:692,7\n87#1:433,4\n87#1:442\n87#1:437,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008*\u0008\u0000\u0018\u0000 O2\u00020\u0001:\u0001OB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ,\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0017\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0002\u0008\u001eH\u0082\u0008J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0002J\u001f\u0010\"\u001a\u00020\u00002\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0002\u0008\u001eJ\u001f\u0010$\u001a\u00020\u00002\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0002\u0008\u001eJ\u0019\u0010%\u001a\u00020\u001d2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100&H\u0086\u0008J\u0006\u0010\'\u001a\u00020\u0000J\u0006\u0010(\u001a\u00020 J\u0006\u0010)\u001a\u00020 J\u0006\u0010*\u001a\u00020 J\u0006\u0010+\u001a\u00020 J\u0006\u0010,\u001a\u00020 J\u0006\u0010-\u001a\u00020 J\u0008\u0010.\u001a\u00020\u001aH\u0002J\u0010\u0010/\u001a\u00020 2\u0006\u00100\u001a\u00020 H\u0002J\u0006\u00101\u001a\u00020\u0000J\u0006\u00102\u001a\u00020\u0000J\u0006\u00103\u001a\u00020\u0000J\u0006\u00104\u001a\u00020\u0000J\u0008\u00105\u001a\u00020\u0000H\u0002J\u0006\u00106\u001a\u00020\u0000J\u0008\u00107\u001a\u00020\u0000H\u0002J\u0008\u00108\u001a\u00020\u0000H\u0002J\u0006\u00109\u001a\u00020\u0000J\u0008\u0010:\u001a\u00020\u0000H\u0002J\u0006\u0010;\u001a\u00020\u0000J\u0006\u0010<\u001a\u00020\u0000J\u0006\u0010=\u001a\u00020\u0000J\u0006\u0010>\u001a\u00020\u0000J\u0006\u0010?\u001a\u00020\u0000J\u0006\u0010@\u001a\u00020\u0000J\u0006\u0010A\u001a\u00020\u0000J\u0006\u0010B\u001a\u00020\u0000J\u0006\u0010C\u001a\u00020\u0000J\u0006\u0010D\u001a\u00020\u0000J\u0006\u0010E\u001a\u00020\u0000J\u0006\u0010F\u001a\u00020\u0000J\u0010\u0010G\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020 H\u0002J\u0016\u0010H\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0002J\u0016\u0010J\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0002J\u0017\u0010K\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0082\u0010J\u0017\u0010L\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0082\u0010J\u0014\u0010M\u001a\u00020 *\u00020\u00052\u0006\u0010N\u001a\u00020 H\u0002R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006P"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
        "",
        "state",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "visibleTextLayoutHeight",
        "",
        "textPreparedSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;",
        "(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;FLandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;)V",
        "initialValue",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "getInitialValue",
        "()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "getSelection-d9O1mEE",
        "()J",
        "setSelection-5zc-tL8",
        "(J)V",
        "J",
        "text",
        "",
        "applyIfNotEmpty",
        "resetCachedX",
        "",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "charOffset",
        "",
        "offset",
        "collapseLeftOr",
        "or",
        "collapseRightOr",
        "deleteIfSelectedOr",
        "Lkotlin/Function0;",
        "deselect",
        "getLineEndByOffset",
        "getLineStartByOffset",
        "getNextCharacterIndex",
        "getNextWordOffset",
        "getPrecedingCharacterIndex",
        "getPreviousWordOffset",
        "isLtr",
        "jumpByPagesOffset",
        "pagesAmount",
        "moveCursorDownByLine",
        "moveCursorDownByPage",
        "moveCursorLeft",
        "moveCursorLeftByWord",
        "moveCursorNext",
        "moveCursorNextByParagraph",
        "moveCursorNextByWord",
        "moveCursorPrev",
        "moveCursorPrevByParagraph",
        "moveCursorPrevByWord",
        "moveCursorRight",
        "moveCursorRightByWord",
        "moveCursorToEnd",
        "moveCursorToHome",
        "moveCursorToLineEnd",
        "moveCursorToLineLeftSide",
        "moveCursorToLineRightSide",
        "moveCursorToLineStart",
        "moveCursorUpByLine",
        "moveCursorUpByPage",
        "selectAll",
        "selectMovement",
        "setCursor",
        "getLineEndByOffsetForLayout",
        "currentOffset",
        "getLineStartByOffsetForLayout",
        "getNextWordOffsetForLayout",
        "getPrevWordOffsetForLayout",
        "jumpByLinesOffset",
        "linesAmount",
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

.field public static final Companion:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;

.field public static final NoCharacterFound:I = -0x1


# instance fields
.field private final initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

.field private selection:J

.field private final state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

.field private final text:Ljava/lang/String;

.field private final textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

.field private final visibleTextLayoutHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->Companion:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;FLandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 77
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 78
    iput p3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    .line 79
    iput-object p4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    .line 87
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 434
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    .line 437
    :try_start_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :try_start_2
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 87
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 92
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 441
    :try_start_3
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 442
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p1
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    return-object p0
.end method

.method public static final synthetic access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    return-object p0
.end method

.method private final applyIfNotEmpty(ZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 160
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 162
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 163
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method static synthetic applyIfNotEmpty$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    if-eqz p1, :cond_1

    .line 160
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 162
    :cond_1
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 163
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method private final charOffset(I)I
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    return p1
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 1

    .line 386
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p1, p2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    return p1
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 384
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p2

    .line 383
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 0

    .line 379
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    .line 380
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 377
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p2

    .line 376
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    .line 351
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 352
    iget-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result p1

    return p1

    .line 354
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 355
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    return p1
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 349
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 348
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    :goto_0
    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 368
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 369
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    return p1
.end method

.method static synthetic getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 363
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 362
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final isLtr()Z
    .locals 3

    .line 344
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    .line 345
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 4

    .line 391
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 393
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->setCachedX(F)V

    .line 397
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result p2

    if-lt v0, p2, :cond_2

    .line 404
    iget-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    .line 408
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p2

    const/4 v1, 0x1

    int-to-float v2, v1

    sub-float/2addr p2, v2

    .line 409
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v2

    .line 410
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v3

    cmpl-float v3, v2, v3

    if-gez v3, :cond_4

    .line 411
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    .line 413
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    return p1

    .line 417
    :cond_5
    invoke-static {v2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    return p1
.end method

.method private final jumpByPagesOffset(I)I
    .locals 3

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 133
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 136
    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const/4 p1, 0x0

    .line 134
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 139
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v0

    .line 140
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottomLeft-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final moveCursorNext()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2

    .line 540
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 542
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 246
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextCharacterIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final moveCursorNextByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 595
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 597
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 598
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 277
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final moveCursorPrev()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2

    .line 529
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 531
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 241
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 242
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final moveCursorPrevByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 606
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 608
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 609
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 283
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPreviousWordOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final setCursor(I)V
    .locals 2

    .line 172
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    return-void
.end method


# virtual methods
.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;"
        }
    .end annotation

    .line 507
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 509
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 510
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 203
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;"
        }
    .end annotation

    .line 518
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 520
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 521
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 218
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    goto :goto_0

    .line 224
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final deleteIfSelectedOr(Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextRange;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/TextRange;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final deselect()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2

    .line 474
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 476
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 477
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 180
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final getInitialValue()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    return-object v0
.end method

.method public final getLineEndByOffset()I
    .locals 4

    .line 316
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getLineStartByOffset()I
    .locals 4

    .line 310
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    .line 238
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getNextWordOffset()I
    .locals 4

    .line 274
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    .line 232
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPreviousWordOffset()I
    .locals 4

    .line 280
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 92
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    return-wide v0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2

    .line 644
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 645
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 307
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorDownByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 454
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByPagesOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorLeft()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 485
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 487
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 488
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 184
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 573
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 575
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 576
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 259
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 3

    .line 628
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 630
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 631
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 295
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 296
    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 299
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_1
    return-object p0
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 3

    .line 617
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 619
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 620
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 287
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 288
    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 291
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_1
    return-object p0
.end method

.method public final moveCursorRight()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 496
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 498
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 499
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 192
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 584
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 586
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 587
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 267
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 562
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 564
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 565
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 551
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 553
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 554
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 664
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 666
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 319
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 675
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 677
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 678
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 323
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 686
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 688
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 689
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 331
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 653
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 655
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 656
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 313
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2

    .line 637
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 638
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 303
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorUpByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1

    .line 447
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 448
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    const/4 v0, -0x1

    .line 115
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByPagesOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final selectAll()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2

    .line 463
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 465
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 176
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    :cond_0
    return-object p0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 3

    .line 695
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 696
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 340
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    :cond_0
    return-object p0
.end method

.method public final setSelection-5zc-tL8(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    return-void
.end method
