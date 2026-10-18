.class public final enum Lcom/radriloniuma/os/core/model/AgentId;
.super Ljava/lang/Enum;
.source "Agent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/radriloniuma/os/core/model/AgentId$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/radriloniuma/os/core/model/AgentId;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001c\u0008\u0086\u0081\u0002\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001$B\'\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/radriloniuma/os/core/model/AgentId;",
        "",
        "Ljava/io/Serializable;",
        "codename",
        "",
        "category",
        "accentHex",
        "",
        "defaultPriority",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V",
        "getAccentHex",
        "()J",
        "getCategory",
        "()Ljava/lang/String;",
        "getCodename",
        "getDefaultPriority",
        "()I",
        "ARCHIVATOR",
        "GUARD",
        "SOUL",
        "CATRAL",
        "GATEWAY",
        "CORE",
        "SCAN",
        "MAP",
        "FIX",
        "DEBUG",
        "AI_CORE",
        "DISPATCHER",
        "SENTINEL",
        "NETWORK",
        "TELEMETRY",
        "TERMINAL",
        "SYNTHESIZER",
        "VAULT",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum AI_CORE:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum ARCHIVATOR:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum CATRAL:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum CORE:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final Companion:Lcom/radriloniuma/os/core/model/AgentId$Companion;

.field public static final enum DEBUG:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum DISPATCHER:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum FIX:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum GATEWAY:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum GUARD:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum MAP:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum NETWORK:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum SCAN:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum SENTINEL:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum SOUL:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum SYNTHESIZER:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum TELEMETRY:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum TERMINAL:Lcom/radriloniuma/os/core/model/AgentId;

.field public static final enum VAULT:Lcom/radriloniuma/os/core/model/AgentId;


# instance fields
.field private final accentHex:J

.field private final category:Ljava/lang/String;

.field private final codename:Ljava/lang/String;

.field private final defaultPriority:I


# direct methods
.method private static final synthetic $values()[Lcom/radriloniuma/os/core/model/AgentId;
    .locals 18

    sget-object v0, Lcom/radriloniuma/os/core/model/AgentId;->ARCHIVATOR:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v1, Lcom/radriloniuma/os/core/model/AgentId;->GUARD:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v2, Lcom/radriloniuma/os/core/model/AgentId;->SOUL:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v3, Lcom/radriloniuma/os/core/model/AgentId;->CATRAL:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v4, Lcom/radriloniuma/os/core/model/AgentId;->GATEWAY:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v5, Lcom/radriloniuma/os/core/model/AgentId;->CORE:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v6, Lcom/radriloniuma/os/core/model/AgentId;->SCAN:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v7, Lcom/radriloniuma/os/core/model/AgentId;->MAP:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v8, Lcom/radriloniuma/os/core/model/AgentId;->FIX:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v9, Lcom/radriloniuma/os/core/model/AgentId;->DEBUG:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v10, Lcom/radriloniuma/os/core/model/AgentId;->AI_CORE:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v11, Lcom/radriloniuma/os/core/model/AgentId;->DISPATCHER:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v12, Lcom/radriloniuma/os/core/model/AgentId;->SENTINEL:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v13, Lcom/radriloniuma/os/core/model/AgentId;->NETWORK:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v14, Lcom/radriloniuma/os/core/model/AgentId;->TELEMETRY:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v15, Lcom/radriloniuma/os/core/model/AgentId;->TERMINAL:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v16, Lcom/radriloniuma/os/core/model/AgentId;->SYNTHESIZER:Lcom/radriloniuma/os/core/model/AgentId;

    sget-object v17, Lcom/radriloniuma/os/core/model/AgentId;->VAULT:Lcom/radriloniuma/os/core/model/AgentId;

    filled-new-array/range {v0 .. v17}, [Lcom/radriloniuma/os/core/model/AgentId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 11
    new-instance v8, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v5, 0xff00e5ffL

    const/16 v7, 0xa

    const-string v1, "ARCHIVATOR"

    const/4 v2, 0x0

    const-string v3, "Ark Sentinel"

    const-string v4, "Storage Core"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v8, Lcom/radriloniuma/os/core/model/AgentId;->ARCHIVATOR:Lcom/radriloniuma/os/core/model/AgentId;

    .line 12
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xffff1744L

    const/16 v16, 0xa

    const-string v10, "GUARD"

    const/4 v11, 0x1

    const-string v12, "Soul Shield"

    const-string v13, "Security Core"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->GUARD:Lcom/radriloniuma/os/core/model/AgentId;

    .line 13
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xffd500f9L

    const/16 v8, 0xa

    const-string v2, "SOUL"

    const/4 v3, 0x2

    const-string v4, "Vitality Anchor"

    const-string v5, "Core OS"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->SOUL:Lcom/radriloniuma/os/core/model/AgentId;

    .line 14
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xff00e676L

    const-string v10, "CATRAL"

    const/4 v11, 0x3

    const-string v12, "Hyper Linker"

    const-string v13, "Logistics"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->CATRAL:Lcom/radriloniuma/os/core/model/AgentId;

    .line 15
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xff2979ffL

    const-string v2, "GATEWAY"

    const/4 v3, 0x4

    const-string v4, "Cloud Bridge"

    const-string v5, "Sync Engine"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->GATEWAY:Lcom/radriloniuma/os/core/model/AgentId;

    .line 16
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xffffab00L

    const/16 v16, 0x9

    const-string v10, "CORE"

    const/4 v11, 0x5

    const-string v12, "Kernel Arbiter"

    const-string v13, "Kernel Core"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->CORE:Lcom/radriloniuma/os/core/model/AgentId;

    .line 17
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xff1de9b6L

    const/16 v8, 0x9

    const-string v2, "SCAN"

    const/4 v3, 0x6

    const-string v4, "Omni Sensor"

    const-string v5, "Perception"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->SCAN:Lcom/radriloniuma/os/core/model/AgentId;

    .line 18
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xffaeea00L

    const/16 v16, 0x8

    const-string v10, "MAP"

    const/4 v11, 0x7

    const-string v12, "Topology Matrix"

    const-string v13, "Perception"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->MAP:Lcom/radriloniuma/os/core/model/AgentId;

    .line 19
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xffff9100L

    const/16 v8, 0x8

    const-string v2, "FIX"

    const/16 v3, 0x8

    const-string v4, "Auto Healer"

    const-string v5, "Resilience"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->FIX:Lcom/radriloniuma/os/core/model/AgentId;

    .line 20
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xffff3d00L

    const-string v10, "DEBUG"

    const/16 v11, 0x9

    const-string v12, "Trace Inspector"

    const-string v13, "Diagnostics"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->DEBUG:Lcom/radriloniuma/os/core/model/AgentId;

    .line 21
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xfff50057L

    const/16 v8, 0x9

    const-string v2, "AI_CORE"

    const/16 v3, 0xa

    const-string v4, "Gemini Spark"

    const-string v5, "Intelligence"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->AI_CORE:Lcom/radriloniuma/os/core/model/AgentId;

    .line 22
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xff3d5afeL

    const/16 v16, 0x9

    const-string v10, "DISPATCHER"

    const/16 v11, 0xb

    const-string v12, "Swarm Router"

    const-string v13, "Orchestration"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->DISPATCHER:Lcom/radriloniuma/os/core/model/AgentId;

    .line 23
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xffff4081L

    const-string v2, "SENTINEL"

    const/16 v3, 0xc

    const-string v4, "Audit Warden"

    const-string v5, "Governance"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->SENTINEL:Lcom/radriloniuma/os/core/model/AgentId;

    .line 24
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xff00b0ffL

    const/16 v16, 0x8

    const-string v10, "NETWORK"

    const/16 v11, 0xd

    const-string v12, "Mesh Transport"

    const-string v13, "Connectivity"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->NETWORK:Lcom/radriloniuma/os/core/model/AgentId;

    .line 25
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xffffd600L

    const/4 v8, 0x7

    const-string v2, "TELEMETRY"

    const/16 v3, 0xe

    const-string v4, "Pulse Gauge"

    const-string v5, "Diagnostics"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->TELEMETRY:Lcom/radriloniuma/os/core/model/AgentId;

    .line 26
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xff76ff03L

    const-string v10, "TERMINAL"

    const/16 v11, 0xf

    const-string v12, "PTY Console"

    const-string v13, "Interface"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->TERMINAL:Lcom/radriloniuma/os/core/model/AgentId;

    .line 27
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v6, 0xff651fffL

    const/16 v8, 0x8

    const-string v2, "SYNTHESIZER"

    const/16 v3, 0x10

    const-string v4, "Reducer Core"

    const-string v5, "Intelligence"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->SYNTHESIZER:Lcom/radriloniuma/os/core/model/AgentId;

    .line 28
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId;

    const-wide v14, 0xffffd700L

    const/16 v16, 0x9

    const-string v10, "VAULT"

    const/16 v11, 0x11

    const-string v12, "Key Master"

    const-string v13, "Security Core"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/radriloniuma/os/core/model/AgentId;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->VAULT:Lcom/radriloniuma/os/core/model/AgentId;

    invoke-static {}, Lcom/radriloniuma/os/core/model/AgentId;->$values()[Lcom/radriloniuma/os/core/model/AgentId;

    move-result-object v0

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->$VALUES:[Lcom/radriloniuma/os/core/model/AgentId;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/radriloniuma/os/core/model/AgentId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/radriloniuma/os/core/model/AgentId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentId;->Companion:Lcom/radriloniuma/os/core/model/AgentId$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/radriloniuma/os/core/model/AgentId;->codename:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/radriloniuma/os/core/model/AgentId;->category:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/radriloniuma/os/core/model/AgentId;->accentHex:J

    .line 9
    iput p7, p0, Lcom/radriloniuma/os/core/model/AgentId;->defaultPriority:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/radriloniuma/os/core/model/AgentId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/radriloniuma/os/core/model/AgentId;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/AgentId;
    .locals 1

    const-class v0, Lcom/radriloniuma/os/core/model/AgentId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/radriloniuma/os/core/model/AgentId;

    return-object p0
.end method

.method public static values()[Lcom/radriloniuma/os/core/model/AgentId;
    .locals 1

    sget-object v0, Lcom/radriloniuma/os/core/model/AgentId;->$VALUES:[Lcom/radriloniuma/os/core/model/AgentId;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/radriloniuma/os/core/model/AgentId;

    return-object v0
.end method


# virtual methods
.method public final getAccentHex()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/radriloniuma/os/core/model/AgentId;->accentHex:J

    return-wide v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/AgentId;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodename()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/radriloniuma/os/core/model/AgentId;->codename:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultPriority()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/radriloniuma/os/core/model/AgentId;->defaultPriority:I

    return v0
.end method
