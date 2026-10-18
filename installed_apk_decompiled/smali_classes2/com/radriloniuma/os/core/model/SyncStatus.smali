.class public final enum Lcom/radriloniuma/os/core/model/SyncStatus;
.super Ljava/lang/Enum;
.source "MessageModels.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/radriloniuma/os/core/model/SyncStatus;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/radriloniuma/os/core/model/SyncStatus;",
        "",
        "Ljava/io/Serializable;",
        "(Ljava/lang/String;I)V",
        "LOCAL_ONLY",
        "PENDING",
        "ENQUEUED",
        "STAGED",
        "SYNCING",
        "SYNCED",
        "FAILED",
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

.field private static final synthetic $VALUES:[Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum ENQUEUED:Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum FAILED:Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum LOCAL_ONLY:Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum PENDING:Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum STAGED:Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum SYNCED:Lcom/radriloniuma/os/core/model/SyncStatus;

.field public static final enum SYNCING:Lcom/radriloniuma/os/core/model/SyncStatus;


# direct methods
.method private static final synthetic $values()[Lcom/radriloniuma/os/core/model/SyncStatus;
    .locals 7

    sget-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->LOCAL_ONLY:Lcom/radriloniuma/os/core/model/SyncStatus;

    sget-object v1, Lcom/radriloniuma/os/core/model/SyncStatus;->PENDING:Lcom/radriloniuma/os/core/model/SyncStatus;

    sget-object v2, Lcom/radriloniuma/os/core/model/SyncStatus;->ENQUEUED:Lcom/radriloniuma/os/core/model/SyncStatus;

    sget-object v3, Lcom/radriloniuma/os/core/model/SyncStatus;->STAGED:Lcom/radriloniuma/os/core/model/SyncStatus;

    sget-object v4, Lcom/radriloniuma/os/core/model/SyncStatus;->SYNCING:Lcom/radriloniuma/os/core/model/SyncStatus;

    sget-object v5, Lcom/radriloniuma/os/core/model/SyncStatus;->SYNCED:Lcom/radriloniuma/os/core/model/SyncStatus;

    sget-object v6, Lcom/radriloniuma/os/core/model/SyncStatus;->FAILED:Lcom/radriloniuma/os/core/model/SyncStatus;

    filled-new-array/range {v0 .. v6}, [Lcom/radriloniuma/os/core/model/SyncStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "LOCAL_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->LOCAL_ONLY:Lcom/radriloniuma/os/core/model/SyncStatus;

    .line 11
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->PENDING:Lcom/radriloniuma/os/core/model/SyncStatus;

    .line 12
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->ENQUEUED:Lcom/radriloniuma/os/core/model/SyncStatus;

    .line 13
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "STAGED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->STAGED:Lcom/radriloniuma/os/core/model/SyncStatus;

    .line 14
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "SYNCING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->SYNCING:Lcom/radriloniuma/os/core/model/SyncStatus;

    .line 15
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "SYNCED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->SYNCED:Lcom/radriloniuma/os/core/model/SyncStatus;

    .line 16
    new-instance v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/radriloniuma/os/core/model/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->FAILED:Lcom/radriloniuma/os/core/model/SyncStatus;

    invoke-static {}, Lcom/radriloniuma/os/core/model/SyncStatus;->$values()[Lcom/radriloniuma/os/core/model/SyncStatus;

    move-result-object v0

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->$VALUES:[Lcom/radriloniuma/os/core/model/SyncStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/radriloniuma/os/core/model/SyncStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/radriloniuma/os/core/model/SyncStatus;
    .locals 1

    const-class v0, Lcom/radriloniuma/os/core/model/SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/radriloniuma/os/core/model/SyncStatus;

    return-object p0
.end method

.method public static values()[Lcom/radriloniuma/os/core/model/SyncStatus;
    .locals 1

    sget-object v0, Lcom/radriloniuma/os/core/model/SyncStatus;->$VALUES:[Lcom/radriloniuma/os/core/model/SyncStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/radriloniuma/os/core/model/SyncStatus;

    return-object v0
.end method
