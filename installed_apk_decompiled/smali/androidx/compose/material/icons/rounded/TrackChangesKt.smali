.class public final Landroidx/compose/material/icons/rounded/TrackChangesKt;
.super Ljava/lang/Object;
.source "TrackChanges.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackChanges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackChanges.kt\nandroidx/compose/material/icons/rounded/TrackChangesKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,68:1\n212#2,12:69\n233#2,18:82\n253#2:119\n174#3:81\n705#4,2:100\n717#4,2:102\n719#4,11:108\n72#5,4:104\n*S KotlinDebug\n*F\n+ 1 TrackChanges.kt\nandroidx/compose/material/icons/rounded/TrackChangesKt\n*L\n29#1:69,12\n30#1:82,18\n30#1:119\n29#1:81\n30#1:100,2\n30#1:102,2\n30#1:108,11\n30#1:104,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_trackChanges",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "TrackChanges",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getTrackChanges",
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
.field private static _trackChanges:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getTrackChanges(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/TrackChangesKt;->_trackChanges:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 73
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 81
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

    .line 73
    const-string v2, "Rounded.TrackChanges"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 92
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 97
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 98
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 104
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x41928f5c    # 18.32f

    const v1, 0x40b5c28f    # 5.68f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4270a3d7    # -0.07f

    const v6, 0x3fa8f5c3    # 1.32f

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x3eb851ec    # 0.36f

    const v3, -0x413851ec    # -0.39f

    const v4, 0x3f6b851f    # 0.92f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc3d70a    # 1.53f

    const v6, 0x40dd70a4    # 6.92f

    const v1, 0x3fb9999a    # 1.45f

    const v2, 0x3fe8f5c3    # 1.82f

    const v3, 0x400d70a4    # 2.21f

    const v4, 0x4089eb85    # 4.31f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f3947ae    # -6.21f

    const v6, 0x40be147b    # 5.94f

    const v1, -0x40b5c28f    # -0.79f

    const v2, 0x40433333    # 3.05f

    const v3, -0x3fb47ae1    # -3.18f

    const v4, 0x40aa8f5c    # 5.33f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x4107851f    # 8.47f

    const v2, 0x41a6f5c3    # 20.87f

    const/high16 v3, 0x40800000    # 4.0f

    const v4, 0x418770a4    # 16.93f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40e00000    # 7.0f

    const v6, -0x3f023d71    # -7.93f

    const/4 v1, 0x0

    const v2, -0x3f7d70a4    # -4.08f

    const v3, 0x40433333    # 3.05f

    const v4, -0x3f11eb85    # -7.44f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400147ae    # 2.02f

    .line 37
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f623d71    # -4.93f

    const v6, 0x40da8f5c    # 6.83f

    const v1, -0x3fb7ae14    # -3.13f

    const v2, 0x3f07ae14    # 0.53f

    const v3, -0x3f523d71    # -5.43f

    const v4, 0x405d70a4    # 3.46f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a5c28f    # 5.18f

    const v6, 0x40a0f5c3    # 5.03f

    const v1, 0x3ec7ae14    # 0.39f

    const v2, 0x40270a3d    # 2.61f

    const v3, 0x4023d70a    # 2.56f

    const v4, 0x4096b852    # 4.71f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x416e3d71    # 14.89f

    const v2, 0x41933333    # 18.4f

    const/high16 v3, 0x41900000    # 18.0f

    const v4, 0x4178f5c3    # 15.56f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407c28f6    # -1.03f

    const v6, -0x3fa8f5c3    # -3.36f

    const/4 v1, 0x0

    const/high16 v2, -0x40600000    # -1.25f

    const v3, -0x413d70a4    # -0.38f

    const v4, -0x3fe66666    # -2.4f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40400000    # -1.5f

    const v6, -0x421eb852    # -0.11f

    const v1, -0x4151eb85    # -0.34f

    const/high16 v2, -0x41000000    # -0.5f

    const v3, -0x40770a3d    # -1.07f

    const v4, -0x40f851ec    # -0.53f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x43dc28f6    # -0.01f

    const v1, 0x3c23d70a    # 0.01f

    .line 43
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x421eb852    # -0.11f

    const v6, 0x3fa28f5c    # 1.27f

    const v1, -0x4151eb85    # -0.34f

    const v2, 0x3eae147b    # 0.34f

    const v3, -0x41428f5c    # -0.37f

    const v4, 0x3f5eb852    # 0.87f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3efae148    # 0.49f

    const v6, 0x40547ae1    # 3.32f

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f6b851f    # 0.92f

    const v3, 0x3f570a3d    # 0.84f

    const v4, 0x40066666    # 2.1f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fc3d70a    # -2.94f

    const v6, 0x403147ae    # 2.77f

    const v1, -0x413851ec    # -0.39f

    const v2, 0x3faf5c29    # 1.37f

    const v3, -0x403ae148    # -1.54f

    const v4, 0x401d70a4    # 2.46f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f633333    # -4.9f

    const v6, -0x3f866666    # -3.9f

    const v1, -0x3fd9999a    # -2.6f

    const v2, 0x3f11eb85    # 0.57f

    const v3, -0x3f633333    # -4.9f

    const v4, -0x404e147b    # -1.39f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40400000    # 3.0f

    const v6, -0x3f88f5c3    # -3.86f

    const/4 v1, 0x0

    const v2, -0x4011eb85    # -1.86f

    const v3, 0x3fa3d70a    # 1.28f

    const v4, -0x3fa5c28f    # -3.41f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4008f5c3    # 2.14f

    .line 49
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3fdc28f6    # 1.72f

    const v1, -0x40e66666    # -0.6f

    const v2, 0x3eb33333    # 0.35f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, 0x3f7ae148    # 0.98f

    move-object v0, v7

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x40000000    # 2.0f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 52
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x4023d70a    # -1.72f

    const/4 v1, 0x0

    const v2, -0x40c28f5c    # -0.74f

    const v3, -0x41333333    # -0.4f

    const v4, -0x404f5c29    # -1.38f

    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x402d70a4    # 2.71f

    .line 54
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ca3d71    # -0.71f

    const v6, -0x40ca3d71    # -0.71f

    const v2, -0x413851ec    # -0.39f

    const v3, -0x415c28f6    # -0.32f

    const v4, -0x40ca3d71    # -0.71f

    move-object v0, v7

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3edbae14    # -10.27f

    const v6, 0x41166666    # 9.4f

    const v1, -0x3f547ae1    # -5.36f

    const v2, -0x41b33333    # -0.2f

    const v3, -0x3ee051ec    # -9.98f

    const v4, 0x4081eb85    # 4.06f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414028f6    # 12.01f

    const v6, 0x41266666    # 10.4f

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x40d1999a    # 6.55f

    const v3, 0x40ad1eb8    # 5.41f

    const v4, 0x413d1eb8    # 11.82f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40f80000    # 7.75f

    const v6, -0x3f0a8f5c    # -7.67f

    const v1, 0x407851ec    # 3.88f

    const v2, -0x40ab851f    # -0.83f

    const v3, 0x40dc28f6    # 6.88f

    const v4, -0x3f8ccccd    # -3.8f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4003d70a    # -1.97f

    const v6, -0x3efa147b    # -8.37f

    const v1, 0x3f35c28f    # 0.71f

    const v2, -0x3fb5c28f    # -3.16f

    const v3, -0x41b33333    # -0.2f

    const v4, -0x3f3ae148    # -6.16f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404147ae    # -1.49f

    const v6, -0x425c28f6    # -0.08f

    const v1, -0x41428f5c    # -0.37f

    const v2, -0x410f5c29    # -0.47f

    const v3, -0x40770a3d    # -1.07f

    const/high16 v4, -0x41000000    # -0.5f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
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

    .line 102
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/TrackChangesKt;->_trackChanges:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
