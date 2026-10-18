.class public final synthetic Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Process;

.field public final synthetic f$1:Lcom/radriloniuma/AppServer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;Lcom/radriloniuma/AppServer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Process;

    iput-object p2, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;->f$1:Lcom/radriloniuma/AppServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Process;

    iget-object v1, p0, Lcom/radriloniuma/AppServer$$ExternalSyntheticLambda1;->f$1:Lcom/radriloniuma/AppServer;

    invoke-static {v0, v1}, Lcom/radriloniuma/AppServer;->$r8$lambda$YrSESczpeL30RMyzF6PM0d7phxQ(Ljava/lang/Process;Lcom/radriloniuma/AppServer;)V

    return-void
.end method
