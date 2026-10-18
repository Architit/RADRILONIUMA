.class public final Landroidx/compose/material/icons/twotone/AttractionsKt;
.super Ljava/lang/Object;
.source "Attractions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttractions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/twotone/AttractionsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,115:1\n212#2,12:116\n233#2,18:129\n253#2:166\n233#2,18:167\n253#2:204\n174#3:128\n705#4,2:147\n717#4,2:149\n719#4,11:155\n705#4,2:185\n717#4,2:187\n719#4,11:193\n72#5,4:151\n72#5,4:189\n*S KotlinDebug\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/twotone/AttractionsKt\n*L\n29#1:116,12\n30#1:129,18\n30#1:166\n36#1:167,18\n36#1:204\n29#1:128\n30#1:147,2\n30#1:149,2\n30#1:155,11\n36#1:185,2\n36#1:187,2\n36#1:193,11\n30#1:151,4\n36#1:189,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_attractions",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Attractions",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getAttractions",
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
.field private static _attractions:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAttractions(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 120
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

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
    const-string v2, "TwoTone.Attractions"

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
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x413fae14    # 11.98f

    const v1, 0x414051ec    # 12.02f

    .line 31
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    const/high16 v1, -0x40400000    # -1.5f

    .line 32
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    .line 33
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3fc00000    # -3.0f

    .line 34
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

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

    .line 149
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 170
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 177
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    .line 182
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 183
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    .line 189
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4166b852    # 14.42f

    const v1, 0x41a13333    # 20.15f

    .line 37
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eb33333    # 0.35f

    const v6, -0x3fe51eb8    # -2.42f

    const v1, 0x3e6b851f    # 0.23f

    const v2, -0x40bae148    # -0.77f

    const v3, 0x3eb33333    # 0.35f

    const v4, -0x4035c28f    # -1.58f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x414ccccd    # -0.35f

    const v1, -0x3fe51eb8    # -2.42f

    const v2, -0x420a3d71    # -0.12f

    const v3, -0x402ccccd    # -1.65f

    .line 39
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f028f5c    # 0.51f

    const v6, -0x3fdae148    # -2.58f

    const v1, 0x3f47ae14    # 0.78f

    const v2, -0x40e66666    # -0.6f

    const v3, 0x3f828f5c    # 1.02f

    const v4, -0x40266666    # -1.7f

    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fe0a3d7    # -2.49f

    const v6, -0x40a66666    # -0.85f

    const v1, -0x40fd70a4    # -0.51f

    const v2, -0x409eb852    # -0.88f

    const v3, -0x4035c28f    # -1.58f

    const v4, -0x40628f5c    # -1.23f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f7a3d71    # -4.18f

    const v6, -0x3fe51eb8    # -2.42f

    const v1, -0x4071eb85    # -1.11f

    const v2, -0x406a3d71    # -1.17f

    const v3, -0x3fdc28f6    # -2.56f

    const v4, -0x3ffe147b    # -2.03f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, 0x415d999a    # 13.85f

    const/high16 v2, 0x40300000    # 2.75f

    const v3, 0x415028f6    # 13.01f

    const/high16 v4, 0x40000000    # 2.0f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40133333    # -1.85f

    const v1, -0x40028f5c    # -1.98f

    const v2, 0x3fdd70a4    # 1.73f

    const/high16 v3, 0x3f400000    # 0.75f

    .line 44
    invoke-virtual {v7, v0, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40ba8f5c    # 5.83f

    const v6, 0x40c4cccd    # 6.15f

    const v1, 0x41063d71    # 8.39f

    const v2, 0x4083d70a    # 4.12f

    const v3, 0x40de6666    # 6.95f

    const v4, 0x409f5c29    # 4.98f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4055c28f    # 3.34f

    const/high16 v6, 0x40e00000    # 7.0f

    const v1, 0x409d70a4    # 4.92f

    const v2, 0x40b8a3d7    # 5.77f

    const v3, 0x40766666    # 3.85f

    const v4, 0x40c3d70a    # 6.12f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40766666    # 3.85f

    const v6, 0x411947ae    # 9.58f

    const v1, 0x40351eb8    # 2.83f

    const v2, 0x40fc28f6    # 7.88f

    const v3, 0x40447ae1    # 3.07f

    const v4, 0x410fae14    # 8.98f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x4067ae14    # 3.62f

    const v2, 0x4125999a    # 10.35f

    const/high16 v3, 0x40600000    # 3.5f

    const v4, 0x41328f5c    # 11.16f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x401ae148    # 2.42f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3fd33333    # 1.65f

    .line 49
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40fd70a4    # -0.51f

    const v6, 0x40251eb8    # 2.58f

    const v1, -0x40b851ec    # -0.78f

    const v2, 0x3f19999a    # 0.6f

    const v3, -0x407d70a4    # -1.02f

    const v4, 0x3fd9999a    # 1.7f

    move-object v0, v7

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x401f5c29    # 2.49f

    const v6, 0x3f59999a    # 0.85f

    const v1, 0x3f028f5c    # 0.51f

    const v2, 0x3f6147ae    # 0.88f

    const v3, 0x3fca3d71    # 1.58f

    const v4, 0x3f9d70a4    # 1.23f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, 0x3f8f5c29    # 1.12f

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3f4a3d71    # 0.79f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40b8f5c3    # 5.78f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff0a3d7    # 1.88f

    .line 54
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f7ae148    # 0.98f

    const v1, -0x3ff3d70a    # -2.19f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fb0a3d7    # 1.38f

    const v6, 0x3eeb851f    # 0.46f

    const v1, 0x3ee147ae    # 0.44f

    const v2, 0x3e428f5c    # 0.19f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3eae147b    # 0.34f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const v1, 0x41226666    # 10.15f

    const/high16 v2, 0x41aa0000    # 21.25f

    const v3, 0x412fd70a    # 10.99f

    const/high16 v4, 0x41b00000    # 22.0f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ffd70a4    # 1.98f

    const v1, -0x40228f5c    # -1.73f

    const v2, 0x3feccccd    # 1.85f

    const/high16 v3, -0x40c00000    # -0.75f

    .line 58
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fab851f    # 1.34f

    const v6, -0x411eb852    # -0.44f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x421eb852    # -0.11f

    const v3, 0x3f68f5c3    # 0.91f

    const v4, -0x417ae148    # -0.26f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41826666    # 16.3f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 60
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff0a3d7    # 1.88f

    .line 61
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40547ae1    # -1.34f

    const/high16 v1, -0x3fc00000    # -3.0f

    .line 62
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x406ccccd    # -1.15f

    const v1, 0x3ef5c28f    # 0.48f

    const v2, -0x4151eb85    # -0.34f

    const v3, 0x3f6e147b    # 0.93f

    const v4, -0x40c7ae14    # -0.72f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x401f5c29    # 2.49f

    const v6, -0x40a66666    # -0.85f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3ffeb852    # 1.99f

    const v4, 0x3cf5c28f    # 0.03f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41a770a4    # 20.93f

    const v1, 0x417051ec    # 15.02f

    const v2, 0x4166b852    # 14.42f

    const v3, 0x41a13333    # 20.15f

    .line 65
    invoke-virtual {v7, v0, v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4158f5c3    # 13.56f

    const/high16 v1, 0x41960000    # 18.75f

    .line 67
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41900000    # 18.0f

    const v1, 0x41530a3d    # 13.19f

    const v2, 0x419251ec    # 18.29f

    const v3, 0x414a147b    # 12.63f

    const/high16 v4, 0x41900000    # 18.0f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e947ae1    # 0.29f

    const v1, -0x40370a3d    # -1.57f

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, -0x40666666    # -1.2f

    .line 69
    invoke-virtual {v7, v3, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406b851f    # -1.16f

    const v6, -0x41428f5c    # -0.37f

    const v1, -0x41333333    # -0.4f

    const v2, -0x4247ae14    # -0.09f

    const v3, -0x40b5c28f    # -0.79f

    const v4, -0x41a8f5c3    # -0.21f

    move-object v0, v7

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb70a3d    # 1.43f

    const v1, -0x3fb3d70a    # -3.19f

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const/high16 v6, 0x3e800000    # 0.25f

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3f570a3d    # 0.84f

    const/high16 v4, 0x3e800000    # 0.25f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa147ae    # 1.26f

    const v6, -0x41947ae1    # -0.23f

    const v1, 0x3ee147ae    # 0.44f

    const/4 v2, 0x0

    const v3, 0x3f5eb852    # 0.87f

    const v4, -0x425c28f6    # -0.08f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb5c28f    # 1.42f

    const v1, 0x404b851f    # 3.18f

    .line 74
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4158f5c3    # 13.56f

    const/high16 v6, 0x41960000    # 18.75f

    const v1, 0x41651eb8    # 14.32f

    const v2, 0x419451ec    # 18.54f

    const v3, 0x415f3333    # 13.95f

    const v4, 0x419547ae    # 18.66f

    move-object v0, v7

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4127ae14    # 10.48f

    const v1, 0x414051ec    # 12.02f

    .line 77
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v6, -0x40400000    # -1.5f

    const/4 v1, 0x0

    const v2, -0x40ab851f    # -0.83f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, -0x40400000    # -1.5f

    move-object v0, v7

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x3fc00000    # 1.5f

    const v1, 0x3f547ae1    # 0.83f

    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3f2b851f    # 0.67f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d47ae1    # -0.67f

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x40400000    # -1.5f

    .line 80
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4127ae14    # 10.48f

    const v6, 0x414051ec    # 12.02f

    const v1, 0x41326666    # 11.15f

    const v2, 0x415851ec    # 13.52f

    const v3, 0x4127ae14    # 10.48f

    const v4, 0x414d999a    # 12.85f

    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4195ae14    # 18.71f

    const v1, 0x416028f6    # 14.01f

    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x403d70a4    # -1.52f

    const v6, 0x3f7d70a4    # 0.99f

    const v1, -0x40e3d70a    # -0.61f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3ed1eb85    # 0.41f

    move-object v0, v7

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x420a3d71    # -0.12f

    const/high16 v6, 0x3fe00000    # 1.75f

    const v1, -0x415c28f6    # -0.32f

    const v2, 0x3f0f5c29    # 0.56f

    const v3, -0x4151eb85    # -0.34f

    const v4, 0x3f99999a    # 1.2f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4099999a    # -0.9f

    const v6, 0x3f4a3d71    # 0.79f

    const v1, -0x4170a3d7    # -0.28f

    const v2, 0x3e947ae1    # 0.29f

    const v3, -0x40eb851f    # -0.58f

    const v4, 0x3f0ccccd    # 0.55f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fa9999a    # -3.35f

    const/high16 v1, -0x40400000    # -1.5f

    .line 87
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f47ae14    # 0.78f

    const v6, -0x3ff5c28f    # -2.16f

    const v1, 0x3efae148    # 0.49f

    const v2, -0x40e8f5c3    # -0.59f

    const v3, 0x3f47ae14    # 0.78f

    const v4, -0x40547ae1    # -1.34f

    move-object v0, v7

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fa28f5c    # -3.46f

    const v6, -0x3fa5c28f    # -3.41f

    const/4 v1, 0x0

    const v2, -0x400e147b    # -1.89f

    const v3, -0x4039999a    # -1.55f

    const v4, -0x3fa5c28f    # -3.41f

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x405a3d71    # 3.41f

    const v1, -0x400b851f    # -1.91f

    const/4 v2, 0x0

    const v3, -0x3fa28f5c    # -3.46f

    const v4, 0x3fc3d70a    # 1.53f

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f400000    # 0.75f

    const v6, 0x400851ec    # 2.13f

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e8f5c29    # 0.28f

    const v4, 0x3fc51eb8    # 1.54f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x403d70a4    # -1.52f

    const v1, 0x4058f5c3    # 3.39f

    .line 92
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40a147ae    # -0.87f

    const v6, -0x40bd70a4    # -0.76f

    const v1, -0x416147ae    # -0.31f

    const v2, -0x41947ae1    # -0.23f

    const v3, -0x40e66666    # -0.6f

    const v4, -0x410a3d71    # -0.48f

    move-object v0, v7

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40d9999a    # 6.8f

    const/high16 v6, 0x41700000    # 15.0f

    const v1, 0x40e4cccd    # 7.15f

    const v2, 0x4181d70a    # 16.23f

    const v3, 0x40e428f6    # 7.13f

    const v4, 0x41791eb8    # 15.57f

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x403851ec    # -1.56f

    const v6, -0x40828f5c    # -0.99f

    const v1, -0x4151eb85    # -0.34f

    const v2, -0x40e8f5c3    # -0.59f

    const v3, -0x4091eb85    # -0.93f

    const v4, -0x408f5c29    # -0.94f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41570a3d    # -0.33f

    const v6, -0x3ff66666    # -2.15f

    const v1, -0x419eb852    # -0.22f

    const v2, -0x40d1eb85    # -0.68f

    const v3, -0x41570a3d    # -0.33f

    const v4, -0x404ccccd    # -1.4f

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, -0x40133333    # -1.85f

    const/4 v1, 0x0

    const v2, -0x40dc28f6    # -0.64f

    const v3, 0x3db851ec    # 0.09f

    const v4, -0x405eb852    # -1.26f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd33333    # 1.65f

    const/high16 v6, -0x40800000    # -1.0f

    const v1, 0x3f28f5c3    # 0.66f

    const v2, -0x430a3d71    # -0.03f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x413d70a4    # -0.38f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3c23d70a    # 0.01f

    const v6, -0x40028f5c    # -1.98f

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x40deb852    # -0.63f

    const v3, 0x3eb33333    # 0.35f

    const v4, -0x404f5c29    # -1.38f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x412451ec    # 10.27f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x40f7ae14    # 7.74f

    const v2, 0x40c1999a    # 6.05f

    const v3, 0x410ee148    # 8.93f

    const v4, 0x40aae148    # 5.34f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fdd70a4    # 1.73f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3f170a3d    # 0.59f

    const v3, 0x3f7d70a4    # 0.99f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41333333    # -0.4f

    const/high16 v1, -0x40800000    # -1.0f

    const v2, 0x3fdd70a4    # 1.73f

    const v3, 0x3fb1eb85    # 1.39f

    .line 102
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x405c28f6    # 3.44f

    const v6, 0x40033333    # 2.05f

    const v1, 0x3fab851f    # 1.34f

    const v2, 0x3eae147b    # 0.34f

    const v3, 0x4021eb85    # 2.53f

    const v4, 0x3f88f5c3    # 1.07f

    move-object v0, v7

    .line 103
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4189999a    # 17.2f

    const/high16 v6, 0x41100000    # 9.0f

    const v1, 0x4186cccd    # 16.85f

    const v2, 0x40f47ae1    # 7.64f

    const v3, 0x4186b852    # 16.84f

    const v4, 0x4106147b    # 8.38f

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fcccccd    # 1.6f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f75c28f    # 0.96f

    const v4, 0x3f733333    # 0.95f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3fee147b    # 1.86f

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3f170a3d    # 0.59f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f9ae148    # 1.21f

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4195ae14    # 18.71f

    const v6, 0x416028f6    # 14.01f

    const v1, 0x41986666    # 19.05f

    const v2, 0x4149c28f    # 12.61f

    const v3, 0x419770a4    # 18.93f

    const v4, 0x415547ae    # 13.33f

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 191
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

    .line 187
    const-string v33, ""

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
