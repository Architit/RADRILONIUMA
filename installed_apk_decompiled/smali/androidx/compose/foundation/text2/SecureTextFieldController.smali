.class public final Landroidx/compose/foundation/text2/SecureTextFieldController;
.super Ljava/lang/Object;
.source "BasicSecureTextField.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/SecureTextFieldController;",
        "",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "codepointTransformation",
        "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
        "getCodepointTransformation",
        "()Landroidx/compose/foundation/text2/input/CodepointTransformation;",
        "focusChangeModifier",
        "Landroidx/compose/ui/Modifier;",
        "getFocusChangeModifier",
        "()Landroidx/compose/ui/Modifier;",
        "passwordRevealFilter",
        "Landroidx/compose/foundation/text2/PasswordRevealFilter;",
        "getPasswordRevealFilter",
        "()Landroidx/compose/foundation/text2/PasswordRevealFilter;",
        "resetTimerSignal",
        "Lkotlinx/coroutines/channels/Channel;",
        "",
        "scheduleHide",
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
.field private final codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

.field private final focusChangeModifier:Landroidx/compose/ui/Modifier;

.field private final passwordRevealFilter:Landroidx/compose/foundation/text2/PasswordRevealFilter;

.field private final resetTimerSignal:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$zNkyDCDjOKbAiMF_YvvCFp_NVrc(Landroidx/compose/foundation/text2/SecureTextFieldController;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text2/SecureTextFieldController;->codepointTransformation$lambda$0(Landroidx/compose/foundation/text2/SecureTextFieldController;II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Landroidx/compose/foundation/text2/PasswordRevealFilter;

    new-instance v1, Landroidx/compose/foundation/text2/SecureTextFieldController$passwordRevealFilter$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/SecureTextFieldController$passwordRevealFilter$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/PasswordRevealFilter;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->passwordRevealFilter:Landroidx/compose/foundation/text2/PasswordRevealFilter;

    .line 365
    new-instance v0, Landroidx/compose/foundation/text2/SecureTextFieldController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/SecureTextFieldController$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text2/SecureTextFieldController;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    .line 374
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/text2/SecureTextFieldController$focusChangeModifier$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/SecureTextFieldController$focusChangeModifier$1;-><init>(Landroidx/compose/foundation/text2/SecureTextFieldController;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->focusChangeModifier:Landroidx/compose/ui/Modifier;

    const/4 v0, 0x6

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 378
    invoke-static {v1, v2, v2, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->resetTimerSignal:Lkotlinx/coroutines/channels/Channel;

    .line 382
    new-instance v0, Landroidx/compose/foundation/text2/SecureTextFieldController$1;

    invoke-direct {v0, p0, v2}, Landroidx/compose/foundation/text2/SecureTextFieldController$1;-><init>(Landroidx/compose/foundation/text2/SecureTextFieldController;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getResetTimerSignal$p(Landroidx/compose/foundation/text2/SecureTextFieldController;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 351
    iget-object p0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->resetTimerSignal:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$scheduleHide(Landroidx/compose/foundation/text2/SecureTextFieldController;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Landroidx/compose/foundation/text2/SecureTextFieldController;->scheduleHide()V

    return-void
.end method

.method private static final codepointTransformation$lambda$0(Landroidx/compose/foundation/text2/SecureTextFieldController;II)I
    .locals 0

    .line 366
    iget-object p0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->passwordRevealFilter:Landroidx/compose/foundation/text2/PasswordRevealFilter;

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->getRevealCodepointIndex$foundation_release()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x2022

    :goto_0
    return p2
.end method

.method private final scheduleHide()V
    .locals 2

    .line 393
    iget-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->resetTimerSignal:Lkotlinx/coroutines/channels/Channel;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->passwordRevealFilter:Landroidx/compose/foundation/text2/PasswordRevealFilter;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->hide()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCodepointTransformation()Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    return-object v0
.end method

.method public final getFocusChangeModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->focusChangeModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final getPasswordRevealFilter()Landroidx/compose/foundation/text2/PasswordRevealFilter;
    .locals 1

    .line 360
    iget-object v0, p0, Landroidx/compose/foundation/text2/SecureTextFieldController;->passwordRevealFilter:Landroidx/compose/foundation/text2/PasswordRevealFilter;

    return-object v0
.end method
