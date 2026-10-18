.class public final Lcom/radriloniuma/os/core/model/MessageMetadata;
.super Ljava/lang/Object;
.source "MessageModels.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 C2\u00020\u0001:\u0001CB\u00a9\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\u0015\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0007H\u00c6\u0003J\t\u00103\u001a\u00020\u0016H\u00c6\u0003J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0007H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eH\u00c6\u0003J\u00b1\u0001\u0010<\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u00c6\u0001J\u0013\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010@H\u00d6\u0003J\t\u0010A\u001a\u00020\u0005H\u00d6\u0001J\t\u0010B\u001a\u00020\u0003H\u00d6\u0001R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001dR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001dR\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u0014\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010*R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001b\u00a8\u0006D"
    }
    d2 = {
        "Lcom/radriloniuma/os/core/model/MessageMetadata;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "version",
        "",
        "timestamp",
        "",
        "isoTimestamp",
        "authorAgentId",
        "recipientAgentId",
        "sourceChannel",
        "messageType",
        "domainTags",
        "",
        "checksumSha256",
        "payloadChecksumSha256",
        "assetChecksums",
        "",
        "assetCount",
        "totalSizeBytes",
        "syncStatus",
        "Lcom/radriloniuma/os/core/model/SyncStatus;",
        "(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;)V",
        "getAssetChecksums",
        "()Ljava/util/Map;",
        "getAssetCount",
        "()I",
        "getAuthorAgentId",
        "()Ljava/lang/String;",
        "getChecksumSha256",
        "getDomainTags",
        "()Ljava/util/List;",
        "getId",
        "getIsoTimestamp",
        "getMessageType",
        "getPayloadChecksumSha256",
        "getRecipientAgentId",
        "getSourceChannel",
        "getSyncStatus",
        "()Lcom/radriloniuma/os/core/model/SyncStatus;",
        "getTimestamp",
        "()J",
        "getTotalSizeBytes",
        "getVersion",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
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
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "Companion",
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

.field public static final Companion:Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;


# instance fields
.field private final assetChecksums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final assetCount:I

.field private final authorAgentId:Ljava/lang/String;

.field private final checksumSha256:Ljava/lang/String;

.field private final domainTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final isoTimestamp:Ljava/lang/String;

.field private final messageType:Ljava/lang/String;

.field private final payloadChecksumSha256:Ljava/lang/String;

.field private final recipientAgentId:Ljava/lang/String;

.field private final sourceChannel:Ljava/lang/String;

.field private final syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

.field private final timestamp:J

.field private final totalSizeBytes:J

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->Companion:Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ",
            "Lcom/radriloniuma/os/core/model/SyncStatus;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p17

    const-string v12, "id"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "isoTimestamp"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "authorAgentId"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "recipientAgentId"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "sourceChannel"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "messageType"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "domainTags"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "checksumSha256"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "payloadChecksumSha256"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "assetChecksums"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "syncStatus"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    move/from16 v1, p2

    .line 21
    iput v1, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    move-wide/from16 v12, p3

    .line 22
    iput-wide v12, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    .line 23
    iput-object v2, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    .line 24
    iput-object v3, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    .line 25
    iput-object v4, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    .line 26
    iput-object v5, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    .line 27
    iput-object v6, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    .line 28
    iput-object v7, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    .line 29
    iput-object v8, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    .line 30
    iput-object v9, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    .line 31
    iput-object v10, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    move/from16 v1, p14

    .line 32
    iput v1, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    move-wide/from16 v1, p15

    .line 33
    iput-wide v1, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    .line 34
    iput-object v11, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 23
    sget-object v1, Lcom/radriloniuma/os/core/model/MessageMetadata;->Companion:Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;

    invoke-virtual {v1, v5, v6}, Lcom/radriloniuma/os/core/model/MessageMetadata$Companion;->formatIso8601(J)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 25
    const-string v1, "BROADCAST"

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 26
    const-string v1, "CORE_BUS"

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object/from16 v10, p8

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 27
    const-string v1, "AGENT_EVENT"

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    goto :goto_6

    :cond_6
    move-object/from16 v12, p10

    :goto_6
    and-int/lit16 v1, v0, 0x200

    .line 19
    const-string v2, ""

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p11

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p12

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 31
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v15, v1

    goto :goto_9

    :cond_9
    move-object/from16 v15, p13

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_a

    :cond_a
    move/from16 v16, p14

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    const-wide/16 v1, 0x0

    move-wide/from16 v17, v1

    goto :goto_b

    :cond_b
    move-wide/from16 v17, p15

    :goto_b
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    .line 34
    sget-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->PENDING:Lcom/radriloniuma/os/core/model/SyncStatus;

    move-object/from16 v19, v0

    goto :goto_c

    :cond_c
    move-object/from16 v19, p17

    :goto_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p6

    .line 19
    invoke-direct/range {v2 .. v19}, Lcom/radriloniuma/os/core/model/MessageMetadata;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/radriloniuma/os/core/model/MessageMetadata;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;ILjava/lang/Object;)Lcom/radriloniuma/os/core/model/MessageMetadata;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    move-object/from16 p13, v14

    if-eqz v15, :cond_d

    iget-wide v14, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p15

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p17

    :goto_e
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-wide/from16 p15, v14

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/radriloniuma/os/core/model/MessageMetadata;->copy(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;)Lcom/radriloniuma/os/core/model/MessageMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    return-object v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    return v0
.end method

.method public final component14()J
    .locals 2

    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    return-wide v0
.end method

.method public final component15()Lcom/radriloniuma/os/core/model/SyncStatus;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;)Lcom/radriloniuma/os/core/model/MessageMetadata;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ",
            "Lcom/radriloniuma/os/core/model/SyncStatus;",
            ")",
            "Lcom/radriloniuma/os/core/model/MessageMetadata;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-wide/from16 v15, p15

    move-object/from16 v17, p17

    const-string v0, "id"

    move-object/from16 v18, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isoTimestamp"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorAgentId"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAgentId"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceChannel"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainTags"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checksumSha256"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloadChecksumSha256"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetChecksums"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncStatus"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/radriloniuma/os/core/model/MessageMetadata;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/radriloniuma/os/core/model/MessageMetadata;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJLcom/radriloniuma/os/core/model/SyncStatus;)V

    return-object v19
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/radriloniuma/os/core/model/MessageMetadata;

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    iget v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    iget-wide v5, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    iget-object v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    iget v3, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    iget-wide v5, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    iget-object p1, p1, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAssetChecksums()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    return-object v0
.end method

.method public final getAssetCount()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    return v0
.end method

.method public final getAuthorAgentId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChecksumSha256()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    return-object v0
.end method

.method public final getDomainTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsoTimestamp()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayloadChecksumSha256()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipientAgentId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceChannel()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncStatus()Lcom/radriloniuma/os/core/model/SyncStatus;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    return-wide v0
.end method

.method public final getTotalSizeBytes()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    return-wide v0
.end method

.method public final getVersion()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    invoke-virtual {v1}, Lcom/radriloniuma/os/core/model/SyncStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->id:Ljava/lang/String;

    iget v2, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->version:I

    iget-wide v3, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->timestamp:J

    iget-object v5, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->isoTimestamp:Ljava/lang/String;

    iget-object v6, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->authorAgentId:Ljava/lang/String;

    iget-object v7, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->recipientAgentId:Ljava/lang/String;

    iget-object v8, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->sourceChannel:Ljava/lang/String;

    iget-object v9, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->messageType:Ljava/lang/String;

    iget-object v10, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->domainTags:Ljava/util/List;

    iget-object v11, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->checksumSha256:Ljava/lang/String;

    iget-object v12, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->payloadChecksumSha256:Ljava/lang/String;

    iget-object v13, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetChecksums:Ljava/util/Map;

    iget v14, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->assetCount:I

    move/from16 v16, v14

    iget-wide v14, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->totalSizeBytes:J

    move-wide/from16 v17, v14

    iget-object v14, v0, Lcom/radriloniuma/os/core/model/MessageMetadata;->syncStatus:Lcom/radriloniuma/os/core/model/SyncStatus;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "MessageMetadata(id="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isoTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorAgentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recipientAgentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domainTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checksumSha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payloadChecksumSha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assetChecksums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
