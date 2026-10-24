.class Lcom/architit/radriloniuma/NexusActivity$1;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->buildBottomDock()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

.field final synthetic val$tabIndex:I


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$1;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iput p2, p0, Lcom/architit/radriloniuma/NexusActivity$1;->val$tabIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$1;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    iget v1, p0, Lcom/architit/radriloniuma/NexusActivity$1;->val$tabIndex:I

    invoke-static {v0, v1}, Lcom/architit/radriloniuma/NexusActivity;->access$100(Lcom/architit/radriloniuma/NexusActivity;I)V

    .line 294
    return-void
.end method
