.class Lcom/architit/radriloniuma/NexusActivity$SyncListener;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$SyncListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$SyncListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    const-string v1, "[RADR] 68 Organs Subtrees Synchronized."
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$SyncListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    const-string v1, "\n[SYNC] 68 Organs Subtrees Synchronized with GitHub Matrix.\n"
    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$1300(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    return-void
.end method
