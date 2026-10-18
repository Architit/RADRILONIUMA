.class Lcom/architit/radriloniuma/NexusActivity$1$1;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/architit/radriloniuma/NexusActivity$1;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$1$1;->val$text:Ljava/lang/String;

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$1$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 71
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x1f90

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 72
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 73
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity$1$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 79
    invoke-virtual {v2, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    const-string v3, "No Signal"

    .line 81
    :goto_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 83
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$1$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$1;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$1;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$1$1$1;

    invoke-direct {v1, p0, v3}, Lcom/architit/radriloniuma/NexusActivity$1$1$1;-><init>(Lcom/architit/radriloniuma/NexusActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$1$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$1;

    iget-object v1, v1, Lcom/architit/radriloniuma/NexusActivity$1;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    new-instance v2, Lcom/architit/radriloniuma/NexusActivity$1$1$2;

    invoke-direct {v2, p0, v0}, Lcom/architit/radriloniuma/NexusActivity$1$1$2;-><init>(Lcom/architit/radriloniuma/NexusActivity$1$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/architit/radriloniuma/NexusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
