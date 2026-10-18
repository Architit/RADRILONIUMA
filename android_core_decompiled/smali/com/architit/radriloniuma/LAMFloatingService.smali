.class public Lcom/architit/radriloniuma/LAMFloatingService;
.super Landroid/app/Service;
.source "LAMFloatingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;
    }
.end annotation


# instance fields
.field private floatingView:Landroid/view/View;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 23
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/architit/radriloniuma/LAMFloatingService;->floatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 28
    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 30
    :cond_0
    const-string p3, "content"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 31
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->floatingView:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 34
    const-string p1, "window"

    invoke-virtual {p0, p1}, Lcom/architit/radriloniuma/LAMFloatingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->windowManager:Landroid/view/WindowManager;

    .line 36
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->floatingView:Landroid/view/View;

    .line 37
    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 39
    const-string v1, "#99001122"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 41
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "LAM Ouroboros"

    :goto_0
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const-string p3, "#00E5FF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    const/16 p3, 0x1e

    invoke-virtual {v1, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_2

    .line 51
    const/16 p1, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_1

    .line 53
    :cond_2
    const/16 p1, 0x7d2

    const/16 v4, 0x7d2

    .line 56
    :goto_1
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v5, 0x28

    const/4 v6, -0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 63
    const p3, 0x800033

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 65
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0xc8

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 67
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->windowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/architit/radriloniuma/LAMFloatingService;->floatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/architit/radriloniuma/LAMFloatingService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->floatingView:Landroid/view/View;

    new-instance p3, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;

    iget-object v0, p0, Lcom/architit/radriloniuma/LAMFloatingService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMFloatingService;->floatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/architit/radriloniuma/LAMFloatingService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p3, v0, v1, v2}, Lcom/architit/radriloniuma/LAMFloatingService$TouchHandler;-><init>(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 72
    if-eqz p3, :cond_4

    .line 73
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_4
    :goto_2
    return p2
.end method
