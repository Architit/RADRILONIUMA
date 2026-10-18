.class Lcom/architit/radriloniuma/NexusActivity$6;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/NexusActivity;->buildSettingsLayout()V
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const/16 p1, 0x80

    if-eqz p2, :cond_0

    .line 287
    iget-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-virtual {p2}, Lcom/architit/radriloniuma/NexusActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p2, p0, Lcom/architit/radriloniuma/NexusActivity$6;->this$0:Lcom/architit/radriloniuma/NexusActivity;

    invoke-virtual {p2}, Lcom/architit/radriloniuma/NexusActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
