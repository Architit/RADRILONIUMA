.class final Landroidx/compose/material3/SwipeToDismissAnchorsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SwipeToDismissBox.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J&\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/material3/SwipeToDismissAnchorsNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "state",
        "Landroidx/compose/material3/SwipeToDismissBoxState;",
        "enableDismissFromStartToEnd",
        "",
        "enableDismissFromEndToStart",
        "(Landroidx/compose/material3/SwipeToDismissBoxState;ZZ)V",
        "didLookahead",
        "getEnableDismissFromEndToStart",
        "()Z",
        "setEnableDismissFromEndToStart",
        "(Z)V",
        "getEnableDismissFromStartToEnd",
        "setEnableDismissFromStartToEnd",
        "getState",
        "()Landroidx/compose/material3/SwipeToDismissBoxState;",
        "setState",
        "(Landroidx/compose/material3/SwipeToDismissBoxState;)V",
        "onDetach",
        "",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private didLookahead:Z

.field private enableDismissFromEndToStart:Z

.field private enableDismissFromStartToEnd:Z

.field private state:Landroidx/compose/material3/SwipeToDismissBoxState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxState;ZZ)V
    .locals 0

    .line 440
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 437
    iput-object p1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    .line 438
    iput-boolean p2, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->enableDismissFromStartToEnd:Z

    .line 439
    iput-boolean p3, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->enableDismissFromEndToStart:Z

    return-void
.end method


# virtual methods
.method public final getEnableDismissFromEndToStart()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->enableDismissFromEndToStart:Z

    return v0
.end method

.method public final getEnableDismissFromStartToEnd()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->enableDismissFromStartToEnd:Z

    return v0
.end method

.method public final getState()Landroidx/compose/material3/SwipeToDismissBoxState;
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    .line 451
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 455
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->didLookahead:Z

    if-nez p3, :cond_1

    .line 456
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p3

    int-to-float p3, p3

    .line 457
    new-instance p4, Landroidx/compose/material3/SwipeToDismissAnchorsNode$measure$newAnchors$1;

    invoke-direct {p4, p0, p3}, Landroidx/compose/material3/SwipeToDismissAnchorsNode$measure$newAnchors$1;-><init>(Landroidx/compose/material3/SwipeToDismissAnchorsNode;F)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-static {p4}, Landroidx/compose/material3/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/DraggableAnchors;

    move-result-object p3

    .line 466
    iget-object p4, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-virtual {p4}, Landroidx/compose/material3/SwipeToDismissBoxState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object p4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p4, p3, v1, v0, v1}, Landroidx/compose/material3/AnchoredDraggableState;->updateAnchors$default(Landroidx/compose/material3/AnchoredDraggableState;Landroidx/compose/material3/DraggableAnchors;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 468
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result p3

    if-nez p3, :cond_3

    iget-boolean p3, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->didLookahead:Z

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iput-boolean p3, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->didLookahead:Z

    .line 469
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance p3, Landroidx/compose/material3/SwipeToDismissAnchorsNode$measure$1;

    invoke-direct {p3, p1, p0, p2}, Landroidx/compose/material3/SwipeToDismissAnchorsNode$measure$1;-><init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/SwipeToDismissAnchorsNode;Landroidx/compose/ui/layout/Placeable;)V

    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->didLookahead:Z

    return-void
.end method

.method public final setEnableDismissFromEndToStart(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->enableDismissFromEndToStart:Z

    return-void
.end method

.method public final setEnableDismissFromStartToEnd(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->enableDismissFromStartToEnd:Z

    return-void
.end method

.method public final setState(Landroidx/compose/material3/SwipeToDismissBoxState;)V
    .locals 0

    .line 437
    iput-object p1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    return-void
.end method
