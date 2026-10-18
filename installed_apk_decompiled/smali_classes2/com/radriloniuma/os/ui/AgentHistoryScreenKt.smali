.class public final Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;
.super Ljava/lang/Object;
.source "AgentHistoryScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAgentHistoryScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AgentHistoryScreen.kt\ncom/radriloniuma/os/ui/AgentHistoryScreenKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,99:1\n766#2:100\n857#2,2:101\n1116#3,6:103\n1116#3,6:109\n1116#3,6:115\n81#4:121\n107#4,2:122\n81#4:124\n107#4,2:125\n*S KotlinDebug\n*F\n+ 1 AgentHistoryScreen.kt\ncom/radriloniuma/os/ui/AgentHistoryScreenKt\n*L\n37#1:100\n37#1:101,2\n40#1:103,6\n41#1:109,6\n71#1:115,6\n40#1:121\n40#1:122,2\n41#1:124\n41#1:125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\n\u001a\u00020\u0005X\u008a\u008e\u0002"
    }
    d2 = {
        "AgentHistoryScreen",
        "",
        "context",
        "Landroid/content/Context;",
        "agentId",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V",
        "app_release",
        "selectedAgent",
        "Lcom/radriloniuma/os/core/model/Agent;",
        "actionLog"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final AgentHistoryScreen(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7c451fce

    move-object/from16 v4, p2

    .line 36
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v4, v2, 0x2

    const/16 v5, 0x10

    if-eqz v4, :cond_0

    or-int/lit8 v6, v1, 0x30

    move v7, v6

    move-object/from16 v6, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v1, 0x70

    if-nez v6, :cond_2

    move-object/from16 v6, p1

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    move v7, v1

    :goto_1
    and-int/lit8 v8, v2, 0x1

    const/4 v14, 0x1

    if-ne v8, v14, :cond_4

    and-int/lit8 v8, v7, 0x51

    if-ne v8, v5, :cond_4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 98
    :cond_3
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v15

    goto/16 :goto_6

    .line 36
    :cond_4
    :goto_2
    const-string v5, ""

    if-eqz v4, :cond_5

    move-object/from16 v26, v5

    goto :goto_3

    :cond_5
    move-object/from16 v26, v6

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    const-string v6, "com.radriloniuma.os.ui.AgentHistoryScreen (AgentHistoryScreen.kt:35)"

    invoke-static {v3, v7, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 37
    :cond_6
    sget-object v3, Lcom/radriloniuma/os/core/model/AgentRoster;->INSTANCE:Lcom/radriloniuma/os/core/model/AgentRoster;

    invoke-virtual {v3}, Lcom/radriloniuma/os/core/model/AgentRoster;->getDEFAULT_SWARM_ROSTER()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 101
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/radriloniuma/os/core/model/Agent;

    .line 38
    move-object/from16 v8, v26

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lcom/radriloniuma/os/core/model/Agent;->getId()Lcom/radriloniuma/os/core/model/AgentId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/radriloniuma/os/core/model/AgentId;->name()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v14}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 101
    :cond_8
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 102
    :cond_9
    check-cast v4, Ljava/util/List;

    const v3, 0x818f68c

    .line 37
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 103
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 104
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v3, v6, :cond_a

    .line 40
    invoke-static {v7, v7, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 106
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 40
    :cond_a
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v6, 0x818f6cb

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 109
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 110
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v6, v9, :cond_b

    .line 41
    invoke-static {v5, v7, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 112
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    :cond_b
    move-object v13, v6

    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 43
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v6, 0x0

    invoke-static {v5, v6, v14, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const-wide v6, 0xff0b0f19L

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v6

    new-instance v8, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1;

    invoke-direct {v8, v4, v3, v13}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$1;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v4, 0x2a48f253

    invoke-static {v15, v4, v14, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const v17, 0xc00006

    const/16 v18, 0x7a

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    move-object v4, v5

    move-object v5, v8

    move-wide v8, v9

    move v10, v11

    move v11, v12

    move-object/from16 v12, v19

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    move-object v14, v15

    move-object/from16 v28, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 69
    invoke-static {v3}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->AgentHistoryScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/radriloniuma/os/core/model/Agent;

    move-result-object v6

    if-nez v6, :cond_c

    move-object/from16 v3, v28

    goto/16 :goto_5

    :cond_c
    const v4, 0x1680aa89

    move-object/from16 v14, v28

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 115
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 116
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_d

    .line 71
    new-instance v4, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$1$1;

    invoke-direct {v4, v3}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 118
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 71
    :cond_d
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 86
    new-instance v5, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;

    move-object/from16 v8, v27

    invoke-direct {v5, v6, v8}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$2;-><init>(Lcom/radriloniuma/os/core/model/Agent;Landroidx/compose/runtime/MutableState;)V

    const v7, 0x6df81876

    const/4 v10, 0x1

    invoke-static {v14, v7, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 91
    new-instance v7, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$3;

    invoke-direct {v7, v3}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$3;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v3, 0x1a0fe6f8

    invoke-static {v14, v3, v10, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 72
    new-instance v3, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$4;

    invoke-direct {v3, v6}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$4;-><init>(Lcom/radriloniuma/os/core/model/Agent;)V

    const v9, -0x39d84a86

    invoke-static {v14, v9, v10, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 75
    new-instance v3, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$5;

    invoke-direct {v3, v6, v8}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$2$5;-><init>(Lcom/radriloniuma/os/core/model/Agent;Landroidx/compose/runtime/MutableState;)V

    const v6, -0x63cc6345

    invoke-static {v14, v6, v10, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/16 v24, 0x0

    const/16 v25, 0x3f94

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object v3, v14

    move-wide v14, v15

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x1b0c36

    move-object/from16 v22, v3

    .line 70
    invoke-static/range {v4 .. v25}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    .line 69
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    move-object/from16 v6, v26

    .line 98
    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v4, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$3;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt$AgentHistoryScreen$3;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method private static final AgentHistoryScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/radriloniuma/os/core/model/Agent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;)",
            "Lcom/radriloniuma/os/core/model/Agent;"
        }
    .end annotation

    .line 40
    check-cast p0, Landroidx/compose/runtime/State;

    .line 121
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/radriloniuma/os/core/model/Agent;

    return-object p0
.end method

.method private static final AgentHistoryScreen$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/radriloniuma/os/core/model/Agent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final AgentHistoryScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    check-cast p0, Landroidx/compose/runtime/State;

    .line 124
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final AgentHistoryScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$AgentHistoryScreen$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/radriloniuma/os/core/model/Agent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->AgentHistoryScreen$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/radriloniuma/os/core/model/Agent;)V

    return-void
.end method

.method public static final synthetic access$AgentHistoryScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->AgentHistoryScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$AgentHistoryScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/radriloniuma/os/ui/AgentHistoryScreenKt;->AgentHistoryScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
