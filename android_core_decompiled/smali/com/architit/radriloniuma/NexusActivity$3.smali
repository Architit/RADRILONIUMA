.class Lcom/architit/radriloniuma/NexusActivity$3;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->populateOrgansList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

.field final synthetic val$item:Lcom/architit/radriloniuma/NexusActivity$OrganItem;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;Lcom/architit/radriloniuma/NexusActivity$OrganItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 679
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$3;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iput-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$3;->val$item:Lcom/architit/radriloniuma/NexusActivity$OrganItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$3;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$3;->val$item:Lcom/architit/radriloniuma/NexusActivity$OrganItem;

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$400(Lcom/architit/radriloniuma/NexusActivity;Lcom/architit/radriloniuma/NexusActivity$OrganItem;)V

    .line 683
    return-void
.end method
