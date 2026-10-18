.class final Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "StateSyncingModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateSyncingModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateSyncingModifier.kt\nandroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n*L\n1#1,171:1\n1#2:172\n123#3,4:173\n*S KotlinDebug\n*F\n+ 1 StateSyncingModifier.kt\nandroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode\n*L\n142#1:173,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B)\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u0012\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bH\u0002J\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\tH\u0016J\"\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00082\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0008H\u0002R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "onValueChanged",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "",
        "writeSelectionFromTextFieldValue",
        "",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function1;Z)V",
        "isFocused",
        "lastValueWhileFocused",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "()Z",
        "observeTextState",
        "fireOnValueChanged",
        "onAttach",
        "onFocusEvent",
        "focusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "onObservedReadsChanged",
        "update",
        "value",
        "updateState",
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


# instance fields
.field private isFocused:Z

.field private lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

.field private onValueChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/text2/input/TextFieldState;

.field private final writeSelectionFromTextFieldValue:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 90
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->onValueChanged:Lkotlin/jvm/functions/Function1;

    .line 91
    iput-boolean p3, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->writeSelectionFromTextFieldValue:Z

    return-void
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;)Landroidx/compose/foundation/text2/input/TextFieldState;
    .locals 0

    .line 87
    iget-object p0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    return-object p0
.end method

.method private final observeTextState(Z)V
    .locals 9

    .line 154
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 155
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode$observeTextState$1;

    invoke-direct {v2, v0, p0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode$observeTextState$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_3

    .line 162
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 163
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "text"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    :goto_1
    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    .line 165
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    :goto_2
    invoke-interface {v2}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p1

    .line 162
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->onValueChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method static synthetic observeTextState$default(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->observeTextState(Z)V

    return-void
.end method

.method private final updateState(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 4

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 173
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->setTextIfChanged$foundation_release(Ljava/lang/CharSequence;)V

    .line 147
    iget-boolean v2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->writeSelectionFromTextFieldValue:Z

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectCharsIn-5zc-tL8(J)V

    .line 175
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    return-void
.end method


# virtual methods
.method public getShouldAutoInvalidate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->observeTextState(Z)V

    return-void
.end method

.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 1

    .line 128
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->isFocused:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_0
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 133
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->isFocused:Z

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->observeTextState$default(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final update(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->onValueChanged:Lkotlin/jvm/functions/Function1;

    .line 115
    iget-boolean p2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->isFocused:Z

    if-nez p2, :cond_0

    .line 116
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;)V

    goto :goto_0

    .line 118
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

    :goto_0
    return-void
.end method
