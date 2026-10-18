.class public final Landroidx/compose/material/icons/sharp/Diversity2Kt;
.super Ljava/lang/Object;
.source "Diversity2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiversity2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/sharp/Diversity2Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,103:1\n212#2,12:104\n233#2,18:117\n253#2:154\n233#2,18:155\n253#2:192\n233#2,18:193\n253#2:230\n174#3:116\n705#4,2:135\n717#4,2:137\n719#4,11:143\n705#4,2:173\n717#4,2:175\n719#4,11:181\n705#4,2:211\n717#4,2:213\n719#4,11:219\n72#5,4:139\n72#5,4:177\n72#5,4:215\n*S KotlinDebug\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/sharp/Diversity2Kt\n*L\n29#1:104,12\n30#1:117,18\n30#1:154\n52#1:155,18\n52#1:192\n75#1:193,18\n75#1:230\n29#1:116\n30#1:135,2\n30#1:137,2\n30#1:143,11\n52#1:173,2\n52#1:175,2\n52#1:181,11\n75#1:211,2\n75#1:213,2\n75#1:219,11\n30#1:139,4\n52#1:177,4\n75#1:215,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_diversity2",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Diversity2",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getDiversity2",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getDiversity2(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 64

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v47, v1

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 116
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

    .line 108
    const-string v2, "Sharp.Diversity2"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 127
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 132
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 133
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 139
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4121999a    # 10.1f

    const v1, 0x417e6666    # 15.9f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb5c28f    # 1.42f

    const v1, -0x404a3d71    # -1.42f

    .line 32
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const v6, 0x410d999a    # 8.85f

    const v1, 0x410ca3d7    # 8.79f

    const v2, 0x4140cccd    # 12.05f

    const/high16 v3, 0x40e00000    # 7.0f

    const v4, 0x41268f5c    # 10.41f

    move-object v0, v7

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x410d999a    # 8.85f

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const v2, 0x40f9999a    # 7.8f

    const v3, 0x40f9999a    # 7.8f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x402b851f    # 2.68f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, 0x3f8e147b    # 1.11f

    const/4 v2, 0x0

    const v3, 0x3fc51eb8    # 1.54f

    const v4, 0x3f266666    # 0.65f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f6e147b    # 0.93f

    .line 36
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x40000000    # -2.0f

    const v1, 0x3f8f5c29    # 1.12f

    const v2, -0x405851ec    # -1.31f

    const v3, 0x3fc3d70a    # 1.53f

    const/high16 v4, -0x40000000    # -2.0f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fe28f5c    # 1.77f

    const v6, 0x3fa8f5c3    # 1.32f

    const v1, 0x3f5eb852    # 0.87f

    const/4 v2, 0x0

    const v3, 0x3fc66666    # 1.55f

    const v4, 0x3f0a3d71    # 0.54f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, -0x428a3d71    # -0.06f

    const v1, 0x3eb33333    # 0.35f

    const v2, -0x42dc28f6    # -0.04f

    const v3, 0x3f2e147b    # 0.68f

    const v4, -0x428a3d71    # -0.06f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f83d70a    # 1.03f

    const v6, 0x3da3d70a    # 0.08f

    const v1, 0x3eb851ec    # 0.36f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3cf5c28f    # 0.03f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41726666    # 15.15f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x4195999a    # 18.7f

    const v2, 0x40cdc28f    # 6.43f

    const v3, 0x41890a3d    # 17.13f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x414ccccd    # -0.35f

    const v6, 0x3d23d70a    # 0.04f

    const v1, -0x420a3d71    # -0.12f

    const/4 v2, 0x0

    const v3, -0x41947ae1    # -0.23f

    const v4, 0x3cf5c28f    # 0.03f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x40800000    # 4.0f

    const v1, 0x416eb852    # 14.92f

    const v2, 0x4096b852    # 4.71f

    const/high16 v3, 0x41700000    # 15.0f

    const v4, 0x408bd70a    # 4.37f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fc00000    # -3.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const/4 v1, 0x0

    const v2, -0x402b851f    # -1.66f

    const v3, -0x40547ae1    # -1.34f

    const/high16 v4, -0x3fc00000    # -3.0f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4015c28f    # 2.34f

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x41100000    # 9.0f

    .line 45
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3f851eb8    # 1.04f

    const/4 v1, 0x0

    const v2, 0x3ebd70a4    # 0.37f

    const v3, 0x3da3d70a    # 0.08f

    const v4, 0x3f35c28f    # 0.71f

    move-object v0, v7

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x410d999a    # 8.85f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x411147ae    # 9.08f

    const v2, 0x40a0f5c3    # 5.03f

    const v3, 0x410f851f    # 8.97f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40a00000    # 5.0f

    const v6, 0x410d999a    # 8.85f

    const v1, 0x40d6147b    # 6.69f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x40d6147b    # 6.69f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4121999a    # 10.1f

    const v6, 0x417e6666    # 15.9f

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x413451ec    # 11.27f

    const v3, 0x40e147ae    # 7.04f

    const v4, 0x41528f5c    # 13.16f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
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

    .line 137
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 158
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 165
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    .line 170
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 171
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    .line 177
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4181eb85    # 16.24f

    const/high16 v1, 0x41b40000    # 22.5f

    .line 53
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x414ccccd    # -0.35f

    const v1, -0x415c28f6    # -0.32f

    const v2, -0x41c7ae14    # -0.18f

    const v3, -0x40d70a3d    # -0.66f

    const v4, -0x416b851f    # -0.29f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e570a3d    # 0.21f

    const v6, -0x4170a3d7    # -0.28f

    const v1, 0x3d8f5c29    # 0.07f

    const v2, -0x42333333    # -0.1f

    const v3, 0x3e19999a    # 0.15f

    const v4, -0x41c7ae14    # -0.18f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404b851f    # -1.41f

    const v6, -0x3f57ae14    # -5.26f

    const v1, 0x3f8a3d71    # 1.08f

    const v2, -0x4010a3d7    # -1.87f

    const v3, 0x3eeb851f    # 0.46f

    const v4, -0x3f7a3d71    # -4.18f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ef5999a    # -8.65f

    const v6, 0x3f666666    # 0.9f

    const v1, -0x3ffa3d71    # -2.09f

    const v2, -0x40651eb8    # -1.21f

    const v3, -0x3f67ae14    # -4.76f

    const v4, -0x413851ec    # -0.39f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f051eb8    # 0.52f

    const v1, 0x3ff851ec    # 1.94f

    .line 58
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40e47ae1    # 7.14f

    const v6, -0x40733333    # -1.1f

    const v1, 0x405e147b    # 3.47f

    const v2, -0x406e147b    # -1.14f

    const v3, 0x40b947ae    # 5.79f

    const v4, -0x400f5c29    # -1.88f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f2e147b    # 0.68f

    const v6, 0x4021eb85    # 2.53f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, 0x3f07ae14    # 0.53f

    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3fce147b    # 1.61f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fbb851f    # -3.07f

    const v6, 0x3fa8f5c3    # 1.32f

    const v1, -0x40f0a3d7    # -0.56f

    const v2, 0x3f75c28f    # 0.96f

    const v3, -0x4055c28f    # -1.33f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x410f5c29    # -0.47f

    const v1, 0x3f4f5c29    # 0.81f

    .line 62
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ec7ae14    # 0.39f

    const v6, 0x40547ae1    # 3.32f

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3fcf5c29    # 1.62f

    const v3, 0x3f7851ec    # 0.97f

    const v4, 0x40151eb8    # 2.33f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fde147b    # -2.53f

    const v6, 0x3f2e147b    # 0.68f

    const v1, -0x40f851ec    # -0.53f

    const v2, 0x3f68f5c3    # 0.91f

    const v3, -0x4031eb85    # -1.61f

    const v4, 0x3f99999a    # 1.2f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41d1eb85    # -0.17f

    const v6, -0x41fae148    # -0.13f

    const v1, -0x428a3d71    # -0.06f

    const v2, -0x430a3d71    # -0.03f

    const v3, -0x421eb852    # -0.11f

    const v4, -0x4247ae14    # -0.09f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407c28f6    # -1.03f

    const v6, 0x3fdd70a4    # 1.73f

    const v1, -0x41666666    # -0.3f

    const v2, 0x3f2b851f    # 0.67f

    const v3, -0x40dc28f6    # -0.64f

    const v4, 0x3f9eb852    # 1.24f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3e0f5c29    # 0.14f

    const v1, 0x3d8f5c29    # 0.07f

    const v2, 0x3d23d70a    # 0.04f

    const v3, 0x3e051eb8    # 0.13f

    const v4, 0x3db851ec    # 0.09f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a851ec    # 5.26f

    const v6, -0x404b851f    # -1.41f

    const v1, 0x3fef5c29    # 1.87f

    const v2, 0x3f8a3d71    # 1.08f

    const v3, 0x4085c28f    # 4.18f

    const v4, 0x3eeb851f    # 0.46f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e0f5c29    # 0.14f

    const v6, -0x415c28f6    # -0.32f

    const v1, 0x3d75c28f    # 0.06f

    const v2, -0x42333333    # -0.1f

    const v3, 0x3db851ec    # 0.09f

    const v4, -0x41a8f5c3    # -0.21f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f30a3d7    # 0.69f

    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, 0x3f028f5c    # 0.51f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40833333    # 4.1f

    const v6, -0x40733333    # -1.1f

    const v1, 0x3fb70a3d    # 1.43f

    const v2, 0x3f547ae1    # 0.83f

    const v3, 0x405147ae    # 3.27f

    const v4, 0x3eae147b    # 0.34f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41bf70a4    # 23.93f

    const v1, 0x41887ae1    # 17.06f

    const v2, 0x4181eb85    # 16.24f

    const/high16 v3, 0x41b40000    # 22.5f

    .line 72
    invoke-virtual {v7, v0, v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 179
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v45, 0x3800

    const/16 v46, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    const/high16 v41, 0x3f800000    # 1.0f

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    .line 175
    const-string v33, ""

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 196
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v49

    .line 203
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v51, v0

    check-cast v51, Landroidx/compose/ui/graphics/Brush;

    .line 208
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v56

    .line 209
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v57

    .line 215
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x416028f6    # 14.01f

    const v1, 0x41451eb8    # 12.32f

    .line 76
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fd851ec    # -2.62f

    const v6, 0x40d75c29    # 6.73f

    const v1, -0x40c28f5c    # -0.74f

    const v2, 0x40651eb8    # 3.58f

    const v3, -0x405d70a4    # -1.27f

    const v4, 0x40be6666    # 5.95f

    move-object v0, v7

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fde147b    # -2.53f

    const v6, -0x40d1eb85    # -0.68f

    const v1, -0x40970a3d    # -0.91f

    const v2, 0x3f07ae14    # 0.53f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x3e75c28f    # 0.24f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ec7ae14    # 0.39f

    const v6, -0x3fab851f    # -3.32f

    const v1, -0x40f0a3d7    # -0.56f

    const v2, -0x408a3d71    # -0.96f

    const v3, -0x41b33333    # -0.2f

    const v4, -0x402b851f    # -1.66f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40e33333    # 7.1f

    const v1, 0x417ee148    # 15.93f

    .line 80
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fbb851f    # -3.07f

    const v6, -0x40570a3d    # -1.32f

    const v1, -0x40266666    # -1.7f

    const v2, -0x416147ae    # -0.31f

    const/high16 v3, -0x3fe00000    # -2.5f

    const v4, -0x41570a3d    # -0.33f

    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f2e147b    # 0.68f

    const v6, -0x3fde147b    # -2.53f

    const v1, -0x40f851ec    # -0.53f

    const v2, -0x40970a3d    # -0.91f

    const v3, -0x418a3d71    # -0.24f

    const/high16 v4, -0x40000000    # -2.0f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e947ae1    # 0.29f

    const v6, -0x421eb852    # -0.11f

    const v1, 0x3db851ec    # 0.09f

    const v2, -0x42b33333    # -0.05f

    const v3, 0x3e428f5c    # 0.19f

    const v4, -0x425c28f6    # -0.08f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ae147b    # -0.82f

    const v6, -0x40133333    # -1.85f

    const v1, -0x414ccccd    # -0.35f

    const v2, -0x40f0a3d7    # -0.56f

    const v3, -0x40dc28f6    # -0.64f

    const v4, -0x406a3d71    # -1.17f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x410a3d71    # -0.48f

    const v6, 0x3e6b851f    # 0.23f

    const v1, -0x41dc28f6    # -0.16f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, -0x415c28f6    # -0.32f

    const v4, 0x3e0f5c29    # 0.14f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404b851f    # -1.41f

    const v6, 0x40a851ec    # 5.26f

    const v1, -0x4010a3d7    # -1.87f

    const v2, 0x3f8a3d71    # 1.08f

    const v3, -0x3fe0a3d7    # -2.49f

    const v4, 0x4058f5c3    # 3.39f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3e8f5c29    # 0.28f

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3e0f5c29    # 0.14f

    const v4, 0x3e3851ec    # 0.18f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3eb33333    # 0.35f

    const v1, -0x4151eb85    # -0.34f

    const v2, 0x3d75c28f    # 0.06f

    const v3, -0x40d1eb85    # -0.68f

    const v4, 0x3e2e147b    # 0.17f

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40733333    # -1.1f

    const v6, 0x40833333    # 4.1f

    const v1, -0x4048f5c3    # -1.43f

    const v2, 0x3f547ae1    # 0.83f

    const v3, -0x4008f5c3    # -1.93f

    const v4, 0x402a3d71    # 2.66f

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40833333    # 4.1f

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x402a3d71    # 2.66f

    const v3, 0x3ff70a3d    # 1.93f

    .line 90
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, -0x40cf5c29    # -0.69f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x41c7ae14    # -0.18f

    const v3, 0x3f147ae1    # 0.58f

    const v4, -0x4128f5c3    # -0.42f

    move-object v0, v7

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e0f5c29    # 0.14f

    const v6, 0x3ea3d70a    # 0.32f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3da3d70a    # 0.08f

    const v4, 0x3e6147ae    # 0.22f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a851ec    # 5.26f

    const v6, 0x3fb47ae1    # 1.41f

    const v1, 0x3f8a3d71    # 1.08f

    const v2, 0x3fef5c29    # 1.87f

    const v3, 0x4058f5c3    # 3.39f

    const v4, 0x401f5c29    # 2.49f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40633333    # 3.55f

    const v6, -0x3f01eb85    # -7.94f

    const v1, 0x4005c28f    # 2.09f

    const v2, -0x40651eb8    # -1.21f

    const v3, 0x402d70a4    # 2.71f

    const v4, -0x3f847ae1    # -3.93f

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x416028f6    # 14.01f

    const v1, 0x41451eb8    # 12.32f

    .line 95
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 217
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v48

    const/16 v62, 0x3800

    const/16 v63, 0x0

    const/high16 v52, 0x3f800000    # 1.0f

    const/high16 v54, 0x3f800000    # 1.0f

    const/16 v53, 0x0

    const/high16 v55, 0x3f800000    # 1.0f

    const/high16 v58, 0x3f800000    # 1.0f

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    .line 213
    const-string v50, ""

    invoke-static/range {v47 .. v63}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/sharp/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
