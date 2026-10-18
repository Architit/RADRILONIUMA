.class public final Landroidx/compose/foundation/text2/input/internal/EditCommandKt;
.super Ljava/lang/Object;
.source "EditCommand.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditCommand.kt\nandroidx/compose/foundation/text2/input/internal/EditCommandKt\n+ 2 MathUtils.kt\nandroidx/compose/foundation/text2/input/internal/MathUtilsKt\n*L\n1#1,298:1\n23#2,3:299\n32#2,4:302\n*S KotlinDebug\n*F\n+ 1 EditCommand.kt\nandroidx/compose/foundation/text2/input/internal/EditCommandKt\n*L\n156#1:299,3\n161#1:302,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u001a\u000c\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0000\u001a\u001c\u0010\u0008\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u000c\u0010\r\u001a\u00020\u0006*\u00020\u0007H\u0000\u001a\u001c\u0010\u000e\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0000\u001a\u001c\u0010\u0011\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u0006*\u00020\u0007H\u0000\u001a\u0014\u0010\u0013\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000cH\u0000\u001a\u001c\u0010\u0015\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000cH\u0000\u001a\u001c\u0010\u0018\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "isSurrogatePair",
        "",
        "high",
        "",
        "low",
        "backspace",
        "",
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "commitText",
        "text",
        "",
        "newCursorPosition",
        "",
        "deleteAll",
        "deleteSurroundingText",
        "lengthBeforeCursor",
        "lengthAfterCursor",
        "deleteSurroundingTextInCodePoints",
        "finishComposingText",
        "moveCursor",
        "amount",
        "setComposingRegion",
        "start",
        "end",
        "setComposingText",
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
.method public static final backspace(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V
    .locals 3

    .line 240
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCompositionStart()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCompositionEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 243
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v1

    .line 245
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setCursor(I)V

    .line 246
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    .line 249
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final commitText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;Ljava/lang/String;I)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCompositionStart()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCompositionEnd()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v0

    if-lez p2, :cond_1

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, p2

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    :goto_1
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result p2

    invoke-static {v0, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setCursor(I)V

    return-void
.end method

.method public static final deleteAll(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V
    .locals 3

    .line 289
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public static final deleteSurroundingText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;II)V
    .locals 2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    .line 156
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v0

    add-int v1, v0, p2

    xor-int/2addr v0, v1

    xor-int/2addr p2, v1

    and-int/2addr p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    .line 161
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result p2

    sub-int v0, p2, p1

    xor-int/2addr p1, p2

    xor-int/2addr p2, v0

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-gez p1, :cond_1

    move v0, p2

    .line 162
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    return-void

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 151
    const-string p1, " and "

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 151
    const-string p1, " respectively."

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final deleteSurroundingTextInCodePoints(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;II)V
    .locals 6

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 192
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 193
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->get(I)C

    move-result v4

    .line 194
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->get(I)C

    move-result v5

    .line 196
    invoke-static {v4, v5}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_0
    move v2, v3

    .line 200
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v3

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_2
    if-ge v0, p2, :cond_3

    add-int/lit8 v1, p1, 0x1

    .line 206
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 207
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->get(I)C

    move-result v3

    .line 208
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->get(I)C

    move-result v4

    .line 210
    invoke-static {v3, v4}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, 0x2

    goto :goto_3

    :cond_2
    move p1, v1

    .line 214
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v3

    if-eq v1, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    .line 218
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    return-void

    .line 183
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 184
    const-string p1, " and "

    .line 183
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 184
    const-string p1, " respectively."

    .line 183
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final finishComposingText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    return-void
.end method

.method private static final isSurrogatePair(CC)Z
    .locals 0

    .line 297
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final moveCursor(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;I)V
    .locals 5

    .line 262
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setCursor(I)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v0

    .line 267
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-lez p1, :cond_1

    :goto_0
    if-ge v3, p1, :cond_2

    .line 270
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    neg-int p1, p1

    :goto_1
    if-ge v3, p1, :cond_2

    .line 276
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setCursor(I)V

    return-void
.end method

.method public static final setComposingRegion(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;II)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    if-eq p1, p2, :cond_2

    if-ge p1, p2, :cond_1

    .line 81
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setComposition(II)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, p2, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setComposition(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final setComposingText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;Ljava/lang/String;I)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCompositionStart()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCompositionEnd()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 104
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setComposition(II)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionStart()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelectionEnd()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 112
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setComposition(II)V

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getCursor()I

    move-result v0

    if-lez p2, :cond_2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, p2

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    :goto_1
    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result p2

    invoke-static {v0, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setCursor(I)V

    return-void
.end method
