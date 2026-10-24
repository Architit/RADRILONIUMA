.class Lcom/architit/radriloniuma/NexusActivity$5;
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


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$5;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$5;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$700(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$5;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v1, v0}, Lcom/architit/radriloniuma/NexusActivity;->access$600(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$5;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$700(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 842
    :cond_0
    return-void
.end method
