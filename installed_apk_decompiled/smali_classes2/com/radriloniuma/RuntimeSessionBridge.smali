.class final Lcom/radriloniuma/RuntimeSessionBridge;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\u0008H\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/radriloniuma/RuntimeSessionBridge;",
        "",
        "activity",
        "Lcom/radriloniuma/MainActivity;",
        "(Lcom/radriloniuma/MainActivity;)V",
        "getApiPort",
        "",
        "getApiToken",
        "",
        "getPermissionsStatus",
        "requestPermissions",
        "",
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


# instance fields
.field private final activity:Lcom/radriloniuma/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$p6qHeaC1Bq_aT_8p0I0La2o9Cw0(Lcom/radriloniuma/RuntimeSessionBridge;)V
    .locals 0

    invoke-static {p0}, Lcom/radriloniuma/RuntimeSessionBridge;->requestPermissions$lambda$0(Lcom/radriloniuma/RuntimeSessionBridge;)V

    return-void
.end method

.method public constructor <init>(Lcom/radriloniuma/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/RuntimeSessionBridge;->activity:Lcom/radriloniuma/MainActivity;

    return-void
.end method

.method private static final requestPermissions$lambda$0(Lcom/radriloniuma/RuntimeSessionBridge;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/radriloniuma/RuntimeSessionBridge;->activity:Lcom/radriloniuma/MainActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/radriloniuma/MainActivity;->checkAndRequestAllPermissions(Z)V

    return-void
.end method


# virtual methods
.method public final getApiPort()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 235
    sget-object v0, Lcom/radriloniuma/AppServer;->Companion:Lcom/radriloniuma/AppServer$Companion;

    invoke-virtual {v0}, Lcom/radriloniuma/AppServer$Companion;->getActiveInstance()Lcom/radriloniuma/AppServer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/radriloniuma/AppServer;->getLocalPort()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getApiToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 232
    sget-object v0, Lcom/radriloniuma/AppServer;->Companion:Lcom/radriloniuma/AppServer$Companion;

    invoke-virtual {v0}, Lcom/radriloniuma/AppServer$Companion;->getActiveInstance()Lcom/radriloniuma/AppServer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/radriloniuma/AppServer;->getApiToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getPermissionsStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/radriloniuma/RuntimeSessionBridge;->activity:Lcom/radriloniuma/MainActivity;

    invoke-virtual {v0}, Lcom/radriloniuma/MainActivity;->getPermissionsSummaryJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final requestPermissions()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/radriloniuma/RuntimeSessionBridge;->activity:Lcom/radriloniuma/MainActivity;

    new-instance v1, Lcom/radriloniuma/RuntimeSessionBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/radriloniuma/RuntimeSessionBridge$$ExternalSyntheticLambda0;-><init>(Lcom/radriloniuma/RuntimeSessionBridge;)V

    invoke-virtual {v0, v1}, Lcom/radriloniuma/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
