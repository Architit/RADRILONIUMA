.class final Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AgentHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAgentHistoryScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AgentHistoryScreen.kt\ncom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1\n+ 2 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,99:1\n139#2,12:100\n*S KotlinDebug\n*F\n+ 1 AgentHistoryScreen.kt\ncom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1\n*L\n49#1:100,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $actionLog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $agents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedAgent$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->$agents:Ljava/util/List;

    iput-object p2, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->$selectedAgent$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->$actionLog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 7

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->$agents:Ljava/util/List;

    sget-object v1, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$1;->INSTANCE:Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->$selectedAgent$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->$actionLog$delegate:Landroidx/compose/runtime/MutableState;

    .line 103
    sget-object v4, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$1;->INSTANCE:Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v1, :cond_0

    .line 105
    new-instance v6, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$2;

    invoke-direct {v6, v1, v0}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    new-instance v1, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$3;

    invoke-direct {v1, v4, v0}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 109
    new-instance v4, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$4;

    invoke-direct {v4, v0, v2, v3}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x25b7f321

    const/4 v2, 0x1

    invoke-static {v0, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function4;

    .line 105
    invoke-interface {p1, v5, v6, v1, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method
