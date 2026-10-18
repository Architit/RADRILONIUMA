.class public final Landroidx/compose/material/icons/twotone/FilterVintageKt;
.super Ljava/lang/Object;
.source "FilterVintage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterVintage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterVintage.kt\nandroidx/compose/material/icons/twotone/FilterVintageKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,195:1\n212#2,12:196\n233#2,18:209\n253#2:246\n233#2,18:247\n253#2:284\n174#3:208\n705#4,2:227\n717#4,2:229\n719#4,11:235\n705#4,2:265\n717#4,2:267\n719#4,11:273\n72#5,4:231\n72#5,4:269\n*S KotlinDebug\n*F\n+ 1 FilterVintage.kt\nandroidx/compose/material/icons/twotone/FilterVintageKt\n*L\n29#1:196,12\n30#1:209,18\n30#1:246\n92#1:247,18\n92#1:284\n29#1:208\n30#1:227,2\n30#1:229,2\n30#1:235,11\n92#1:265,2\n92#1:267,2\n92#1:273,11\n30#1:231,4\n92#1:269,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_filterVintage",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "FilterVintage",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getFilterVintage",
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
.field private static _filterVintage:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFilterVintage(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/FilterVintageKt;->_filterVintage:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 200
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 208
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

    .line 200
    const-string v2, "TwoTone.FilterVintage"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 219
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 224
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 225
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 231
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x40f3851f    # 7.61f

    const v1, 0x4195851f    # 18.69f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const v6, 0x3f0a3d71    # 0.54f

    const v1, -0x40cccccd    # -0.7f

    const/4 v2, 0x0

    const v3, -0x404e147b    # -1.39f

    const v4, 0x3e428f5c    # 0.19f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f5c28f    # -0.54f

    const v6, 0x3ebd70a4    # 0.37f

    const v1, -0x41dc28f6    # -0.16f

    const v2, 0x3db851ec    # 0.09f

    const v3, -0x415c28f6    # -0.32f

    const v4, 0x3e570a3d    # 0.21f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x406f5c29    # -1.13f

    const v1, 0x3f666666    # 0.9f

    .line 34
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3851ec    # 0.72f

    const v6, 0x3f9eb852    # 1.24f

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3f47ae14    # 0.78f

    move-object v0, v7

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40fae148    # -0.52f

    const v1, 0x3fb0a3d7    # 1.38f

    .line 36
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f147ae1    # 0.58f

    const v6, -0x4175c28f    # -0.27f

    const v1, 0x3e6147ae    # 0.22f

    const v2, -0x425c28f6    # -0.08f

    const v3, 0x3ed1eb85    # 0.41f

    const v4, -0x41d1eb85    # -0.17f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fe3d70a    # 1.78f

    const v6, -0x3ff47ae1    # -2.18f

    const v1, 0x3f570a3d    # 0.84f

    const v2, -0x41051eb8    # -0.49f

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x405d70a4    # -1.27f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b5c28f    # -0.79f

    const v6, -0x425c28f6    # -0.08f

    const v1, -0x417ae148    # -0.26f

    const v2, -0x428a3d71    # -0.06f

    const v3, -0x40fae148    # -0.52f

    const v4, -0x425c28f6    # -0.08f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41890a3d    # 17.13f

    const v1, 0x415deb85    # 13.87f

    .line 41
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x404f5c29    # -1.38f

    const v1, -0x40fae148    # -0.52f

    .line 42
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40cccccd    # -0.7f

    const v6, 0x3f9ae148    # 1.21f

    const v1, -0x41dc28f6    # -0.16f

    const v2, 0x3ee66666    # 0.45f

    const v3, -0x41333333    # -0.4f

    const v4, 0x3f59999a    # 0.85f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f75c28f    # 0.96f

    const v1, 0x3f933333    # 1.15f

    .line 44
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3efae148    # 0.49f

    const v6, 0x3eae147b    # 0.34f

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3e9eb852    # 0.31f

    const v4, 0x3e75c28f    # 0.24f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ffeb852    # 1.99f

    const v6, 0x3f0a3d71    # 0.54f

    const v1, 0x3f1c28f6    # 0.61f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3fa66666    # 1.3f

    const v4, 0x3f0a3d71    # 0.54f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, -0x425c28f6    # -0.08f

    const v1, 0x3e8a3d71    # 0.27f

    const/4 v2, 0x0

    const v3, 0x3f07ae14    # 0.53f

    const v4, -0x430a3d71    # -0.03f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x401c28f6    # -1.78f

    const v6, -0x3ff47ae1    # -2.18f

    const v1, -0x416147ae    # -0.31f

    const v2, -0x40970a3d    # -0.91f

    const v3, -0x408f5c29    # -0.94f

    const v4, -0x4027ae14    # -1.69f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ee147b    # -0.57f

    const v6, -0x4175c28f    # -0.27f

    const v1, -0x41dc28f6    # -0.16f

    const v2, -0x42333333    # -0.1f

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x41bd70a4    # -0.19f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x40c00000    # 6.0f

    .line 51
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3d4ccccd    # 0.05f

    const v6, 0x3f2147ae    # 0.63f

    const/4 v1, 0x0

    const v2, 0x3e428f5c    # 0.19f

    const v3, 0x3ca3d70a    # 0.02f

    const v4, 0x3ed1eb85    # 0.41f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb851ec    # 1.44f

    const v1, 0x3e6b851f    # 0.23f

    .line 53
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3851ec    # 0.72f

    const v6, -0x4270a3d7    # -0.07f

    const v1, 0x3e75c28f    # 0.24f

    const v2, -0x42dc28f6    # -0.04f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x4270a3d7    # -0.07f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ef5c28f    # 0.48f

    const v1, 0x3f35c28f    # 0.71f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3cf5c28f    # 0.03f

    .line 55
    invoke-virtual {v7, v0, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4047ae14    # -1.44f

    const v1, 0x3e6b851f    # 0.23f

    .line 56
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3d75c28f    # 0.06f

    const v6, -0x40deb852    # -0.63f

    const v1, 0x3d23d70a    # 0.04f

    const v2, -0x419eb852    # -0.22f

    const v3, 0x3d75c28f    # 0.06f

    const v4, -0x411eb852    # -0.44f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3fd7ae14    # -2.63f

    const/4 v1, 0x0

    const v2, -0x40851eb8    # -0.98f

    const v3, -0x41428f5c    # -0.37f

    const v4, -0x400b851f    # -1.91f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x402851ec    # 2.63f

    const v1, -0x40deb852    # -0.63f

    const v2, 0x3f3851ec    # 0.72f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, 0x3fd33333    # 1.65f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414b5c29    # 12.71f

    const v1, 0x417ee148    # 15.93f

    .line 61
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ca3d71    # -0.71f

    const v6, 0x3d8f5c29    # 0.07f

    const v1, -0x41947ae1    # -0.23f

    const v2, 0x3d23d70a    # 0.04f

    const v3, -0x410f5c29    # -0.47f

    const v4, 0x3d8f5c29    # 0.07f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c7ae14    # -0.72f

    const v6, -0x4270a3d7    # -0.07f

    const/high16 v1, -0x41800000    # -0.25f

    const/4 v2, 0x0

    const v3, -0x41051eb8    # -0.49f

    const v4, -0x430a3d71    # -0.03f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x419eb852    # -0.22f

    const v1, 0x3fb5c28f    # 1.42f

    .line 64
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x428a3d71    # -0.06f

    const v6, 0x3f266666    # 0.65f

    const v1, -0x42dc28f6    # -0.04f

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x428a3d71    # -0.06f

    const v4, 0x3ee66666    # 0.45f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x402851ec    # 2.63f

    const/4 v1, 0x0

    const v2, 0x3f7ae148    # 0.98f

    const v3, 0x3ebd70a4    # 0.37f

    const v4, 0x3ff47ae1    # 1.91f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x3fd7ae14    # -2.63f

    const v1, 0x3f2147ae    # 0.63f

    const v2, -0x40c7ae14    # -0.72f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0x402b851f    # -1.66f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x42b33333    # -0.05f

    const v6, -0x40deb852    # -0.63f

    const/4 v1, 0x0

    const v2, -0x41bd70a4    # -0.19f

    const v3, -0x435c28f6    # -0.02f

    const v4, -0x412e147b    # -0.41f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x418a3d71    # -0.24f

    const v1, -0x4047ae14    # -1.44f

    .line 69
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4121eb85    # 10.12f

    const v1, 0x40dbd70a    # 6.87f

    .line 71
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f051eb8    # 0.52f

    const v1, 0x3fb0a3d7    # 1.38f

    .line 72
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f333333    # 0.7f

    const v6, -0x40666666    # -1.2f

    const v1, 0x3e23d70a    # 0.16f

    const v2, -0x411eb852    # -0.44f

    const v3, 0x3ecccccd    # 0.4f

    const v4, -0x40a66666    # -0.85f

    move-object v0, v7

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40f9999a    # 7.8f

    const v1, 0x4107d70a    # 8.49f

    .line 74
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41051eb8    # -0.49f

    const v6, -0x414ccccd    # -0.35f

    const v1, -0x41d1eb85    # -0.17f

    const v2, -0x41e66666    # -0.15f

    const v3, -0x4151eb85    # -0.34f

    const v4, -0x4175c28f    # -0.27f

    move-object v0, v7

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const v6, -0x40f5c28f    # -0.54f

    const v1, -0x40e147ae    # -0.62f

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x4059999a    # -1.3f

    const v4, -0x40f5c28f    # -0.54f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b0a3d7    # -0.81f

    const v6, 0x3da3d70a    # 0.08f

    const v1, -0x4175c28f    # -0.27f

    const/4 v2, 0x0

    const v3, -0x40f5c28f    # -0.54f

    const v4, 0x3cf5c28f    # 0.03f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fe51eb8    # 1.79f

    const v6, 0x400b851f    # 2.18f

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f68f5c3    # 0.91f

    const v3, 0x3f6e147b    # 0.93f

    const v4, 0x3fd70a3d    # 1.68f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f147ae1    # 0.58f

    const v6, 0x3e851eb8    # 0.26f

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3eb851ec    # 0.36f

    const v4, 0x3e3851ec    # 0.18f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x415dc28f    # 13.86f

    const v1, 0x40dbd70a    # 6.87f

    .line 81
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40eb851f    # -0.58f

    const v6, 0x3e8a3d71    # 0.27f

    const v1, -0x419eb852    # -0.22f

    const v2, 0x3da3d70a    # 0.08f

    const v3, -0x412e147b    # -0.41f

    const v4, 0x3e2e147b    # 0.17f

    move-object v0, v7

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x401c28f6    # -1.78f

    const v6, 0x400b851f    # 2.18f

    const v1, -0x40a8f5c3    # -0.84f

    const v2, 0x3efae148    # 0.49f

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3fa28f5c    # 1.27f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f4a3d71    # 0.79f

    const v6, 0x3da3d70a    # 0.08f

    const v1, 0x3e851eb8    # 0.26f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3f051eb8    # 0.52f

    const v4, 0x3da3d70a    # 0.08f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, -0x40f5c28f    # -0.54f

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3fb1eb85    # 1.39f

    const v4, -0x41bd70a4    # -0.19f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0a3d71    # 0.54f

    const v6, -0x41428f5c    # -0.37f

    const v1, 0x3e23d70a    # 0.16f

    const v2, -0x4247ae14    # -0.09f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, -0x41a8f5c3    # -0.21f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x409c28f6    # -0.89f

    const v1, 0x3f90a3d7    # 1.13f

    .line 87
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c7ae14    # -0.72f

    const v6, -0x406147ae    # -1.24f

    const v1, -0x416147ae    # -0.31f

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x40f0a3d7    # -0.56f

    const v4, -0x40b851ec    # -0.78f

    move-object v0, v7

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f028f5c    # 0.51f

    const v1, -0x404f5c29    # -1.38f

    .line 89
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
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

    .line 229
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 250
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 257
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    .line 262
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 263
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    .line 269
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4195999a    # 18.7f

    const v1, 0x41466666    # 12.4f

    .line 93
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40a3d70a    # -0.86f

    const v6, -0x41333333    # -0.4f

    const v1, -0x4170a3d7    # -0.28f

    const v2, -0x41dc28f6    # -0.16f

    const v3, -0x40ee147b    # -0.57f

    const v4, -0x416b851f    # -0.29f

    move-object v0, v7

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f5c28f6    # 0.86f

    const v1, 0x3e947ae1    # 0.29f

    const v2, -0x421eb852    # -0.11f

    const v3, 0x3f147ae1    # 0.58f

    const v4, -0x418a3d71    # -0.24f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40400000    # 3.0f

    const v6, -0x3f59eb85    # -5.19f

    const v1, 0x3ff5c28f    # 1.92f

    const v2, -0x4071eb85    # -1.11f

    const v3, 0x403f5c29    # 2.99f

    const v4, -0x3fb851ec    # -3.12f

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fbf5c29    # -3.01f

    const v6, -0x40b33333    # -0.8f

    const v1, -0x40970a3d    # -0.91f

    const v2, -0x40fae148    # -0.52f

    const v3, -0x40066666    # -1.95f

    const v4, -0x40b33333    # -0.8f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc0a3d7    # -2.99f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, -0x407d70a4    # -1.02f

    const/4 v2, 0x0

    const v3, -0x3ffccccd    # -2.05f

    const v4, 0x3e851eb8    # 0.26f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f0a3d71    # 0.54f

    const v1, -0x4170a3d7    # -0.28f

    const v2, 0x3e23d70a    # 0.16f

    const v3, -0x40f5c28f    # -0.54f

    const v4, 0x3eb33333    # 0.35f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3da3d70a    # 0.08f

    const v6, -0x408ccccd    # -0.95f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, -0x416147ae    # -0.31f

    const v3, 0x3da3d70a    # 0.08f

    const v4, -0x40deb852    # -0.63f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fc00000    # -3.0f

    const v6, -0x3f59eb85    # -5.19f

    const/4 v1, 0x0

    const v2, -0x3ff1eb85    # -2.22f

    const v3, -0x40651eb8    # -1.21f

    const v4, -0x3f7b3333    # -4.15f

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const v1, 0x41235c29    # 10.21f

    const v2, 0x3feccccd    # 1.85f

    const/high16 v3, 0x41100000    # 9.0f

    const v4, 0x4071eb85    # 3.78f

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3da3d70a    # 0.08f

    const v6, 0x3f733333    # 0.95f

    const/4 v1, 0x0

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, 0x3f23d70a    # 0.64f

    .line 103
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b851ec    # -0.78f

    const v6, -0x40f33333    # -0.55f

    const v1, -0x418a3d71    # -0.24f

    const v2, -0x41b33333    # -0.2f

    const/high16 v3, -0x41000000    # -0.5f

    const v4, -0x413851ec    # -0.39f

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc0a3d7    # -2.99f

    const v6, -0x40b33333    # -0.8f

    const v1, -0x408f5c29    # -0.94f

    const v2, -0x40f5c28f    # -0.54f

    const v3, -0x4003d70a    # -1.97f

    const v4, -0x40b33333    # -0.8f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fbf5c29    # -3.01f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, -0x4079999a    # -1.05f

    const/4 v2, 0x0

    const v3, -0x3ff9999a    # -2.1f

    const v4, 0x3e8f5c29    # 0.28f

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40400000    # 3.0f

    const v6, 0x40a6147b    # 5.19f

    const/4 v1, 0x0

    const v2, 0x40047ae1    # 2.07f

    const v3, 0x3f88f5c3    # 1.07f

    const v4, 0x40828f5c    # 4.08f

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f5c28f6    # 0.86f

    const v6, 0x3ecccccd    # 0.4f

    const v1, 0x3e8f5c29    # 0.28f

    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3f11eb85    # 0.57f

    const v4, 0x3e947ae1    # 0.29f

    .line 108
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40a3d70a    # -0.86f

    const v1, -0x416b851f    # -0.29f

    const v2, 0x3de147ae    # 0.11f

    const v3, -0x40eb851f    # -0.58f

    const v4, 0x3e75c28f    # 0.24f

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fc00000    # -3.0f

    const v6, 0x40a6147b    # 5.19f

    const v1, -0x400a3d71    # -1.92f

    const v2, 0x3f8e147b    # 1.11f

    const v3, -0x3fc0a3d7    # -2.99f

    const v4, 0x4047ae14    # 3.12f

    .line 110
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4040a3d7    # 3.01f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, 0x3f051eb8    # 0.52f

    const v3, 0x3ff9999a    # 1.95f

    const v4, 0x3f4ccccd    # 0.8f

    .line 111
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403f5c29    # 2.99f

    const v6, -0x40b33333    # -0.8f

    const v1, 0x3f828f5c    # 1.02f

    const/4 v2, 0x0

    const v3, 0x40033333    # 2.05f

    const v4, -0x417ae148    # -0.26f

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f47ae14    # 0.78f

    const v6, -0x40f5c28f    # -0.54f

    const v1, 0x3e8f5c29    # 0.28f

    const v2, -0x41dc28f6    # -0.16f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, -0x414ccccd    # -0.35f

    .line 113
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x425c28f6    # -0.08f

    const v6, 0x3f75c28f    # 0.96f

    const v1, -0x42b33333    # -0.05f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x425c28f6    # -0.08f

    const v4, 0x3f23d70a    # 0.64f

    .line 114
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40400000    # 3.0f

    const v6, 0x40a6147b    # 5.19f

    const/4 v1, 0x0

    const v2, 0x400e147b    # 2.22f

    const v3, 0x3f9ae148    # 1.21f

    const v4, 0x4084cccd    # 4.15f

    .line 115
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x3f59eb85    # -5.19f

    const v1, 0x3fe51eb8    # 1.79f

    const v2, -0x407ae148    # -1.04f

    const/high16 v3, 0x40400000    # 3.0f

    const v4, -0x3fc1eb85    # -2.97f

    .line 116
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x425c28f6    # -0.08f

    const v6, -0x408ccccd    # -0.95f

    const/4 v1, 0x0

    const v2, -0x415c28f6    # -0.32f

    const v3, -0x430a3d71    # -0.03f

    const v4, -0x40dc28f6    # -0.64f

    .line 117
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f47ae14    # 0.78f

    const v6, 0x3f0a3d71    # 0.54f

    const v1, 0x3e75c28f    # 0.24f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3ec28f5c    # 0.38f

    .line 118
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403f5c29    # 2.99f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, 0x3f70a3d7    # 0.94f

    const v2, 0x3f0a3d71    # 0.54f

    const v3, 0x3ffc28f6    # 1.97f

    const v4, 0x3f4ccccd    # 0.8f

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4040a3d7    # 3.01f

    const v6, -0x40b33333    # -0.8f

    const v1, 0x3f866666    # 1.05f

    const/4 v2, 0x0

    const v3, 0x40066666    # 2.1f

    const v4, -0x4170a3d7    # -0.28f

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fc00000    # -3.0f

    const v6, -0x3f59eb85    # -5.19f

    const v1, -0x43dc28f6    # -0.01f

    const v2, -0x3ffb851f    # -2.07f

    const v3, -0x4075c28f    # -1.08f

    const v4, -0x3f7d70a4    # -4.08f

    .line 121
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x409051ec    # 4.51f

    const v1, 0x40f5c28f    # 7.68f

    .line 123
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, -0x425c28f6    # -0.08f

    const v1, 0x3e851eb8    # 0.26f

    const v2, -0x428a3d71    # -0.06f

    const v3, 0x3f07ae14    # 0.53f

    const v4, -0x425c28f6    # -0.08f

    move-object v0, v7

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ffeb852    # 1.99f

    const v6, 0x3f0a3d71    # 0.54f

    const v1, 0x3f30a3d7    # 0.69f

    const/4 v2, 0x0

    const v3, 0x3fb0a3d7    # 1.38f

    const v4, 0x3e3851ec    # 0.18f

    .line 125
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3efae148    # 0.49f

    const v6, 0x3eb33333    # 0.35f

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, 0x3e4ccccd    # 0.2f

    .line 126
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f75c28f    # 0.96f

    const v1, 0x3f933333    # 1.15f

    .line 127
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40cccccd    # -0.7f

    const v6, 0x3f99999a    # 1.2f

    const v1, -0x41666666    # -0.3f

    const v2, 0x3eb851ec    # 0.36f

    const v3, -0x40f851ec    # -0.53f

    const v4, 0x3f428f5c    # 0.76f

    move-object v0, v7

    .line 128
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x404f5c29    # -1.38f

    const v1, -0x40fae148    # -0.52f

    .line 129
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const v6, -0x4175c28f    # -0.27f

    const v1, -0x41a8f5c3    # -0.21f

    const v2, -0x4247ae14    # -0.09f

    const v3, -0x41333333    # -0.4f

    const v4, -0x41c7ae14    # -0.18f

    move-object v0, v7

    .line 130
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x401ae148    # -1.79f

    const v6, -0x3ff47ae1    # -2.18f

    const v1, -0x40a147ae    # -0.87f

    const/high16 v2, -0x41000000    # -0.5f

    const v3, -0x404147ae    # -1.49f

    const v4, -0x405d70a4    # -1.27f

    .line 131
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40fae148    # 7.84f

    const v1, 0x4177851f    # 15.47f

    .line 133
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f5c28f    # -0.54f

    const v6, 0x3ebd70a4    # 0.37f

    const v1, -0x41a8f5c3    # -0.21f

    const v2, 0x3e2e147b    # 0.17f

    const v3, -0x413d70a4    # -0.38f

    const v4, 0x3e947ae1    # 0.29f

    move-object v0, v7

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const v6, 0x3f0a3d71    # 0.54f

    const v1, -0x40e3d70a    # -0.61f

    const v2, 0x3eb33333    # 0.35f

    const v3, -0x4059999a    # -1.3f

    const v4, 0x3f0a3d71    # 0.54f

    .line 135
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b5c28f    # -0.79f

    const v6, -0x425c28f6    # -0.08f

    const v1, -0x4175c28f    # -0.27f

    const/4 v2, 0x0

    const v3, -0x40f851ec    # -0.53f

    const v4, -0x430a3d71    # -0.03f

    .line 136
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fe3d70a    # 1.78f

    const v6, -0x3ff47ae1    # -2.18f

    const v1, 0x3e9eb852    # 0.31f

    const v2, -0x40970a3d    # -0.91f

    const v3, 0x3f70a3d7    # 0.94f

    const v4, -0x4027ae14    # -1.69f

    .line 137
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f147ae1    # 0.58f

    const v6, -0x4175c28f    # -0.27f

    const v1, 0x3e2e147b    # 0.17f

    const v2, -0x42333333    # -0.1f

    const v3, 0x3eb851ec    # 0.36f

    const v4, -0x41c7ae14    # -0.18f

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40fae148    # -0.52f

    const v1, 0x3fb0a3d7    # 1.38f

    .line 139
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3851ec    # 0.72f

    const v6, 0x3f9eb852    # 1.24f

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3eeb851f    # 0.46f

    const v3, 0x3ed1eb85    # 0.41f

    const v4, 0x3f6147ae    # 0.88f

    move-object v0, v7

    .line 140
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x406f5c29    # -1.13f

    const v1, 0x3f666666    # 0.9f

    .line 141
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 142
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4057ae14    # 3.37f

    const/high16 v1, 0x41400000    # 12.0f

    .line 143
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x402851ec    # 2.63f

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3f3851ec    # 0.72f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fd47ae1    # 1.66f

    move-object v0, v7

    .line 144
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x42b33333    # -0.05f

    const v6, 0x3f2147ae    # 0.63f

    const/4 v1, 0x0

    const v2, 0x3e428f5c    # 0.19f

    const v3, -0x435c28f6    # -0.02f

    const v4, 0x3ed1eb85    # 0.41f

    .line 145
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41947ae1    # -0.23f

    const v1, 0x3fb851ec    # 1.44f

    .line 146
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41000000    # 8.0f

    const v1, 0x4147ae14    # 12.48f

    const v2, 0x41007ae1    # 8.03f

    const v3, 0x4143d70a    # 12.24f

    const/high16 v4, 0x41000000    # 8.0f

    move-object v0, v7

    .line 147
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x410a3d71    # -0.48f

    const v1, -0x40ca3d71    # -0.71f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3cf5c28f    # 0.03f

    .line 148
    invoke-virtual {v7, v0, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41947ae1    # -0.23f

    const v1, -0x4047ae14    # -1.44f

    .line 149
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const v1, 0x413051ec    # 11.02f

    const v2, 0x40cd1eb8    # 6.41f

    const/high16 v3, 0x41300000    # 11.0f

    const v4, 0x40c6147b    # 6.19f

    move-object v0, v7

    .line 150
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, -0x3fd7ae14    # -2.63f

    const/4 v1, 0x0

    const v2, -0x40851eb8    # -0.98f

    const v3, 0x3ebd70a4    # 0.37f

    const v4, -0x400b851f    # -1.91f

    .line 151
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41a50a3d    # 20.63f

    const/high16 v1, 0x41400000    # 12.0f

    .line 153
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v1, -0x40deb852    # -0.63f

    const v2, -0x40c7ae14    # -0.72f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x402b851f    # -1.66f

    move-object v0, v7

    .line 154
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3d75c28f    # 0.06f

    const v6, -0x40d9999a    # -0.65f

    const/4 v1, 0x0

    const v2, -0x41b33333    # -0.2f

    const v3, 0x3ca3d70a    # 0.02f

    const v4, -0x412e147b    # -0.41f

    .line 155
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e6147ae    # 0.22f

    const v1, -0x404a3d71    # -1.42f

    .line 156
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3851ec    # 0.72f

    const v6, 0x3d8f5c29    # 0.07f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3d23d70a    # 0.04f

    const v3, 0x3ef0a3d7    # 0.47f

    const v4, 0x3d8f5c29    # 0.07f

    move-object v0, v7

    .line 157
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f35c28f    # 0.71f

    const v6, -0x4270a3d7    # -0.07f

    const v1, 0x3e75c28f    # 0.24f

    const/4 v2, 0x0

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x430a3d71    # -0.03f

    .line 158
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb851ec    # 1.44f

    const v1, 0x3e6b851f    # 0.23f

    .line 159
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3d75c28f    # 0.06f

    const v6, 0x3f2147ae    # 0.63f

    const v1, 0x3d23d70a    # 0.04f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3d75c28f    # 0.06f

    const v4, 0x3ee147ae    # 0.44f

    move-object v0, v7

    .line 160
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x402851ec    # 2.63f

    const/4 v1, 0x0

    const v2, 0x3f7ae148    # 0.98f

    const v3, -0x41428f5c    # -0.37f

    const v4, 0x3ff47ae1    # 1.91f

    .line 161
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 162
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41600000    # 14.0f

    const/high16 v1, 0x41400000    # 12.0f

    .line 163
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x40000000    # -2.0f

    const v1, -0x40733333    # -1.1f

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    const v4, -0x4099999a    # -0.9f

    move-object v0, v7

    .line 164
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x40000000    # 2.0f

    .line 165
    invoke-virtual {v7, v1, v0, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f666666    # 0.9f

    const/high16 v1, 0x40000000    # 2.0f

    .line 166
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const/high16 v1, -0x40000000    # -2.0f

    .line 167
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 168
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418147ae    # 16.16f

    const v1, 0x410851ec    # 8.52f

    .line 169
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0a3d71    # 0.54f

    const v6, -0x41428f5c    # -0.37f

    const v1, 0x3e570a3d    # 0.21f

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3ec28f5c    # 0.38f

    const v4, -0x416b851f    # -0.29f

    move-object v0, v7

    .line 170
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, -0x40f5c28f    # -0.54f

    const v1, 0x3f1c28f6    # 0.61f

    const v2, -0x414ccccd    # -0.35f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x40f5c28f    # -0.54f

    .line 171
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f4a3d71    # 0.79f

    const v6, 0x3da3d70a    # 0.08f

    const v1, 0x3e8a3d71    # 0.27f

    const/4 v2, 0x0

    const v3, 0x3f07ae14    # 0.53f

    const v4, 0x3cf5c28f    # 0.03f

    .line 172
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x401c28f6    # -1.78f

    const v6, 0x400b851f    # 2.18f

    const v1, -0x416147ae    # -0.31f

    const v2, 0x3f68f5c3    # 0.91f

    const v3, -0x408f5c29    # -0.94f

    const v4, 0x3fd851ec    # 1.69f

    .line 173
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40eb851f    # -0.58f

    const v6, 0x3e8a3d71    # 0.27f

    const v1, -0x41d1eb85    # -0.17f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x4147ae14    # -0.36f

    const v4, 0x3e3851ec    # 0.18f

    .line 174
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f051eb8    # 0.52f

    const v1, -0x404f5c29    # -1.38f

    .line 175
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c7ae14    # -0.72f

    const v6, -0x406147ae    # -1.24f

    const v1, -0x41d1eb85    # -0.17f

    const v2, -0x41147ae1    # -0.46f

    const v3, -0x412e147b    # -0.41f

    const v4, -0x40a147ae    # -0.87f

    move-object v0, v7

    .line 176
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const v1, 0x3f90a3d7    # 1.13f

    .line 177
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 178
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41831eb8    # 16.39f

    const v1, 0x4195851f    # 18.69f

    .line 179
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x400147ae    # -1.99f

    const v6, -0x40f5c28f    # -0.54f

    const v1, -0x40cf5c29    # -0.69f

    const/4 v2, 0x0

    const v3, -0x404f5c29    # -1.38f

    const v4, -0x41c7ae14    # -0.18f

    move-object v0, v7

    .line 180
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41051eb8    # -0.49f

    const v6, -0x4151eb85    # -0.34f

    const v1, -0x41c7ae14    # -0.18f

    const v2, -0x42333333    # -0.1f

    const v3, -0x4151eb85    # -0.34f

    const v4, -0x419eb852    # -0.22f

    .line 181
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x406ccccd    # -1.15f

    const v1, -0x408a3d71    # -0.96f

    .line 182
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f333333    # 0.7f

    const v6, -0x40651eb8    # -1.21f

    const v1, 0x3e99999a    # 0.3f

    const v2, -0x4147ae14    # -0.36f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, -0x40bd70a4    # -0.76f

    move-object v0, v7

    .line 183
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f051eb8    # 0.52f

    const v1, 0x3fb0a3d7    # 1.38f

    .line 184
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f11eb85    # 0.57f

    const v6, 0x3e851eb8    # 0.26f

    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3da3d70a    # 0.08f

    const v3, 0x3ed1eb85    # 0.41f

    const v4, 0x3e2e147b    # 0.17f

    move-object v0, v7

    .line 185
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fe3d70a    # 1.78f

    const v6, 0x400b851f    # 2.18f

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3efae148    # 0.49f

    const v3, 0x3fbc28f6    # 1.47f

    const v4, 0x3fa28f5c    # 1.27f

    .line 186
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b33333    # -0.8f

    const v6, 0x3db851ec    # 0.09f

    const v1, -0x4175c28f    # -0.27f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, -0x40f5c28f    # -0.54f

    const v4, 0x3db851ec    # 0.09f

    .line 187
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 188
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 271
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

    .line 267
    const-string v33, ""

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/FilterVintageKt;->_filterVintage:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 191
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
