.class public final Lcom/radriloniuma/RadriloniumaForegroundService;
.super Landroid/app/Service;
.source "RadriloniumaForegroundService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\"\u0010\r\u001a\u00020\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/radriloniuma/RadriloniumaForegroundService;",
        "Landroid/app/Service;",
        "()V",
        "appServer",
        "Lcom/radriloniuma/AppServer;",
        "createNotificationChannel",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
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
.field private appServer:Lcom/radriloniuma/AppServer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 57
    new-instance v0, Landroid/app/NotificationChannel;

    .line 59
    const-string v1, "Sovereign Matrix Core"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x4

    .line 57
    const-string v3, "RADRILONIUMA_CORE_CHANNEL"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 62
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/radriloniuma/RadriloniumaForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 63
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    invoke-direct {p0}, Lcom/radriloniuma/RadriloniumaForegroundService;->createNotificationChannel()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    iget-object v0, p0, Lcom/radriloniuma/RadriloniumaForegroundService;->appServer:Lcom/radriloniuma/AppServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/radriloniuma/AppServer;->stop()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 23
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-string p3, "RADRILONIUMA_CORE_CHANNEL"

    invoke-direct {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const-string p2, "RADRILONIUMA OS"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 25
    const-string p2, "AppServer active; Ubuntu is installed on request"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x108002e

    .line 26
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 27
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 28
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x171

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/radriloniuma/RadriloniumaForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 33
    iget-object p1, p0, Lcom/radriloniuma/RadriloniumaForegroundService;->appServer:Lcom/radriloniuma/AppServer;

    if-nez p1, :cond_0

    .line 35
    :try_start_0
    new-instance p1, Lcom/radriloniuma/AppServer;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/radriloniuma/AppServer;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/radriloniuma/RadriloniumaForegroundService;->appServer:Lcom/radriloniuma/AppServer;

    .line 36
    invoke-virtual {p1}, Lcom/radriloniuma/AppServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return p3
.end method
