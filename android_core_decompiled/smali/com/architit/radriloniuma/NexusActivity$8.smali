.class Lcom/architit/radriloniuma/NexusActivity$8;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->startTelemetryLoop()V
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
    .line 1081
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1084
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1085
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v1}, Lcom/architit/radriloniuma/NexusActivity;->access$1400(Lcom/architit/radriloniuma/NexusActivity;)I

    move-result v1

    .line 1088
    iget-object v2, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v2}, Lcom/architit/radriloniuma/NexusActivity;->access$1500(Lcom/architit/radriloniuma/NexusActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v3}, Lcom/architit/radriloniuma/NexusActivity;->access$1600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1091
    iget-object v3, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v3}, Lcom/architit/radriloniuma/NexusActivity;->access$1600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1700(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1700(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "528 Hz LOCKED | CARRIER: 528/432 Hz | BAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% | RAM: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$8;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1200(Lcom/architit/radriloniuma/NexusActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1098
    return-void
.end method
