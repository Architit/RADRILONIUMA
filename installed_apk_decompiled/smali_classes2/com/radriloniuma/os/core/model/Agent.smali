.class public final Lcom/radriloniuma/os/core/model/Agent;
.super Ljava/lang/Object;
.source "Agent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\t\u0010(\u001a\u00020\u0008H\u00c6\u0003J\u000f\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0003J\t\u0010*\u001a\u00020\rH\u00c6\u0003J\t\u0010+\u001a\u00020\u000fH\u00c6\u0003J\t\u0010,\u001a\u00020\u0011H\u00c6\u0003J\t\u0010-\u001a\u00020\u0013H\u00c6\u0003Ji\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u00c6\u0001J\u0013\u0010/\u001a\u00020\u00132\u0008\u00100\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\rH\u00d6\u0001J\t\u00103\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u00064"
    }
    d2 = {
        "Lcom/radriloniuma/os/core/model/Agent;",
        "Ljava/io/Serializable;",
        "id",
        "Lcom/radriloniuma/os/core/model/AgentId;",
        "name",
        "",
        "category",
        "status",
        "Lcom/radriloniuma/os/core/model/AgentStatus;",
        "capabilities",
        "",
        "Lcom/radriloniuma/os/core/model/AgentCapability;",
        "activeTasksCount",
        "",
        "lastHeartbeatTimestamp",
        "",
        "telemetry",
        "Lcom/radriloniuma/os/core/model/AgentTelemetry;",
        "isFloating",
        "",
        "(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;Z)V",
        "getActiveTasksCount",
        "()I",
        "getCapabilities",
        "()Ljava/util/Set;",
        "getCategory",
        "()Ljava/lang/String;",
        "getId",
        "()Lcom/radriloniuma/os/core/model/AgentId;",
        "()Z",
        "getLastHeartbeatTimestamp",
        "()J",
        "getName",
        "getStatus",
        "()Lcom/radriloniuma/os/core/model/AgentStatus;",
        "getTelemetry",
        "()Lcom/radriloniuma/os/core/model/AgentTelemetry;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final activeTasksCount:I

.field private final capabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/radriloniuma/os/core/model/AgentCapability;",
            ">;"
        }
    .end annotation
.end field

.field private final category:Ljava/lang/String;

.field private final id:Lcom/radriloniuma/os/core/model/AgentId;

.field private final isFloating:Z

.field private final lastHeartbeatTimestamp:J

.field private final name:Ljava/lang/String;

.field private final status:Lcom/radriloniuma/os/core/model/AgentStatus;

.field private final telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/radriloniuma/os/core/model/AgentId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/radriloniuma/os/core/model/AgentStatus;",
            "Ljava/util/Set<",
            "+",
            "Lcom/radriloniuma/os/core/model/AgentCapability;",
            ">;IJ",
            "Lcom/radriloniuma/os/core/model/AgentTelemetry;",
            "Z)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetry"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    .line 72
    iput-object p2, p0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    .line 75
    iput-object p5, p0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    .line 76
    iput p6, p0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    .line 77
    iput-wide p7, p0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    .line 78
    iput-object p9, p0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    .line 79
    iput-boolean p10, p0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/radriloniuma/os/core/model/AgentId;->getCodename()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/radriloniuma/os/core/model/AgentId;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    .line 74
    sget-object v3, Lcom/radriloniuma/os/core/model/AgentStatus;->IDLE:Lcom/radriloniuma/os/core/model/AgentStatus;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    .line 75
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    move/from16 v5, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    .line 78
    new-instance v9, Lcom/radriloniuma/os/core/model/AgentTelemetry;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v18}, Lcom/radriloniuma/os/core/model/AgentTelemetry;-><init>(FFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v6, p10

    :goto_7
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move/from16 p8, v5

    move-wide/from16 p9, v7

    move-object/from16 p11, v9

    move/from16 p12, v6

    .line 70
    invoke-direct/range {p2 .. p12}, Lcom/radriloniuma/os/core/model/Agent;-><init>(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/radriloniuma/os/core/model/Agent;Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;ZILjava/lang/Object;)Lcom/radriloniuma/os/core/model/Agent;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p10

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/radriloniuma/os/core/model/Agent;->copy(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;Z)Lcom/radriloniuma/os/core/model/Agent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/radriloniuma/os/core/model/AgentId;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/radriloniuma/os/core/model/AgentStatus;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    return-object v0
.end method

.method public final component5()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/radriloniuma/os/core/model/AgentCapability;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    return v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    return-wide v0
.end method

.method public final component8()Lcom/radriloniuma/os/core/model/AgentTelemetry;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    return v0
.end method

.method public final copy(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;Z)Lcom/radriloniuma/os/core/model/Agent;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/radriloniuma/os/core/model/AgentId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/radriloniuma/os/core/model/AgentStatus;",
            "Ljava/util/Set<",
            "+",
            "Lcom/radriloniuma/os/core/model/AgentCapability;",
            ">;IJ",
            "Lcom/radriloniuma/os/core/model/AgentTelemetry;",
            "Z)",
            "Lcom/radriloniuma/os/core/model/Agent;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetry"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/radriloniuma/os/core/model/Agent;

    move-object v1, v0

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/radriloniuma/os/core/model/Agent;-><init>(Lcom/radriloniuma/os/core/model/AgentId;Ljava/lang/String;Ljava/lang/String;Lcom/radriloniuma/os/core/model/AgentStatus;Ljava/util/Set;IJLcom/radriloniuma/os/core/model/AgentTelemetry;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/radriloniuma/os/core/model/Agent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/radriloniuma/os/core/model/Agent;

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    iget v3, p1, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    iget-wide v5, p1, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    iget-boolean p1, p1, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getActiveTasksCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    return v0
.end method

.method public final getCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/radriloniuma/os/core/model/AgentCapability;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Lcom/radriloniuma/os/core/model/AgentId;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    return-object v0
.end method

.method public final getLastHeartbeatTimestamp()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/radriloniuma/os/core/model/AgentStatus;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    return-object v0
.end method

.method public final getTelemetry()Lcom/radriloniuma/os/core/model/AgentTelemetry;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    invoke-virtual {v0}, Lcom/radriloniuma/os/core/model/AgentId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    invoke-virtual {v1}, Lcom/radriloniuma/os/core/model/AgentStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    invoke-virtual {v1}, Lcom/radriloniuma/os/core/model/AgentTelemetry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFloating()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/Agent;->id:Lcom/radriloniuma/os/core/model/AgentId;

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/Agent;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/radriloniuma/os/core/model/Agent;->category:Ljava/lang/String;

    iget-object v3, p0, Lcom/radriloniuma/os/core/model/Agent;->status:Lcom/radriloniuma/os/core/model/AgentStatus;

    iget-object v4, p0, Lcom/radriloniuma/os/core/model/Agent;->capabilities:Ljava/util/Set;

    iget v5, p0, Lcom/radriloniuma/os/core/model/Agent;->activeTasksCount:I

    iget-wide v6, p0, Lcom/radriloniuma/os/core/model/Agent;->lastHeartbeatTimestamp:J

    iget-object v8, p0, Lcom/radriloniuma/os/core/model/Agent;->telemetry:Lcom/radriloniuma/os/core/model/AgentTelemetry;

    iget-boolean v9, p0, Lcom/radriloniuma/os/core/model/Agent;->isFloating:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Agent(id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", name="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTasksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastHeartbeatTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telemetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFloating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
