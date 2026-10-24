.class Lcom/architit/radriloniuma/NexusActivity$6$2;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/architit/radriloniuma/NexusActivity$6;

.field final synthetic val$err:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$6;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 883
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$6$2;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$6$2;->val$err:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6$2;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6$2;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$6$2;->val$err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 889
    :cond_0
    return-void
.end method
