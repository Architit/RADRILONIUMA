.class public final Landroidx/compose/material/icons/rounded/AttractionsKt;
.super Ljava/lang/Object;
.source "Attractions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttractions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/rounded/AttractionsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,108:1\n212#2,12:109\n233#2,18:122\n253#2:159\n174#3:121\n705#4,2:140\n717#4,2:142\n719#4,11:148\n72#5,4:144\n*S KotlinDebug\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/rounded/AttractionsKt\n*L\n29#1:109,12\n30#1:122,18\n30#1:159\n29#1:121\n30#1:140,2\n30#1:142,2\n30#1:148,11\n30#1:144,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_attractions",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Attractions",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getAttractions",
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
.field private static _attractions:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAttractions(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Attractions"

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

    const v0, 0x41270a3d    # 10.44f

    const/high16 v1, 0x41960000    # 18.75f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc8f5c3    # 1.57f

    const/high16 v6, -0x40c00000    # -0.75f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41147ae1    # -0.46f

    const v3, 0x3f70a3d7    # 0.94f

    const/high16 v4, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e947ae1    # 0.29f

    const v1, 0x3fc7ae14    # 1.56f

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3f9851ec    # 1.19f

    .line 33
    invoke-virtual {v7, v3, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x4147ae14    # -0.36f

    const v1, 0x3ec7ae14    # 0.39f

    const v2, -0x4247ae14    # -0.09f

    const v3, 0x3f428f5c    # 0.76f

    const v4, -0x41a8f5c3    # -0.21f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x404a3d71    # -1.42f

    const v1, -0x3fb47ae1    # -3.18f

    .line 35
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x405eb852    # -1.26f

    const v6, 0x3e6b851f    # 0.23f

    const v1, -0x413851ec    # -0.39f

    const v2, 0x3e19999a    # 0.15f

    const v3, -0x40ae147b    # -0.82f

    const v4, 0x3e6b851f    # 0.23f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4059999a    # -1.3f

    const/high16 v6, -0x41800000    # -0.25f

    const v1, -0x41147ae1    # -0.46f

    const/4 v2, 0x0

    const v3, -0x4099999a    # -0.9f

    const v4, -0x4247ae14    # -0.09f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4048f5c3    # -1.43f

    const v1, 0x404c28f6    # 3.19f

    .line 38
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41270a3d    # 10.44f

    const/high16 v6, 0x41960000    # 18.75f

    const v1, 0x411a6666    # 9.65f

    const v2, 0x419451ec    # 18.54f

    const v3, 0x41207ae1    # 10.03f

    const v4, 0x41955c29    # 18.67f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a51eb8    # 5.16f

    const/high16 v1, 0x41200000    # 10.0f

    .line 41
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x409d1eb8    # 4.91f

    const v6, 0x413d999a    # 11.85f

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x412970a4    # 10.59f

    const v3, 0x409d1eb8    # 4.91f

    const v4, 0x41335c29    # 11.21f

    move-object v0, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x4009999a    # 2.15f

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3fbc28f6    # 1.47f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc7ae14    # 1.56f

    const v6, 0x3f7d70a4    # 0.99f

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3f9c28f6    # 1.22f

    const v4, 0x3ecccccd    # 0.4f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3de147ae    # 0.11f

    const v6, 0x3fe51eb8    # 1.79f

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f11eb85    # 0.57f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f9d70a4    # 1.23f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f5eb852    # 0.87f

    const v6, 0x3f428f5c    # 0.76f

    const v1, 0x3e8a3d71    # 0.27f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3f07ae14    # 0.53f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fc28f5c    # 1.52f

    const v1, -0x3fa70a3d    # -3.39f

    .line 47
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40c00000    # -0.75f

    const v6, -0x3ff7ae14    # -2.13f

    const v1, -0x410f5c29    # -0.47f

    const v2, -0x40eb851f    # -0.58f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x40570a3d    # -1.32f

    move-object v0, v7

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x405d70a4    # 3.46f

    const v6, -0x3fa5c28f    # -3.41f

    const/4 v1, 0x0

    const v2, -0x400e147b    # -1.89f

    const v3, 0x3fc66666    # 1.55f

    const v4, -0x3fa5c28f    # -3.41f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fc3d70a    # 1.53f

    const v1, 0x405a3d71    # 3.41f

    const v2, 0x405d70a4    # 3.46f

    .line 51
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x400a3d71    # 2.16f

    const/4 v1, 0x0

    const v2, 0x3f51eb85    # 0.82f

    const v3, -0x416b851f    # -0.29f

    const v4, 0x3fc8f5c3    # 1.57f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3fc00000    # 1.5f

    const v1, 0x40566666    # 3.35f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f666666    # 0.9f

    const v6, -0x40b5c28f    # -0.79f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x418a3d71    # -0.24f

    const v3, 0x3f1eb852    # 0.62f

    const/high16 v4, -0x41000000    # -0.5f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3df5c28f    # 0.12f

    const/high16 v6, -0x40200000    # -1.75f

    const v1, -0x419eb852    # -0.22f

    const v2, -0x40f33333    # -0.55f

    const v3, -0x41b33333    # -0.2f

    const v4, -0x40666666    # -1.2f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc28f5c    # 1.52f

    const v6, -0x40828f5c    # -0.99f

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, -0x40ee147b    # -0.57f

    const v3, 0x3f666666    # 0.9f

    const v4, -0x40947ae1    # -0.92f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eae147b    # 0.34f

    const v6, -0x3ff5c28f    # -2.16f

    const v1, 0x3e6147ae    # 0.22f

    const v2, -0x40d1eb85    # -0.68f

    const v3, 0x3eae147b    # 0.34f

    const v4, -0x404b851f    # -1.41f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41800000    # -0.25f

    const v6, -0x4011eb85    # -1.86f

    const/4 v1, 0x0

    const v2, -0x40dc28f6    # -0.64f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x405d70a4    # -1.27f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40333333    # -1.6f

    const/high16 v6, -0x40800000    # -1.0f

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x42dc28f6    # -0.04f

    const v3, -0x405eb852    # -1.26f

    const v4, -0x413851ec    # -0.39f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x430a3d71    # -0.03f

    const v6, -0x40066666    # -1.95f

    const v1, -0x4147ae14    # -0.36f

    const v2, -0x40e147ae    # -0.62f

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x4051eb85    # -1.36f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fa3d70a    # -3.44f

    const v6, -0x3ffccccd    # -2.05f

    const v1, -0x40970a3d    # -0.91f

    const v2, -0x40851eb8    # -0.98f

    const v3, -0x3ff9999a    # -2.1f

    const v4, -0x40251eb8    # -1.71f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x40c00000    # 6.0f

    const v1, 0x41566666    # 13.4f

    const v2, 0x40b33333    # 5.6f

    const v3, 0x414bd70a    # 12.74f

    const/high16 v4, 0x40c00000    # 6.0f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x402147ae    # -1.74f

    const v1, -0x407eb852    # -1.01f

    const v2, -0x404e147b    # -1.39f

    const v3, -0x412e147b    # -0.41f

    .line 63
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40da8f5c    # 6.83f

    const v6, 0x40e0a3d7    # 7.02f

    const v1, 0x410ee148    # 8.93f

    const v2, 0x40aa8f5c    # 5.33f

    const v3, 0x40f7ae14    # 7.74f

    const v4, 0x40c147ae    # 6.04f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40d9eb85    # 6.81f

    const/high16 v6, 0x41100000    # 9.0f

    const v1, 0x40e51eb8    # 7.16f

    const v2, 0x40f3d70a    # 7.62f

    const v3, 0x40e5c28f    # 7.18f

    const v4, 0x4105eb85    # 8.37f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a51eb8    # 5.16f

    const/high16 v6, 0x41200000    # 10.0f

    const v1, 0x40ce6666    # 6.45f

    const v2, 0x4119eb85    # 9.62f

    const v3, 0x40ba3d71    # 5.82f

    const v4, 0x411f851f    # 9.97f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x411947ae    # 9.58f

    const v1, 0x40770a3d    # 3.86f

    .line 68
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40566666    # 3.35f

    const/high16 v6, 0x40e00000    # 7.0f

    const v1, 0x40451eb8    # 3.08f

    const v2, 0x410fae14    # 8.98f

    const v3, 0x4035c28f    # 2.84f

    const v4, 0x40fc28f6    # 7.88f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401f5c29    # 2.49f

    const v1, -0x40a66666    # -0.85f

    const v2, 0x3fca3d71    # 1.58f

    const v3, -0x40628f5c    # -1.23f

    .line 70
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4085c28f    # 4.18f

    const v6, -0x3fe51eb8    # -2.42f

    const v1, 0x3f8e147b    # 1.11f

    const v2, -0x406a3d71    # -1.17f

    const v3, 0x4023d70a    # 2.56f

    const v4, -0x3ffe147b    # -2.03f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, 0x41226666    # 10.15f

    const/high16 v2, 0x40300000    # 2.75f

    const v3, 0x412fd70a    # 10.99f

    const/high16 v4, 0x40000000    # 2.0f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ffd70a4    # 1.98f

    const v1, 0x3fdd70a4    # 1.73f

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3feccccd    # 1.85f

    .line 73
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4085c28f    # 4.18f

    const v6, 0x401ae148    # 2.42f

    const v1, 0x3fd0a3d7    # 1.63f

    const v2, 0x3ec7ae14    # 0.39f

    const v3, 0x40447ae1    # 3.07f

    const v4, 0x3f9eb852    # 1.24f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x401f5c29    # 2.49f

    const v6, 0x3f59999a    # 0.85f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, -0x413d70a4    # -0.38f

    const v3, 0x3ffeb852    # 1.99f

    const v4, -0x430a3d71    # -0.03f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40fd70a4    # -0.51f

    const v6, 0x40251eb8    # 2.58f

    const v1, 0x3f028f5c    # 0.51f

    const v2, 0x3f6147ae    # 0.88f

    const v3, 0x3e8a3d71    # 0.27f

    const v4, 0x3ffd70a4    # 1.98f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x401ae148    # 2.42f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f451eb8    # 0.77f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3fca3d71    # 1.58f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x414ccccd    # -0.35f

    const v1, 0x401ae148    # 2.42f

    const v2, -0x420a3d71    # -0.12f

    const v3, 0x3fd33333    # 1.65f

    .line 78
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f028f5c    # 0.51f

    const v6, 0x40251eb8    # 2.58f

    const v1, 0x3f47ae14    # 0.78f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f828f5c    # 1.02f

    const v4, 0x3fd9999a    # 1.7f

    move-object v0, v7

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fe0a3d7    # -2.49f

    const v1, 0x3f59999a    # 0.85f

    const v2, -0x4035c28f    # -1.58f

    const v3, 0x3f9d70a4    # 1.23f

    .line 80
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40547ae1    # -1.34f

    const v6, 0x3f933333    # 1.15f

    const v1, -0x41333333    # -0.4f

    const v2, 0x3edc28f6    # 0.43f

    const v3, -0x40a66666    # -0.85f

    const v4, 0x3f4f5c29    # 0.81f

    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f4f5c29    # 0.81f

    const v1, 0x3fe66666    # 1.8f

    .line 82
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f99999a    # 1.2f

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f0f5c29    # 0.56f

    const v3, -0x41dc28f6    # -0.16f

    const v4, 0x3f99999a    # 1.2f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x41000000    # -0.5f

    const v1, -0x41570a3d    # -0.33f

    const/4 v2, 0x0

    const v3, -0x40dc28f6    # -0.64f

    const v4, -0x41b33333    # -0.2f

    move-object v0, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x402a3d71    # -1.67f

    const/high16 v1, -0x40c00000    # -0.75f

    .line 86
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40547ae1    # -1.34f

    const v6, 0x3ee147ae    # 0.44f

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x409eb852    # -0.88f

    const v4, 0x3ea8f5c3    # 0.33f

    move-object v0, v7

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x41b00000    # 22.0f

    const v1, 0x415dc28f    # 13.86f

    const/high16 v2, 0x41aa0000    # 21.25f

    const v3, 0x415051ec    # 13.02f

    const/high16 v4, 0x41b00000    # 22.0f

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40133333    # -1.85f

    const v1, -0x40228f5c    # -1.73f

    const v2, -0x40028f5c    # -1.98f

    const/high16 v3, -0x40c00000    # -0.75f

    .line 89
    invoke-virtual {v7, v0, v3, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x410a6666    # 8.65f

    const v6, 0x419e7ae1    # 19.81f

    const v1, 0x4118cccd    # 9.55f

    const v2, 0x41a13333    # 20.15f

    const v3, 0x411170a4    # 9.09f

    const/high16 v4, 0x41a00000    # 20.0f

    move-object v0, v7

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40fc7ae1    # 7.89f

    const/high16 v1, 0x41ac0000    # 21.5f

    .line 91
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40e3851f    # 7.11f

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v1, 0x40f80000    # 7.75f

    const v2, 0x41ae6666    # 21.8f

    const v3, 0x40ee6666    # 7.45f

    const/high16 v4, 0x41b00000    # 22.0f

    move-object v0, v7

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40e33333    # 7.1f

    .line 93
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40bae148    # -0.77f

    const v6, -0x40666666    # -1.2f

    const v1, -0x40e147ae    # -0.62f

    const/4 v2, 0x0

    const v3, -0x407c28f6    # -1.03f

    const v4, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f51eb85    # 0.82f

    const v1, -0x4015c28f    # -1.83f

    .line 95
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4059999a    # -1.3f

    const v6, -0x4070a3d7    # -1.12f

    const v1, -0x410f5c29    # -0.47f

    const v2, -0x41570a3d    # -0.33f

    const v3, -0x40970a3d    # -0.91f

    const v4, -0x40ca3d71    # -0.71f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fe00000    # -2.5f

    const v6, -0x40a66666    # -0.85f

    const v1, -0x40947ae1    # -0.92f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, -0x400147ae    # -1.99f

    const v4, 0x3cf5c28f    # 0.03f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f028f5c    # 0.51f

    const v1, -0x3fdae148    # -2.58f

    const v2, -0x40028f5c    # -1.98f

    const v3, -0x4175c28f    # -0.27f

    .line 98
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4060a3d7    # 3.51f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x4067ae14    # 3.62f

    const v2, 0x415a6666    # 13.65f

    const v3, 0x4060a3d7    # 3.51f

    const v4, 0x414d70a4    # 12.84f

    move-object v0, v7

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4067ae14    # 3.62f

    const v1, 0x4125999a    # 10.35f

    const v2, 0x411947ae    # 9.58f

    const v3, 0x40770a3d    # 3.86f

    .line 100
    invoke-virtual {v7, v0, v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

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
    sput-object v0, Landroidx/compose/material/icons/rounded/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
