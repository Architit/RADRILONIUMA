.class public final Landroidx/compose/material/icons/outlined/WavesKt;
.super Ljava/lang/Object;
.source "Waves.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaves.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Waves.kt\nandroidx/compose/material/icons/outlined/WavesKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,117:1\n212#2,12:118\n233#2,18:131\n253#2:168\n174#3:130\n705#4,2:149\n717#4,2:151\n719#4,11:157\n72#5,4:153\n*S KotlinDebug\n*F\n+ 1 Waves.kt\nandroidx/compose/material/icons/outlined/WavesKt\n*L\n29#1:118,12\n30#1:131,18\n30#1:168\n29#1:130\n30#1:149,2\n30#1:151,2\n30#1:157,11\n30#1:153,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_waves",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Waves",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getWaves",
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
.field private static _waves:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWaves(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/WavesKt;->_waves:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 122
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 130
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

    .line 122
    const-string v2, "Outlined.Waves"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 141
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 146
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 147
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 153
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4187eb85    # 16.99f

    const/high16 v1, 0x41880000    # 17.0f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, -0x40533333    # -1.35f

    const/4 v2, 0x0

    const v3, -0x3ff33333    # -2.2f

    const v4, 0x3ed70a3d    # 0.42f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3f19999a    # 0.6f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x40e66666    # -0.6f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3f4ccccd    # 0.8f

    const v2, -0x3fc33333    # -2.95f

    const v3, -0x3ff33333    # -2.2f

    .line 36
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, -0x406a3d71    # -1.17f

    const v4, 0x3f19999a    # 0.6f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff9999a    # 1.95f

    .line 38
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, -0x40b33333    # -0.8f

    const v1, 0x3faccccd    # 1.35f

    const/4 v2, 0x0

    const v3, 0x400ccccd    # 2.2f

    const v4, -0x4128f5c3    # -0.42f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f95c28f    # 1.17f

    const v4, -0x40e66666    # -0.6f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x40033333    # 2.05f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3fb33333    # 1.4f

    .line 41
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4128f5c3    # -0.42f

    const v1, -0x40b33333    # -0.8f

    const v2, 0x403ccccd    # 2.95f

    const v3, 0x400ccccd    # 2.2f

    .line 43
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f970a3d    # 1.18f

    const v4, -0x40e66666    # -0.6f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f19999a    # 0.6f

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3e800000    # 0.25f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fca3d71    # 1.58f

    const v4, 0x3f4ccccd    # 0.8f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40066666    # -1.95f

    .line 47
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40333333    # -1.6f

    const v4, -0x40b33333    # -0.8f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4148a3d7    # 12.54f

    const/high16 v1, 0x41880000    # 17.0f

    .line 51
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f4ccccd    # 0.8f

    const v1, -0x40533333    # -1.35f

    const/4 v2, 0x0

    const v3, -0x3ff33333    # -2.2f

    const v4, 0x3edc28f6    # 0.43f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3f19999a    # 0.6f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x40e66666    # -0.6f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3edc28f6    # 0.43f

    const v1, 0x3f4ccccd    # 0.8f

    const v2, -0x3fc33333    # -2.95f

    const v3, -0x3ff33333    # -2.2f

    .line 56
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x406a3d71    # -1.17f

    const v4, 0x3f19999a    # 0.6f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff9999a    # 1.95f

    .line 58
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, -0x40b33333    # -0.8f

    const v1, 0x3faccccd    # 1.35f

    const/4 v2, 0x0

    const v3, 0x400ccccd    # 2.2f

    const v4, -0x4123d70a    # -0.43f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x414ccccd    # -0.35f

    const v3, 0x3f933333    # 1.15f

    const v4, -0x40e66666    # -0.6f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x40033333    # 2.05f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3fb33333    # 1.4f

    .line 61
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4123d70a    # -0.43f

    const v1, -0x40b33333    # -0.8f

    const v2, 0x403ccccd    # 2.95f

    const v3, 0x400ccccd    # 2.2f

    .line 63
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x414ccccd    # -0.35f

    const v3, 0x3f933333    # 1.15f

    const v4, -0x40e66666    # -0.6f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x40033333    # 2.05f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3fb33333    # 1.4f

    .line 65
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fca3d71    # 1.58f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40066666    # -1.95f

    .line 67
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40333333    # -1.6f

    const v4, -0x40b33333    # -0.8f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x419f999a    # 19.95f

    const v1, 0x408eb852    # 4.46f

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v3, -0x4035c28f    # -1.58f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3f4ccccd    # 0.8f

    const v2, -0x3fc33333    # -2.95f

    const v3, -0x3ff33333    # -2.2f

    .line 73
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3f19999a    # 0.6f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x40e66666    # -0.6f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3f4ccccd    # 0.8f

    const v2, -0x3fc33333    # -2.95f

    const v3, -0x3ff33333    # -2.2f

    .line 77
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, -0x406a3d71    # -1.17f

    const v4, 0x3f19999a    # 0.6f

    move-object v0, v7

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff70a3d    # 1.93f

    .line 79
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, -0x40b33333    # -0.8f

    const v1, 0x3faccccd    # 1.35f

    const/4 v2, 0x0

    const v3, 0x400ccccd    # 2.2f

    const v4, -0x4123d70a    # -0.43f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f95c28f    # 1.17f

    const v4, -0x40e66666    # -0.6f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x40033333    # 2.05f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3fb33333    # 1.4f

    .line 82
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4123d70a    # -0.43f

    const v1, -0x40b33333    # -0.8f

    const v2, 0x403ccccd    # 2.95f

    const v3, 0x400ccccd    # 2.2f

    .line 84
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f970a3d    # 1.18f

    const v4, -0x40e66666    # -0.6f

    move-object v0, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f19999a    # 0.6f

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3e800000    # 0.25f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fca3d71    # 1.58f

    const v4, 0x3f4ccccd    # 0.8f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a147ae    # 5.04f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 88
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, -0x40eb851f    # -0.58f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    move-object v0, v7

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x410170a4    # 8.09f

    const/high16 v1, 0x41880000    # 17.0f

    .line 91
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, -0x40533333    # -1.35f

    const v3, -0x3ff33333    # -2.2f

    const v4, 0x3edc28f6    # 0.43f

    move-object v0, v7

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3eb33333    # 0.35f

    const v3, -0x406ccccd    # -1.15f

    const v4, 0x3f19999a    # 0.6f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ffccccd    # -2.05f

    const v1, -0x40e66666    # -0.6f

    const v2, -0x404ccccd    # -1.4f

    const/high16 v3, -0x41800000    # -0.25f

    .line 94
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    move-object v0, v7

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3edc28f6    # 0.43f

    const v1, 0x3f4ccccd    # 0.8f

    const v2, -0x3fc33333    # -2.95f

    const v3, -0x3ff33333    # -2.2f

    .line 96
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3eb33333    # 0.35f

    const v3, -0x406ccccd    # -1.15f

    const v4, 0x3f19999a    # 0.6f

    move-object v0, v7

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff9999a    # 1.95f

    .line 98
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, -0x40b33333    # -0.8f

    const v1, 0x3faccccd    # 1.35f

    const/4 v2, 0x0

    const v3, 0x400ccccd    # 2.2f

    const v4, -0x4123d70a    # -0.43f

    move-object v0, v7

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f970a3d    # 1.18f

    const v4, -0x40e66666    # -0.6f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x40033333    # 2.05f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3fb33333    # 1.4f

    .line 101
    invoke-virtual {v7, v3, v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4123d70a    # -0.43f

    const v1, -0x40b33333    # -0.8f

    const v2, 0x403ccccd    # 2.95f

    const v3, 0x400ccccd    # 2.2f

    .line 103
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, 0x3f266666    # 0.65f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f970a3d    # 1.18f

    const v4, -0x40e66666    # -0.6f

    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f19999a    # 0.6f

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3e800000    # 0.25f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fca3d71    # 1.58f

    const v4, 0x3f4ccccd    # 0.8f

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4117d70a    # 9.49f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 107
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffccccd    # -2.05f

    const v6, -0x40e66666    # -0.6f

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    move-object v0, v7

    .line 108
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40333333    # -1.6f

    const v4, -0x40b33333    # -0.8f

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
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

    .line 151
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/WavesKt;->_waves:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
