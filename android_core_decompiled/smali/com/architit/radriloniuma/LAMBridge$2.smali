.class Lcom/architit/radriloniuma/LAMBridge$2;
.super Ljava/lang/Object;
.source "LAMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/LAMBridge;->executeNative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/LAMBridge;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/LAMBridge;Ljava/lang/String;)V
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

    .line 57
    iput-object p2, p0, Lcom/architit/radriloniuma/LAMBridge$2;->val$message:Ljava/lang/String;

    iput-object p1, p0, Lcom/architit/radriloniuma/LAMBridge$2;->this$0:Lcom/architit/radriloniuma/LAMBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge$2;->this$0:Lcom/architit/radriloniuma/LAMBridge;

    invoke-static {v0}, Lcom/architit/radriloniuma/LAMBridge;->access$100(Lcom/architit/radriloniuma/LAMBridge;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMBridge$2;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
