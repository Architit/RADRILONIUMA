.class Lcom/architit/radriloniuma/NexusActivity$ExitListener;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$ExitListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$ExitListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$100(Lcom/architit/radriloniuma/NexusActivity;)V

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$ExitListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->moveTaskToBack(Z)Z

    return-void
.end method
