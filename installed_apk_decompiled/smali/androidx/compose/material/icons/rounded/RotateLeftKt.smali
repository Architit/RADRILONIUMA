.class public final Landroidx/compose/material/icons/rounded/RotateLeftKt;
.super Ljava/lang/Object;
.source "RotateLeft.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotateLeft.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotateLeft.kt\nandroidx/compose/material/icons/rounded/RotateLeftKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,87:1\n212#2,12:88\n233#2,18:101\n253#2:138\n174#3:100\n705#4,2:119\n717#4,2:121\n719#4,11:127\n72#5,4:123\n*S KotlinDebug\n*F\n+ 1 RotateLeft.kt\nandroidx/compose/material/icons/rounded/RotateLeftKt\n*L\n35#1:88,12\n36#1:101,18\n36#1:138\n35#1:100\n36#1:119,2\n36#1:121,2\n36#1:127,11\n36#1:123,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001e\u0010\u0002\u001a\u00020\u0001*\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "_rotateLeft",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "RotateLeft",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getRotateLeft$annotations",
        "(Landroidx/compose/material/icons/Icons$Rounded;)V",
        "getRotateLeft",
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
.field private static _rotateLeft:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getRotateLeft(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 32
    sget-object v0, Landroidx/compose/material/icons/rounded/RotateLeftKt;->_rotateLeft:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 92
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 100
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

    .line 92
    const-string v2, "Rounded.RotateLeft"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 111
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 116
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 117
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 123
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x40d1eb85    # 6.56f

    const v1, 0x40ff5c29    # 7.98f

    .line 37
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40a00000    # 5.0f

    const v6, 0x4102b852    # 8.17f

    const v1, 0x40c33333    # 6.1f

    const v2, 0x40f0a3d7    # 7.52f

    const v3, 0x40a9eb85    # 5.31f

    const v4, 0x40f33333    # 7.6f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d47ae1    # -0.67f

    const v6, 0x3fca3d71    # 1.58f

    const v1, -0x4170a3d7    # -0.28f

    const v2, 0x3f028f5c    # 0.51f

    const/high16 v3, -0x41000000    # -0.5f

    const v4, 0x3f83d70a    # 1.03f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f75c28f    # 0.96f

    const/high16 v6, 0x3fa00000    # 1.25f

    const v1, -0x41bd70a4    # -0.19f

    const v2, 0x3f2147ae    # 0.63f

    const v3, 0x3e9eb852    # 0.31f

    const/high16 v4, 0x3fa00000    # 1.25f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3c23d70a    # 0.01f

    .line 41
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f70a3d7    # 0.94f

    const v6, -0x40cccccd    # -0.7f

    const v1, 0x3edc28f6    # 0.43f

    const/4 v2, 0x0

    const v3, 0x3f51eb85    # 0.82f

    const v4, -0x4170a3d7    # -0.28f

    move-object v0, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ef5c28f    # 0.48f

    const v6, -0x406a3d71    # -1.17f

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x41333333    # -0.4f

    const v3, 0x3e8f5c29    # 0.28f

    const v4, -0x40b5c28f    # -0.79f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41dc28f6    # -0.16f

    const v6, -0x406ccccd    # -1.15f

    const v1, 0x3e6147ae    # 0.22f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x3e19999a    # 0.15f

    const v4, -0x40a8f5c3    # -0.84f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a9eb85    # 5.31f

    const/high16 v1, 0x41500000    # 13.0f

    .line 46
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x435c28f6    # -0.02f

    .line 47
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x408a3d71    # -0.96f

    const/high16 v6, 0x3fa00000    # 1.25f

    const v1, -0x40d9999a    # -0.65f

    const/4 v2, 0x0

    const v3, -0x406ccccd    # -1.15f

    const v4, 0x3f1eb852    # 0.62f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f28f5c3    # 0.66f

    const v6, 0x3fca3d71    # 1.58f

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3f0a3d71    # 0.54f

    const v3, 0x3ec28f5c    # 0.38f

    const v4, 0x3f88f5c3    # 1.07f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc8f5c3    # 1.57f

    const v6, 0x3e4ccccd    # 0.2f

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3f11eb85    # 0.57f

    const v3, 0x3f8e147b    # 1.11f

    const v4, 0x3f28f5c3    # 0.66f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e2e147b    # 0.17f

    const v6, -0x406ccccd    # -1.15f

    const v1, 0x3e99999a    # 0.3f

    const v2, -0x416147ae    # -0.31f

    const v3, 0x3ec28f5c    # 0.38f

    const v4, -0x40bae148    # -0.77f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x410a3d71    # -0.48f

    const v6, -0x406b851f    # -1.16f

    const v1, -0x41b33333    # -0.2f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x4147ae14    # -0.36f

    const v4, -0x40bd70a4    # -0.76f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x408f5c29    # -0.94f

    const v6, -0x40c7ae14    # -0.72f

    const v1, -0x420a3d71    # -0.12f

    const v2, -0x411eb852    # -0.44f

    const v3, -0x40fd70a4    # -0.51f

    const v4, -0x40c7ae14    # -0.72f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41028f5c    # 8.16f

    const v1, 0x419828f6    # 19.02f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fcb851f    # 1.59f

    const v6, 0x3f28f5c3    # 0.66f

    const v1, 0x3f028f5c    # 0.51f

    const v2, 0x3e8f5c29    # 0.28f

    const v3, 0x3f851eb8    # 1.04f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9eb852    # 1.24f

    const v6, -0x408a3d71    # -0.96f

    const v1, 0x3f1eb852    # 0.62f

    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3f9eb852    # 1.24f

    const v4, -0x415c28f6    # -0.32f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x430a3d71    # -0.03f

    .line 58
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40cccccd    # -0.7f

    const v6, -0x408f5c29    # -0.94f

    const/4 v1, 0x0

    const v2, -0x4123d70a    # -0.43f

    const v3, -0x4170a3d7    # -0.28f

    const v4, -0x40ae147b    # -0.82f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406ccccd    # -1.15f

    const v6, -0x410a3d71    # -0.48f

    const v1, -0x41333333    # -0.4f

    const v2, -0x420a3d71    # -0.12f

    const v3, -0x40b851ec    # -0.78f

    const v4, -0x4170a3d7    # -0.28f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x406b851f    # -1.16f

    const v6, 0x3e2e147b    # 0.17f

    const v1, -0x413d70a4    # -0.38f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, -0x40a3d70a    # -0.86f

    const v4, -0x41f0a3d7    # -0.14f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3cf5c28f    # 0.03f

    const v1, -0x430a3d71    # -0.03f

    .line 62
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3fc66666    # 1.55f

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3ee66666    # 0.45f

    const v3, -0x4147ae14    # -0.36f

    const v4, 0x3f9eb852    # 1.24f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40823d71    # 4.07f

    const/high16 v1, 0x41500000    # 13.0f

    .line 65
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d70a3d    # -0.66f

    .line 66
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40251eb8    # -1.71f

    const v6, -0x40ca3d71    # -0.71f

    const/4 v1, 0x0

    const v2, -0x409c28f6    # -0.89f

    const v3, -0x4075c28f    # -1.08f

    const v4, -0x40547ae1    # -1.34f

    move-object v0, v7

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4112b852    # 9.17f

    const v1, 0x409a8f5c    # 4.83f

    .line 68
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3fb70a3d    # 1.43f

    const v1, -0x41333333    # -0.4f

    const v2, 0x3ecccccd    # 0.4f

    const v3, -0x41333333    # -0.4f

    const v4, 0x3f851eb8    # 1.04f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400851ec    # 2.13f

    const v1, 0x40051eb8    # 2.08f

    .line 70
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd9999a    # 1.7f

    const v6, -0x40c7ae14    # -0.72f

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3f1eb852    # 0.62f

    const v3, 0x3fd9999a    # 1.7f

    const v4, 0x3e2e147b    # 0.17f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40c2e148    # 6.09f

    const/high16 v1, 0x41500000    # 13.0f

    .line 72
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40a00000    # 5.0f

    const v6, 0x40bd1eb8    # 5.91f

    const v1, 0x4035c28f    # 2.84f

    const v2, 0x3ef5c28f    # 0.48f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x403c28f6    # 2.94f

    move-object v0, v7

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f75c28f    # -4.32f

    const/high16 v6, 0x40b80000    # 5.75f

    const/4 v1, 0x0

    const v2, 0x402eb852    # 2.73f

    const v3, -0x40170a3d    # -1.82f

    const v4, 0x40a0a3d7    # 5.02f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d1eb85    # -0.68f

    const v6, 0x3f70a3d7    # 0.94f

    const v1, -0x412e147b    # -0.41f

    const v2, 0x3df5c28f    # 0.12f

    const v3, -0x40d1eb85    # -0.68f

    const v4, 0x3f028f5c    # 0.51f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ca3d70a    # 0.02f

    .line 76
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f9d70a4    # 1.23f

    const v6, 0x3f75c28f    # 0.96f

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    const v3, 0x3f1c28f6    # 0.61f

    const v4, 0x3f91eb85    # 1.14f

    move-object v0, v7

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x418c8f5c    # 17.57f

    const v2, 0x4195ae14    # 18.71f

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, 0x417a3d71    # 15.64f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3f200000    # -7.0f

    const v6, -0x3f023d71    # -7.93f

    const/4 v1, 0x0

    const v2, -0x3f7d70a4    # -4.08f

    const v3, -0x3fbccccd    # -3.05f

    const v4, -0x3f11eb85    # -7.44f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
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

    .line 121
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 35
    sput-object v0, Landroidx/compose/material/icons/rounded/RotateLeftKt;->_rotateLeft:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic getRotateLeft$annotations(Landroidx/compose/material/icons/Icons$Rounded;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use the AutoMirrored version at Icons.AutoMirrored.Rounded.RotateLeft"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Icons.AutoMirrored.Rounded.RotateLeft"
            imports = {
                "androidx.compose.material.icons.automirrored.rounded.RotateLeft"
            }
        .end subannotation
    .end annotation

    return-void
.end method
