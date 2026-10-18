.class public final Landroidx/compose/material/icons/sharp/PoolKt;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/sharp/PoolKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,119:1\n212#2,12:120\n233#2,18:133\n253#2:170\n233#2,18:171\n253#2:208\n174#3:132\n705#4,2:151\n717#4,2:153\n719#4,11:159\n705#4,2:189\n717#4,2:191\n719#4,11:197\n72#5,4:155\n72#5,4:193\n*S KotlinDebug\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/sharp/PoolKt\n*L\n29#1:120,12\n30#1:133,18\n30#1:170\n108#1:171,18\n108#1:208\n29#1:132\n30#1:151,2\n30#1:153,2\n30#1:159,11\n108#1:189,2\n108#1:191,2\n108#1:197,11\n30#1:155,4\n108#1:193,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pool",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Pool",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getPool",
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
.field private static _pool:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPool(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 124
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 132
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

    .line 124
    const-string v2, "Sharp.Pool"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 143
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 148
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 149
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 155
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fb00000    # -3.25f

    const/high16 v1, 0x40500000    # 3.25f

    .line 32
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f451eb8    # 0.77f

    const v6, 0x3ec7ae14    # 0.39f

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3e8a3d71    # 0.27f

    move-object v0, v7

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3eb851ec    # 0.36f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f47ae14    # 0.78f

    const v1, 0x3f933333    # 1.15f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 35
    invoke-virtual {v7, v0, v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 37
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x41fae148    # -0.13f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ed1eb85    # 0.41f

    const v6, -0x41947ae1    # -0.23f

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x4270a3d7    # -0.07f

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x41e66666    # -0.15f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4127ae14    # 10.48f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 41
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40400000    # 3.0f

    .line 42
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40200000    # 2.5f

    .line 43
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41100000    # 9.0f

    const/high16 v1, 0x40e00000    # 7.0f

    .line 44
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v1, 0x41840000    # 16.5f

    .line 47
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x435c28f6    # -0.02f

    .line 48
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ca3d70a    # 0.02f

    .line 49
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40ab3333    # 5.35f

    const/high16 v1, 0x41780000    # 15.5f

    .line 51
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    .line 54
    invoke-virtual {v7, v3, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    .line 58
    invoke-virtual {v7, v3, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400a3d71    # 2.16f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f87ae14    # 1.06f

    const v4, 0x3f2147ae    # 0.63f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 62
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41f0a3d7    # -0.14f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 65
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e66666    # -0.6f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x406ccccd    # -1.15f

    const v2, -0x40b851ec    # -0.78f

    const v3, -0x4147ae14    # -0.36f

    .line 67
    invoke-virtual {v7, v2, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 69
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41f0a3d7    # -0.14f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 73
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 75
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400ccccd    # 2.2f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3f8e147b    # 1.11f

    const/4 v2, 0x0

    const v3, 0x3fdd70a4    # 1.73f

    const v4, -0x41428f5c    # -0.37f

    move-object v0, v7

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x4147ae14    # -0.36f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41955c29    # 18.67f

    const/high16 v1, 0x41900000    # 18.0f

    .line 79
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, -0x4071eb85    # -1.11f

    const/4 v2, 0x0

    const v3, -0x40228f5c    # -1.73f

    const v4, 0x3ebd70a4    # 0.37f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e66666    # -0.6f

    const v4, 0x3eb851ec    # 0.36f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41f0a3d7    # -0.14f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff3d70a    # -2.19f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 84
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x406ccccd    # -1.15f

    const v1, -0x40b851ec    # -0.78f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x4147ae14    # -0.36f

    .line 86
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff3d70a    # -2.19f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3ebd70a4    # 0.37f

    .line 88
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3eb851ec    # 0.36f

    const v1, -0x41428f5c    # -0.37f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3eb851ec    # 0.36f

    move-object v0, v7

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 90
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400c28f6    # 2.19f

    const v6, -0x40dc28f6    # -0.64f

    const v1, 0x3f8e147b    # 1.11f

    const/4 v2, 0x0

    const v3, 0x3fdd70a4    # 1.73f

    const v4, -0x41428f5c    # -0.37f

    move-object v0, v7

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x4147ae14    # -0.36f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e051eb8    # 0.13f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400c28f6    # 2.19f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x3fdd70a4    # 1.73f

    .line 95
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fdc28f6    # 1.72f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x400b851f    # 2.18f

    .line 99
    invoke-virtual {v7, v0, v2, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f170a3d    # 0.59f

    const v4, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3eb851ec    # 0.36f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f47ae14    # 0.78f

    const v4, 0x3e0f5c29    # 0.14f

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400b851f    # 2.18f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x3f23d70a    # 0.64f

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 103
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x4147ae14    # -0.36f

    const v1, -0x40f0a3d7    # -0.56f

    const/4 v2, 0x0

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x41fae148    # -0.13f

    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x40dc28f6    # -0.64f

    const v1, -0x4119999a    # -0.45f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40dc28f6    # -0.64f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
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

    .line 153
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 174
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 181
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    .line 186
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 187
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    .line 193
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x40b00000    # 5.5f

    const/high16 v1, 0x41840000    # 16.5f

    .line 109
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fe00000    # -2.5f

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    .line 111
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3f600000    # -5.0f

    .line 112
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 195
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

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

    .line 191
    const-string v33, ""

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/sharp/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 115
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
