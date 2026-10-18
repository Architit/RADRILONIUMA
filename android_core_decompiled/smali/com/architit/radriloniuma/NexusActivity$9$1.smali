.class Lcom/architit/radriloniuma/NexusActivity$9$1;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/architit/radriloniuma/NexusActivity$9;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "rm -f "

    const-string v1, "rm -rf "

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    iget-object v2, v2, Lcom/architit/radriloniuma/NexusActivity$9;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    const-string v3, "Wiping Matrix Core..."

    invoke-static {v2, v3}, Lcom/architit/radriloniuma/NexusActivity;->access$700(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    iget-object v1, v1, Lcom/architit/radriloniuma/NexusActivity$9;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-virtual {v1}, Lcom/architit/radriloniuma/NexusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ubuntu"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 339
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$9;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-virtual {v0}, Lcom/architit/radriloniuma/NexusActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/start_ubuntu.sh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 340
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$9;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    const-string v1, "Re-Bootstrapping Kernel..."

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$700(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$9;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$000(Lcom/architit/radriloniuma/NexusActivity;)V

    .line 342
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$9$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$9;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$9;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    const-string v1, "Kernel Restored."

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$700(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
