.class Lcom/architit/radriloniuma/NexusActivity$6;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->initNativeTerminal()V
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
    .line 851
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/sh"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 856
    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 855
    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$802(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 858
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v1}, Lcom/architit/radriloniuma/NexusActivity;->access$800(Lcom/architit/radriloniuma/NexusActivity;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$902(Lcom/architit/radriloniuma/NexusActivity;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 859
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v3}, Lcom/architit/radriloniuma/NexusActivity;->access$800(Lcom/architit/radriloniuma/NexusActivity;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$1002(Lcom/architit/radriloniuma/NexusActivity;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1000(Lcom/architit/radriloniuma/NexusActivity;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v1}, Lcom/architit/radriloniuma/NexusActivity;->access$1200(Lcom/architit/radriloniuma/NexusActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$6$1;

    invoke-direct {v2, p0, v0}, Lcom/architit/radriloniuma/NexusActivity$6$1;-><init>(Lcom/architit/radriloniuma/NexusActivity$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Terminal Error]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v1}, Lcom/architit/radriloniuma/NexusActivity;->access$1200(Lcom/architit/radriloniuma/NexusActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$6$2;

    invoke-direct {v2, p0, v0}, Lcom/architit/radriloniuma/NexusActivity$6$2;-><init>(Lcom/architit/radriloniuma/NexusActivity$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 892
    :cond_0
    return-void
.end method
