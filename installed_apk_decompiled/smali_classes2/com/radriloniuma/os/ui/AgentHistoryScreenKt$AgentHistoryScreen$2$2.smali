.class final Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AgentHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->AgentHistoryScreen(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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


# direct methods
.method constructor <init>(Lcom/radriloniuma/os/core/model/Agent;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/radriloniuma/os/core/model/Agent;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;->$agent:Lcom/radriloniuma/os/core/model/Agent;

    iput-object p2, p0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;->$actionLog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 87
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.radriloniuma.os.ui.AgentHistoryScreen.<anonymous>.<anonymous> (AgentHistoryScreen.kt:86)"

    const v4, 0x6df81876

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2$1;

    iget-object v2, v0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;->$agent:Lcom/radriloniuma/os/core/model/Agent;

    iget-object v3, v0, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;->$actionLog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v2, v3}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2$1;-><init>(Lcom/radriloniuma/os/core/model/Agent;Landroidx/compose/runtime/MutableState;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    sget-object v1, Lcom/radriloniuma/os/ui/ComposableSingletons$AgentHistoryScreenKt;->INSTANCE:Lcom/radriloniuma/os/ui/ComposableSingletons$AgentHistoryScreenKt;

    invoke-virtual {v1}, Lcom/radriloniuma/os/ui/ComposableSingletons$AgentHistoryScreenKt;->getLambda-1$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v13

    const/high16 v15, 0x30000000

    const/16 v16, 0x1fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
