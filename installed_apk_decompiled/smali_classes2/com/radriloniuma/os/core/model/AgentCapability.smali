.class public final enum Lcom/radriloniuma/os/core/model/AgentCapability;
.super Ljava/lang/Enum;
.source "Agent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/radriloniuma/os/core/model/AgentCapability;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/radriloniuma/os/core/model/AgentCapability;",
        "",
        "Ljava/io/Serializable;",
        "(Ljava/lang/String;I)V",
        "STORAGE_SEGMENTATION",
        "ZERO_COPY_SYMLINK",
        "WINDOW_OVERLAY",
        "CLOUD_SYNC_GDRIVE",
        "CLOUD_SYNC_GITHUB",
        "OMNI_CAPTURE_GESTURES",
        "WAKELOCK_SUPERVISOR",
        "INTER_AGENT_MESSAGING",
        "CRYPTO_SIGNING",
        "PTY_EXECUTION",
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

.field private static final synthetic $VALUES:[Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum CLOUD_SYNC_GDRIVE:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum CLOUD_SYNC_GITHUB:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum CRYPTO_SIGNING:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum INTER_AGENT_MESSAGING:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum OMNI_CAPTURE_GESTURES:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum PTY_EXECUTION:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum STORAGE_SEGMENTATION:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum WAKELOCK_SUPERVISOR:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum WINDOW_OVERLAY:Lcom/radriloniuma/os/core/model/AgentCapability;

.field public static final enum ZERO_COPY_SYMLINK:Lcom/radriloniuma/os/core/model/AgentCapability;


# direct methods
.method private static final synthetic $values()[Lcom/radriloniuma/os/core/model/AgentCapability;
    .locals 10

    sget-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->STORAGE_SEGMENTATION:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v1, Lcom/radriloniuma/os/core/model/AgentCapability;->ZERO_COPY_SYMLINK:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v2, Lcom/radriloniuma/os/core/model/AgentCapability;->WINDOW_OVERLAY:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v3, Lcom/radriloniuma/os/core/model/AgentCapability;->CLOUD_SYNC_GDRIVE:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v4, Lcom/radriloniuma/os/core/model/AgentCapability;->CLOUD_SYNC_GITHUB:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v5, Lcom/radriloniuma/os/core/model/AgentCapability;->OMNI_CAPTURE_GESTURES:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v6, Lcom/radriloniuma/os/core/model/AgentCapability;->WAKELOCK_SUPERVISOR:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v7, Lcom/radriloniuma/os/core/model/AgentCapability;->INTER_AGENT_MESSAGING:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v8, Lcom/radriloniuma/os/core/model/AgentCapability;->CRYPTO_SIGNING:Lcom/radriloniuma/os/core/model/AgentCapability;

    sget-object v9, Lcom/radriloniuma/os/core/model/AgentCapability;->PTY_EXECUTION:Lcom/radriloniuma/os/core/model/AgentCapability;

    filled-new-array/range {v0 .. v9}, [Lcom/radriloniuma/os/core/model/AgentCapability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "STORAGE_SEGMENTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->STORAGE_SEGMENTATION:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 51
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "ZERO_COPY_SYMLINK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->ZERO_COPY_SYMLINK:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 52
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "WINDOW_OVERLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->WINDOW_OVERLAY:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 53
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "CLOUD_SYNC_GDRIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->CLOUD_SYNC_GDRIVE:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 54
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "CLOUD_SYNC_GITHUB"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->CLOUD_SYNC_GITHUB:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 55
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "OMNI_CAPTURE_GESTURES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->OMNI_CAPTURE_GESTURES:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 56
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "WAKELOCK_SUPERVISOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->WAKELOCK_SUPERVISOR:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 57
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "INTER_AGENT_MESSAGING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->INTER_AGENT_MESSAGING:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 58
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "CRYPTO_SIGNING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->CRYPTO_SIGNING:Lcom/radriloniuma/os/core/model/AgentCapability;

    .line 59
    new-instance v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    const-string v1, "PTY_EXECUTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/AgentCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->PTY_EXECUTION:Lcom/radriloniuma/os/core/model/AgentCapability;

    invoke-static {}, Lcom/radriloniuma/os/core/model/AgentCapability;->$values()[Lcom/radriloniuma/os/core/model/AgentCapability;

    move-result-object v0

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->$VALUES:[Lcom/radriloniuma/os/core/model/AgentCapability;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/radriloniuma/os/core/model/AgentCapability;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/AgentCapability;
    .locals 1

    const-class v0, Lcom/radriloniuma/os/core/model/AgentCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/radriloniuma/os/core/model/AgentCapability;

    return-object p0
.end method

.method public static values()[Lcom/radriloniuma/os/core/model/AgentCapability;
    .locals 1

    sget-object v0, Lcom/radriloniuma/os/core/model/AgentCapability;->$VALUES:[Lcom/radriloniuma/os/core/model/AgentCapability;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/radriloniuma/os/core/model/AgentCapability;

    return-object v0
.end method
