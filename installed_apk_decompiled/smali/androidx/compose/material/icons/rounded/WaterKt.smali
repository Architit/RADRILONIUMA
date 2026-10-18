.class public final Landroidx/compose/material/icons/rounded/WaterKt;
.super Ljava/lang/Object;
.source "Water.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Water.kt\nandroidx/compose/material/icons/rounded/WaterKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,95:1\n212#2,12:96\n233#2,18:109\n253#2:146\n174#3:108\n705#4,2:127\n717#4,2:129\n719#4,11:135\n72#5,4:131\n*S KotlinDebug\n*F\n+ 1 Water.kt\nandroidx/compose/material/icons/rounded/WaterKt\n*L\n29#1:96,12\n30#1:109,18\n30#1:146\n29#1:108\n30#1:127,2\n30#1:129,2\n30#1:135,11\n30#1:131,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_water",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Water",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getWater",
        "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _water:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWater(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/WaterKt;->_water:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 100
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 108
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

    .line 100
    const-string v2, "Rounded.Water"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 119
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 124
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 125
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 131
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41600000    # 14.0f

    const v1, 0x41afd70a    # 21.98f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41b00000    # 22.0f

    .line 32
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41afd70a    # 21.98f

    .line 33
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41500000    # 13.0f

    const v1, 0x40ab3333    # 5.35f

    .line 35
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40551eb8    # 3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f9851ec    # 1.19f

    const/4 v2, 0x0

    const v3, 0x3fb5c28f    # 1.42f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3ff9999a    # 1.95f

    const v3, 0x4005c28f    # 2.09f

    const/high16 v4, -0x40800000    # -1.0f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f9851ec    # 1.19f

    const v3, 0x3fb5c28f    # 1.42f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3ff9999a    # 1.95f

    const v3, 0x4005c28f    # 2.09f

    const/high16 v4, -0x40800000    # -1.0f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4000a3d7    # 2.01f

    const v6, 0x3f4a3d71    # 0.79f

    const v1, 0x3f6e147b    # 0.93f

    const v3, 0x3f866666    # 1.05f

    const v4, 0x3ee66666    # 0.45f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, -0x40970a3d    # -0.91f

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x418a3d71    # -0.24f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40dc28f6    # -0.64f

    const v6, -0x4087ae14    # -0.97f

    const/4 v1, 0x0

    const v2, -0x40fae148    # -0.52f

    const v3, -0x41947ae1    # -0.23f

    const v4, -0x40ab851f    # -0.83f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fd3d70a    # -2.69f

    const v6, -0x4099999a    # -0.9f

    const v1, -0x40e66666    # -0.6f

    const v2, -0x419eb852    # -0.22f

    const v3, -0x406ccccd    # -1.15f

    const v4, -0x4099999a    # -0.9f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3faae148    # -3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, -0x40066666    # -1.95f

    const/4 v2, 0x0

    const v3, -0x3ffa3d71    # -2.09f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, -0x4067ae14    # -1.19f

    const v3, -0x404a3d71    # -1.42f

    const/high16 v4, -0x40800000    # -1.0f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, -0x40066666    # -1.95f

    const v3, -0x3ffa3d71    # -2.09f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, -0x4067ae14    # -1.19f

    const v3, -0x404a3d71    # -1.42f

    const/high16 v4, -0x40800000    # -1.0f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fd47ae1    # -2.68f

    const v6, 0x3f68f5c3    # 0.91f

    const v1, -0x403ae148    # -1.54f

    const v3, -0x3ff7ae14    # -2.13f

    const v4, 0x3f35c28f    # 0.71f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x414e3d71    # 12.89f

    const v1, 0x400f5c29    # 2.24f

    const v2, 0x4140cccd    # 12.05f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x4145999a    # 12.35f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa51eb8    # 1.29f

    const v6, 0x3f68f5c3    # 0.91f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3f90a3d7    # 1.13f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40ab3333    # 5.35f

    const/high16 v6, 0x41500000    # 13.0f

    const v1, 0x408b3333    # 4.35f

    const v2, 0x41570a3d    # 13.44f

    const v3, 0x408c7ae1    # 4.39f

    const/high16 v4, 0x41500000    # 13.0f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41955c29    # 18.67f

    const/high16 v1, 0x41700000    # 15.0f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3faae148    # -3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, -0x40066666    # -1.95f

    const/4 v2, 0x0

    const v3, -0x3ffa3d71    # -2.09f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, -0x4067ae14    # -1.19f

    const v3, -0x404a3d71    # -1.42f

    const/high16 v4, -0x40800000    # -1.0f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3faa3d71    # -3.34f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, -0x40066666    # -1.95f

    const v3, -0x3ff9999a    # -2.1f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3faae148    # -3.33f

    const/high16 v6, -0x40800000    # -1.0f

    const v1, -0x406147ae    # -1.24f

    const v3, -0x404f5c29    # -1.38f

    const/high16 v4, -0x40800000    # -1.0f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fd3d70a    # -2.69f

    const v6, 0x3f68f5c3    # 0.91f

    const v1, -0x403c28f6    # -1.53f

    const v3, -0x3ff66666    # -2.15f

    const v4, 0x3f35c28f    # 0.71f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x41871eb8    # 16.89f

    const v1, 0x400f5c29    # 2.24f

    const v2, 0x41806666    # 16.05f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x4182e148    # 16.36f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, 0x3f68f5c3    # 0.91f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3f90a3d7    # 1.13f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40aae148    # 5.34f

    const/high16 v6, 0x41880000    # 17.0f

    const v1, 0x408a3d71    # 4.32f

    const v2, 0x418b851f    # 17.44f

    const v3, 0x408c28f6    # 4.38f

    const/high16 v4, 0x41880000    # 17.0f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40551eb8    # 3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f9eb852    # 1.24f

    const/4 v2, 0x0

    const v3, 0x3fb0a3d7    # 1.38f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4055c28f    # 3.34f

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3ff9999a    # 1.95f

    const v3, 0x40066666    # 2.1f

    const/high16 v4, -0x40800000    # -1.0f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40551eb8    # 3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f9851ec    # 1.19f

    const v3, 0x3fb5c28f    # 1.42f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3ff851ec    # 1.94f

    const v3, 0x4005c28f    # 2.09f

    const/high16 v4, -0x40800000    # -1.0f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4001eb85    # 2.03f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, 0x3f70a3d7    # 0.94f

    const v3, 0x3f87ae14    # 1.06f

    const v4, 0x3eeb851f    # 0.46f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, -0x40970a3d    # -0.91f

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x418a3d71    # -0.24f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d9999a    # -0.65f

    const v6, -0x40851eb8    # -0.98f

    const/4 v1, 0x0

    const v2, -0x40f851ec    # -0.53f

    const v3, -0x418a3d71    # -0.24f

    const v4, -0x40ab851f    # -0.83f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41955c29    # 18.67f

    const/high16 v6, 0x41700000    # 15.0f

    const v1, 0x41a68f5c    # 20.82f

    const v2, 0x417b851f    # 15.72f

    const v3, 0x41a1ae14    # 20.21f

    const/high16 v4, 0x41700000    # 15.0f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41100000    # 9.0f

    const v1, 0x40ab3333    # 5.35f

    .line 71
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40551eb8    # 3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f9851ec    # 1.19f

    const/4 v2, 0x0

    const v3, 0x3fb5c28f    # 1.42f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3ff9999a    # 1.95f

    const v3, 0x4005c28f    # 2.09f

    const/high16 v4, -0x40800000    # -1.0f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f9851ec    # 1.19f

    const v3, 0x3fb5c28f    # 1.42f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3ff9999a    # 1.95f

    const v3, 0x4005c28f    # 2.09f

    const/high16 v4, -0x40800000    # -1.0f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4000a3d7    # 2.01f

    const v6, 0x3f4a3d71    # 0.79f

    const v1, 0x3f6e147b    # 0.93f

    const v3, 0x3f866666    # 1.05f

    const v4, 0x3ee66666    # 0.45f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, -0x40970a3d    # -0.91f

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x418a3d71    # -0.24f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40dc28f6    # -0.64f

    const v6, -0x4087ae14    # -0.97f

    const/4 v1, 0x0

    const v2, -0x40fae148    # -0.52f

    const v3, -0x41947ae1    # -0.23f

    const v4, -0x40ab851f    # -0.83f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41953333    # 18.65f

    const/high16 v6, 0x40e00000    # 7.0f

    const v1, 0x41a5eb85    # 20.74f

    const v2, 0x40f5c28f    # 7.68f

    const v3, 0x41a1851f    # 20.19f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3faae148    # -3.33f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, -0x40066666    # -1.95f

    const/4 v2, 0x0

    const v3, -0x3ffa3d71    # -2.09f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40800000    # -1.0f

    const v1, -0x4067ae14    # -1.19f

    const v3, -0x404a3d71    # -1.42f

    const/high16 v4, -0x40800000    # -1.0f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x410a8f5c    # 8.66f

    const/high16 v6, 0x41000000    # 8.0f

    const v1, 0x4120a3d7    # 10.04f

    const/high16 v2, 0x40e00000    # 7.0f

    const v3, 0x411e6666    # 9.9f

    const/high16 v4, 0x41000000    # 8.0f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40aa8f5c    # 5.33f

    const/high16 v6, 0x40e00000    # 7.0f

    const v1, 0x40ef0a3d    # 7.47f

    const/high16 v2, 0x41000000    # 8.0f

    const v3, 0x40e7ae14    # 7.24f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4029999a    # 2.65f

    const v6, 0x40fd1eb8    # 7.91f

    const v1, 0x40728f5c    # 3.79f

    const/high16 v2, 0x40e00000    # 7.0f

    const v3, 0x404ccccd    # 3.2f

    const v4, 0x40f6b852    # 7.71f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x410e3d71    # 8.89f

    const v1, 0x400f5c29    # 2.24f

    const v2, 0x4100cccd    # 8.05f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x4105999a    # 8.35f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa51eb8    # 1.29f

    const v6, 0x3f68f5c3    # 0.91f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3f90a3d7    # 1.13f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40ab3333    # 5.35f

    const/high16 v6, 0x41100000    # 9.0f

    const v1, 0x408b3333    # 4.35f

    const v2, 0x41170a3d    # 9.44f

    const v3, 0x408c7ae1    # 4.39f

    const/high16 v4, 0x41100000    # 9.0f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
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

    .line 129
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/WaterKt;->_water:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
