.class public final Lcom/radriloniuma/AppServer$Companion;
.super Ljava/lang/Object;
.source "AppServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/radriloniuma/AppServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/radriloniuma/AppServer$Companion;",
        "",
        "()V",
        "DEFAULT_PORT",
        "",
        "STATE_ERROR",
        "",
        "STATE_INVALID_ROOTFS",
        "STATE_NOT_INSTALLED",
        "STATE_RUNNING",
        "STATE_STOPPED",
        "TAG",
        "<set-?>",
        "Lcom/radriloniuma/AppServer;",
        "activeInstance",
        "getActiveInstance",
        "()Lcom/radriloniuma/AppServer;",
        "setActiveInstance$app_release",
        "(Lcom/radriloniuma/AppServer;)V",
        "startCount",
        "getStartCount",
        "()I",
        "startCounter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "stopCount",
        "getStopCount",
        "stopCounter",
        "reset",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/radriloniuma/AppServer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveInstance()Lcom/radriloniuma/AppServer;
    .locals 1

    .line 412
    invoke-static {}, Lcom/radriloniuma/AppServer;->access$getActiveInstance$cp()Lcom/radriloniuma/AppServer;

    move-result-object v0

    return-object v0
.end method

.method public final getStartCount()I
    .locals 1

    .line 416
    invoke-static {}, Lcom/radriloniuma/AppServer;->access$getStartCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getStopCount()I
    .locals 1

    .line 417
    invoke-static {}, Lcom/radriloniuma/AppServer;->access$getStopCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Lcom/radriloniuma/AppServer$Companion;->setActiveInstance$app_release(Lcom/radriloniuma/AppServer;)V

    .line 420
    invoke-static {}, Lcom/radriloniuma/AppServer;->access$getStartCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 421
    invoke-static {}, Lcom/radriloniuma/AppServer;->access$getStopCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final setActiveInstance$app_release(Lcom/radriloniuma/AppServer;)V
    .locals 0

    .line 413
    invoke-static {p1}, Lcom/radriloniuma/AppServer;->access$setActiveInstance$cp(Lcom/radriloniuma/AppServer;)V

    return-void
.end method
