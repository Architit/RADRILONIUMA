.class Lcom/architit/radriloniuma/NexusActivity$12;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->appendOutput(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
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

    .line 469
    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$12;->val$text:Ljava/lang/String;

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$12;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$12;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$600(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$12;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$12;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$1100(Lcom/architit/radriloniuma/NexusActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/architit/radriloniuma/NexusActivity$12$1;

    invoke-direct {v1, p0}, Lcom/architit/radriloniuma/NexusActivity$12$1;-><init>(Lcom/architit/radriloniuma/NexusActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
