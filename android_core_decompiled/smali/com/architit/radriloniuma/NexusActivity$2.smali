.class Lcom/architit/radriloniuma/NexusActivity$2;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->buildOrgansTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

.field final synthetic val$deck:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 577
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$2;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$2;->val$deck:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$2;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$2;->val$deck:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$202(Lcom/architit/radriloniuma/NexusActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$2;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$300(Lcom/architit/radriloniuma/NexusActivity;)V

    .line 582
    return-void
.end method
