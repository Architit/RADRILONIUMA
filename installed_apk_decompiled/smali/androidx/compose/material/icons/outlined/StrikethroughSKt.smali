.class public final Landroidx/compose/material/icons/outlined/StrikethroughSKt;
.super Ljava/lang/Object;
.source "StrikethroughS.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrikethroughS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrikethroughS.kt\nandroidx/compose/material/icons/outlined/StrikethroughSKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,94:1\n212#2,12:95\n233#2,18:108\n253#2:145\n174#3:107\n705#4,2:126\n717#4,2:128\n719#4,11:134\n72#5,4:130\n*S KotlinDebug\n*F\n+ 1 StrikethroughS.kt\nandroidx/compose/material/icons/outlined/StrikethroughSKt\n*L\n29#1:95,12\n30#1:108,18\n30#1:145\n29#1:107\n30#1:126,2\n30#1:128,2\n30#1:134,11\n30#1:130,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_strikethroughS",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "StrikethroughS",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getStrikethroughS",
        "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _strikethroughS:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getStrikethroughS(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/StrikethroughSKt;->_strikethroughS:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 99
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 107
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

    .line 99
    const-string v2, "Outlined.StrikethroughS"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 118
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 123
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 124
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 130
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x40e7ae14    # 7.24f

    const/high16 v1, 0x410c0000    # 8.75f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x413851ec    # -0.39f

    const v6, -0x402a3d71    # -1.67f

    const v1, -0x417ae148    # -0.26f

    const v2, -0x410a3d71    # -0.48f

    const v3, -0x413851ec    # -0.39f

    const v4, -0x407c28f6    # -1.03f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v2, -0x40e3d70a    # -0.61f

    const v3, 0x3e051eb8    # 0.13f

    const v4, -0x406b851f    # -1.16f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8e147b    # 1.11f

    const v6, -0x405ae148    # -1.29f

    const v1, 0x3e851eb8    # 0.26f

    const/high16 v2, -0x41000000    # -0.5f

    const v3, 0x3f2147ae    # 0.63f

    const v4, -0x4091eb85    # -0.93f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd9999a    # 1.7f

    const v6, -0x40ab851f    # -0.83f

    const v1, 0x3ef5c28f    # 0.48f

    const v2, -0x414ccccd    # -0.35f

    const v3, 0x3f866666    # 1.05f

    const v4, -0x40deb852    # -0.63f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, -0x416b851f    # -0.29f

    const v1, 0x3f28f5c3    # 0.66f

    const v2, -0x41bd70a4    # -0.19f

    const v3, 0x3fb1eb85    # 1.39f

    const v4, -0x416b851f    # -0.29f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400d70a4    # 2.21f

    const v6, 0x3eae147b    # 0.34f

    const v1, 0x3f4f5c29    # 0.81f

    const/4 v2, 0x0

    const v3, 0x3fc51eb8    # 1.54f

    const v4, 0x3de147ae    # 0.11f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd851ec    # 1.69f

    const v6, 0x3f70a3d7    # 0.94f

    const v1, 0x3f28f5c3    # 0.66f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f9d70a4    # 1.23f

    const v4, 0x3f0a3d71    # 0.54f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8a3d71    # 1.08f

    const v6, 0x3fb70a3d    # 1.43f

    const v1, 0x3ef0a3d7    # 0.47f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3f6147ae    # 0.88f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, 0x3fe7ae14    # 1.81f

    const v2, 0x3ec28f5c    # 0.38f

    .line 40
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fbf5c29    # -3.01f

    .line 41
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41e66666    # -0.15f

    const v6, -0x40a66666    # -0.85f

    const/4 v1, 0x0

    const v2, -0x416147ae    # -0.31f

    const v3, -0x42b33333    # -0.05f

    const v4, -0x40e8f5c3    # -0.59f

    move-object v0, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x411eb852    # -0.44f

    const v6, -0x40d1eb85    # -0.68f

    const v1, -0x4247ae14    # -0.09f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x418a3d71    # -0.24f

    const v4, -0x41051eb8    # -0.49f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40c00000    # -0.75f

    const v6, -0x411eb852    # -0.44f

    const v1, -0x41b33333    # -0.2f

    const v2, -0x41bd70a4    # -0.19f

    const v3, -0x4119999a    # -0.45f

    const v4, -0x41570a3d    # -0.33f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407851ec    # -1.06f

    const v6, -0x41dc28f6    # -0.16f

    const v1, -0x41666666    # -0.3f

    const v2, -0x42333333    # -0.1f

    const v3, -0x40d70a3d    # -0.66f

    const v4, -0x41dc28f6    # -0.16f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407c28f6    # -1.03f

    const v6, 0x3e051eb8    # 0.13f

    const v1, -0x413851ec    # -0.39f

    const/4 v2, 0x0

    const v3, -0x40c28f5c    # -0.74f

    const v4, 0x3d23d70a    # 0.04f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e570a3d    # 0.21f

    const v1, -0x40c7ae14    # -0.72f

    const v2, 0x3eb851ec    # 0.36f

    const v3, -0x40f851ec    # -0.53f

    .line 47
    invoke-virtual {v7, v3, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x411eb852    # -0.44f

    const v6, 0x3f0ccccd    # 0.55f

    const v1, -0x41bd70a4    # -0.19f

    const v2, 0x3e23d70a    # 0.16f

    const v3, -0x4151eb85    # -0.34f

    const v4, 0x3eae147b    # 0.34f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41e66666    # -0.15f

    const v6, 0x3f28f5c3    # 0.66f

    const v1, -0x42333333    # -0.1f

    const v2, 0x3e570a3d    # 0.21f

    const v3, -0x41e66666    # -0.15f

    const v4, 0x3edc28f6    # 0.43f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3d70a4    # 0.74f

    const v6, 0x3f9ae148    # 1.21f

    const/4 v1, 0x0

    const v2, 0x3ef5c28f    # 0.48f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f6147ae    # 0.88f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fb47ae1    # 1.41f

    const v6, 0x3f333333    # 0.7f

    const v1, 0x3ec28f5c    # 0.38f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3f451eb8    # 0.77f

    const v4, 0x3ef5c28f    # 0.48f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40ec7ae1    # 7.39f

    .line 52
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41e66666    # -0.15f

    const/high16 v6, -0x41800000    # -0.25f

    const v1, -0x42b33333    # -0.05f

    const v2, -0x425c28f6    # -0.08f

    const v3, -0x421eb852    # -0.11f

    const v4, -0x41d1eb85    # -0.17f

    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41a80000    # 21.0f

    .line 55
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 56
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40400000    # 3.0f

    .line 57
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 58
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4119eb85    # 9.62f

    .line 59
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3e4ccccd    # 0.2f

    const v1, 0x3e3851ec    # 0.18f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e0f5c29    # 0.14f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f5eb852    # 0.87f

    const v6, 0x3f028f5c    # 0.51f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3eae147b    # 0.34f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3edc28f6    # 0.43f

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3eb33333    # 0.35f

    .line 62
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3de147ae    # 0.11f

    const v6, 0x3f30a3d7    # 0.69f

    const v1, 0x3d8f5c29    # 0.07f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3de147ae    # 0.11f

    const v4, 0x3edc28f6    # 0.43f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41f0a3d7    # -0.14f

    const v6, 0x3f28f5c3    # 0.66f

    const/4 v1, 0x0

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x42b33333    # -0.05f

    const v4, 0x3ee66666    # 0.45f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4128f5c3    # -0.42f

    const v6, 0x3f07ae14    # 0.53f

    const v1, -0x4247ae14    # -0.09f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, -0x41947ae1    # -0.23f

    const v4, 0x3ec28f5c    # 0.38f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ca3d71    # -0.71f

    const v6, 0x3eb33333    # 0.35f

    const v1, -0x41bd70a4    # -0.19f

    const v2, 0x3e19999a    # 0.15f

    const v3, -0x4128f5c3    # -0.42f

    const v4, 0x3e851eb8    # 0.26f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407eb852    # -1.01f

    const v6, 0x3e051eb8    # 0.13f

    const v1, -0x416b851f    # -0.29f

    const v2, 0x3da3d70a    # 0.08f

    const v3, -0x40deb852    # -0.63f

    const v4, 0x3e051eb8    # 0.13f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4068f5c3    # -1.18f

    const v6, -0x41fae148    # -0.13f

    const v1, -0x4123d70a    # -0.43f

    const/4 v2, 0x0

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x42dc28f6    # -0.04f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40970a3d    # -0.91f

    const v1, -0x4128f5c3    # -0.42f

    const v2, -0x40d70a3d    # -0.66f

    const v3, -0x41947ae1    # -0.23f

    .line 69
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40e8f5c3    # -0.59f

    const/high16 v6, -0x40c00000    # -0.75f

    const/high16 v1, -0x41800000    # -0.25f

    const v2, -0x41bd70a4    # -0.19f

    const v3, -0x4119999a    # -0.45f

    const v4, -0x411eb852    # -0.44f

    move-object v0, v7

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40bd70a4    # -0.76f

    const v1, -0x40651eb8    # -1.21f

    const/high16 v2, -0x41800000    # -0.25f

    .line 71
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40cccccd    # 6.4f

    .line 72
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e75c28f    # 0.24f

    const v6, 0x3fca3d71    # 1.58f

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3da3d70a    # 0.08f

    const v4, 0x3f90a3d7    # 1.13f

    move-object v0, v7

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3f266666    # 0.65f

    const v2, 0x3f9ae148    # 1.21f

    const v3, 0x3ebd70a4    # 0.37f

    .line 74
    invoke-virtual {v7, v3, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f7ae148    # 0.98f

    const v6, 0x3f6b851f    # 0.92f

    const v1, 0x3e8f5c29    # 0.28f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f28f5c3    # 0.66f

    move-object v0, v7

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9c28f6    # 1.22f

    const v6, 0x3f266666    # 0.65f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3ef5c28f    # 0.48f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fb0a3d7    # 1.38f

    const v6, 0x3ec7ae14    # 0.39f

    const v1, 0x3ee147ae    # 0.44f

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3e99999a    # 0.3f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fb851ec    # 1.44f

    const v6, 0x3e051eb8    # 0.13f

    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3da3d70a    # 0.08f

    const v3, 0x3f75c28f    # 0.96f

    const v4, 0x3e051eb8    # 0.13f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, -0x4170a3d7    # -0.28f

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    const v3, 0x3fc3d70a    # 1.53f

    const v4, -0x4247ae14    # -0.09f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fd5c28f    # 1.67f

    const v1, -0x40b5c28f    # -0.79f

    const v2, 0x3f9ae148    # 1.21f

    const v3, -0x4119999a    # -0.45f

    .line 80
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f88f5c3    # 1.07f

    const v6, -0x405d70a4    # -1.27f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x4151eb85    # -0.34f

    const v3, 0x3f51eb85    # 0.82f

    const v4, -0x40bae148    # -0.77f

    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40770a3d    # -1.07f

    const v1, -0x40251eb8    # -1.71f

    const v2, 0x3ec28f5c    # 0.38f

    .line 82
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x416147ae    # -0.31f

    const v6, -0x4031eb85    # -1.61f

    const/4 v1, 0x0

    const v2, -0x40e66666    # -0.6f

    const v3, -0x42333333    # -0.1f

    const v4, -0x406e147b    # -1.14f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41d1eb85    # -0.17f

    const v6, -0x41570a3d    # -0.33f

    const v1, -0x42b33333    # -0.05f

    const v2, -0x421eb852    # -0.11f

    const v3, -0x421eb852    # -0.11f

    const v4, -0x41947ae1    # -0.23f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41a80000    # 21.0f

    .line 85
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    .line 86
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
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

    .line 128
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/StrikethroughSKt;->_strikethroughS:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
