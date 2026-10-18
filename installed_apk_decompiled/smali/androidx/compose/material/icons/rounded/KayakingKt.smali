.class public final Landroidx/compose/material/icons/rounded/KayakingKt;
.super Ljava/lang/Object;
.source "Kayaking.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKayaking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Kayaking.kt\nandroidx/compose/material/icons/rounded/KayakingKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,108:1\n212#2,12:109\n233#2,18:122\n253#2:159\n174#3:121\n705#4,2:140\n717#4,2:142\n719#4,11:148\n72#5,4:144\n*S KotlinDebug\n*F\n+ 1 Kayaking.kt\nandroidx/compose/material/icons/rounded/KayakingKt\n*L\n29#1:109,12\n30#1:122,18\n30#1:159\n29#1:121\n30#1:140,2\n30#1:142,2\n30#1:148,11\n30#1:144,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_kayaking",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Kayaking",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getKayaking",
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
.field private static _kayaking:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getKayaking(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/KayakingKt;->_kayaking:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 113
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 121
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

    .line 113
    const-string v2, "Rounded.Kayaking"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 132
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 137
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 138
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 144
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const v2, -0x40f33333    # -0.55f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4021eb85    # 2.53f

    const v6, -0x40cccccd    # -0.7f

    const v1, 0x3f5eb852    # 0.87f

    const/4 v2, 0x0

    const v3, 0x3fdd70a4    # 1.73f

    const v4, -0x418a3d71    # -0.24f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f70a3d7    # 0.94f

    const/4 v6, 0x0

    const v1, 0x3e947ae1    # 0.29f

    const v2, -0x41dc28f6    # -0.16f

    const v3, 0x3f266666    # 0.65f

    const v4, -0x41d1eb85    # -0.17f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a1eb85    # 5.06f

    const v1, 0x3fcb851f    # 1.59f

    const v2, 0x3f666666    # 0.9f

    const v3, 0x405eb852    # 3.48f

    const v4, 0x3f666666    # 0.9f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f70a3d7    # 0.94f

    const v1, 0x3e947ae1    # 0.29f

    const v2, -0x41dc28f6    # -0.16f

    const v3, 0x3f266666    # 0.65f

    const v4, -0x41dc28f6    # -0.16f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a1eb85    # 5.06f

    const v1, 0x3fcb851f    # 1.59f

    const v2, 0x3f666666    # 0.9f

    const v3, 0x405eb852    # 3.48f

    const v4, 0x3f666666    # 0.9f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f70a3d7    # 0.94f

    const v1, 0x3e947ae1    # 0.29f

    const v2, -0x41dc28f6    # -0.16f

    const v3, 0x3f266666    # 0.65f

    const v4, -0x41dc28f6    # -0.16f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v6, 0x41a80000    # 21.0f

    const v1, 0x419a28f6    # 19.27f

    const v2, 0x41a6147b    # 20.76f

    const v3, 0x41a10a3d    # 20.13f

    const/high16 v4, 0x41a80000    # 21.0f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    move-object v0, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4119999a    # -0.45f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fc00000    # -3.0f

    const/high16 v6, -0x40c00000    # -0.75f

    const v1, -0x407c28f6    # -1.03f

    const/4 v2, 0x0

    const v3, -0x3ffc28f6    # -2.06f

    const/high16 v4, -0x41800000    # -0.25f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f3d1eb8    # -6.09f

    const v6, -0x42b33333    # -0.05f

    const v1, -0x400a3d71    # -1.92f

    const v2, 0x3f828f5c    # 1.02f

    const v3, -0x3f7a3d71    # -4.18f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f4d70a4    # -5.58f

    const v6, -0x41f0a3d7    # -0.14f

    const v1, -0x401ae148    # -1.79f

    const v2, 0x3f5eb852    # 0.87f

    const v3, -0x3f851eb8    # -3.92f

    const v4, 0x3f7ae148    # 0.98f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x41b80000    # 23.0f

    const v1, 0x40a9999a    # 5.3f

    const v2, 0x41b5851f    # 22.69f

    const v3, 0x4084cccd    # 4.15f

    const/high16 v4, 0x41b80000    # 23.0f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 50
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const v1, 0x401ccccd    # 2.45f

    const/high16 v2, 0x41b80000    # 23.0f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x41b46666    # 22.55f

    move-object v0, v7

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x40b00000    # 5.5f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, -0x40733333    # -1.1f

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x3f666666    # 0.9f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f666666    # 0.9f

    const/high16 v1, 0x40000000    # 2.0f

    .line 55
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 56
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4151999a    # 13.1f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40b00000    # 5.5f

    .line 57
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41abc28f    # 21.47f

    const v1, 0x4193999a    # 18.45f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404b851f    # -1.41f

    const v6, 0x3ed70a3d    # 0.42f

    const v1, -0x4128f5c3    # -0.42f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, -0x4099999a    # -0.9f

    const v4, 0x3e8f5c29    # 0.28f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40466666    # -1.45f

    const v6, -0x40bae148    # -0.77f

    const v1, -0x40f851ec    # -0.53f

    const v2, -0x41e66666    # -0.15f

    const v3, -0x407c28f6    # -1.03f

    const v4, -0x4123d70a    # -0.43f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40628f5c    # -1.23f

    const/4 v6, 0x0

    const v1, -0x414ccccd    # -0.35f

    const v2, -0x416b851f    # -0.29f

    const v3, -0x40a147ae    # -0.87f

    const v4, -0x416b851f    # -0.29f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x41980000    # 19.0f

    const v1, 0x4185c28f    # 16.72f

    const v2, 0x41950a3d    # 18.63f

    const v3, 0x417e6666    # 15.9f

    const/high16 v4, 0x41980000    # 19.0f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40970a3d    # -0.91f

    const v1, -0x3fe70a3d    # -2.39f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x4023d70a    # -1.72f

    .line 64
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4063d70a    # -1.22f

    const/4 v6, 0x0

    const v1, -0x414ccccd    # -0.35f

    const v2, -0x4170a3d7    # -0.28f

    const v3, -0x40a147ae    # -0.87f

    const v4, -0x4170a3d7    # -0.28f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41980000    # 19.0f

    const v1, 0x412b851f    # 10.72f

    const v2, 0x41950a3d    # 18.63f

    const v3, 0x411e6666    # 9.9f

    const/high16 v4, 0x41980000    # 19.0f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40970a3d    # -0.91f

    const v1, -0x3fe70a3d    # -2.39f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x4023d70a    # -1.72f

    .line 67
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40628f5c    # -1.23f

    const/4 v6, 0x0

    const v1, -0x414ccccd    # -0.35f

    const v2, -0x416b851f    # -0.29f

    const v3, -0x40a147ae    # -0.87f

    const v4, -0x4170a3d7    # -0.28f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40466666    # -1.45f

    const v6, 0x3f451eb8    # 0.77f

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3eb33333    # 0.35f

    const v3, -0x40947ae1    # -0.92f

    const v4, 0x3f1eb852    # 0.62f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404ccccd    # -1.4f

    const v6, -0x4128f5c3    # -0.42f

    const v1, -0x40fd70a4    # -0.51f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, -0x40851eb8    # -0.98f

    const v4, -0x4170a3d7    # -0.28f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x400ccccd    # -1.9f

    const v1, -0x40947ae1    # -0.92f

    const v2, -0x41666666    # -0.3f

    const v3, -0x40947ae1    # -0.92f

    const v4, -0x40333333    # -1.6f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40933333    # 4.6f

    const v6, -0x406f5c29    # -1.13f

    const v1, 0x3f9ae148    # 1.21f

    const v2, -0x413851ec    # -0.39f

    const v3, 0x40328f5c    # 2.79f

    const v4, -0x40ae147b    # -0.82f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3faccccd    # 1.35f

    const v1, -0x3f7a8f5c    # -4.17f

    .line 73
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x401147ae    # 2.27f

    const v6, -0x406b851f    # -1.16f

    const v1, 0x3e9eb852    # 0.31f

    const v2, -0x408ccccd    # -0.95f

    const v3, 0x3fa8f5c3    # 1.32f

    const v4, -0x4043d70a    # -1.47f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e8a3d71    # 0.27f

    const v6, 0x3de147ae    # 0.11f

    const v1, 0x3db851ec    # 0.09f

    const v2, 0x3cf5c28f    # 0.03f

    const v3, 0x3e428f5c    # 0.19f

    const v4, 0x3d8f5c29    # 0.07f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 76
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401e147b    # 2.47f

    const v1, 0x3fa66666    # 1.3f

    .line 77
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4035c28f    # 2.84f

    const/high16 v1, -0x40400000    # -1.5f

    .line 78
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fd33333    # 1.65f

    const v1, -0x3f928f5c    # -3.71f

    .line 79
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4147ae14    # -0.36f

    const v1, -0x4091eb85    # -0.93f

    .line 80
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ca3d70a    # 0.02f

    const v6, -0x40bd70a4    # -0.76f

    const v1, -0x42333333    # -0.1f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x40fae148    # -0.52f

    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f3d70a4    # 0.74f

    const v1, -0x4028f5c3    # -1.68f

    .line 82
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa8f5c3    # 1.32f

    const v6, -0x40fd70a4    # -0.51f

    const v1, 0x3e6147ae    # 0.22f

    const v2, -0x40fd70a4    # -0.51f

    const v3, 0x3f51eb85    # 0.82f

    const v4, -0x40c51eb8    # -0.73f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3faf5c29    # 1.37f

    const v1, 0x3f1c28f6    # 0.61f

    .line 84
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3fa8f5c3    # 1.32f

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3f3ae148    # 0.73f

    const v4, 0x3f51eb85    # 0.82f

    move-object v0, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40c00000    # -0.75f

    const v1, 0x3fd70a3d    # 1.68f

    .line 86
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const v6, 0x3f07ae14    # 0.53f

    const v1, -0x421eb852    # -0.11f

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x416147ae    # -0.31f

    const v4, 0x3edc28f6    # 0.43f

    move-object v0, v7

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x419ae148    # 19.36f

    const v1, 0x40dccccd    # 6.9f

    .line 88
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f91eb85    # -3.72f

    const v1, 0x410570a4    # 8.34f

    .line 89
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40ba3d71    # 5.82f

    const v6, 0x3fa7ae14    # 1.31f

    const v1, 0x40151eb8    # 2.33f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x408b3333    # 4.35f

    const v4, 0x3f570a3d    # 0.84f

    move-object v0, v7

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41abc28f    # 21.47f

    const v6, 0x4193999a    # 18.45f

    const v1, 0x41b31eb8    # 22.39f

    const v2, 0x4186cccd    # 16.85f

    const v3, 0x41b33333    # 22.4f

    const v4, 0x41913333    # 18.15f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414f5c29    # 12.96f

    const v1, 0x417051ec    # 15.02f

    .line 93
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40e8f5c3    # -0.59f

    const v1, 0x3e9eb852    # 0.31f

    .line 94
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4011eb85    # -1.86f

    const/4 v6, 0x0

    const v1, -0x40eb851f    # -0.58f

    const v2, 0x3e9eb852    # 0.31f

    const v3, -0x405c28f6    # -1.28f

    const v4, 0x3e9eb852    # 0.31f

    move-object v0, v7

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40b0a3d7    # -0.81f

    const v1, -0x4123d70a    # -0.43f

    .line 96
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40ca3d71    # -0.71f

    const v1, 0x400ae148    # 2.17f

    .line 97
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41700000    # 15.0f

    const v1, 0x4135c28f    # 11.36f

    const v2, 0x417028f6    # 15.01f

    const v3, 0x413ae148    # 11.68f

    const/high16 v4, 0x41700000    # 15.0f

    move-object v0, v7

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40047ae1    # 2.07f

    const v6, 0x3da3d70a    # 0.08f

    const v1, 0x3f35c28f    # 0.71f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const v4, 0x3cf5c28f    # 0.03f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414f5c29    # 12.96f

    const v1, 0x417051ec    # 15.02f

    .line 100
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
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

    .line 142
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/KayakingKt;->_kayaking:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
