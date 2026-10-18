.class Lcom/architit/radriloniuma/LAMFloatingService$1;
.super Ljava/lang/Object;
.source "LAMFloatingService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/architit/radriloniuma/LAMFloatingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/architit/radriloniuma/LAMFloatingService;


# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/LAMFloatingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {p1}, Lcom/architit/radriloniuma/LAMFloatingService;->access$000(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {p1}, Lcom/architit/radriloniuma/LAMFloatingService;->access$000(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {p1}, Lcom/architit/radriloniuma/LAMFloatingService;->access$200(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {p2}, Lcom/architit/radriloniuma/LAMFloatingService;->access$100(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {v1}, Lcom/architit/radriloniuma/LAMFloatingService;->access$000(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {p1}, Lcom/architit/radriloniuma/LAMFloatingService;->access$000(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialX:I

    .line 80
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->this$0:Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-static {p1}, Lcom/architit/radriloniuma/LAMFloatingService;->access$000(Lcom/architit/radriloniuma/LAMFloatingService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialY:I

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialTouchX:F

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$1;->initialTouchY:F

    return v0
.end method
