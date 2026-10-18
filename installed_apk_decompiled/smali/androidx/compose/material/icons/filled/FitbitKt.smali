.class public final Landroidx/compose/material/icons/filled/FitbitKt;
.super Ljava/lang/Object;
.source "Fitbit.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFitbit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Fitbit.kt\nandroidx/compose/material/icons/filled/FitbitKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,115:1\n212#2,12:116\n233#2,18:129\n253#2:166\n174#3:128\n705#4,2:147\n717#4,2:149\n719#4,11:155\n72#5,4:151\n*S KotlinDebug\n*F\n+ 1 Fitbit.kt\nandroidx/compose/material/icons/filled/FitbitKt\n*L\n29#1:116,12\n30#1:129,18\n30#1:166\n29#1:128\n30#1:147,2\n30#1:149,2\n30#1:155,11\n30#1:151,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_fitbit",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Fitbit",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getFitbit",
        "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static _fitbit:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFitbit(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/FitbitKt;->_fitbit:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 120
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 128
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/16 v11, 0x60

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 120
    const-string v2, "Filled.Fitbit"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 139
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 144
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 145
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 151
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x419f1eb8    # 19.89f

    const v1, 0x415e3d71    # 13.89f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ff1eb85    # 1.89f

    const v6, -0x400e147b    # -1.89f

    const v1, 0x3f851eb8    # 1.04f

    const/4 v2, 0x0

    const v3, 0x3ff1eb85    # 1.89f

    const v4, -0x40a66666    # -0.85f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40a66666    # -0.85f

    const v1, -0x400e147b    # -1.89f

    .line 33
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x4196cccd    # 18.85f

    const v2, 0x4121c28f    # 10.11f

    const/high16 v3, 0x41900000    # 18.0f

    const v4, 0x412f5c29    # 10.96f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4196cccd    # 18.85f

    const v1, 0x419f1eb8    # 19.89f

    const v2, 0x415e3d71    # 13.89f

    .line 35
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x415ae148    # 13.68f

    const v1, 0x417a6666    # 15.65f

    .line 37
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd70a3d    # 1.68f

    const v6, -0x4028f5c3    # -1.68f

    const v1, 0x3f6e147b    # 0.93f

    const/4 v2, 0x0

    const v3, 0x3fd70a3d    # 1.68f

    const/high16 v4, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40c00000    # -0.75f

    const v1, -0x4028f5c3    # -1.68f

    .line 39
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4028f5c3    # -1.68f

    const v6, 0x3fd70a3d    # 1.68f

    const v1, -0x4091eb85    # -0.93f

    const v3, -0x4028f5c3    # -1.68f

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x416b851f    # 14.72f

    const v1, 0x415ae148    # 13.68f

    const v2, 0x417a6666    # 15.65f

    .line 41
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4116b852    # 9.42f

    const v1, 0x417a6666    # 15.65f

    .line 43
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd70a3d    # 1.68f

    const v6, -0x4028f5c3    # -1.68f

    const v1, 0x3f6e147b    # 0.93f

    const/4 v2, 0x0

    const v3, 0x3fd70a3d    # 1.68f

    const/high16 v4, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4028f5c3    # -1.68f

    const/4 v1, 0x0

    const v2, -0x4091eb85    # -0.93f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x4028f5c3    # -1.68f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fd70a3d    # 1.68f

    const v1, -0x4091eb85    # -0.93f

    const/4 v2, 0x0

    const v3, -0x4028f5c3    # -1.68f

    const/high16 v4, 0x3f400000    # 0.75f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417a6666    # 15.65f

    const v6, 0x4116b852    # 9.42f

    const v1, 0x415f851f    # 13.97f

    const v2, 0x410ab852    # 8.67f

    const v3, 0x416b851f    # 14.72f

    const v4, 0x4116b852    # 9.42f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418f70a4    # 17.93f

    const v1, 0x417a6666    # 15.65f

    .line 49
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd70a3d    # 1.68f

    const v6, -0x4028f5c3    # -1.68f

    const v1, 0x3f6e147b    # 0.93f

    const/4 v2, 0x0

    const v3, 0x3fd70a3d    # 1.68f

    const/high16 v4, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4028f5c3    # -1.68f

    const/4 v1, 0x0

    const v2, -0x4091eb85    # -0.93f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x4028f5c3    # -1.68f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fd70a3d    # 1.68f

    const v1, -0x4091eb85    # -0.93f

    const/4 v2, 0x0

    const v3, -0x4028f5c3    # -1.68f

    const/high16 v4, 0x3f400000    # 0.75f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417a6666    # 15.65f

    const v6, 0x418f70a4    # 17.93f

    const v1, 0x415f851f    # 13.97f

    const v2, 0x41895c29    # 17.17f

    const v3, 0x416b851f    # 14.72f

    const v4, 0x418f70a4    # 17.93f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4157851f    # 13.47f

    const v1, 0x41368f5c    # 11.41f

    .line 55
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fbc28f6    # 1.47f

    const v6, -0x4043d70a    # -1.47f

    const v1, 0x3f4f5c29    # 0.81f

    const/4 v2, 0x0

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x40d70a3d    # -0.66f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d70a3d    # -0.66f

    const v1, -0x4043d70a    # -1.47f

    .line 57
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4043d70a    # -1.47f

    const v6, 0x3fbc28f6    # 1.47f

    const v1, -0x40b0a3d7    # -0.81f

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3f28f5c3    # 0.66f

    move-object v0, v7

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x412970a4    # 10.59f

    const v1, 0x4157851f    # 13.47f

    const v2, 0x41368f5c    # 11.41f

    .line 59
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41135c29    # 9.21f

    const v1, 0x41368f5c    # 11.41f

    .line 61
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fbc28f6    # 1.47f

    const v6, -0x4043d70a    # -1.47f

    const v1, 0x3f4f5c29    # 0.81f

    const/4 v2, 0x0

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x40d70a3d    # -0.66f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d70a3d    # -0.66f

    const v1, -0x4043d70a    # -1.47f

    .line 63
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4043d70a    # -1.47f

    const v6, 0x3fbc28f6    # 1.47f

    const v1, -0x40b0a3d7    # -0.81f

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3f28f5c3    # 0.66f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41135c29    # 9.21f

    const v1, 0x412970a4    # 10.59f

    const v2, 0x41368f5c    # 11.41f

    .line 65
    invoke-virtual {v7, v1, v0, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418dd70a    # 17.73f

    const v1, 0x41368f5c    # 11.41f

    .line 67
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fbc28f6    # 1.47f

    const v6, -0x4043d70a    # -1.47f

    const v1, 0x3f4f5c29    # 0.81f

    const/4 v2, 0x0

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x40d70a3d    # -0.66f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4043d70a    # -1.47f

    const/4 v1, 0x0

    const v2, -0x40b0a3d7    # -0.81f

    const v3, -0x40d70a3d    # -0.66f

    const v4, -0x4043d70a    # -1.47f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fbc28f6    # 1.47f

    const v1, -0x40b0a3d7    # -0.81f

    const/4 v2, 0x0

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3f28f5c3    # 0.66f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41368f5c    # 11.41f

    const v6, 0x418dd70a    # 17.73f

    const v1, 0x411ee148    # 9.93f

    const v2, 0x41888f5c    # 17.07f

    const v3, 0x412970a4    # 10.59f

    const v4, 0x418dd70a    # 17.73f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41b00000    # 22.0f

    const v1, 0x41368f5c    # 11.41f

    .line 73
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fbc28f6    # 1.47f

    const v6, -0x4043d70a    # -1.47f

    const v1, 0x3f4f5c29    # 0.81f

    const/4 v2, 0x0

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x40d70a3d    # -0.66f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4043d70a    # -1.47f

    const/4 v1, 0x0

    const v2, -0x40b0a3d7    # -0.81f

    const v3, -0x40d70a3d    # -0.66f

    const v4, -0x4043d70a    # -1.47f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fbc28f6    # 1.47f

    const v1, -0x40b0a3d7    # -0.81f

    const/4 v2, 0x0

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3f28f5c3    # 0.66f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41368f5c    # 11.41f

    const/high16 v6, 0x41b00000    # 22.0f

    const v1, 0x411ee148    # 9.93f

    const v2, 0x41aab852    # 21.34f

    const v3, 0x412970a4    # 10.59f

    const/high16 v4, 0x41b00000    # 22.0f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x409e147b    # 4.94f

    const v1, 0x41368f5c    # 11.41f

    .line 79
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fbc28f6    # 1.47f

    const v6, -0x4043d70a    # -1.47f

    const v1, 0x3f4f5c29    # 0.81f

    const/4 v2, 0x0

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x40d70a3d    # -0.66f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4143851f    # 12.22f

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x41368f5c    # 11.41f

    .line 81
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4043d70a    # -1.47f

    const v6, 0x3fbc28f6    # 1.47f

    const v1, -0x40b0a3d7    # -0.81f

    const/4 v2, 0x0

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3f28f5c3    # 0.66f

    move-object v0, v7

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x409e147b    # 4.94f

    const v1, 0x412970a4    # 10.59f

    const v2, 0x41368f5c    # 11.41f

    .line 83
    invoke-virtual {v7, v1, v0, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x415428f6    # 13.26f

    const v1, 0x40e51eb8    # 7.16f

    .line 85
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa147ae    # 1.26f

    const v6, -0x405eb852    # -1.26f

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3fa147ae    # 1.26f

    const v4, -0x40ee147b    # -0.57f

    move-object v0, v7

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40ee147b    # -0.57f

    const v1, -0x405eb852    # -1.26f

    .line 87
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x405eb852    # -1.26f

    const v6, 0x3fa147ae    # 1.26f

    const v1, -0x40cccccd    # -0.7f

    const v3, -0x405eb852    # -1.26f

    const v4, 0x3f11eb85    # 0.57f

    move-object v0, v7

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40ceb852    # 6.46f

    const v1, 0x415428f6    # 13.26f

    const v2, 0x40e51eb8    # 7.16f

    .line 89
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418c147b    # 17.51f

    const v1, 0x40e51eb8    # 7.16f

    .line 91
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa147ae    # 1.26f

    const v6, -0x405eb852    # -1.26f

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3fa147ae    # 1.26f

    const v4, -0x40ee147b    # -0.57f

    move-object v0, v7

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x405eb852    # -1.26f

    const/4 v1, 0x0

    const v2, -0x40cccccd    # -0.7f

    const v3, -0x40ee147b    # -0.57f

    const v4, -0x405eb852    # -1.26f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fa147ae    # 1.26f

    const v1, -0x40cccccd    # -0.7f

    const/4 v2, 0x0

    const v3, -0x405eb852    # -1.26f

    const v4, 0x3f11eb85    # 0.57f

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40e51eb8    # 7.16f

    const v6, 0x418c147b    # 17.51f

    const v1, 0x40bccccd    # 5.9f

    const v2, 0x4187851f    # 16.94f

    const v3, 0x40ceb852    # 6.46f

    const v4, 0x418c147b    # 17.51f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x411051ec    # 9.02f

    const v1, 0x40e51eb8    # 7.16f

    .line 97
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa147ae    # 1.26f

    const v6, -0x405eb852    # -1.26f

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3fa147ae    # 1.26f

    const v4, -0x40ee147b    # -0.57f

    move-object v0, v7

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x405eb852    # -1.26f

    const/4 v1, 0x0

    const v2, -0x40cccccd    # -0.7f

    const v3, -0x40ee147b    # -0.57f

    const v4, -0x405eb852    # -1.26f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fa147ae    # 1.26f

    const v1, -0x40cccccd    # -0.7f

    const/4 v2, 0x0

    const v3, -0x405eb852    # -1.26f

    const v4, 0x3f11eb85    # 0.57f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40e51eb8    # 7.16f

    const v6, 0x411051ec    # 9.02f

    const v1, 0x40bccccd    # 5.9f

    const v2, 0x41073333    # 8.45f

    const v3, 0x40ceb852    # 6.46f

    const v4, 0x411051ec    # 9.02f

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40528f5c    # 3.29f

    const v1, 0x4150cccd    # 13.05f

    .line 103
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f866666    # 1.05f

    const v6, -0x4079999a    # -1.05f

    const v1, 0x3f147ae1    # 0.58f

    const/4 v2, 0x0

    const v3, 0x3f866666    # 1.05f

    const v4, -0x410f5c29    # -0.47f

    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x410f5c29    # -0.47f

    const v1, -0x4079999a    # -1.05f

    .line 105
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4079999a    # -1.05f

    const v6, 0x3f866666    # 1.05f

    const v1, -0x40eb851f    # -0.58f

    const v3, -0x4079999a    # -1.05f

    const v4, 0x3ef0a3d7    # 0.47f

    move-object v0, v7

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x402d70a4    # 2.71f

    const v1, 0x40528f5c    # 3.29f

    const v2, 0x4150cccd    # 13.05f

    .line 107
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v14

    const/16 v28, 0x3800

    const/16 v29, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 149
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/filled/FitbitKt;->_fitbit:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
