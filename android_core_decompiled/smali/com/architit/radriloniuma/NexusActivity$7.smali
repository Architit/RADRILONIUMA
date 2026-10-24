.class Lcom/architit/radriloniuma/NexusActivity$7;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->updateSecurityStatus()V
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
    .line 1008
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$7;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$7;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1300(Lcom/architit/radriloniuma/NexusActivity;)V

    .line 1012
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$7;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    const-string v1, "Security Protocols Re-evaluated. Matrix Harmonized."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1013
    return-void
.end method
