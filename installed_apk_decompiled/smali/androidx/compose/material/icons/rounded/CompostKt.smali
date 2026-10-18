.class public final Landroidx/compose/material/icons/rounded/CompostKt;
.super Ljava/lang/Object;
.source "Compost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Compost.kt\nandroidx/compose/material/icons/rounded/CompostKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,77:1\n212#2,12:78\n233#2,18:91\n253#2:128\n174#3:90\n705#4,2:109\n717#4,2:111\n719#4,11:117\n72#5,4:113\n*S KotlinDebug\n*F\n+ 1 Compost.kt\nandroidx/compose/material/icons/rounded/CompostKt\n*L\n29#1:78,12\n30#1:91,18\n30#1:128\n29#1:90\n30#1:109,2\n30#1:111,2\n30#1:117,11\n30#1:113,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_compost",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Compost",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getCompost",
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
.field private static _compost:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getCompost(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/CompostKt;->_compost:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 82
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 90
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

    .line 82
    const-string v2, "Rounded.Compost"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 101
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 106
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 107
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 113
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x413bae14    # 11.73f

    const/high16 v1, 0x41ac0000    # 21.5f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3eec7ae1    # -9.22f

    const v6, -0x3eec7ae1    # -9.22f

    const v1, -0x3f61999a    # -4.95f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, -0x3eeeb852    # -9.08f

    const v4, -0x3f775c29    # -4.27f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40200000    # 2.5f

    const v1, 0x40166666    # 2.35f

    const v2, 0x40dd1eb8    # 6.91f

    const v3, 0x40d570a4    # 6.67f

    const/high16 v4, 0x40200000    # 2.5f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f9ae148    # 1.21f

    .line 34
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f59999a    # 0.85f

    const v6, -0x414ccccd    # -0.35f

    const/4 v1, 0x0

    const v2, -0x4119999a    # -0.45f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, -0x40d47ae1    # -0.67f

    move-object v0, v7

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40328f5c    # 2.79f

    .line 36
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f35c28f    # 0.71f

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3f028f5c    # 0.51f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fcd70a4    # -2.79f

    const v1, 0x40328f5c    # 2.79f

    .line 38
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const v6, 0x40d947ae    # 6.79f

    const v1, 0x4148a3d7    # 12.54f

    const v2, 0x40eeb852    # 7.46f

    const/high16 v3, 0x41400000    # 12.0f

    const v4, 0x40e7ae14    # 7.24f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40b00000    # 5.5f

    .line 40
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3f300000    # -6.5f

    const/high16 v6, 0x40d00000    # 6.5f

    const v1, -0x3f9ae148    # -3.58f

    const/4 v2, 0x0

    const/high16 v3, -0x3f300000    # -6.5f

    const v4, 0x403ae148    # 2.92f

    move-object v0, v7

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4033d70a    # 2.81f

    const v6, 0x40ab3333    # 5.35f

    const/4 v1, 0x0

    const v2, 0x400d70a4    # 2.21f

    const v3, 0x3f8e147b    # 1.11f

    const v4, 0x408570a4    # 4.17f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403eb852    # 2.98f

    const v6, -0x4019999a    # -1.8f

    const v1, 0x3f028f5c    # 0.51f

    const v2, -0x40947ae1    # -0.92f

    const v3, 0x3fd0a3d7    # 1.63f

    const v4, -0x4030a3d7    # -1.62f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41051eb8    # -0.49f

    const v6, -0x3ffe147b    # -2.03f

    const v1, -0x4247ae14    # -0.09f

    const v2, -0x40cf5c29    # -0.69f

    const v3, -0x417ae148    # -0.26f

    const v4, -0x404a3d71    # -1.42f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4063d70a    # -1.22f

    const v6, 0x3ef5c28f    # 0.48f

    const v1, -0x41570a3d    # -0.33f

    const v2, 0x3e8f5c29    # 0.28f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, 0x3eeb851f    # 0.46f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffae148    # -2.08f

    const v6, -0x3ff7ae14    # -2.13f

    const v1, -0x406e147b    # -1.14f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, -0x3ffae148    # -2.08f

    const v4, -0x40828f5c    # -0.99f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40a3d70a    # -0.86f

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41f0a3d7    # -0.14f

    const v6, -0x40ab851f    # -0.83f

    const v2, -0x416b851f    # -0.29f

    const v3, -0x42b33333    # -0.05f

    const v4, -0x40ee147b    # -0.57f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40fb851f    # 7.86f

    const v6, 0x411851ec    # 9.52f

    const v1, 0x40e7ae14    # 7.24f

    const v2, 0x411d70a4    # 9.84f

    const/high16 v3, 0x40f00000    # 7.5f

    const v4, 0x4117d70a    # 9.49f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4068f5c3    # 3.64f

    const v6, 0x401eb852    # 2.48f

    const v1, 0x3fa66666    # 1.3f

    const v2, 0x3db851ec    # 0.09f

    const v3, 0x40666666    # 3.6f

    const v4, 0x3f051eb8    # 0.52f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41d1eb85    # -0.17f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    const v2, 0x3e947ae1    # 0.29f

    const v3, -0x428a3d71    # -0.06f

    const v4, 0x3f0f5c29    # 0.56f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x412e8f5c    # 10.91f

    const v2, 0x4147ae14    # 12.48f

    const v3, 0x4127851f    # 10.47f

    const v4, 0x41433333    # 12.2f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x40266666    # 2.6f

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3edc28f6    # 0.43f

    const v3, 0x3faf5c29    # 1.37f

    const v4, 0x3faf5c29    # 1.37f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40400000    # 3.0f

    const v6, -0x3f6ccccd    # -4.6f

    const v1, 0x3f2b851f    # 0.67f

    const v2, -0x4030a3d7    # -1.62f

    const v3, 0x3fd70a3d    # 1.68f

    const v4, -0x3faeb852    # -3.27f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff7ae14    # -2.13f

    const v6, 0x3fe7ae14    # 1.81f

    const v1, -0x40bd70a4    # -0.76f

    const v2, 0x3f051eb8    # 0.52f

    const v3, -0x4043d70a    # -1.47f

    const v4, 0x3f8f5c29    # 1.12f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4147ae14    # -0.36f

    const v6, -0x4043d70a    # -1.47f

    const v1, -0x417ae148    # -0.26f

    const v2, -0x4128f5c3    # -0.42f

    const v3, -0x41333333    # -0.4f

    const v4, -0x4091eb85    # -0.93f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4172147b    # 15.13f

    const/high16 v6, 0x41000000    # 8.0f

    const v1, 0x414970a4    # 12.59f

    const/high16 v2, 0x41100000    # 9.0f

    const v3, 0x415ca3d7    # 13.79f

    const/high16 v4, 0x41000000    # 8.0f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 58
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa3d70a    # 1.28f

    const v6, -0x416147ae    # -0.31f

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    const v3, 0x3f7851ec    # 0.97f

    const v4, -0x41f0a3d7    # -0.14f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f400000    # 0.75f

    const v6, 0x3ee147ae    # 0.44f

    const v1, 0x3eae147b    # 0.34f

    const v2, -0x41bd70a4    # -0.19f

    const v3, 0x3f428f5c    # 0.76f

    const v4, 0x3d4ccccd    # 0.05f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x41500000    # 13.0f

    const v1, 0x418feb85    # 17.99f

    const v2, 0x411deb85    # 9.87f

    const v3, 0x418c7ae1    # 17.56f

    const/high16 v4, 0x41500000    # 13.0f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40570a3d    # -1.32f

    const v6, -0x413d70a4    # -0.38f

    const v1, -0x41051eb8    # -0.49f

    const/4 v2, 0x0

    const v3, -0x408f5c29    # -0.94f

    const v4, -0x41f0a3d7    # -0.14f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40bd70a4    # -0.76f

    const v6, 0x403d70a4    # 2.96f

    const v1, -0x418a3d71    # -0.24f

    const v2, 0x3f23d70a    # 0.64f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3fe147ae    # 1.76f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x403147ae    # 2.77f

    const v6, 0x3fe28f5c    # 1.77f

    const v1, 0x3fa147ae    # 1.26f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x4011eb85    # 2.28f

    const v4, 0x3f63d70a    # 0.89f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40328f5c    # 2.79f

    const v6, -0x3f6428f6    # -4.87f

    const v1, 0x3fc8f5c3    # 1.57f

    const v2, -0x40747ae1    # -1.09f

    const v3, 0x4028f5c3    # 2.64f

    const v4, -0x3fc9999a    # -2.85f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4197d70a    # 18.98f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v1, 0x41940000    # 18.5f

    const v2, 0x4143851f    # 12.22f

    const v3, 0x4195ae14    # 18.71f

    const/high16 v4, 0x41400000    # 12.0f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fe8f5c3    # 1.82f

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f30a3d7    # 0.69f

    const v6, 0x3f051eb8    # 0.52f

    const v1, 0x3ef0a3d7    # 0.47f

    const/4 v2, 0x0

    const v3, 0x3f35c28f    # 0.71f

    const v4, 0x3e75c28f    # 0.24f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x413bae14    # 11.73f

    const/high16 v6, 0x41ac0000    # 21.5f

    const v1, 0x41a9ae14    # 21.21f

    const v2, 0x418ce148    # 17.61f

    const v3, 0x418747ae    # 16.91f

    const v4, 0x41ad1eb8    # 21.64f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
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

    .line 111
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/CompostKt;->_compost:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
