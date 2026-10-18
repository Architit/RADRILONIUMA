.class Lcom/architit/radriloniuma/NexusActivity$3$1;
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


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$3$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$3$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$3;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$3;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    const-string v1, "REALITY ENGINE \u0410\u041a\u0422\u0418\u0412\u0418\u0420\u041e\u0412\u0410\u041d. \u041c\u043e\u0441\u0442 \u043a \u041e\u0421 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d."

    const-string v2, "#00FFFF"

    const-string v3, "SYS"

    invoke-static {v0, v3, v1, v2}, Lcom/architit/radriloniuma/NexusActivity;->access$200(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
