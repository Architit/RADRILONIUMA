.class public final Landroidx/compose/material/icons/rounded/FilterTiltShiftKt;
.super Ljava/lang/Object;
.source "FilterTiltShift.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterTiltShift.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterTiltShift.kt\nandroidx/compose/material/icons/rounded/FilterTiltShiftKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,107:1\n212#2,12:108\n233#2,18:121\n253#2:158\n174#3:120\n705#4,2:139\n717#4,2:141\n719#4,11:147\n72#5,4:143\n*S KotlinDebug\n*F\n+ 1 FilterTiltShift.kt\nandroidx/compose/material/icons/rounded/FilterTiltShiftKt\n*L\n29#1:108,12\n30#1:121,18\n30#1:158\n29#1:120\n30#1:139,2\n30#1:141,2\n30#1:147,11\n30#1:143,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_filterTiltShift",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "FilterTiltShift",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getFilterTiltShift",
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
.field private static _filterTiltShift:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFilterTiltShift(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/FilterTiltShiftKt;->_filterTiltShift:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 112
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 120
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

    .line 112
    const-string v2, "Rounded.FilterTiltShift"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 131
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 136
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 137
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 143
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x404eb852    # 3.23f

    const/high16 v1, 0x41300000    # 11.0f

    .line 31
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40651eb8    # -1.21f

    const v6, -0x40828f5c    # -0.99f

    const/4 v1, 0x0

    const v2, -0x40dc28f6    # -0.64f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, -0x406f5c29    # -1.13f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fb851ec    # -3.12f

    const v6, 0x3fa66666    # 1.3f

    const v1, -0x4070a3d7    # -1.12f

    const v2, 0x3e851eb8    # 0.26f

    const v3, -0x3ff47ae1    # -2.18f

    const v4, 0x3f333333    # 0.7f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41dc28f6    # -0.16f

    const v6, 0x3fc66666    # 1.55f

    const v1, -0x40f851ec    # -0.53f

    const v2, 0x3eae147b    # 0.34f

    const v3, -0x40e3d70a    # -0.61f

    const v4, 0x3f8ccccd    # 1.1f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9ae148    # 1.21f

    const v6, 0x3e23d70a    # 0.16f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ecccccd    # 0.4f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40228f5c    # 2.54f

    const v6, -0x4079999a    # -1.05f

    const v1, 0x3f451eb8    # 0.77f

    const v2, -0x41051eb8    # -0.49f

    const v3, 0x3fcf5c29    # 1.62f

    const v4, -0x40a66666    # -0.85f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3d70a4    # 0.74f

    const v6, -0x4087ae14    # -0.97f

    const v1, 0x3ee147ae    # 0.44f

    const v2, -0x42333333    # -0.1f

    const v3, 0x3f3d70a4    # 0.74f

    const v4, -0x40fd70a4    # -0.51f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418aa3d7    # 17.33f

    const v1, 0x40633333    # 3.55f

    .line 39
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fb851ec    # -3.12f

    const v6, -0x4059999a    # -1.3f

    const v1, -0x408f5c29    # -0.94f

    const v2, -0x40e66666    # -0.6f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, -0x407ae148    # -1.04f

    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40651eb8    # -1.21f

    const v6, 0x3f7ae148    # 0.98f

    const v1, -0x40e147ae    # -0.62f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, -0x40651eb8    # -1.21f

    const v4, 0x3eae147b    # 0.34f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f3d70a4    # 0.74f

    const v6, 0x3f75c28f    # 0.96f

    const/4 v1, 0x0

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f5eb852    # 0.87f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4021eb85    # 2.53f

    const v6, 0x3f866666    # 1.05f

    const v1, 0x3f68f5c3    # 0.91f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3fe28f5c    # 1.77f

    const v4, 0x3f11eb85    # 0.57f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9ae148    # 1.21f

    const v6, -0x41dc28f6    # -0.16f

    const v1, 0x3ec7ae14    # 0.39f

    const v2, 0x3e75c28f    # 0.24f

    const v3, 0x3f63d70a    # 0.89f

    const v4, 0x3e2e147b    # 0.17f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41e66666    # -0.15f

    const v6, -0x403c28f6    # -1.53f

    const v1, 0x3eeb851f    # 0.46f

    const v2, -0x411eb852    # -0.44f

    const v3, 0x3ec7ae14    # 0.39f

    const v4, -0x4067ae14    # -1.19f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41a628f6    # 20.77f

    const/high16 v1, 0x41300000    # 11.0f

    .line 47
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f7d70a4    # 0.99f

    const v6, -0x40651eb8    # -1.21f

    const v1, 0x3f23d70a    # 0.64f

    const/4 v2, 0x0

    const v3, 0x3f90a3d7    # 1.13f

    const v4, -0x40e8f5c3    # -0.59f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4059999a    # -1.3f

    const v6, -0x3fb851ec    # -3.12f

    const v1, -0x417ae148    # -0.26f

    const v2, -0x4070a3d7    # -1.12f

    const v3, -0x40cccccd    # -0.7f

    const v4, -0x3ff47ae1    # -2.18f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4039999a    # -1.55f

    const v6, -0x41dc28f6    # -0.16f

    const v1, -0x4151eb85    # -0.34f

    const v2, -0x40f851ec    # -0.53f

    const v3, -0x40733333    # -1.1f

    const v4, -0x40e3d70a    # -0.61f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41dc28f6    # -0.16f

    const v6, 0x3f9ae148    # 1.21f

    const v1, -0x415c28f6    # -0.32f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x41333333    # -0.4f

    const v4, 0x3f547ae1    # 0.83f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f866666    # 1.05f

    const v6, 0x4021eb85    # 2.53f

    const v1, 0x3efae148    # 0.49f

    const v2, 0x3f451eb8    # 0.77f

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3fcf5c29    # 1.62f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f7851ec    # 0.97f

    const/high16 v6, 0x3f400000    # 0.75f

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3f028f5c    # 0.51f

    const/high16 v4, 0x3f400000    # 0.75f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a33333    # 5.1f

    const v1, 0x40d051ec    # 6.51f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4039999a    # -1.55f

    const v6, 0x3e23d70a    # 0.16f

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x4119999a    # -0.45f

    const v3, -0x40651eb8    # -1.21f

    const v4, -0x413d70a4    # -0.38f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4059999a    # -1.3f

    const v6, 0x4047ae14    # 3.12f

    const v1, -0x40e66666    # -0.6f

    const v2, 0x3f70a3d7    # 0.94f

    const v3, -0x407ae148    # -1.04f

    const/high16 v4, 0x40000000    # 2.0f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f7ae148    # 0.98f

    const v6, 0x3f9ae148    # 1.21f

    const v1, -0x41f0a3d7    # -0.14f

    const v2, 0x3f1eb852    # 0.62f

    const v3, 0x3eae147b    # 0.34f

    const v4, 0x3f9ae148    # 1.21f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f75c28f    # 0.96f

    const v6, -0x40c28f5c    # -0.74f

    const v1, 0x3ee66666    # 0.45f

    const/4 v2, 0x0

    const v3, 0x3f5eb852    # 0.87f

    const v4, -0x41666666    # -0.3f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f866666    # 1.05f

    const v6, -0x3fde147b    # -2.53f

    const v1, 0x3e4ccccd    # 0.2f

    const v2, -0x40970a3d    # -0.91f

    const v3, 0x3f11eb85    # 0.57f

    const v4, -0x401d70a4    # -1.77f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41f0a3d7    # -0.14f

    const v6, -0x4063d70a    # -1.22f

    const v1, 0x3e851eb8    # 0.26f

    const v2, -0x413851ec    # -0.39f

    const v3, 0x3e3851ec    # 0.18f

    const v4, -0x4099999a    # -0.9f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41500000    # 13.0f

    const v1, 0x404eb852    # 3.23f

    .line 63
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40828f5c    # -0.99f

    const v6, 0x3f9ae148    # 1.21f

    const v1, -0x40dc28f6    # -0.64f

    const/4 v2, 0x0

    const v3, -0x406f5c29    # -1.13f

    const v4, 0x3f170a3d    # 0.59f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, 0x4047ae14    # 3.12f

    const v1, 0x3e851eb8    # 0.26f

    const v2, 0x3f8f5c29    # 1.12f

    const v3, 0x3f333333    # 0.7f

    const v4, 0x400ae148    # 2.17f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc66666    # 1.55f

    const v6, 0x3e23d70a    # 0.16f

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3f0a3d71    # 0.54f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3f1c28f6    # 0.61f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e19999a    # 0.15f

    const v6, -0x40651eb8    # -1.21f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3ecccccd    # 0.4f

    const v4, -0x40ab851f    # -0.83f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4079999a    # -1.05f

    const v6, -0x3fde147b    # -2.53f

    const v1, -0x41051eb8    # -0.49f

    const v2, -0x40bd70a4    # -0.76f

    const v3, -0x40a66666    # -0.85f

    const v4, -0x4031eb85    # -1.61f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x408a3d71    # -0.96f

    const/high16 v6, -0x40c00000    # -0.75f

    const v1, -0x4247ae14    # -0.09f

    const v2, -0x4119999a    # -0.45f

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v4, -0x40c00000    # -0.75f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x41400000    # 12.0f

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3fc00000    # -3.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const/4 v1, 0x0

    const v2, -0x402b851f    # -1.66f

    const v3, -0x40547ae1    # -1.34f

    const/high16 v4, -0x3fc00000    # -3.0f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fab851f    # 1.34f

    const/high16 v1, -0x3fc00000    # -3.0f

    const/high16 v2, 0x40400000    # 3.0f

    .line 73
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40400000    # 3.0f

    .line 74
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40547ae1    # -1.34f

    const/high16 v1, -0x3fc00000    # -3.0f

    .line 75
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41973333    # 18.9f

    const v1, 0x418beb85    # 17.49f

    .line 77
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc66666    # 1.55f

    const v6, -0x41e66666    # -0.15f

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3f9ae148    # 1.21f

    const v4, 0x3ec28f5c    # 0.38f

    move-object v0, v7

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa66666    # 1.3f

    const v6, -0x3fb8f5c3    # -3.11f

    const v1, 0x3f19999a    # 0.6f

    const v2, -0x408f5c29    # -0.94f

    const v3, 0x3f851eb8    # 1.04f

    const/high16 v4, -0x40000000    # -2.0f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40851eb8    # -0.98f

    const v6, -0x40651eb8    # -1.21f

    const v1, 0x3e0f5c29    # 0.14f

    const v2, -0x40e147ae    # -0.62f

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x40651eb8    # -1.21f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x408a3d71    # -0.96f

    const v6, 0x3f3d70a4    # 0.74f

    const v1, -0x4119999a    # -0.45f

    const/4 v2, 0x0

    const v3, -0x40a147ae    # -0.87f

    const v4, 0x3e99999a    # 0.3f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4079999a    # -1.05f

    const v6, 0x4021eb85    # 2.53f

    const v1, -0x41b33333    # -0.2f

    const v2, 0x3f68f5c3    # 0.91f

    const v3, -0x40ee147b    # -0.57f

    const v4, 0x3fe147ae    # 1.76f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e0f5c29    # 0.14f

    const v6, 0x3f99999a    # 1.2f

    const v1, -0x417ae148    # -0.26f

    const v2, 0x3ebd70a4    # 0.37f

    const v3, -0x41c7ae14    # -0.18f

    const v4, 0x3f6147ae    # 0.88f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41500000    # 13.0f

    const v1, 0x41a628f6    # 20.77f

    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9ae148    # 1.21f

    const v6, 0x3f7d70a4    # 0.99f

    const/4 v1, 0x0

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3f90a3d7    # 1.13f

    move-object v0, v7

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4047ae14    # 3.12f

    const v6, -0x4059999a    # -1.3f

    const v1, 0x3f8f5c29    # 1.12f

    const v2, -0x417ae148    # -0.26f

    const v3, 0x400ae148    # 2.17f

    const v4, -0x40cccccd    # -0.7f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e23d70a    # 0.16f

    const v6, -0x4039999a    # -1.55f

    const v1, 0x3f0a3d71    # 0.54f

    const v2, -0x4151eb85    # -0.34f

    const v3, 0x3f1c28f6    # 0.61f

    const v4, -0x40733333    # -1.1f

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40651eb8    # -1.21f

    const v6, -0x41e66666    # -0.15f

    const v1, -0x415c28f6    # -0.32f

    const v2, -0x415c28f6    # -0.32f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x41333333    # -0.4f

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fde147b    # -2.53f

    const v6, 0x3f866666    # 1.05f

    const v1, -0x40bd70a4    # -0.76f

    const v2, 0x3efae148    # 0.49f

    const v3, -0x4031eb85    # -1.61f

    const v4, 0x3f59999a    # 0.85f

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40c00000    # -0.75f

    const v6, 0x3f75c28f    # 0.96f

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3db851ec    # 0.09f

    const/high16 v3, -0x40c00000    # -0.75f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40d570a4    # 6.67f

    const v1, 0x41a3999a    # 20.45f

    .line 93
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4047ae14    # 3.12f

    const v6, 0x3fa66666    # 1.3f

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x3f851eb8    # 1.04f

    move-object v0, v7

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9ae148    # 1.21f

    const v6, -0x40851eb8    # -0.98f

    const v1, 0x3f1eb852    # 0.62f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, 0x3f9ae148    # 1.21f

    const v4, -0x414ccccd    # -0.35f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c28f5c    # -0.74f

    const v6, -0x408a3d71    # -0.96f

    const/4 v1, 0x0

    const v2, -0x4119999a    # -0.45f

    const v3, -0x41666666    # -0.3f

    const v4, -0x40a147ae    # -0.87f

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fde147b    # -2.53f

    const v6, -0x4079999a    # -1.05f

    const v1, -0x40970a3d    # -0.91f

    const v2, -0x41b33333    # -0.2f

    const v3, -0x401d70a4    # -1.77f

    const v4, -0x40ee147b    # -0.57f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40651eb8    # -1.21f

    const v6, 0x3e23d70a    # 0.16f

    const v1, -0x413851ec    # -0.39f

    const v2, -0x418a3d71    # -0.24f

    const v3, -0x409c28f6    # -0.89f

    const v4, -0x41d1eb85    # -0.17f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e19999a    # 0.15f

    const v6, 0x3fc3d70a    # 1.53f

    const v1, -0x41147ae1    # -0.46f

    const v2, 0x3ee147ae    # 0.44f

    const v3, -0x413851ec    # -0.39f

    const v4, 0x3f9851ec    # 1.19f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 145
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

    .line 141
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/FilterTiltShiftKt;->_filterTiltShift:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
