.class final Landroidx/compose/material3/ListItemKt$place$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ListItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ListItemKt;->place(Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $height:I

.field final synthetic $isThreeLine:Z

.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_place:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$this_place:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$place$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$place$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-boolean p6, p0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    iput-object p7, p0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/ListItemKt$place$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p10, p0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    iput p11, p0, Landroidx/compose/material3/ListItemKt$place$1;->$width:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 348
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ListItemKt$place$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 18

    move-object/from16 v0, p0

    .line 349
    iget-object v1, v0, Landroidx/compose/material3/ListItemKt$place$1;->$this_place:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 350
    iget-object v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$this_place:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 351
    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$this_place:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v10

    .line 353
    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_1

    iget-boolean v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    iget v5, v0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    if-eqz v3, :cond_0

    move v6, v10

    goto :goto_0

    .line 356
    :cond_0
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    invoke-interface {v3, v6, v5}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v3

    move v6, v3

    :goto_0
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move v5, v1

    .line 354
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 359
    :cond_1
    iget-object v12, v0, Landroidx/compose/material3/ListItemKt$place$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v12, :cond_3

    iget v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$width:I

    iget-boolean v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    iget v5, v0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    sub-int/2addr v3, v2

    .line 361
    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v13, v3, v2

    if-eqz v4, :cond_2

    move v14, v10

    goto :goto_1

    .line 362
    :cond_2
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-interface {v2, v3, v5}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v2

    move v14, v2

    :goto_1
    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    .line 360
    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 366
    :cond_3
    iget-object v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v1, v2

    .line 367
    iget-boolean v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    if-eqz v2, :cond_4

    goto :goto_2

    .line 370
    :cond_4
    iget-object v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v2, v3

    .line 371
    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$place$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v2, v3

    .line 372
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    iget v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    invoke-interface {v3, v2, v4}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v10

    .line 376
    :goto_2
    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move v5, v1

    move v6, v10

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 377
    :cond_5
    iget-object v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v10, v2

    .line 379
    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move v5, v1

    move v6, v10

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 380
    :cond_6
    iget-object v2, v0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int v6, v10, v2

    .line 382
    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$place$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_7

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move v5, v1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_7
    return-void
.end method
