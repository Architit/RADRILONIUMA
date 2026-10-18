.class public final synthetic Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/radriloniuma/AppServer;

.field public final synthetic f$1:Ljava/net/ServerSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/radriloniuma/AppServer;Ljava/net/ServerSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;->f$0:Lcom/radriloniuma/AppServer;

    iput-object p2, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;->f$0:Lcom/radriloniuma/AppServer;

    iget-object v1, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    invoke-static {v0, v1}, Lcom/radriloniuma/AppServer;->$r8$lambda$Jr7oxCn6UxVKPe3I03ufDOth9p8(Lcom/radriloniuma/AppServer;Ljava/net/ServerSocket;)V

    return-void
.end method
