.class Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;
.super Ljava/lang/Object;
.source "LAMFloatingService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/architit/radriloniuma/LAMFloatingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchHandler"
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private final p:Landroid/view/WindowManager$LayoutParams;

.field private final view:Landroid/view/View;

.field private final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->wm:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->view:Landroid/view/View;

    iput-object p3, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->p:Landroid/view/WindowManager$LayoutParams;

    .line 95
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 108
    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 103
    :pswitch_1
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->p:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 104
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->p:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 105
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->wm:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->p:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return v0

    .line 99
    :pswitch_2
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->p:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialX:I

    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->p:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialY:I

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;->initialTouchY:F

    .line 101
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
