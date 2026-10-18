.class Lcom/architit/radriloniuma/NexusActivity$3$2;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/architit/radriloniuma/NexusActivity$3;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$3;Ljava/lang/Exception;)V
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

    .line 194
    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$3$2;->val$e:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$3$2;->this$1:Lcom/architit/radriloniuma/NexusActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$3$2;->this$1:Lcom/architit/radriloniuma/NexusActivity$3;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$3;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041a\u0420\u0418\u0422 \u0421\u0415\u0420\u0412\u0415\u0420\u0410: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity$3$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FF0055"

    const-string v3, "ERR"

    invoke-static {v0, v3, v1, v2}, Lcom/architit/radriloniuma/NexusActivity;->access$200(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
