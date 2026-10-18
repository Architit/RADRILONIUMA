.class public final Landroidx/compose/material/icons/filled/_3dRotationKt;
.super Ljava/lang/Object;
.source "_3dRotation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_3dRotation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _3dRotation.kt\nandroidx/compose/material/icons/filled/_3dRotationKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,130:1\n212#2,12:131\n233#2,18:144\n253#2:181\n174#3:143\n705#4,2:162\n717#4,2:164\n719#4,11:170\n72#5,4:166\n*S KotlinDebug\n*F\n+ 1 _3dRotation.kt\nandroidx/compose/material/icons/filled/_3dRotationKt\n*L\n29#1:131,12\n30#1:144,18\n30#1:181\n29#1:143\n30#1:162,2\n30#1:164,2\n30#1:170,11\n30#1:166,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "__3dRotation",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "_3dRotation",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "get_3dRotation",
        "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static __3dRotation:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final get_3dRotation(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/_3dRotationKt;->__3dRotation:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 135
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 143
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

    .line 135
    const-string v2, "Filled._3dRotation"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 154
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 159
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 160
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 166
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x40f0a3d7    # 7.52f

    const v1, 0x41abd70a    # 21.48f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc66666    # 1.55f

    const/high16 v6, 0x41500000    # 13.0f

    const/high16 v1, 0x40880000    # 4.25f

    const v2, 0x419f851f    # 19.94f

    const v3, 0x3ff47ae1    # 1.91f

    const v4, 0x4186147b    # 16.76f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d4ccccd    # 0.05f

    const/high16 v1, 0x41500000    # 13.0f

    .line 33
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const v1, 0x3f0f5c29    # 0.56f

    const v2, 0x419947ae    # 19.16f

    const v3, 0x40b6b852    # 5.71f

    const/high16 v4, 0x41c00000    # 24.0f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f28f5c3    # 0.66f

    const v1, -0x430a3d71    # -0.03f

    .line 35
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f8c28f6    # -3.81f

    .line 36
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fa8f5c3    # 1.32f

    const v1, -0x4055c28f    # -1.33f

    .line 37
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41068f5c    # 8.41f

    const v1, 0x416f5c29    # 14.96f

    .line 39
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40fae148    # -0.52f

    const v6, -0x425c28f6    # -0.08f

    const v1, -0x41bd70a4    # -0.19f

    const/4 v2, 0x0

    const v3, -0x41428f5c    # -0.37f

    const v4, -0x430a3d71    # -0.03f

    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41333333    # -0.4f

    const v6, -0x418a3d71    # -0.24f

    const v1, -0x41dc28f6    # -0.16f

    const v2, -0x428a3d71    # -0.06f

    const v3, -0x416b851f    # -0.29f

    const v4, -0x41fae148    # -0.13f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x417ae148    # -0.26f

    const v6, -0x41428f5c    # -0.37f

    const v1, -0x421eb852    # -0.11f

    const v2, -0x42333333    # -0.1f

    const v3, -0x41b33333    # -0.2f

    const v4, -0x419eb852    # -0.22f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4247ae14    # -0.09f

    const v6, -0x410f5c29    # -0.47f

    const v1, -0x428a3d71    # -0.06f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x41666666    # -0.3f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4059999a    # -1.3f

    .line 44
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3f733333    # 0.95f

    const/4 v1, 0x0

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x3f2e147b    # 0.68f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0f5c29    # 0.56f

    const v6, 0x3f30a3d7    # 0.69f

    const v1, 0x3e0f5c29    # 0.14f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f51eb85    # 0.82f

    const v6, 0x3ed1eb85    # 0.41f

    const v1, 0x3e75c28f    # 0.24f

    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3f028f5c    # 0.51f

    const v4, 0x3ea3d70a    # 0.32f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f75c28f    # 0.96f

    const v6, 0x3e19999a    # 0.15f

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f1eb852    # 0.62f

    const v4, 0x3e19999a    # 0.15f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f83d70a    # 1.03f

    const v6, -0x41e66666    # -0.15f

    const v1, 0x3ebd70a4    # 0.37f

    const/4 v2, 0x0

    const v3, 0x3f3851ec    # 0.72f

    const v4, -0x42b33333    # -0.05f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f547ae1    # 0.83f

    const v6, -0x411eb852    # -0.44f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x42333333    # -0.1f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, -0x41800000    # -0.25f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f0ccccd    # 0.55f

    const v1, -0x40c7ae14    # -0.72f

    const v2, 0x3ed70a3d    # 0.42f

    const v3, -0x4123d70a    # -0.43f

    .line 51
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, -0x4087ae14    # -0.97f

    const v1, 0x3e051eb8    # 0.13f

    const v2, -0x416b851f    # -0.29f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, -0x40e3d70a    # -0.61f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4270a3d7    # -0.07f

    const v6, -0x40f0a3d7    # -0.56f

    const/4 v1, 0x0

    const v2, -0x41bd70a4    # -0.19f

    const v3, -0x435c28f6    # -0.02f

    const v4, -0x413d70a4    # -0.38f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41947ae1    # -0.23f

    const v6, -0x40fd70a4    # -0.51f

    const v1, -0x42b33333    # -0.05f

    const v2, -0x41c7ae14    # -0.18f

    const v3, -0x420a3d71    # -0.12f

    const v4, -0x414ccccd    # -0.35f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41333333    # -0.4f

    const v6, -0x4123d70a    # -0.43f

    const v1, -0x42333333    # -0.1f

    const v2, -0x41dc28f6    # -0.16f

    const v3, -0x418a3d71    # -0.24f

    const v4, -0x41666666    # -0.3f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40e3d70a    # -0.61f

    const v6, -0x416147ae    # -0.31f

    const v1, -0x41d1eb85    # -0.17f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x41428f5c    # -0.37f

    const v4, -0x41947ae1    # -0.23f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f051eb8    # 0.52f

    const v6, -0x41570a3d    # -0.33f

    const v1, 0x3e4ccccd    # 0.2f

    const v2, -0x4247ae14    # -0.09f

    const v3, 0x3ebd70a4    # 0.37f

    const v4, -0x41b33333    # -0.2f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x4128f5c3    # -0.42f

    const v1, 0x3e19999a    # 0.15f

    const v2, -0x41fae148    # -0.13f

    const v3, 0x3e8a3d71    # 0.27f

    const v4, -0x4175c28f    # -0.27f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e6147ae    # 0.22f

    const v6, -0x41147ae1    # -0.46f

    const v1, 0x3dcccccd    # 0.1f

    const v2, -0x41e66666    # -0.15f

    const v3, 0x3e2e147b    # 0.17f

    const v4, -0x41666666    # -0.3f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3d8f5c29    # 0.07f

    const v6, -0x410a3d71    # -0.48f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, -0x41dc28f6    # -0.16f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, -0x415c28f6    # -0.32f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41c7ae14    # -0.18f

    const v6, -0x408a3d71    # -0.96f

    const/4 v1, 0x0

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x428a3d71    # -0.06f

    const v4, -0x40d1eb85    # -0.68f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40fd70a4    # -0.51f

    const v6, -0x40cf5c29    # -0.69f

    const v1, -0x420a3d71    # -0.12f

    const v2, -0x4170a3d7    # -0.28f

    const v3, -0x416b851f    # -0.29f

    const v4, -0x40fd70a4    # -0.51f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40bae148    # -0.77f

    const v6, -0x4123d70a    # -0.43f

    const v1, -0x41b33333    # -0.2f

    const v2, -0x41bd70a4    # -0.19f

    const v3, -0x410f5c29    # -0.47f

    const v4, -0x41570a3d    # -0.33f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41063d71    # 8.39f

    const/high16 v6, 0x41000000    # 8.0f

    const v1, 0x4111999a    # 9.1f

    const v2, 0x4100cccd    # 8.05f

    const v3, 0x410c28f6    # 8.76f

    const/high16 v4, 0x41000000    # 8.0f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3e23d70a    # 0.16f

    const v1, -0x4147ae14    # -0.36f

    const/4 v2, 0x0

    const v3, -0x40cf5c29    # -0.69f

    const v4, 0x3d4ccccd    # 0.05f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b5c28f    # -0.79f

    const v6, 0x3ee66666    # 0.45f

    const v1, -0x41666666    # -0.3f

    const v2, 0x3de147ae    # 0.11f

    const v3, -0x40ee147b    # -0.57f

    const v4, 0x3e851eb8    # 0.26f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40fd70a4    # -0.51f

    const v6, 0x3f2b851f    # 0.67f

    const v1, -0x41a8f5c3    # -0.21f

    const v2, 0x3e428f5c    # 0.19f

    const v3, -0x413d70a4    # -0.38f

    const v4, 0x3ed1eb85    # 0.41f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41c7ae14    # -0.18f

    const v6, 0x3f59999a    # 0.85f

    const v1, -0x420a3d71    # -0.12f

    const v2, 0x3e851eb8    # 0.26f

    const v3, -0x41c7ae14    # -0.18f

    const v4, 0x3f0a3d71    # 0.54f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fa66666    # 1.3f

    .line 69
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3db851ec    # 0.09f

    const v6, -0x4119999a    # -0.45f

    const/4 v1, 0x0

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, -0x415c28f6    # -0.32f

    move-object v0, v7

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, -0x4151eb85    # -0.34f

    const v2, 0x3e0f5c29    # 0.14f

    const/high16 v3, -0x41800000    # -0.25f

    .line 71
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ec28f5c    # 0.38f

    const v6, -0x419eb852    # -0.22f

    const v1, 0x3de147ae    # 0.11f

    const v2, -0x4247ae14    # -0.09f

    const v3, 0x3e6b851f    # 0.23f

    const v4, -0x41d1eb85    # -0.17f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ef5c28f    # 0.48f

    const v6, -0x425c28f6    # -0.08f

    const v1, 0x3e19999a    # 0.15f

    const v2, -0x42b33333    # -0.05f

    const v3, 0x3e99999a    # 0.3f

    const v4, -0x425c28f6    # -0.08f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e9eb852    # 0.31f

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3dcccccd    # 0.1f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e947ae1    # 0.29f

    const v6, 0x3f5c28f6    # 0.86f

    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e947ae1    # 0.29f

    const v4, 0x3efae148    # 0.49f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x425c28f6    # -0.08f

    const v6, 0x3efae148    # 0.49f

    const/4 v1, 0x0

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x430a3d71    # -0.03f

    const v4, 0x3eae147b    # 0.34f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41800000    # -0.25f

    const v6, 0x3ebd70a4    # 0.37f

    const v1, -0x42b33333    # -0.05f

    const v2, 0x3e19999a    # 0.15f

    const v3, -0x41f0a3d7    # -0.14f

    const v4, 0x3e8a3d71    # 0.27f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x412e147b    # -0.41f

    const v6, 0x3e75c28f    # 0.24f

    const v1, -0x421eb852    # -0.11f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, -0x41800000    # -0.25f

    const v4, 0x3e3851ec    # 0.18f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40eb851f    # -0.58f

    const v6, 0x3db851ec    # 0.09f

    const v1, -0x41dc28f6    # -0.16f

    const v2, 0x3d75c28f    # 0.06f

    const v3, -0x4147ae14    # -0.36f

    const v4, 0x3db851ec    # 0.09f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40f00000    # 7.5f

    const v1, 0x41366666    # 11.4f

    .line 80
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f83d70a    # 1.03f

    .line 81
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f451eb8    # 0.77f

    .line 82
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3d8f5c29    # 0.07f

    const v1, 0x3e6147ae    # 0.22f

    const/4 v2, 0x0

    const v3, 0x3ed70a3d    # 0.42f

    const v4, 0x3ca3d70a    # 0.02f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ee66666    # 0.45f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e051eb8    # 0.13f

    .line 84
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e947ae1    # 0.29f

    const v6, 0x3ecccccd    # 0.4f

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3e6147ae    # 0.22f

    const v4, 0x3e75c28f    # 0.24f

    move-object v0, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f11eb85    # 0.57f

    const v1, 0x3d8f5c29    # 0.07f

    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3eb33333    # 0.35f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x414ccccd    # -0.35f

    const v6, 0x3f6e147b    # 0.93f

    const/4 v1, 0x0

    const v2, 0x3ed1eb85    # 0.41f

    const v3, -0x420a3d71    # -0.12f

    const v4, 0x3f3851ec    # 0.72f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x408ccccd    # -0.95f

    const v6, 0x3ea8f5c3    # 0.33f

    const v1, -0x41947ae1    # -0.23f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40f33333    # -0.55f

    const v4, 0x3ea8f5c3    # 0.33f

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4187ae14    # 16.96f

    const v1, 0x4110a3d7    # 9.04f

    .line 90
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406e147b    # -1.14f

    const v6, -0x40bae148    # -0.77f

    const v1, -0x415c28f6    # -0.32f

    const v2, -0x41570a3d    # -0.33f

    const v3, -0x40cccccd    # -0.7f

    const v4, -0x40e8f5c3    # -0.59f

    move-object v0, v7

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40451eb8    # -1.46f

    const v6, -0x4175c28f    # -0.27f

    const v1, -0x4123d70a    # -0.43f

    const v2, -0x41c7ae14    # -0.18f

    const v3, -0x40947ae1    # -0.92f

    const v4, -0x4175c28f    # -0.27f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x41400000    # 12.0f

    .line 93
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40133333    # 2.3f

    .line 95
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc147ae    # 1.51f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const v3, 0x3f87ae14    # 1.06f

    const v4, -0x4247ae14    # -0.09f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f947ae1    # 1.16f

    const v6, -0x40bd70a4    # -0.76f

    const v1, 0x3ee66666    # 0.45f

    const v2, -0x41c7ae14    # -0.18f

    const v3, 0x3f570a3d    # 0.84f

    const v4, -0x4123d70a    # -0.43f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3d70a4    # 0.74f

    const v6, -0x4067ae14    # -1.19f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f11eb85    # 0.57f

    const v4, -0x40c51eb8    # -0.73f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e851eb8    # 0.26f

    const v6, -0x40370a3d    # -1.57f

    const v1, 0x3e2e147b    # 0.17f

    const v2, -0x410f5c29    # -0.47f

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x40828f5c    # -0.99f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41333333    # -0.4f

    .line 100
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x417ae148    # -0.26f

    const/4 v1, 0x0

    const v2, -0x40eb851f    # -0.58f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x40733333    # -1.1f

    move-object v0, v7

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40c00000    # -0.75f

    const v6, -0x40666666    # -1.2f

    const v1, -0x41c7ae14    # -0.18f

    const v2, -0x410f5c29    # -0.47f

    const v3, -0x4123d70a    # -0.43f

    const v4, -0x40a147ae    # -0.87f

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41848f5c    # 16.57f

    const v1, 0x41433333    # 12.2f

    .line 104
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41f0a3d7    # -0.14f

    const v6, 0x3f90a3d7    # 1.13f

    const/4 v1, 0x0

    const v2, 0x3ed70a3d    # 0.42f

    const v3, -0x42b33333    # -0.05f

    const v4, 0x3f4a3d71    # 0.79f

    move-object v0, v7

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4123d70a    # -0.43f

    const v6, 0x3f59999a    # 0.85f

    const v1, -0x42333333    # -0.1f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, -0x418a3d71    # -0.24f

    const v4, 0x3f1eb852    # 0.62f

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ca3d71    # -0.71f

    const v6, 0x3f07ae14    # 0.53f

    const v1, -0x41bd70a4    # -0.19f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x4123d70a    # -0.43f

    const v4, 0x3ed1eb85    # 0.41f

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40828f5c    # -0.99f

    const v6, 0x3e3851ec    # 0.18f

    const v1, -0x416b851f    # -0.29f

    const v2, 0x3df5c28f    # 0.12f

    const v3, -0x40e147ae    # -0.62f

    const v4, 0x3e3851ec    # 0.18f

    .line 108
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40970a3d    # -0.91f

    .line 109
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41563d71    # 13.39f

    const v1, 0x4111eb85    # 9.12f

    .line 110
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f7851ec    # 0.97f

    .line 111
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd1eb85    # 1.64f

    const v6, 0x3f30a3d7    # 0.69f

    const v1, 0x3f3851ec    # 0.72f

    const/4 v2, 0x0

    const v3, 0x3fa28f5c    # 1.27f

    const v4, 0x3e6b851f    # 0.23f

    move-object v0, v7

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f11eb85    # 0.57f

    const v6, 0x3ffeb852    # 1.99f

    const v1, 0x3ec28f5c    # 0.38f

    const v2, 0x3eeb851f    # 0.46f

    const v3, 0x3f11eb85    # 0.57f

    const v4, 0x3f8f5c29    # 1.12f

    .line 113
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ecccccd    # 0.4f

    .line 114
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x41400000    # 12.0f

    .line 116
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d70a3d    # -0.66f

    const v1, 0x3cf5c28f    # 0.03f

    .line 117
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4073d70a    # 3.81f

    .line 118
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3faa3d71    # 1.33f

    const v1, -0x4055c28f    # -1.33f

    .line 119
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40beb852    # 5.96f

    const v6, 0x4107ae14    # 8.48f

    const v1, 0x405147ae    # 3.27f

    const v2, 0x3fc66666    # 1.55f

    const v3, 0x40b3851f    # 5.61f

    const v4, 0x40970a3d    # 4.72f

    move-object v0, v7

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 121
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    const v1, 0x41bb851f    # 23.44f

    const v2, 0x409ae148    # 4.84f

    const v3, 0x419251ec    # 18.29f

    const/4 v4, 0x0

    move-object v0, v7

    .line 122
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 168
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

    .line 164
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/filled/_3dRotationKt;->__3dRotation:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
