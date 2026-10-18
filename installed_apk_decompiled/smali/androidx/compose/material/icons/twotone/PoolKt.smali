.class public final Landroidx/compose/material/icons/twotone/PoolKt;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/twotone/PoolKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,200:1\n212#2,12:201\n233#2,18:214\n253#2:251\n233#2,18:252\n253#2:289\n233#2,18:290\n253#2:327\n233#2,18:328\n253#2:365\n174#3:213\n705#4,2:232\n717#4,2:234\n719#4,11:240\n705#4,2:270\n717#4,2:272\n719#4,11:278\n705#4,2:308\n717#4,2:310\n719#4,11:316\n705#4,2:346\n717#4,2:348\n719#4,11:354\n72#5,4:236\n72#5,4:274\n72#5,4:312\n72#5,4:350\n*S KotlinDebug\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/twotone/PoolKt\n*L\n29#1:201,12\n30#1:214,18\n30#1:251\n105#1:252,18\n105#1:289\n111#1:290,18\n111#1:327\n189#1:328,18\n189#1:365\n29#1:213\n30#1:232,2\n30#1:234,2\n30#1:240,11\n105#1:270,2\n105#1:272,2\n105#1:278,11\n111#1:308,2\n111#1:310,2\n111#1:316,11\n189#1:346,2\n189#1:348,2\n189#1:354,11\n30#1:236,4\n105#1:274,4\n111#1:312,4\n189#1:350,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pool",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Pool",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getPool",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _pool:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPool(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 81

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 205
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v64, v1

    move-object/from16 v47, v1

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 213
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

    .line 205
    const-string v2, "TwoTone.Pool"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 224
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 229
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 230
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 236
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41a80000    # 21.0f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4071eb85    # -1.11f

    const/4 v2, 0x0

    const v3, -0x40228f5c    # -1.73f

    const v4, -0x41428f5c    # -0.37f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x419eb852    # -0.22f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x4147ae14    # -0.36f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x40f0a3d7    # -0.56f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, 0x3e051eb8    # 0.13f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x41147ae1    # -0.46f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x40228f5c    # -1.73f

    .line 36
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x419eb852    # -0.22f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x40f0a3d7    # -0.56f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, 0x3e051eb8    # 0.13f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff3d70a    # -2.19f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x41147ae1    # -0.46f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x4075c28f    # -1.08f

    const v4, 0x3f23d70a    # 0.64f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x40228f5c    # -1.73f

    .line 40
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3eb851ec    # 0.36f

    const v1, 0x3e051eb8    # 0.13f

    const v2, -0x406ccccd    # -1.15f

    const v3, -0x40b851ec    # -0.78f

    .line 42
    invoke-virtual {v7, v3, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff3d70a    # -2.19f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x41147ae1    # -0.46f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x4075c28f    # -1.08f

    const v4, 0x3f23d70a    # 0.64f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 44
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, -0x40dc28f6    # -0.64f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 47
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, -0x40dc28f6    # -0.64f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 51
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, 0x3f47ae14    # 0.78f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 53
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 55
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 57
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v1, 0x41840000    # 16.5f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4071eb85    # -1.11f

    const/4 v2, 0x0

    const v3, -0x40228f5c    # -1.73f

    const v4, -0x41428f5c    # -0.37f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x419eb852    # -0.22f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x4147ae14    # -0.36f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x40f0a3d7    # -0.56f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, 0x3e051eb8    # 0.13f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x40228f5c    # -1.73f

    .line 64
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x419eb852    # -0.22f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x40f0a3d7    # -0.56f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, 0x3e051eb8    # 0.13f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x40228f5c    # -1.73f

    .line 68
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x419eb852    # -0.22f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3eb851ec    # 0.36f

    const v1, 0x3e051eb8    # 0.13f

    const v2, -0x406ccccd    # -1.15f

    const v3, -0x40b851ec    # -0.78f

    .line 70
    invoke-virtual {v7, v3, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff33333    # -2.2f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x410f5c29    # -0.47f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x40747ae1    # -1.09f

    const v4, 0x3f23d70a    # 0.64f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 72
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    move-object v0, v7

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 75
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 79
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, 0x3f47ae14    # 0.78f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 81
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 83
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 85
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v1, 0x41840000    # 16.5f

    .line 86
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x410ab852    # 8.67f

    const/high16 v1, 0x41400000    # 12.0f

    .line 88
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    move-object v0, v7

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, -0x40dc28f6    # -0.64f

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 91
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, 0x3f47ae14    # 0.78f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 93
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ed1eb85    # 0.41f

    const v6, -0x41947ae1    # -0.23f

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x4270a3d7    # -0.07f

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x41e66666    # -0.15f

    move-object v0, v7

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4127ae14    # 10.48f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 95
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v1, 0x410ee148    # 8.93f

    const v2, 0x405ccccd    # 3.45f

    const/high16 v3, 0x40f00000    # 7.5f

    const v4, 0x403f5c29    # 2.99f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40200000    # 2.5f

    .line 97
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    const v1, 0x3fe8f5c3    # 1.82f

    const v2, -0x43dc28f6    # -0.01f

    const v3, 0x4038f5c3    # 2.89f

    const v4, 0x3ec7ae14    # 0.39f

    move-object v0, v7

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 99
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fb00000    # -3.25f

    const/high16 v1, 0x40500000    # 3.25f

    .line 100
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f451eb8    # 0.77f

    const v6, 0x3ec7ae14    # 0.39f

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3e8a3d71    # 0.27f

    move-object v0, v7

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3eb851ec    # 0.36f

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 238
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v14

    const/16 v28, 0x3800

    const/16 v29, 0x0

    const v18, 0x3e99999a    # 0.3f

    const v20, 0x3e99999a    # 0.3f

    const/16 v19, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 234
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 255
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 262
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    .line 267
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 268
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    .line 274
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x40b00000    # 5.5f

    const/high16 v1, 0x41840000    # 16.5f

    .line 106
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fe00000    # -2.5f

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    .line 108
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3f600000    # -5.0f

    .line 109
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 276
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v45, 0x3800

    const/16 v46, 0x0

    const v35, 0x3e99999a    # 0.3f

    const v37, 0x3e99999a    # 0.3f

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    const/high16 v41, 0x3f800000    # 1.0f

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    .line 272
    const-string v33, ""

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 293
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v49

    .line 300
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v51, v0

    check-cast v51, Landroidx/compose/ui/graphics/Brush;

    .line 305
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v56

    .line 306
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v57

    .line 312
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v1, 0x41840000    # 16.5f

    .line 112
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x435c28f6    # -0.02f

    .line 113
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ca3d70a    # 0.02f

    .line 114
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 116
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fb00000    # -3.25f

    const/high16 v1, 0x40500000    # 3.25f

    .line 117
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f451eb8    # 0.77f

    const v6, 0x3ec7ae14    # 0.39f

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3e8a3d71    # 0.27f

    move-object v0, v7

    .line 118
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3eb851ec    # 0.36f

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, 0x3f47ae14    # 0.78f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 120
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 121
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 122
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 123
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ed1eb85    # 0.41f

    const v6, -0x41947ae1    # -0.23f

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x4270a3d7    # -0.07f

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x41e66666    # -0.15f

    .line 125
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4127ae14    # 10.48f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 126
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v1, 0x410ee148    # 8.93f

    const v2, 0x405ccccd    # 3.45f

    const/high16 v3, 0x40f00000    # 7.5f

    const v4, 0x403f5c29    # 2.99f

    move-object v0, v7

    .line 127
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40200000    # 2.5f

    .line 128
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    const v1, 0x3fe8f5c3    # 1.82f

    const v2, -0x43dc28f6    # -0.01f

    const v3, 0x4038f5c3    # 2.89f

    const v4, 0x3ec7ae14    # 0.39f

    move-object v0, v7

    .line 129
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40ab3333    # 5.35f

    const/high16 v1, 0x41780000    # 15.5f

    .line 132
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    move-object v0, v7

    .line 133
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    .line 135
    invoke-virtual {v7, v3, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 136
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 137
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    .line 139
    invoke-virtual {v7, v3, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 140
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 141
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400a3d71    # 2.16f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f87ae14    # 1.06f

    const v4, 0x3f2147ae    # 0.63f

    .line 142
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 143
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41f0a3d7    # -0.14f

    move-object v0, v7

    .line 144
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 145
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 146
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e66666    # -0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 147
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x406ccccd    # -1.15f

    const v2, -0x40b851ec    # -0.78f

    const v3, -0x4147ae14    # -0.36f

    .line 148
    invoke-virtual {v7, v2, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 149
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 150
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 151
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41f0a3d7    # -0.14f

    .line 152
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 154
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 155
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 156
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400ccccd    # 2.2f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3f8e147b    # 1.11f

    const/4 v2, 0x0

    const v3, 0x3fdd70a4    # 1.73f

    const v4, -0x41428f5c    # -0.37f

    move-object v0, v7

    .line 157
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x4147ae14    # -0.36f

    .line 158
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41955c29    # 18.67f

    const/high16 v1, 0x41900000    # 18.0f

    .line 160
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x4071eb85    # -1.11f

    const/4 v2, 0x0

    const v3, -0x40228f5c    # -1.73f

    const v4, 0x3ebd70a4    # 0.37f

    move-object v0, v7

    .line 161
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e66666    # -0.6f

    const v4, 0x3eb851ec    # 0.36f

    .line 162
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41f0a3d7    # -0.14f

    .line 163
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 164
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff3d70a    # -2.19f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 165
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 166
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x406ccccd    # -1.15f

    const v1, -0x40b851ec    # -0.78f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 167
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 168
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff3d70a    # -2.19f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 169
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 170
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 171
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3f8e147b    # 1.11f

    const/4 v2, 0x0

    const v3, 0x3fdd70a4    # 1.73f

    const v4, -0x41428f5c    # -0.37f

    move-object v0, v7

    .line 172
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x4147ae14    # -0.36f

    .line 173
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e051eb8    # 0.13f

    .line 174
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 175
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400c28f6    # 2.19f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x3fdd70a4    # 1.73f

    .line 176
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 177
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 178
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 179
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fdc28f6    # 1.72f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x400b851f    # 2.18f

    .line 180
    invoke-virtual {v7, v0, v2, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 181
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 182
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 183
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 184
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f0a3d7    # -0.56f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41fae148    # -0.13f

    move-object v0, v7

    .line 185
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 186
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 314
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

    .line 310
    const-string v50, ""

    invoke-static/range {v47 .. v63}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 331
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v66

    .line 338
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v68, v0

    check-cast v68, Landroidx/compose/ui/graphics/Brush;

    .line 343
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v73

    .line 344
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v74

    .line 350
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x40b00000    # 5.5f

    const/high16 v1, 0x41840000    # 16.5f

    .line 190
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fe00000    # -2.5f

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    .line 192
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3f600000    # -5.0f

    .line 193
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 352
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v65

    const/16 v79, 0x3800

    const/16 v80, 0x0

    const/high16 v69, 0x3f800000    # 1.0f

    const/high16 v71, 0x3f800000    # 1.0f

    const/16 v70, 0x0

    const/high16 v72, 0x3f800000    # 1.0f

    const/high16 v75, 0x3f800000    # 1.0f

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    .line 348
    const-string v67, ""

    invoke-static/range {v64 .. v80}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
