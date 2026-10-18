.class public final Landroidx/compose/material/icons/sharp/FingerprintKt;
.super Ljava/lang/Object;
.source "Fingerprint.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFingerprint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Fingerprint.kt\nandroidx/compose/material/icons/sharp/FingerprintKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,115:1\n212#2,12:116\n233#2,18:129\n253#2:166\n174#3:128\n705#4,2:147\n717#4,2:149\n719#4,11:155\n72#5,4:151\n*S KotlinDebug\n*F\n+ 1 Fingerprint.kt\nandroidx/compose/material/icons/sharp/FingerprintKt\n*L\n29#1:116,12\n30#1:129,18\n30#1:166\n29#1:128\n30#1:147,2\n30#1:149,2\n30#1:155,11\n30#1:151,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_fingerprint",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Fingerprint",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getFingerprint",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _fingerprint:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFingerprint(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/FingerprintKt;->_fingerprint:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 120
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

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
    const-string v2, "Sharp.Fingerprint"

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
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x418e7ae1    # 17.81f

    const v1, 0x408f0a3d    # 4.47f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41947ae1    # -0.23f

    const v6, -0x428a3d71    # -0.06f

    const v1, -0x425c28f6    # -0.08f

    const/4 v2, 0x0

    const v3, -0x41dc28f6    # -0.16f

    const v4, -0x435c28f6    # -0.02f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x40400000    # 3.0f

    const v1, 0x417a8f5c    # 15.66f

    const v2, 0x405ae148    # 3.42f

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x40400000    # 3.0f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f4dc28f    # -5.57f

    const v6, 0x3fb47ae1    # 1.41f

    const v1, -0x40028f5c    # -1.98f

    const/4 v2, 0x0

    const v3, -0x3f88f5c3    # -3.86f

    const v4, 0x3ef0a3d7    # 0.47f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d1eb85    # -0.68f

    const v6, -0x41b33333    # -0.2f

    const v1, -0x418a3d71    # -0.24f

    const v2, 0x3e051eb8    # 0.13f

    const v3, -0x40f5c28f    # -0.54f

    const v4, 0x3d23d70a    # 0.04f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e4ccccd    # 0.2f

    const v6, -0x40d1eb85    # -0.68f

    const v1, -0x41fae148    # -0.13f

    const v2, -0x418a3d71    # -0.24f

    const v3, -0x42dc28f6    # -0.04f

    const v4, -0x40f33333    # -0.55f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, 0x40fa3d71    # 7.82f

    const v2, 0x402147ae    # 2.52f

    const v3, 0x411dc28f    # 9.86f

    const/high16 v4, 0x40000000    # 2.0f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40c0f5c3    # 6.03f

    const v6, 0x3fc28f5c    # 1.52f

    const v1, 0x400851ec    # 2.13f

    const/4 v2, 0x0

    const v3, 0x407f5c29    # 3.99f

    const v4, 0x3ef0a3d7    # 0.47f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3e051eb8    # 0.13f

    const v3, 0x3eae147b    # 0.34f

    const v4, 0x3edc28f6    # 0.43f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x411eb852    # -0.44f

    const v6, 0x3e8f5c29    # 0.28f

    const v1, -0x4247ae14    # -0.09f

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x417ae148    # -0.26f

    const v4, 0x3e8f5c29    # 0.28f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40600000    # 3.5f

    const v1, 0x411b851f    # 9.72f

    .line 42
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x416b851f    # -0.29f

    const v6, -0x4247ae14    # -0.09f

    const v1, -0x42333333    # -0.1f

    const/4 v2, 0x0

    const v3, -0x41b33333    # -0.2f

    const v4, -0x430a3d71    # -0.03f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x420a3d71    # -0.12f

    const v6, -0x40cccccd    # -0.7f

    const v1, -0x41947ae1    # -0.23f

    const v2, -0x41dc28f6    # -0.16f

    const v3, -0x4170a3d7    # -0.28f

    const v4, -0x410f5c29    # -0.47f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40700000    # 3.75f

    const v6, -0x3faeb852    # -3.27f

    const v1, 0x3f7d70a4    # 0.99f

    const v2, -0x404ccccd    # -1.4f

    const/high16 v3, 0x40100000    # 2.25f

    const/high16 v4, -0x3fe00000    # -2.5f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41893333    # 17.15f

    const v6, 0x40b4cccd    # 5.65f

    const v1, 0x411fae14    # 9.98f

    const v2, 0x408147ae    # 4.04f

    const/high16 v3, 0x41600000    # 14.0f

    const v4, 0x4080f5c3    # 4.03f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40700000    # 3.75f

    const/high16 v6, 0x40500000    # 3.25f

    const/high16 v1, 0x3fc00000    # 1.5f

    const v2, 0x3f451eb8    # 0.77f

    const v3, 0x4030a3d7    # 2.76f

    const v4, 0x3fee147b    # 1.86f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x420a3d71    # -0.12f

    const v6, 0x3f333333    # 0.7f

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3de147ae    # 0.11f

    const v4, 0x3f0a3d71    # 0.54f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40cccccd    # -0.7f

    const v6, -0x420a3d71    # -0.12f

    const v1, -0x41947ae1    # -0.23f

    const v2, 0x3e23d70a    # 0.16f

    const v3, -0x40f5c28f    # -0.54f

    const v4, 0x3de147ae    # 0.11f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fa70a3d    # -3.39f

    const v6, -0x3fc3d70a    # -2.94f

    const v1, -0x4099999a    # -0.9f

    const v2, -0x405eb852    # -1.26f

    const v3, -0x3ffd70a4    # -2.04f

    const/high16 v4, -0x3ff00000    # -2.25f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ee9999a    # -9.4f

    const v6, 0x3c23d70a    # 0.01f

    const v1, -0x3fc851ec    # -2.87f

    const v2, -0x4043d70a    # -1.47f

    const v3, -0x3f2eb852    # -6.54f

    const v4, -0x4043d70a    # -1.47f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fa66666    # -3.4f

    const v6, 0x403d70a4    # 2.96f

    const v1, -0x4051eb85    # -1.36f

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, -0x3fe00000    # -2.5f

    const v4, 0x3fd9999a    # 1.7f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x413851ec    # -0.39f

    const v6, 0x3e570a3d    # 0.21f

    const v1, -0x425c28f6    # -0.08f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, -0x41947ae1    # -0.23f

    const v4, 0x3e570a3d    # 0.21f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x411c0000    # 9.75f

    const v1, 0x41ae51ec    # 21.79f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x414ccccd    # -0.35f

    const v6, -0x41e66666    # -0.15f

    const v1, -0x41fae148    # -0.13f

    const/4 v2, 0x0

    const v3, -0x417ae148    # -0.26f

    const v4, -0x42b33333    # -0.05f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fff5c29    # -2.01f

    const v6, -0x3fd70a3d    # -2.64f

    const v1, -0x40a147ae    # -0.87f

    const v2, -0x40a147ae    # -0.87f

    const v3, -0x40547ae1    # -1.34f

    const v4, -0x4048f5c3    # -1.43f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4079999a    # -1.05f

    const v6, -0x3f751eb8    # -4.34f

    const v1, -0x40cf5c29    # -0.69f

    const v2, -0x40628f5c    # -1.23f

    const v3, -0x4079999a    # -1.05f

    const v4, -0x3fd147ae    # -2.73f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40b51eb8    # 5.66f

    const v6, -0x3f53851f    # -5.39f

    const/4 v1, 0x0

    const v2, -0x3fc1eb85    # -2.97f

    const v3, 0x40228f5c    # 2.54f

    const v4, -0x3f53851f    # -5.39f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401ae148    # 2.42f

    const v1, 0x40ac7ae1    # 5.39f

    const v2, 0x40b51eb8    # 5.66f

    .line 60
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const v2, 0x3e8f5c29    # 0.28f

    const v3, -0x419eb852    # -0.22f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v7

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x419eb852    # -0.22f

    const/high16 v1, -0x41000000    # -0.5f

    .line 62
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f6ae148    # -4.66f

    const v6, -0x3f73851f    # -4.39f

    const/4 v1, 0x0

    const v2, -0x3fe51eb8    # -2.42f

    const v3, -0x3ffa3d71    # -2.09f

    const v4, -0x3f73851f    # -4.39f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ffc28f6    # 1.97f

    const v1, 0x408c7ae1    # 4.39f

    const v2, -0x3f6ae148    # -4.66f

    .line 64
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f6e147b    # 0.93f

    const v6, 0x40766666    # 3.85f

    const/4 v1, 0x0

    const v2, 0x3fb851ec    # 1.44f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, 0x403147ae    # 2.77f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3feccccd    # 1.85f

    const v6, 0x401ae148    # 2.42f

    const v1, 0x3f23d70a    # 0.64f

    const v2, 0x3f933333    # 1.15f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, 0x3fd1eb85    # 1.64f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f35c28f    # 0.71f

    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e428f5c    # 0.19f

    const v4, 0x3f028f5c    # 0.51f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e19999a    # 0.15f

    const v1, -0x421eb852    # -0.11f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x418a3d71    # -0.24f

    const v4, 0x3e19999a    # 0.15f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41875c29    # 16.92f

    const v1, 0x419f851f    # 19.94f

    .line 70
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fb9999a    # -3.1f

    const v6, -0x409c28f6    # -0.89f

    const v1, -0x4067ae14    # -1.19f

    const/4 v2, 0x0

    const v3, -0x3ff0a3d7    # -2.24f

    const v4, -0x41666666    # -0.3f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fe7ae14    # -2.38f

    const v6, -0x3f73851f    # -4.39f

    const v1, -0x404147ae    # -1.49f

    const v2, -0x407eb852    # -1.01f

    const v3, -0x3fe7ae14    # -2.38f

    const v4, -0x3fd66666    # -2.65f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v1, 0x0

    const v2, -0x4170a3d7    # -0.28f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, -0x41000000    # -0.5f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 74
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ff851ec    # 1.94f

    const v6, 0x4063d70a    # 3.56f

    const/4 v1, 0x0

    const v2, 0x3fb47ae1    # 1.41f

    const v3, 0x3f3851ec    # 0.72f

    const v4, 0x402f5c29    # 2.74f

    move-object v0, v7

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40228f5c    # 2.54f

    const v6, 0x3f35c28f    # 0.71f

    const v1, 0x3f35c28f    # 0.71f

    const v2, 0x3ef5c28f    # 0.48f

    const v3, 0x3fc51eb8    # 1.54f

    const v4, 0x3f35c28f    # 0.71f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f851eb8    # 1.04f

    const v6, -0x42333333    # -0.1f

    const v1, 0x3e75c28f    # 0.24f

    const/4 v2, 0x0

    const v3, 0x3f23d70a    # 0.64f

    const v4, -0x430a3d71    # -0.03f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f147ae1    # 0.58f

    const v6, 0x3ed1eb85    # 0.41f

    const v1, 0x3e8a3d71    # 0.27f

    const v2, -0x42b33333    # -0.05f

    const v3, 0x3f07ae14    # 0.53f

    const v4, 0x3e051eb8    # 0.13f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x412e147b    # -0.41f

    const v6, 0x3f147ae1    # 0.58f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x41fae148    # -0.13f

    const v4, 0x3f07ae14    # 0.53f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40651eb8    # -1.21f

    const v6, 0x3df5c28f    # 0.12f

    const v1, -0x40ee147b    # -0.57f

    const v2, 0x3de147ae    # 0.11f

    const v3, -0x40770a3d    # -1.07f

    const v4, 0x3df5c28f    # 0.12f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x416e8f5c    # 14.91f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 82
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41fae148    # -0.13f

    const v6, -0x435c28f6    # -0.02f

    const v1, -0x42dc28f6    # -0.04f

    const/4 v2, 0x0

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x43dc28f6    # -0.01f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f91eb85    # -3.72f

    const v6, -0x3ff9999a    # -2.1f

    const v1, -0x40347ae1    # -1.59f

    const v2, -0x411eb852    # -0.44f

    const v3, -0x3fd7ae14    # -2.63f

    const v4, -0x407c28f6    # -1.03f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff51eb8    # -2.17f

    const v6, -0x3f58f5c3    # -5.22f

    const v1, -0x404ccccd    # -1.4f

    const v2, -0x404e147b    # -1.39f

    const v3, -0x3ff51eb8    # -2.17f

    const v4, -0x3fb0a3d7    # -3.24f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40451eb8    # 3.08f

    const v6, -0x3fc3d70a    # -2.94f

    const/4 v1, 0x0

    const v2, -0x4030a3d7    # -1.62f

    const v3, 0x3fb0a3d7    # 1.38f

    const v4, -0x3fc3d70a    # -2.94f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fa8f5c3    # 1.32f

    const v1, 0x403c28f6    # 2.94f

    const v2, 0x40451eb8    # 3.08f

    .line 87
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40051eb8    # 2.08f

    const v6, 0x3ff851ec    # 1.94f

    const/4 v1, 0x0

    const v2, 0x3f88f5c3    # 1.07f

    const v3, 0x3f6e147b    # 0.93f

    const v4, 0x3ff851ec    # 1.94f

    move-object v0, v7

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40a147ae    # -0.87f

    const v1, -0x4007ae14    # -1.94f

    const v2, 0x40051eb8    # 2.08f

    .line 89
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, -0x3f180000    # -7.25f

    const v6, -0x3f2570a4    # -6.83f

    const/4 v1, 0x0

    const v2, -0x3f8eb852    # -3.77f

    const/high16 v3, -0x3fb00000    # -3.25f

    const v4, -0x3f2570a4    # -6.83f

    move-object v0, v7

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f2c7ae1    # -6.61f

    const v6, 0x4080f5c3    # 4.03f

    const v1, -0x3fca3d71    # -2.84f

    const/4 v2, 0x0

    const v3, -0x3f51eb85    # -5.44f

    const v4, 0x3fca3d71    # 1.58f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40e8f5c3    # -0.59f

    const v6, 0x40333333    # 2.8f

    const v1, -0x413851ec    # -0.39f

    const v2, 0x3f4f5c29    # 0.81f

    const v3, -0x40e8f5c3    # -0.59f

    const v4, 0x3fe147ae    # 1.76f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f2b851f    # 0.67f

    const v6, 0x40670a3d    # 3.61f

    const/4 v1, 0x0

    const v2, 0x3f47ae14    # 0.78f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x4000a3d7    # 2.01f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x416b851f    # -0.29f

    const v6, 0x3f23d70a    # 0.64f

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3e851eb8    # 0.26f

    const v3, -0x430a3d71    # -0.03f

    const v4, 0x3f0ccccd    # 0.55f

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40dc28f6    # -0.64f

    const v6, -0x416b851f    # -0.29f

    const v1, -0x417ae148    # -0.26f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x40f33333    # -0.55f

    const v4, -0x42dc28f6    # -0.04f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40c51eb8    # -0.73f

    const v6, -0x3f828f5c    # -3.96f

    const v1, -0x41051eb8    # -0.49f

    const v2, -0x405851ec    # -1.31f

    const v3, -0x40c51eb8    # -0.73f

    const v4, -0x3fd8f5c3    # -2.61f

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f2e147b    # 0.68f

    const v6, -0x3fb0a3d7    # -3.24f

    const/4 v1, 0x0

    const v2, -0x40666666    # -1.2f

    const v3, 0x3e6b851f    # 0.23f

    const v4, -0x3fed70a4    # -2.29f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40f051ec    # 7.51f

    const v6, -0x3f6ccccd    # -4.6f

    const v1, 0x3faa3d71    # 1.33f

    const v2, -0x3fcd70a4    # -2.79f

    const v3, 0x4088f5c3    # 4.28f

    const v4, -0x3f6ccccd    # -4.6f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41040000    # 8.25f

    const v6, 0x40fa8f5c    # 7.83f

    const v1, 0x4091999a    # 4.55f

    const/4 v2, 0x0

    const/high16 v3, 0x41040000    # 8.25f

    const v4, 0x4060a3d7    # 3.51f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fbae148    # -3.08f

    const v6, 0x403c28f6    # 2.94f

    const/4 v1, 0x0

    const v2, 0x3fcf5c29    # 1.62f

    const v3, -0x404f5c29    # -1.38f

    const v4, 0x403c28f6    # 2.94f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40570a3d    # -1.32f

    const v1, -0x3fc3d70a    # -2.94f

    const v2, -0x3fbae148    # -3.08f

    .line 101
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ffae148    # -2.08f

    const v6, -0x4007ae14    # -1.94f

    const/4 v1, 0x0

    const v2, -0x40770a3d    # -1.07f

    const v3, -0x4091eb85    # -0.93f

    const v4, -0x4007ae14    # -1.94f

    move-object v0, v7

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f5eb852    # 0.87f

    const v1, 0x3ff851ec    # 1.94f

    const v2, -0x3ffae148    # -2.08f

    .line 103
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fef5c29    # 1.87f

    const v6, 0x409051ec    # 4.51f

    const/4 v1, 0x0

    const v2, 0x3fdae148    # 1.71f

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x4053d70a    # 3.31f

    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x405147ae    # 3.27f

    const v6, 0x3feccccd    # 1.85f

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3f70a3d7    # 0.94f

    const v3, 0x3fee147b    # 1.86f

    const v4, 0x3fbae148    # 1.46f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3f1c28f6    # 0.61f

    const v1, 0x3e8a3d71    # 0.27f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3ed70a3d    # 0.42f

    const v4, 0x3eb33333    # 0.35f

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x410f5c29    # -0.47f

    const v6, 0x3ec28f5c    # 0.38f

    const v1, -0x42b33333    # -0.05f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x417ae148    # -0.26f

    const v4, 0x3ec28f5c    # 0.38f

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
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

    .line 149
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/sharp/FingerprintKt;->_fingerprint:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
