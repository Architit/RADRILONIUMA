.class public final Landroidx/compose/material/icons/twotone/CrueltyFreeKt;
.super Ljava/lang/Object;
.source "CrueltyFree.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrueltyFree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrueltyFree.kt\nandroidx/compose/material/icons/twotone/CrueltyFreeKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,135:1\n212#2,12:136\n233#2,18:149\n253#2:186\n233#2,18:187\n253#2:224\n174#3:148\n705#4,2:167\n717#4,2:169\n719#4,11:175\n705#4,2:205\n717#4,2:207\n719#4,11:213\n72#5,4:171\n72#5,4:209\n*S KotlinDebug\n*F\n+ 1 CrueltyFree.kt\nandroidx/compose/material/icons/twotone/CrueltyFreeKt\n*L\n29#1:136,12\n30#1:149,18\n30#1:186\n72#1:187,18\n72#1:224\n29#1:148\n30#1:167,2\n30#1:169,2\n30#1:175,11\n72#1:205,2\n72#1:207,2\n72#1:213,11\n30#1:171,4\n72#1:209,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_crueltyFree",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "CrueltyFree",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getCrueltyFree",
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
.field private static _crueltyFree:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getCrueltyFree(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/CrueltyFreeKt;->_crueltyFree:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 140
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 148
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

    .line 140
    const-string v2, "TwoTone.CrueltyFree"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 159
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 164
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 165
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 171
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4080f5c3    # 4.03f

    const v1, 0x41870a3d    # 16.88f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x4187851f    # 16.94f

    const v2, 0x40866666    # 4.2f

    const/high16 v3, 0x41880000    # 17.0f

    const v4, 0x409051ec    # 4.51f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffb851f    # -2.07f

    const v6, 0x40d8f5c3    # 6.78f

    const/4 v1, 0x0

    const v2, 0x4035c28f    # 2.84f

    const v3, -0x4071eb85    # -1.11f

    const v4, 0x40a7ae14    # 5.24f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404ccccd    # -1.4f

    const v6, -0x40e147ae    # -0.62f

    const v1, -0x413d70a4    # -0.38f

    const v2, -0x417ae148    # -0.26f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x410a3d71    # -0.48f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41870a3d    # 16.88f

    const v6, 0x4080f5c3    # 4.03f

    const v1, 0x415c51ec    # 13.77f

    const v2, 0x40d47ae1    # 6.64f

    const v3, 0x417f851f    # 15.97f

    const v4, 0x408a8f5c    # 4.33f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x40e00000    # 7.0f

    .line 37
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3df5c28f    # 0.12f

    const v6, -0x4087ae14    # -0.97f

    const/4 v1, 0x0

    const v2, -0x41051eb8    # -0.49f

    const v3, 0x3d75c28f    # 0.06f

    const v4, -0x40b33333    # -0.8f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40570a3d    # 3.36f

    const v6, 0x40e428f6    # 7.13f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x40470a3d    # 3.11f

    const v4, 0x40270a3d    # 2.61f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404ccccd    # -1.4f

    const v6, 0x3f1eb852    # 0.62f

    const v1, -0x40eb851f    # -0.58f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, -0x407c28f6    # -1.03f

    const v4, 0x3eb33333    # 0.35f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x4101c28f    # 8.11f

    const v2, 0x4123d70a    # 10.24f

    const/high16 v3, 0x40e00000    # 7.0f

    const v4, 0x40fae148    # 7.84f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x417c51ec    # 15.77f

    const/high16 v1, 0x41800000    # 16.0f

    .line 43
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4059999a    # -1.3f

    const v6, -0x4050a3d7    # -1.37f

    const v1, -0x411eb852    # -0.44f

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x40e3d70a    # -0.61f

    const v4, -0x40fae148    # -0.52f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41500000    # 13.0f

    const v1, 0x415f0a3d    # 13.94f

    const v2, 0x41573333    # 13.45f

    const v3, 0x4159c28f    # 13.61f

    const/high16 v4, 0x41500000    # 13.0f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4007ae14    # -1.94f

    const v1, -0x3fd33333    # -2.7f

    const v2, 0x3fb33333    # 1.4f

    const v3, 0x3ee66666    # 0.45f

    .line 46
    invoke-virtual {v7, v0, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4059999a    # -1.3f

    const v6, 0x3faf5c29    # 1.37f

    const v1, -0x40cf5c29    # -0.69f

    const v2, 0x3f59999a    # 0.85f

    const v3, -0x40a3d70a    # -0.86f

    const v4, 0x3f8147ae    # 1.01f

    move-object v0, v7

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3fdd70a4    # 1.73f

    const v1, -0x40ee147b    # -0.57f

    const v2, 0x3efae148    # 0.49f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, 0x3f83d70a    # 1.03f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41180000    # 9.5f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const v2, 0x41970a3d    # 18.88f

    const v3, 0x4101eb85    # 8.12f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x400e147b    # 2.22f

    const v6, -0x40f0a3d7    # -0.56f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3fe66666    # 1.8f

    const v4, -0x41570a3d    # -0.33f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x41940000    # 18.5f

    const v1, 0x4134cccd    # 11.3f

    const v2, 0x419a147b    # 19.26f

    const/high16 v3, 0x41300000    # 11.0f

    const v4, 0x4195d70a    # 18.73f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v1, 0x0

    const v2, -0x4170a3d7    # -0.28f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, -0x41000000    # -0.5f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 53
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c7ae14    # -0.72f

    const v6, 0x3f70a3d7    # 0.94f

    const/4 v1, 0x0

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x41666666    # -0.3f

    const v4, 0x3f428f5c    # 0.76f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41680000    # 14.5f

    const/high16 v6, 0x41a00000    # 20.0f

    const v1, 0x414b3333    # 12.7f

    const v2, 0x419d5c29    # 19.67f

    const/high16 v3, 0x41580000    # 13.5f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40200000    # 2.5f

    const/high16 v6, -0x3fe00000    # -2.5f

    const v1, 0x3fb0a3d7    # 1.38f

    const/4 v2, 0x0

    const/high16 v3, 0x40200000    # 2.5f

    const v4, -0x4070a3d7    # -1.12f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41800000    # 16.0f

    const v6, 0x417c51ec    # 15.77f

    const/high16 v1, 0x41880000    # 17.0f

    const v2, 0x41866666    # 16.8f

    const v3, 0x41848f5c    # 16.57f

    const v4, 0x4182147b    # 16.26f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41280000    # 10.5f

    const/high16 v1, 0x41860000    # 16.75f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, -0x40c00000    # -0.75f

    const v1, -0x4170a3d7    # -0.28f

    const/4 v2, 0x0

    const/high16 v3, -0x41000000    # -0.5f

    const v4, -0x4151eb85    # -0.34f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, -0x40c00000    # -0.75f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x417970a4    # 15.59f

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 62
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41280000    # 10.5f

    const/high16 v6, 0x41860000    # 16.75f

    const v2, 0x418347ae    # 16.41f

    const v3, 0x412c7ae1    # 10.78f

    const/high16 v4, 0x41860000    # 16.75f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41580000    # 13.5f

    const/high16 v1, 0x41860000    # 16.75f

    .line 65
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, -0x40c00000    # -0.75f

    const v1, -0x4170a3d7    # -0.28f

    const/4 v2, 0x0

    const/high16 v3, -0x41000000    # -0.5f

    const v4, -0x4151eb85    # -0.34f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, -0x40c00000    # -0.75f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x417970a4    # 15.59f

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 68
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41580000    # 13.5f

    const/high16 v6, 0x41860000    # 16.75f

    const v2, 0x418347ae    # 16.41f

    const v3, 0x415c7ae1    # 13.78f

    const/high16 v4, 0x41860000    # 16.75f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 173
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

    .line 169
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 190
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 197
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    .line 202
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 203
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    .line 209
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v1, 0x41600000    # 14.0f

    .line 73
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d9999a    # -0.65f

    const/high16 v6, -0x40c00000    # -0.75f

    const v1, -0x418a3d71    # -0.24f

    const v2, -0x418a3d71    # -0.24f

    const v3, -0x411eb852    # -0.44f

    const v4, -0x41051eb8    # -0.49f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x418c147b    # 17.51f

    const/high16 v2, 0x41380000    # 11.5f

    const/high16 v3, 0x41980000    # 19.0f

    const v4, 0x4108f5c3    # 8.56f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const/4 v1, 0x0

    const v2, -0x40066666    # -1.95f

    const v3, -0x40c28f5c    # -0.74f

    const/high16 v4, -0x3fc00000    # -3.0f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3f600000    # -5.0f

    const v6, 0x40bf0a3d    # 5.97f

    const v1, -0x403ae148    # -1.54f

    const/4 v2, 0x0

    const v3, -0x3f828f5c    # -3.96f

    const v4, 0x4003d70a    # 2.06f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, 0x412f5c29    # 10.96f

    const v2, 0x4081eb85    # 4.06f

    const v3, 0x4108a3d7    # 8.54f

    const/high16 v4, 0x40000000    # 2.0f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x40b7ae14    # 5.74f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x40433333    # 3.05f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4029999a    # 2.65f

    const/high16 v6, 0x41040000    # 8.25f

    const/4 v1, 0x0

    const v2, 0x4063d70a    # 3.56f

    const v3, 0x3fbeb852    # 1.49f

    const/high16 v4, 0x40d00000    # 6.5f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x41600000    # 14.0f

    const v1, 0x40ee147b    # 7.44f

    const v2, 0x415828f6    # 13.51f

    const v3, 0x40e7ae14    # 7.24f

    const v4, 0x415c28f6    # 13.76f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40600000    # 3.5f

    const/high16 v1, -0x41800000    # -0.25f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x3fb1eb85    # 1.39f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41180000    # 9.5f

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x419fd70a    # 19.98f

    const v3, 0x40e0a3d7    # 7.02f

    const/high16 v4, 0x41b00000    # 22.0f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40200000    # 2.5f

    const/high16 v6, -0x41000000    # -0.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, -0x41000000    # -0.5f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 85
    invoke-virtual {v7, v1, v2, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40900000    # 4.5f

    const/high16 v6, -0x3f700000    # -4.5f

    const v1, 0x401eb852    # 2.48f

    const/4 v2, 0x0

    const/high16 v3, 0x40900000    # 4.5f

    const v4, -0x3ffeb852    # -2.02f

    move-object v0, v7

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v1, 0x41980000    # 19.0f

    const v2, 0x41763d71    # 15.39f

    const/high16 v3, 0x418a0000    # 17.25f

    const/high16 v4, 0x41640000    # 14.25f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4080f5c3    # 4.03f

    const v1, 0x41870a3d    # 16.88f

    .line 89
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x4187851f    # 16.94f

    const v2, 0x40866666    # 4.2f

    const/high16 v3, 0x41880000    # 17.0f

    const v4, 0x409051ec    # 4.51f

    move-object v0, v7

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffb851f    # -2.07f

    const v6, 0x40d8f5c3    # 6.78f

    const/4 v1, 0x0

    const v2, 0x4035c28f    # 2.84f

    const v3, -0x4071eb85    # -1.11f

    const v4, 0x40a7ae14    # 5.24f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404ccccd    # -1.4f

    const v6, -0x40e147ae    # -0.62f

    const v1, -0x413d70a4    # -0.38f

    const v2, -0x417ae148    # -0.26f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x410a3d71    # -0.48f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41870a3d    # 16.88f

    const v6, 0x4080f5c3    # 4.03f

    const v1, 0x415c51ec    # 13.77f

    const v2, 0x40d47ae1    # 6.64f

    const v3, 0x417f851f    # 15.97f

    const v4, 0x408a8f5c    # 4.33f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x40e00000    # 7.0f

    .line 95
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3df5c28f    # 0.12f

    const v6, -0x4087ae14    # -0.97f

    const/4 v1, 0x0

    const v2, -0x41051eb8    # -0.49f

    const v3, 0x3d75c28f    # 0.06f

    const v4, -0x40b33333    # -0.8f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40570a3d    # 3.36f

    const v6, 0x40e428f6    # 7.13f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x40470a3d    # 3.11f

    const v4, 0x40270a3d    # 2.61f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404ccccd    # -1.4f

    const v6, 0x3f1eb852    # 0.62f

    const v1, -0x40eb851f    # -0.58f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, -0x407c28f6    # -1.03f

    const v4, 0x3eb33333    # 0.35f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const v1, 0x4101c28f    # 8.11f

    const v2, 0x4123d70a    # 10.24f

    const/high16 v3, 0x40e00000    # 7.0f

    const v4, 0x40fae148    # 7.84f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41680000    # 14.5f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 101
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff1eb85    # -2.22f

    const v6, -0x40f0a3d7    # -0.56f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const v3, -0x4019999a    # -1.8f

    const v4, -0x41570a3d    # -0.33f

    move-object v0, v7

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41500000    # 13.0f

    const/high16 v6, 0x41940000    # 18.5f

    const v1, 0x414b3333    # 12.7f

    const v2, 0x419a147b    # 19.26f

    const/high16 v3, 0x41500000    # 13.0f

    const v4, 0x4195d70a    # 18.73f

    .line 103
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v1, 0x0

    const v2, -0x4170a3d7    # -0.28f

    const v3, -0x4119999a    # -0.45f

    const/high16 v4, -0x41000000    # -0.5f

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40800000    # -1.0f

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 105
    invoke-virtual {v7, v0, v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3851ec    # 0.72f

    const v6, 0x3f70a3d7    # 0.94f

    const/4 v1, 0x0

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f428f5c    # 0.76f

    move-object v0, v7

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41180000    # 9.5f

    const/high16 v6, 0x41a00000    # 20.0f

    const v1, 0x4134cccd    # 11.3f

    const v2, 0x419d5c29    # 19.67f

    const/high16 v3, 0x41280000    # 10.5f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x418c0000    # 17.5f

    const v1, 0x4101eb85    # 8.12f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const v4, 0x41970a3d    # 18.88f

    .line 108
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, -0x40228f5c    # -1.73f

    const/4 v1, 0x0

    const v2, -0x40cccccd    # -0.7f

    const v3, 0x3edc28f6    # 0.43f

    const v4, -0x406147ae    # -1.24f

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, -0x4050a3d7    # -1.37f

    const v1, 0x3ee147ae    # 0.44f

    const v2, -0x4147ae14    # -0.36f

    const v3, 0x3f1c28f6    # 0.61f

    const v4, -0x40fae148    # -0.52f

    .line 110
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x402ccccd    # 2.7f

    const v6, -0x404ccccd    # -1.4f

    const v1, 0x3f428f5c    # 0.76f

    const v2, -0x408ccccd    # -0.95f

    const v3, 0x3f8b851f    # 1.09f

    const v4, -0x404ccccd    # -1.4f

    .line 111
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff851ec    # 1.94f

    const v1, 0x402ccccd    # 2.7f

    const v2, 0x3fb33333    # 1.4f

    const v3, 0x3ee66666    # 0.45f

    .line 112
    invoke-virtual {v7, v0, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, 0x3faf5c29    # 1.37f

    const v1, 0x3f30a3d7    # 0.69f

    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3f5c28f6    # 0.86f

    const v4, 0x3f8147ae    # 1.01f

    move-object v0, v7

    .line 113
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fdd70a4    # 1.73f

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3efae148    # 0.49f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f83d70a    # 1.03f

    .line 114
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41680000    # 14.5f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v1, 0x41880000    # 17.0f

    const v2, 0x41970a3d    # 18.88f

    const v3, 0x417e147b    # 15.88f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 115
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41600000    # 14.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 117
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    const v2, 0x3ed1eb85    # 0.41f

    const v3, -0x419eb852    # -0.22f

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, v7

    .line 118
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418347ae    # 16.41f

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 119
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, -0x40c00000    # -0.75f

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x417970a4    # 15.59f

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 121
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 123
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    const v2, 0x3ed1eb85    # 0.41f

    const v3, -0x419eb852    # -0.22f

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, v7

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x418347ae    # 16.41f

    const/high16 v2, 0x41800000    # 16.0f

    .line 125
    invoke-virtual {v7, v0, v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, -0x40c00000    # -0.75f

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 126
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x417970a4    # 15.59f

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 127
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 211
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

    .line 207
    const-string v33, ""

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/CrueltyFreeKt;->_crueltyFree:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
