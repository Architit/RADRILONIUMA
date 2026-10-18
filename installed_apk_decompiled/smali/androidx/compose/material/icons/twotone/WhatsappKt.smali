.class public final Landroidx/compose/material/icons/twotone/WhatsappKt;
.super Ljava/lang/Object;
.source "Whatsapp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatsapp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Whatsapp.kt\nandroidx/compose/material/icons/twotone/WhatsappKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,86:1\n212#2,12:87\n233#2,18:100\n253#2:137\n174#3:99\n705#4,2:118\n717#4,2:120\n719#4,11:126\n72#5,4:122\n*S KotlinDebug\n*F\n+ 1 Whatsapp.kt\nandroidx/compose/material/icons/twotone/WhatsappKt\n*L\n29#1:87,12\n30#1:100,18\n30#1:137\n29#1:99\n30#1:118,2\n30#1:120,2\n30#1:126,11\n30#1:122,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_whatsapp",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Whatsapp",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getWhatsapp",
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
.field private static _whatsapp:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWhatsapp(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/WhatsappKt;->_whatsapp:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 91
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 99
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

    .line 91
    const-string v2, "TwoTone.Whatsapp"

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 110
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    .line 115
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 116
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    .line 122
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x41986666    # 19.05f

    const v1, 0x409d1eb8    # 4.91f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4140a3d7    # 12.04f

    const/high16 v6, 0x40000000    # 2.0f

    const v1, 0x418970a4    # 17.18f

    const v2, 0x4041eb85    # 3.03f

    const v3, 0x416b0a3d    # 14.69f

    const/high16 v4, 0x40000000    # 2.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ee170a4    # -9.91f

    const v6, 0x411e8f5c    # 9.91f

    const v1, -0x3f5147ae    # -5.46f

    const/4 v2, 0x0

    const v3, -0x3ee170a4    # -9.91f

    const v4, 0x408e6666    # 4.45f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fa8f5c3    # 1.32f

    const v6, 0x409e6666    # 4.95f

    const/4 v1, 0x0

    const/high16 v2, 0x3fe00000    # 1.75f

    const v3, 0x3eeb851f    # 0.46f

    const v4, 0x405ccccd    # 3.45f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40033333    # 2.05f

    const/high16 v1, 0x41b00000    # 22.0f

    .line 35
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40a80000    # 5.25f

    const v1, -0x404f5c29    # -1.38f

    .line 36
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4097ae14    # 4.74f

    const v6, 0x3f9ae148    # 1.21f

    const v1, 0x3fb9999a    # 1.45f

    const v2, 0x3f4a3d71    # 0.79f

    const v3, 0x40451eb8    # 3.08f

    const v4, 0x3f9ae148    # 1.21f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x411e8f5c    # 9.91f

    const v6, -0x3ee170a4    # -9.91f

    const v1, 0x40aeb852    # 5.46f

    const v3, 0x411e8f5c    # 9.91f

    const v4, -0x3f71999a    # -4.45f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41986666    # 19.05f

    const v6, 0x409d1eb8    # 4.91f

    const v1, 0x41af999a    # 21.95f

    const v2, 0x411451ec    # 9.27f

    const v3, 0x41a75c29    # 20.92f

    const v4, 0x40d8f5c3    # 6.78f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41a13333    # 20.15f

    const v1, 0x4140a3d7    # 12.04f

    .line 43
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f79999a    # -4.2f

    const v6, -0x406ccccd    # -1.15f

    const v1, -0x40428f5c    # -1.48f

    const/4 v2, 0x0

    const v3, -0x3fc47ae1    # -2.93f

    const v4, -0x41333333    # -0.4f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41666666    # -0.3f

    const v1, -0x41c7ae14    # -0.18f

    .line 46
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fb851ec    # -3.12f

    const v1, 0x3f51eb85    # 0.82f

    .line 47
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f547ae1    # 0.83f

    const v1, -0x3fbd70a4    # -3.04f

    .line 48
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41b33333    # -0.2f

    const v1, -0x416147ae    # -0.31f

    .line 49
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x405eb852    # -1.26f

    const v6, -0x3f73d70a    # -4.38f

    const v1, -0x40ae147b    # -0.82f

    const v2, -0x405851ec    # -1.31f

    const v3, -0x405eb852    # -1.26f

    const v4, -0x3fcae148    # -2.83f

    move-object v0, v7

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4103d70a    # 8.24f

    const v6, -0x3efc28f6    # -8.24f

    const/4 v1, 0x0

    const v2, -0x3f6eb852    # -4.54f

    const v3, 0x406ccccd    # 3.7f

    const v4, -0x3efc28f6    # -8.24f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40ba3d71    # 5.82f

    const v6, 0x401ae148    # 2.42f

    const v1, 0x400ccccd    # 2.2f

    const/4 v2, 0x0

    const v3, 0x4088a3d7    # 4.27f

    const v4, 0x3f5c28f6    # 0.86f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x401a3d71    # 2.41f

    const v6, 0x40ba8f5c    # 5.83f

    const v1, 0x3fc7ae14    # 1.56f

    const v2, 0x3fc7ae14    # 1.56f

    const v3, 0x401a3d71    # 2.41f

    const v4, 0x406851ec    # 3.63f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4140a3d7    # 12.04f

    const v6, 0x41a13333    # 20.15f

    const v1, 0x41a23d71    # 20.28f

    const v2, 0x4183ae14    # 16.46f

    const v3, 0x4184a3d7    # 16.58f

    const v4, 0x41a13333    # 20.15f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x415fd70a    # 13.99f

    const v1, 0x41847ae1    # 16.56f

    .line 56
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4027ae14    # -1.69f

    const v6, -0x40b0a3d7    # -0.81f

    const/high16 v1, -0x41800000    # -0.25f

    const v2, -0x420a3d71    # -0.12f

    const v3, -0x4043d70a    # -1.47f

    const v4, -0x40c7ae14    # -0.72f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const v6, 0x3df5c28f    # 0.12f

    const v1, -0x41947ae1    # -0.23f

    const v2, -0x425c28f6    # -0.08f

    const v3, -0x413851ec    # -0.39f

    const v4, -0x420a3d71    # -0.12f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f7851ec    # 0.97f

    const v1, -0x41d1eb85    # -0.17f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, -0x40dc28f6    # -0.64f

    const v4, 0x3f4f5c29    # 0.81f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f5c28f    # -0.54f

    const v6, 0x3d75c28f    # 0.06f

    const v1, -0x41f0a3d7    # -0.14f

    const v2, 0x3e2e147b    # 0.17f

    const v3, -0x416b851f    # -0.29f

    const v4, 0x3e428f5c    # 0.19f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x400147ae    # -1.99f

    const v6, -0x40628f5c    # -1.23f

    const/high16 v1, -0x41800000    # -0.25f

    const v2, -0x420a3d71    # -0.12f

    const v3, -0x4079999a    # -1.05f

    const v4, -0x413851ec    # -0.39f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x404f5c29    # -1.38f

    const v6, -0x4023d70a    # -1.72f

    const v1, -0x40c28f5c    # -0.74f

    const v2, -0x40d70a3d    # -0.66f

    const v3, -0x40628f5c    # -1.23f

    const v4, -0x4043d70a    # -1.47f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3de147ae    # 0.11f

    const v6, -0x40fd70a4    # -0.51f

    const v1, -0x41f0a3d7    # -0.14f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, -0x435c28f6    # -0.02f

    const v4, -0x413d70a4    # -0.38f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x4123d70a    # -0.43f

    const v1, 0x3de147ae    # 0.11f

    const v2, -0x421eb852    # -0.11f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, -0x416b851f    # -0.29f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, -0x412e147b    # -0.41f

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, 0x3e2e147b    # 0.17f

    const/high16 v4, -0x41800000    # -0.25f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x435c28f6    # -0.02f

    const v6, -0x4123d70a    # -0.43f

    const v1, 0x3da3d70a    # 0.08f

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3d23d70a    # 0.04f

    const v4, -0x416147ae    # -0.31f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40bd70a4    # -0.76f

    const v6, -0x40147ae1    # -1.84f

    const v1, -0x428a3d71    # -0.06f

    const v2, -0x420a3d71    # -0.12f

    const v3, -0x40f0a3d7    # -0.56f

    const v4, -0x40547ae1    # -1.34f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const v6, -0x4123d70a    # -0.43f

    const v1, -0x41b33333    # -0.2f

    const v2, -0x410a3d71    # -0.48f

    const v3, -0x412e147b    # -0.41f

    const v4, -0x4128f5c3    # -0.42f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41087ae1    # 8.53f

    const v6, 0x40ea8f5c    # 7.33f

    const v1, 0x410dc28f    # 8.86f

    const v2, 0x40ea8f5c    # 7.33f

    const v3, 0x410b3333    # 8.7f

    const v4, 0x40ea8f5c    # 7.33f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40d70a3d    # -0.66f

    const v6, 0x3e9eb852    # 0.31f

    const v1, -0x41d1eb85    # -0.17f

    const/4 v2, 0x0

    const v3, -0x4123d70a    # -0.43f

    const v4, 0x3d75c28f    # 0.06f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40e051ec    # 7.01f

    const v6, 0x411b5c29    # 9.71f

    const v1, 0x40f4cccd    # 7.65f

    const v2, 0x40fc7ae1    # 7.89f

    const v3, 0x40e051ec    # 7.01f

    const v4, 0x4107d70a    # 8.49f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8147ae    # 1.01f

    const v6, 0x4023d70a    # 2.56f

    const/4 v1, 0x0

    const v2, 0x3f9c28f6    # 1.22f

    const v3, 0x3f63d70a    # 0.89f

    const v4, 0x4019999a    # 2.4f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40875c29    # 4.23f

    const v6, 0x406f5c29    # 3.74f

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3e2e147b    # 0.17f

    const/high16 v3, 0x3fe00000    # 1.75f

    const v4, 0x402ae148    # 2.67f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fb47ae1    # 1.41f

    const v6, 0x3f051eb8    # 0.52f

    const v1, 0x3f170a3d    # 0.59f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3f866666    # 1.05f

    const v4, 0x3ed1eb85    # 0.41f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fc7ae14    # 1.56f

    const v6, 0x3dcccccd    # 0.1f

    const v2, 0x3e428f5c    # 0.19f

    const v3, 0x3f90a3d7    # 1.13f

    const v4, 0x3e23d70a    # 0.16f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd5c28f    # 1.67f

    const v6, -0x4068f5c3    # -1.18f

    const v1, 0x3ef5c28f    # 0.48f

    const v2, -0x4270a3d7    # -0.07f

    const v3, 0x3fbc28f6    # 1.47f

    const v4, -0x40e66666    # -0.6f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e0f5c29    # 0.14f

    const v1, 0x3e570a3d    # 0.21f

    const v2, -0x40eb851f    # -0.58f

    const v3, 0x3e570a3d    # 0.21f

    const v4, -0x40770a3d    # -1.07f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41867ae1    # 16.81f

    const v1, 0x4161c28f    # 14.11f

    const v2, 0x415fd70a    # 13.99f

    const v3, 0x41847ae1    # 16.56f

    .line 78
    invoke-virtual {v7, v0, v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
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

    .line 120
    const-string v16, ""

    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/WhatsappKt;->_whatsapp:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
