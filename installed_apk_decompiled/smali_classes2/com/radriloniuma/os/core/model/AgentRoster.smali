.class public final Lcom/radriloniuma/os/core/model/AgentRoster;
.super Ljava/lang/Object;
.source "AgentRoster.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAgentRoster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AgentRoster.kt\ncom/radriloniuma/os/core/model/AgentRoster\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,14:1\n1#2:15\n766#3:16\n857#3,2:17\n11065#4:19\n11400#4,3:20\n*S KotlinDebug\n*F\n+ 1 AgentRoster.kt\ncom/radriloniuma/os/core/model/AgentRoster\n*L\n12#1:16\n12#1:17,2\n6#1:19\n6#1:20,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nJ\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/radriloniuma/os/core/model/AgentRoster;",
        "",
        "()V",
        "DEFAULT_SWARM_ROSTER",
        "",
        "Lcom/radriloniuma/os/core/model/Agent;",
        "getDEFAULT_SWARM_ROSTER",
        "()Ljava/util/List;",
        "getAgent",
        "id",
        "Lcom/radriloniuma/os/core/model/AgentId;",
        "getFloatingAgents",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final DEFAULT_SWARM_ROSTER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/radriloniuma/os/core/model/AgentRoster;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/radriloniuma/os/core/model/AgentRoster;

    invoke-direct {v0}, Lcom/radriloniuma/os/core/model/AgentRoster;-><init>()V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentRoster;->INSTANCE:Lcom/radriloniuma/os/core/model/AgentRoster;

    .line 6
    invoke-static {}, Lcom/radriloniuma/os/core/model/AgentId;->values()[Lcom/radriloniuma/os/core/model/AgentId;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 20
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    .line 7
    new-instance v15, Lcom/radriloniuma/os/core/model/Agent;

    sget-object v8, Lcom/radriloniuma/os/core/model/AgentStatus;->OFFLINE:Lcom/radriloniuma/os/core/model/AgentStatus;

    const/16 v16, 0x1f6

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v4 .. v16}, Lcom/radriloniuma/os/core/model/Agent;-><init>(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v18

    .line 21
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 6
    sput-object v1, Lcom/radriloniuma/os/core/model/AgentRoster;->DEFAULT_SWARM_ROSTER:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lcom/radriloniuma/os/core/model/AgentRoster;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAgent(Lcom/radriloniuma/os/core/model/AgentId;)Lcom/radriloniuma/os/core/model/Agent;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/radriloniuma/os/core/model/AgentRoster;->DEFAULT_SWARM_ROSTER:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/radriloniuma/os/core/model/Agent;

    invoke-virtual {v2}, Lcom/radriloniuma/os/core/model/Agent;->getId()Lcom/radriloniuma/os/core/model/AgentId;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/radriloniuma/os/core/model/Agent;

    return-object v1
.end method

.method public final getDEFAULT_SWARM_ROSTER()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/radriloniuma/os/core/model/AgentRoster;->DEFAULT_SWARM_ROSTER:Ljava/util/List;

    return-object v0
.end method

.method public final getFloatingAgents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/radriloniuma/os/core/model/Agent;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/radriloniuma/os/core/model/AgentRoster;->DEFAULT_SWARM_ROSTER:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/radriloniuma/os/core/model/Agent;

    .line 12
    invoke-virtual {v3}, Lcom/radriloniuma/os/core/model/Agent;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
