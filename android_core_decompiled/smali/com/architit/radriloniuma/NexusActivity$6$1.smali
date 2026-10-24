.class Lcom/architit/radriloniuma/NexusActivity$6$1;
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

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$6;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 864
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1100(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$6;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1100(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$6$1$1;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$6$1$1;-><init>(Lcom/architit/radriloniuma/NexusActivity$6$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 878
    :cond_0
    return-void
.end method
