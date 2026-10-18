.class Lcom/architit/radriloniuma/NexusActivity$8;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->buildSettingsLayout()V
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {p1}, Lcom/architit/radriloniuma/NexusActivity;->access$600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {p1}, Lcom/architit/radriloniuma/NexusActivity;->access$600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    const-string v0, "Terminal buffer flushed."

    invoke-static {p1, v0}, Lcom/architit/radriloniuma/NexusActivity;->access$700(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    return-void
.end method
