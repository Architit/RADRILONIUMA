.class public final Landroidx/compose/material/icons/rounded/SickKt;
.super Ljava/lang/Object;
.source "Sick.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSick.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sick.kt\nandroidx/compose/material/icons/rounded/SickKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,94:1\n212#2,12:95\n233#2,18:108\n253#2:145\n174#3:107\n705#4,2:126\n717#4,2:128\n719#4,11:134\n72#5,4:130\n*S KotlinDebug\n*F\n+ 1 Sick.kt\nandroidx/compose/material/icons/rounded/SickKt\n*L\n29#1:95,12\n30#1:108,18\n30#1:145\n29#1:107\n30#1:126,2\n30#1:128,2\n30#1:134,11\n30#1:130,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_sick",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Sick",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getSick",
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
.field private static _sick:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSick(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/SickKt;->_sick:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 99
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 107
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

    .line 99
    const-string v2, "Rounded.Sick"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 118
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 123
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 124
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 130
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41b80000    # 23.0f

    const/high16 v1, 0x40e00000    # 7.0f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const v3, -0x4099999a    # -0.9f

    const/high16 v4, 0x40000000    # 2.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const/high16 v1, -0x40000000    # -2.0f

    .line 33
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fca3d71    # 1.58f

    const v6, -0x3fa8f5c3    # -3.36f

    const/4 v1, 0x0

    const v2, -0x40b851ec    # -0.78f

    const v3, 0x3f7d70a4    # 0.99f

    const v4, -0x3fe3d70a    # -2.44f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f570a3d    # 0.84f

    const/4 v6, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const v2, -0x416147ae    # -0.31f

    const v3, 0x3f23d70a    # 0.64f

    const v4, -0x416147ae    # -0.31f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41b80000    # 23.0f

    const/high16 v6, 0x40e00000    # 7.0f

    const v1, 0x41b0147b    # 22.01f

    const v2, 0x4091eb85    # 4.56f

    const/high16 v3, 0x41b80000    # 23.0f

    const v4, 0x40c70a3d    # 6.22f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41aee148    # 21.86f

    const v1, 0x4126147b    # 10.38f

    .line 38
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x41af851f    # 21.94f

    const v2, 0x412e8f5c    # 10.91f

    const/high16 v3, 0x41b00000    # 22.0f

    const v4, 0x41373333    # 11.45f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3edfd70a    # -10.01f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v1, 0x0

    const v2, 0x40b0a3d7    # 5.52f

    const v3, -0x3f70a3d7    # -4.48f

    const/high16 v4, 0x41200000    # 10.0f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x40cf0a3d    # 6.47f

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x418c28f6    # 17.52f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x413fd70a    # 11.99f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x40cf5c29    # 6.48f

    const v3, 0x40cf0a3d    # 6.47f

    const/high16 v4, 0x40000000    # 2.0f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40cdc28f    # 6.43f

    const v6, 0x4015c28f    # 2.34f

    const v1, 0x401ccccd    # 2.45f

    const/4 v2, 0x0

    const v3, 0x4096147b    # 4.69f

    const v4, 0x3f6147ae    # 0.88f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x418c0000    # 17.5f

    const/high16 v6, 0x40e00000    # 7.0f

    const v1, 0x418f47ae    # 17.91f

    const v2, 0x40a947ae    # 5.29f

    const/high16 v3, 0x418c0000    # 17.5f

    const v4, 0x40c8a3d7    # 6.27f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v6, 0x40600000    # 3.5f

    const/4 v1, 0x0

    const v2, 0x3ff70a3d    # 1.93f

    const v3, 0x3fc8f5c3    # 1.57f

    const/high16 v4, 0x40600000    # 3.5f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41aee148    # 21.86f

    const v6, 0x4126147b    # 10.38f

    const v1, 0x41aa6666    # 21.3f

    const/high16 v2, 0x41280000    # 10.5f

    const v3, 0x41aca3d7    # 21.58f

    const v4, 0x41273333    # 10.45f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41607ae1    # 14.03f

    const v1, 0x41207ae1    # 10.03f

    .line 48
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f87ae14    # 1.06f

    .line 49
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f87ae14    # 1.06f

    const/4 v6, 0x0

    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3e947ae1    # 0.29f

    const v3, 0x3f451eb8    # 0.77f

    const v4, 0x3e947ae1    # 0.29f

    move-object v0, v7

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x407851ec    # -1.06f

    const v2, -0x416b851f    # -0.29f

    const v3, 0x3e947ae1    # 0.29f

    const v4, -0x40bae148    # -0.77f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4179eb85    # 15.62f

    const/high16 v1, 0x41180000    # 9.5f

    .line 52
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40f851ec    # -0.53f

    const v1, 0x3f07ae14    # 0.53f

    .line 53
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e947ae1    # 0.29f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40bae148    # -0.77f

    const v1, -0x416b851f    # -0.29f

    const/4 v2, 0x0

    const v3, -0x407851ec    # -1.06f

    .line 55
    invoke-virtual {v7, v0, v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x407851ec    # -1.06f

    const v1, 0x3f87ae14    # 1.06f

    .line 56
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41607ae1    # 14.03f

    const v6, 0x41207ae1    # 10.03f

    const v1, 0x415bd70a    # 13.74f

    const v2, 0x411428f6    # 9.26f

    const v3, 0x415bd70a    # 13.74f

    const v4, 0x411bd70a    # 9.74f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4106147b    # 8.38f

    const/high16 v1, 0x41180000    # 9.5f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40f851ec    # -0.53f

    const v1, 0x3f07ae14    # 0.53f

    .line 60
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f87ae14    # 1.06f

    const v1, -0x416b851f    # -0.29f

    const v2, 0x3e947ae1    # 0.29f

    const v3, -0x416b851f    # -0.29f

    const v4, 0x3f451eb8    # 0.77f

    move-object v0, v7

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f87ae14    # 1.06f

    const/4 v6, 0x0

    const v1, 0x3e947ae1    # 0.29f

    const v3, 0x3f451eb8    # 0.77f

    const v4, 0x3e947ae1    # 0.29f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x407851ec    # -1.06f

    const v1, 0x3f87ae14    # 1.06f

    .line 63
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x407851ec    # -1.06f

    const v1, 0x3e947ae1    # 0.29f

    const v2, -0x416b851f    # -0.29f

    const v3, 0x3e947ae1    # 0.29f

    const v4, -0x40bae148    # -0.77f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x410e8f5c    # 8.91f

    const v1, 0x40fd1eb8    # 7.91f

    .line 65
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407851ec    # -1.06f

    const/4 v6, 0x0

    const v1, -0x416b851f    # -0.29f

    const v3, -0x40bae148    # -0.77f

    const v4, -0x416b851f    # -0.29f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f451eb8    # 0.77f

    const/4 v2, 0x0

    const v3, 0x3f87ae14    # 1.06f

    .line 67
    invoke-virtual {v7, v1, v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4106147b    # 8.38f

    const/high16 v1, 0x41180000    # 9.5f

    .line 68
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4183c28f    # 16.47f

    const v1, 0x417ccccd    # 15.8f

    .line 70
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f70f5c3    # -4.47f

    const v6, -0x3feccccd    # -2.3f

    const/high16 v1, -0x40800000    # -1.0f

    const v2, -0x404e147b    # -1.39f

    const v3, -0x3fd851ec    # -2.62f

    const v4, -0x3feccccd    # -2.3f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fe47ae1    # -2.43f

    const v6, 0x3f0f5c29    # 0.56f

    const v1, -0x40a147ae    # -0.87f

    const/4 v2, 0x0

    const v3, -0x4027ae14    # -1.69f

    const v4, 0x3e4ccccd    # 0.2f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40bfae14    # 5.99f

    const/high16 v1, 0x41400000    # 12.0f

    .line 73
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c28f5c    # -0.74f

    const v6, -0x405ae148    # -1.29f

    const/4 v1, 0x0

    const v2, -0x40fae148    # -0.52f

    const v3, -0x417ae148    # -0.26f

    const v4, -0x407d70a4    # -1.02f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff51eb8    # -2.17f

    const v6, 0x3f4ccccd    # 0.8f

    const v1, -0x40b33333    # -0.8f

    const v2, -0x41147ae1    # -0.46f

    const v3, -0x40147ae1    # -1.84f

    const v4, -0x421eb852    # -0.11f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee147ae    # 0.44f

    const v6, 0x3fd1eb85    # 1.64f

    const v1, -0x41a8f5c3    # -0.21f

    const v2, 0x3f11eb85    # 0.57f

    const v3, -0x430a3d71    # -0.03f

    const/high16 v4, 0x3fa00000    # 1.25f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fdc28f6    # 1.72f

    const v6, 0x3e23d70a    # 0.16f

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3ee147ae    # 0.44f

    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3ee66666    # 0.45f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x403e147b    # 2.97f

    const v1, 0x3fdc28f6    # 1.72f

    .line 78
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d1eb85    # -0.68f

    const v6, 0x3f47ae14    # 0.78f

    const/high16 v1, -0x41800000    # -0.25f

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x410a3d71    # -0.48f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v7

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41026666    # 8.15f

    const/high16 v6, 0x41880000    # 17.0f

    const v1, 0x40e570a4    # 7.17f

    const v2, 0x41826666    # 16.3f

    const v3, 0x40f0f5c3    # 7.53f

    const/high16 v4, 0x41880000    # 17.0f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f19999a    # 0.6f

    const v6, -0x41666666    # -0.3f

    const v1, 0x3e6b851f    # 0.23f

    const/4 v2, 0x0

    const v3, 0x3eeb851f    # 0.46f

    const v4, -0x42333333    # -0.1f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41700000    # 15.0f

    const v1, 0x4117851f    # 9.47f

    const v2, 0x417ae148    # 15.68f

    const v3, 0x412a6666    # 10.65f

    const/high16 v4, 0x41700000    # 15.0f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40500000    # 3.25f

    const v1, 0x3fd9999a    # 1.7f

    const v2, 0x4021eb85    # 2.53f

    const v3, 0x3f2e147b    # 0.68f

    .line 83
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3e99999a    # 0.3f

    const v1, 0x3e0f5c29    # 0.14f

    const v2, 0x3e428f5c    # 0.19f

    const v3, 0x3eb851ec    # 0.36f

    const v4, 0x3e99999a    # 0.3f

    move-object v0, v7

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4183c28f    # 16.47f

    const v6, 0x417ccccd    # 15.8f

    const v1, 0x4183c28f    # 16.47f

    const/high16 v2, 0x41880000    # 17.0f

    const v3, 0x4186a3d7    # 16.83f

    const v4, 0x41826666    # 16.3f

    move-object v0, v7

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
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

    .line 128
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/SickKt;->_sick:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
