.class Lcom/architit/radriloniuma/NexusActivity$1$1$1;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/architit/radriloniuma/NexusActivity$1$1;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$1$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$1$1$1;->val$response:Ljava/lang/String;

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$1$1$1;->this$2:Lcom/architit/radriloniuma/NexusActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$1$1$1;->this$2:Lcom/architit/radriloniuma/NexusActivity$1$1;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$1$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$1;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$1;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$1$1$1;->val$response:Ljava/lang/String;

    const-string v2, "#00FF00"

    const-string v3, "SWARM"

    invoke-static {v0, v3, v1, v2}, Lcom/architit/radriloniuma/NexusActivity;->access$000(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
