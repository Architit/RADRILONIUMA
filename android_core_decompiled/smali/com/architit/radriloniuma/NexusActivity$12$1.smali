.class Lcom/architit/radriloniuma/NexusActivity$12$1;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/architit/radriloniuma/NexusActivity$12;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$12$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$12$1;->this$1:Lcom/architit/radriloniuma/NexusActivity$12;

    iget-object v0, v0, Lcom/architit/radriloniuma/NexusActivity$12;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1100(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
