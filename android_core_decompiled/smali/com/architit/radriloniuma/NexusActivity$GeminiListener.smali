.class Lcom/architit/radriloniuma/NexusActivity$GeminiListener;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$GeminiListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$GeminiListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$100(Lcom/architit/radriloniuma/NexusActivity;)V

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$GeminiListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    const-string v1, "[RADR] Opening Gemini Core Gateway..."
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :try_start_0
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://192.168.137.1:3000/jarvis.html"
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$GeminiListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-virtual {v1, v0}, Lcom/architit/radriloniuma/NexusActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$GeminiListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "[GATEWAY] URL: http://192.168.137.1:3000"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v2, 0x1
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
