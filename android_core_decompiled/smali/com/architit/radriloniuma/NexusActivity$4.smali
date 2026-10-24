.class Lcom/architit/radriloniuma/NexusActivity$4;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->buildTerminalTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 758
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$4;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 761
    const-string v0, "clear"

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$4;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$4;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$500(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$4;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$4;->val$cmd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$600(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
