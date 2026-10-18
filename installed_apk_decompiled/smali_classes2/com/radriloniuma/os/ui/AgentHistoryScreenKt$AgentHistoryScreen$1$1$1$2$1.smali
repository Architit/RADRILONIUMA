.class final Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AgentHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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

.field final synthetic $agent:Lcom/radriloniuma/os/core/model/Agent;

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
.method constructor <init>(Lcom/radriloniuma/os/core/model/Agent;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/radriloniuma/os/core/model/Agent;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$agent:Lcom/radriloniuma/os/core/model/Agent;

    iput-object p2, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$selectedAgent$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$actionLog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$selectedAgent$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$agent:Lcom/radriloniuma/os/core/model/Agent;

    invoke-static {v0, v1}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->access$AgentHistoryScreen$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/radriloniuma/os/core/model/Agent;)V

    iget-object v0, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$actionLog$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1$1$1$2$1;->$agent:Lcom/radriloniuma/os/core/model/Agent;

    invoke-virtual {v1}, Lcom/radriloniuma/os/core/model/Agent;->getId()Lcom/radriloniuma/os/core/model/AgentId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/radriloniuma/os/core/model/AgentId;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Node "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->access$AgentHistoryScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
