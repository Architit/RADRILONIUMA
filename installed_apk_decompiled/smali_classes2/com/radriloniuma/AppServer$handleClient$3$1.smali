.class final Lcom/radriloniuma/AppServer$handleClient$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppServer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/radriloniuma/AppServer;->handleClient(Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "message",
        "",
        "percent",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/radriloniuma/AppServer;


# direct methods
.method constructor <init>(Lcom/radriloniuma/AppServer;)V
    .locals 0

    iput-object p1, p0, Lcom/radriloniuma/AppServer$handleClient$3$1;->this$0:Lcom/radriloniuma/AppServer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/radriloniuma/AppServer$handleClient$3$1;->invoke(Ljava/lang/String;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/radriloniuma/AppServer$handleClient$3$1;->this$0:Lcom/radriloniuma/AppServer;

    invoke-static {v0, p1}, Lcom/radriloniuma/AppServer;->access$setInstallMessage$p(Lcom/radriloniuma/AppServer;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/radriloniuma/AppServer$handleClient$3$1;->this$0:Lcom/radriloniuma/AppServer;

    invoke-static {p1, p2}, Lcom/radriloniuma/AppServer;->access$setInstallProgress$p(Lcom/radriloniuma/AppServer;I)V

    .line 327
    iget-object p1, p0, Lcom/radriloniuma/AppServer$handleClient$3$1;->this$0:Lcom/radriloniuma/AppServer;

    const/16 v0, 0x4c

    if-lt p2, v0, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const-string p2, "provisioning"

    goto :goto_0

    :cond_0
    const-string p2, "downloading"

    :goto_0
    invoke-static {p1, p2}, Lcom/radriloniuma/AppServer;->access$setInstallState$p(Lcom/radriloniuma/AppServer;Ljava/lang/String;)V

    return-void
.end method
