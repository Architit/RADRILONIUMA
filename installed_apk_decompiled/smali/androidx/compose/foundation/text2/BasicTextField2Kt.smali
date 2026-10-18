.class public final Landroidx/compose/foundation/text2/BasicTextField2Kt;
.super Ljava/lang/Object;
.source "BasicTextField2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTextField2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTextField2.kt\nandroidx/compose/foundation/text2/BasicTextField2Kt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,543:1\n25#2:544\n25#2:551\n25#2:567\n67#2,3:574\n66#2:577\n36#2:585\n36#2:592\n456#2,8:619\n464#2,3:633\n467#2,3:637\n1116#3,6:545\n1116#3,6:552\n1116#3,6:558\n1116#3,6:568\n1116#3,3:578\n1119#3,3:582\n1116#3,6:586\n1116#3,6:593\n1116#3,6:642\n74#4:564\n74#4:565\n74#4:566\n74#4:599\n74#4:600\n74#4:601\n1#5:581\n68#6,6:602\n74#6:636\n78#6:641\n79#7,11:608\n92#7:640\n3737#8,6:627\n81#9:648\n107#9,2:649\n*S KotlinDebug\n*F\n+ 1 BasicTextField2.kt\nandroidx/compose/foundation/text2/BasicTextField2Kt\n*L\n191#1:544\n201#1:551\n342#1:567\n347#1:574,3\n347#1:577\n358#1:585\n360#1:592\n424#1:619,8\n424#1:633,3\n424#1:637,3\n191#1:545,6\n201#1:552,6\n216#1:558,6\n342#1:568,6\n347#1:578,3\n347#1:582,3\n358#1:586,6\n360#1:593,6\n494#1:642,6\n336#1:564\n337#1:565\n338#1:566\n370#1:599\n371#1:600\n372#1:601\n424#1:602,6\n424#1:636\n424#1:641\n424#1:608,11\n424#1:640\n424#1:627,6\n201#1:648\n201#1:649,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u001a\u00d9\u0001\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u001628\u0008\u0002\u0010\u0017\u001a2\u0012\u0004\u0012\u00020\u0019\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0018\u00a2\u0006\u0002\u0008\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0007\u00a2\u0006\u0002\u0010)\u001a\u00ed\u0001\u0010\u0004\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00050-2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u001628\u0008\u0002\u0010\u0017\u001a2\u0012\u0004\u0012\u00020\u0019\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0018\u00a2\u0006\u0002\u0008\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0007\u00a2\u0006\u0002\u0010.\u001a\u0015\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0001\u00a2\u0006\u0002\u00102\u001a\u0015\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0001\u00a2\u0006\u0002\u00102\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u00a8\u00064\u00b2\u0006\n\u00105\u001a\u000206X\u008a\u008e\u0002"
    }
    d2 = {
        "DefaultTextFieldDecorator",
        "Landroidx/compose/foundation/text2/TextFieldDecorator;",
        "getDefaultTextFieldDecorator$annotations",
        "()V",
        "BasicTextField2",
        "",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "readOnly",
        "inputTransformation",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "lineLimits",
        "Landroidx/compose/foundation/text2/input/TextFieldLineLimits;",
        "onTextLayout",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "Lkotlin/ParameterName;",
        "name",
        "getResult",
        "Lkotlin/ExtensionFunctionType;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "codepointTransformation",
        "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
        "decorator",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "value",
        "",
        "onValueChange",
        "Lkotlin/Function1;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "TextFieldCursorHandle",
        "selectionState",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V",
        "TextFieldSelectionHandles",
        "foundation_release",
        "valueWithSelection",
        "Landroidx/compose/ui/text/input/TextFieldValue;"
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
.field private static final DefaultTextFieldDecorator:Landroidx/compose/foundation/text2/TextFieldDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 542
    sget-object v0, Landroidx/compose/foundation/text2/BasicTextField2Kt$DefaultTextFieldDecorator$1;->INSTANCE:Landroidx/compose/foundation/text2/BasicTextField2Kt$DefaultTextFieldDecorator$1;

    check-cast v0, Landroidx/compose/foundation/text2/TextFieldDecorator;

    sput-object v0, Landroidx/compose/foundation/text2/BasicTextField2Kt;->DefaultTextFieldDecorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    return-void
.end method

.method public static final BasicTextField2(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "Landroidx/compose/foundation/text2/input/TextFieldLineLimits;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v15, p16

    move/from16 v14, p17

    move/from16 v13, p18

    const v0, 0x1a0fdaba

    move-object/from16 v2, p15

    .line 335
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(BasicTextField2)P(13,9,3,11,4,14,7,6,8,10,5,1)331@19539L21,335@19712L7,336@19767L7,337@19812L7,343@20182L25,346@20295L598,357@21091L48,359@21175L319,369@21547L7,370@21611L7,371@21665L7,372@21677L440,385@22123L125,423@23614L2468:BasicTextField2.kt#g98mwb"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v15, 0x70

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v9, p1

    :goto_4
    and-int/lit8 v10, v13, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v4, v15, 0x380

    if-nez v4, :cond_8

    move/from16 v4, p2

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v3, v3, v16

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v4, p2

    :goto_7
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v5, v15, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v17

    goto :goto_8

    :cond_a
    move/from16 v20, v18

    :goto_8
    or-int v3, v3, v20

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v5, p3

    :goto_a
    and-int/lit8 v20, v13, 0x10

    const/16 v21, 0x2000

    const/16 v22, 0x4000

    if-eqz v20, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v7, p4

    goto :goto_c

    :cond_c
    const v23, 0xe000

    and-int v23, v15, v23

    move-object/from16 v7, p4

    if-nez v23, :cond_e

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v22

    goto :goto_b

    :cond_d
    move/from16 v24, v21

    :goto_b
    or-int v3, v3, v24

    :cond_e
    :goto_c
    and-int/lit8 v24, v13, 0x20

    if-eqz v24, :cond_f

    const/high16 v25, 0x30000

    or-int v3, v3, v25

    move-object/from16 v8, p5

    goto :goto_e

    :cond_f
    const/high16 v25, 0x70000

    and-int v25, v15, v25

    move-object/from16 v8, p5

    if-nez v25, :cond_11

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v26, 0x10000

    :goto_d
    or-int v3, v3, v26

    :cond_11
    :goto_e
    and-int/lit8 v26, v13, 0x40

    if-eqz v26, :cond_12

    const/high16 v27, 0x180000

    or-int v3, v3, v27

    move-object/from16 v11, p6

    goto :goto_10

    :cond_12
    const/high16 v27, 0x380000

    and-int v27, v15, v27

    move-object/from16 v11, p6

    if-nez v27, :cond_14

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    const/high16 v28, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v28, 0x80000

    :goto_f
    or-int v3, v3, v28

    :cond_14
    :goto_10
    and-int/lit16 v12, v13, 0x80

    if-eqz v12, :cond_15

    const/high16 v29, 0xc00000

    or-int v3, v3, v29

    move-object/from16 v0, p7

    goto :goto_12

    :cond_15
    const/high16 v29, 0x1c00000

    and-int v29, v15, v29

    move-object/from16 v0, p7

    if-nez v29, :cond_17

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v30, 0x400000

    :goto_11
    or-int v3, v3, v30

    :cond_17
    :goto_12
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_18

    const/high16 v30, 0x6000000

    or-int v3, v3, v30

    move-object/from16 v4, p8

    goto :goto_14

    :cond_18
    const/high16 v30, 0xe000000

    and-int v30, v15, v30

    move-object/from16 v4, p8

    if-nez v30, :cond_1a

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v30, 0x2000000

    :goto_13
    or-int v3, v3, v30

    :cond_1a
    :goto_14
    and-int/lit16 v4, v13, 0x200

    if-eqz v4, :cond_1b

    const/high16 v30, 0x30000000

    or-int v3, v3, v30

    move-object/from16 v5, p9

    goto :goto_16

    :cond_1b
    const/high16 v30, 0x70000000

    and-int v30, v15, v30

    move-object/from16 v5, p9

    if-nez v30, :cond_1d

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_15
    or-int v3, v3, v30

    :cond_1d
    :goto_16
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v19, v14, 0x6

    move-object/from16 v7, p10

    goto :goto_18

    :cond_1e
    and-int/lit8 v30, v14, 0xe

    move-object/from16 v7, p10

    if-nez v30, :cond_20

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v19, 0x4

    goto :goto_17

    :cond_1f
    const/16 v19, 0x2

    :goto_17
    or-int v19, v14, v19

    goto :goto_18

    :cond_20
    move/from16 v19, v14

    :goto_18
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v19, v19, 0x30

    goto :goto_1a

    :cond_21
    and-int/lit8 v30, v14, 0x70

    move-object/from16 v8, p11

    if-nez v30, :cond_23

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v23, 0x20

    goto :goto_19

    :cond_22
    const/16 v23, 0x10

    :goto_19
    or-int v19, v19, v23

    :cond_23
    :goto_1a
    move/from16 v8, v19

    and-int/lit16 v9, v13, 0x1000

    if-eqz v9, :cond_24

    or-int/lit16 v8, v8, 0x180

    goto :goto_1c

    :cond_24
    and-int/lit16 v11, v14, 0x380

    if-nez v11, :cond_26

    move-object/from16 v11, p12

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v27, 0x100

    goto :goto_1b

    :cond_25
    const/16 v27, 0x80

    :goto_1b
    or-int v8, v8, v27

    goto :goto_1d

    :cond_26
    :goto_1c
    move-object/from16 v11, p12

    :goto_1d
    and-int/lit16 v11, v13, 0x2000

    if-eqz v11, :cond_27

    or-int/lit16 v8, v8, 0xc00

    goto :goto_1f

    :cond_27
    and-int/lit16 v1, v14, 0x1c00

    if-nez v1, :cond_29

    move-object/from16 v1, p13

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    goto :goto_1e

    :cond_28
    move/from16 v17, v18

    :goto_1e
    or-int v8, v8, v17

    goto :goto_20

    :cond_29
    :goto_1f
    move-object/from16 v1, p13

    :goto_20
    const v17, 0xe000

    and-int v17, v14, v17

    if-nez v17, :cond_2c

    and-int/lit16 v1, v13, 0x4000

    if-nez v1, :cond_2a

    move-object/from16 v1, p14

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move/from16 v21, v22

    goto :goto_21

    :cond_2a
    move-object/from16 v1, p14

    :cond_2b
    :goto_21
    or-int v8, v8, v21

    goto :goto_22

    :cond_2c
    move-object/from16 v1, p14

    :goto_22
    const v17, 0x5b6db6db

    and-int v1, v3, v17

    const v14, 0x12492492

    if-ne v1, v14, :cond_2e

    const v1, 0xb6db

    and-int/2addr v1, v8

    const/16 v14, 0x2492

    if-ne v1, v14, :cond_2e

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_23

    .line 485
    :cond_2d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v25, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    goto/16 :goto_3d

    .line 335
    :cond_2e
    :goto_23
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_24

    .line 332
    :cond_2f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x4000

    if-eqz v0, :cond_30

    const v0, -0xe001

    and-int/2addr v8, v0

    :cond_30
    move-object/from16 v1, p1

    move/from16 v6, p2

    move/from16 v10, p3

    move-object/from16 v4, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v12, p7

    move-object/from16 v5, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p11

    move-object/from16 v11, p12

    move-object/from16 v14, p13

    move-object/from16 v20, p14

    move v15, v8

    const/4 v0, 0x0

    move-object/from16 v8, p10

    goto/16 :goto_33

    :cond_31
    :goto_24
    if-eqz v6, :cond_32

    .line 319
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    goto :goto_25

    :cond_32
    move-object/from16 v1, p1

    :goto_25
    if-eqz v10, :cond_33

    const/4 v6, 0x1

    goto :goto_26

    :cond_33
    move/from16 v6, p2

    :goto_26
    if-eqz v16, :cond_34

    const/4 v10, 0x0

    goto :goto_27

    :cond_34
    move/from16 v10, p3

    :goto_27
    if-eqz v20, :cond_35

    const/16 v16, 0x0

    goto :goto_28

    :cond_35
    move-object/from16 v16, p4

    :goto_28
    if-eqz v24, :cond_36

    .line 323
    sget-object v18, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v18

    goto :goto_29

    :cond_36
    move-object/from16 v18, p5

    :goto_29
    if-eqz v26, :cond_37

    .line 324
    sget-object v19, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v19

    goto :goto_2a

    :cond_37
    move-object/from16 v19, p6

    :goto_2a
    if-eqz v12, :cond_38

    .line 325
    sget-object v12, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v12}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v12

    goto :goto_2b

    :cond_38
    move-object/from16 v12, p7

    :goto_2b
    if-eqz v0, :cond_39

    .line 326
    sget-object v0, Landroidx/compose/foundation/text2/input/TextFieldLineLimits;->Companion:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;->getDefault()Landroidx/compose/foundation/text2/input/TextFieldLineLimits;

    move-result-object v0

    goto :goto_2c

    :cond_39
    move-object/from16 v0, p8

    :goto_2c
    if-eqz v4, :cond_3a

    const/4 v4, 0x0

    goto :goto_2d

    :cond_3a
    move-object/from16 v4, p9

    :goto_2d
    if-eqz v5, :cond_3b

    const/4 v5, 0x0

    goto :goto_2e

    :cond_3b
    move-object/from16 v5, p10

    :goto_2e
    if-eqz v7, :cond_3c

    .line 329
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v20, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v14

    move-object/from16 p1, v0

    const/4 v0, 0x0

    invoke-direct {v7, v14, v15, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    goto :goto_2f

    :cond_3c
    move-object/from16 p1, v0

    const/4 v0, 0x0

    move-object/from16 v7, p11

    :goto_2f
    if-eqz v9, :cond_3d

    move-object v9, v0

    goto :goto_30

    :cond_3d
    move-object/from16 v9, p12

    :goto_30
    if-eqz v11, :cond_3e

    move-object v11, v0

    goto :goto_31

    :cond_3e
    move-object/from16 v11, p13

    :goto_31
    and-int/lit16 v14, v13, 0x4000

    if-eqz v14, :cond_3f

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 332
    invoke-static {v14, v2, v14, v15}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v20

    const v14, -0xe001

    and-int/2addr v8, v14

    goto :goto_32

    :cond_3f
    move-object/from16 v20, p14

    :goto_32
    move v15, v8

    move-object v14, v11

    move-object v8, v5

    move-object v11, v9

    move-object/from16 v5, p1

    move-object v9, v7

    move-object v7, v4

    move-object/from16 v4, v16

    :goto_33
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_40

    const-string/jumbo v0, "androidx.compose.foundation.text2.BasicTextField2 (BasicTextField2.kt:334)"

    const v13, 0x1a0fdaba

    .line 335
    invoke-static {v13, v3, v15, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 336
    :cond_40
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    .line 564
    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 336
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 337
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/CompositionLocal;

    .line 565
    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 337
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 338
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v22, v7

    move-object/from16 v7, v16

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .line 566
    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 338
    check-cast v7, Landroidx/compose/ui/platform/WindowInfo;

    .line 339
    sget-object v3, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$SingleLine;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v16, v9

    const v9, -0x39145394

    .line 342
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "341@20017L39"

    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v8, :cond_42

    const v9, -0x1d58f75c

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 568
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .line 569
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v24, v8

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_41

    .line 342
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 571
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 567
    :cond_41
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_34

    :cond_42
    move-object/from16 v24, v8

    move-object/from16 v9, v24

    .line 342
    :goto_34
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v3, :cond_43

    .line 343
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_35

    :cond_43
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_35
    move-object/from16 v23, v5

    .line 344
    move-object v5, v9

    check-cast v5, Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 v34, v14

    const/4 v14, 0x0

    invoke-static {v5, v2, v14}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 345
    invoke-interface {v7}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v7

    const v14, 0x607fb4c4

    .line 347
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v2, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v14, p0

    .line 574
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    .line 575
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    or-int v25, v25, v26

    .line 576
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    or-int v25, v25, v26

    move-object/from16 p13, v8

    .line 578
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v25, :cond_44

    .line 579
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p11, v15

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v8, v15, :cond_47

    goto :goto_36

    :cond_44
    move-object/from16 p11, v15

    :goto_36
    if-nez v11, :cond_46

    .line 352
    sget-object v8, Landroidx/compose/foundation/text2/input/SingleLineCodepointTransformation;->INSTANCE:Landroidx/compose/foundation/text2/input/SingleLineCodepointTransformation;

    if-eqz v3, :cond_45

    goto :goto_37

    :cond_45
    const/4 v8, 0x0

    :goto_37
    check-cast v8, Landroidx/compose/foundation/text2/input/CodepointTransformation;

    goto :goto_38

    :cond_46
    move-object v8, v11

    .line 353
    :goto_38
    new-instance v15, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-direct {v15, v14, v4, v8}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V

    .line 582
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v15

    .line 577
    :cond_47
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 347
    check-cast v8, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    const v15, 0x44faf204

    .line 358
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 585
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v35, v11

    .line 586
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v15, :cond_48

    .line 587
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v11, v15, :cond_49

    .line 358
    :cond_48
    new-instance v11, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-direct {v11}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;-><init>()V

    .line 589
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 585
    :cond_49
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 358
    check-cast v11, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    const v15, 0x44faf204

    .line 360
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 592
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 593
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v15, :cond_4a

    .line 594
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_4c

    .line 361
    :cond_4a
    new-instance v14, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    if-eqz v5, :cond_4b

    if-eqz v7, :cond_4b

    const/4 v15, 0x1

    goto :goto_39

    :cond_4b
    const/4 v15, 0x0

    :goto_39
    move-object/from16 p1, v14

    move-object/from16 p2, v8

    move-object/from16 p3, v11

    move-object/from16 p4, v0

    move/from16 p5, v6

    move/from16 p6, v10

    move/from16 p7, v15

    invoke-direct/range {p1 .. p7}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZ)V

    .line 596
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 592
    :cond_4c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 360
    check-cast v14, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 370
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/CompositionLocal;

    move/from16 p12, v7

    const v7, 0x789c5f52

    .line 599
    invoke-static {v2, v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 370
    check-cast v15, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 371
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v25

    move/from16 p14, v5

    move-object/from16 v5, v25

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 600
    invoke-static {v2, v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 371
    check-cast v5, Landroidx/compose/ui/platform/ClipboardManager;

    .line 372
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v25

    move-object/from16 p15, v9

    move-object/from16 v9, v25

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .line 601
    invoke-static {v2, v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 372
    check-cast v7, Landroidx/compose/ui/platform/TextToolbar;

    .line 373
    new-instance v9, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$3;

    move-object/from16 p1, v9

    move-object/from16 p2, v14

    move-object/from16 p3, v15

    move-object/from16 p4, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v0

    move/from16 p7, v6

    move/from16 p8, v10

    invoke-direct/range {p1 .. p8}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/ui/platform/ClipboardManager;Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/unit/Density;ZZ)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-static {v9, v2, v0}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 386
    new-instance v0, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$4;

    invoke-direct {v0, v14}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$4;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/16 v5, 0x8

    invoke-static {v14, v0, v2, v5}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 395
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifier;

    move-object/from16 p1, v0

    move-object/from16 p2, v8

    move-object/from16 p3, v11

    move-object/from16 p4, v14

    move-object/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v10

    move-object/from16 p8, v19

    move-object/from16 p9, v12

    move/from16 p10, v3

    invoke-direct/range {p1 .. p10}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifier;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/InputTransformation;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Z)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 393
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v9, p15

    .line 407
    invoke-static {v0, v6, v9}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    .line 409
    move-object/from16 v26, v20

    check-cast v26, Landroidx/compose/foundation/gestures/ScrollableState;

    if-eqz v6, :cond_4d

    .line 414
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/ScrollState;->getMaxValue()I

    move-result v0

    if-lez v0, :cond_4d

    .line 415
    invoke-virtual {v14}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    if-nez v0, :cond_4d

    const/16 v28, 0x1

    goto :goto_3a

    :cond_4d
    const/16 v28, 0x0

    .line 416
    :goto_3a
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    move-object/from16 v15, p11

    move-object/from16 v5, p13

    const/4 v7, 0x0

    invoke-virtual {v0, v15, v5, v7}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v29

    const/16 v32, 0x10

    const/16 v33, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v5

    move-object/from16 v31, v9

    .line 408
    invoke-static/range {v25 .. v33}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v7, 0x2bb5b5d7

    .line 424
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 602
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v7

    const/16 v9, 0x30

    const/4 v13, 0x1

    .line 606
    invoke-static {v7, v13, v2, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    const v9, -0x4ee9b9da

    .line 607
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 608
    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 609
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 611
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 618
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    move-object/from16 v25, v1

    .line 619
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_4e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 620
    :cond_4e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 621
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 622
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3b

    .line 624
    :cond_4f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 626
    :goto_3b
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .line 613
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v1, v7, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 614
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v1, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 616
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 628
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-nez v9, :cond_50

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 629
    :cond_50
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 630
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 633
    :cond_51
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v2, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 634
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x4ab8dd4f

    .line 635
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    .line 636
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, 0x1cb7c4f2

    const-string v1, "C425@23768L2308:BasicTextField2.kt#g98mwb"

    .line 425
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-nez v34, :cond_52

    sget-object v0, Landroidx/compose/foundation/text2/BasicTextField2Kt;->DefaultTextFieldDecorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    goto :goto_3c

    :cond_52
    move-object/from16 v0, v34

    .line 426
    :goto_3c
    new-instance v1, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$5$1;

    move-object/from16 p1, v1

    move-object/from16 p2, v23

    move-object/from16 p3, v11

    move-object/from16 p4, v18

    move/from16 p5, p14

    move/from16 p6, p12

    move-object/from16 p7, v8

    move-object/from16 p8, v14

    move-object/from16 p9, v16

    move/from16 p10, v6

    move/from16 p11, v10

    move-object/from16 p12, v20

    move-object/from16 p13, v5

    move/from16 p14, v3

    move-object/from16 p15, v22

    invoke-direct/range {p1 .. p15}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$5$1;-><init>(Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/text/TextStyle;ZZLandroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;ZLkotlin/jvm/functions/Function2;)V

    const v3, 0x57fd8a17

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/foundation/text2/TextFieldDecorator;->Decoration(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 425
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 636
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 637
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 638
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 639
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 640
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 641
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_53
    move-object v5, v4

    move v3, v6

    move v4, v10

    move-object v8, v12

    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v15, v20

    move-object/from16 v10, v22

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v14, v34

    move-object/from16 v13, v35

    .line 485
    :goto_3d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_54

    new-instance v19, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object/from16 v2, v25

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$6;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_54
    return-void
.end method

.method public static final BasicTextField2(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "Landroidx/compose/foundation/text2/input/TextFieldLineLimits;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p17

    move/from16 v14, p18

    move/from16 v13, p19

    const v0, -0x2f82a4ec

    move-object/from16 v3, p16

    .line 190
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v4, "C(BasicTextField2)P(15,11,9,3,12,4,14,7,6,8,10,5,1)186@11484L21,190@11642L213,200@12048L174,210@12291L1011:BasicTextField2.kt#g98mwb"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v15, 0xe

    if-nez v4, :cond_2

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move v4, v15

    :goto_1
    and-int/lit8 v7, v13, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v15, 0x70

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v13, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v15, 0x380

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v4, v4, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v12, p2

    :goto_6
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v5, v15, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v4, v4, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v5, p3

    :goto_9
    and-int/lit8 v19, v13, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v4, v4, 0x6000

    move/from16 v8, p4

    goto :goto_b

    :cond_c
    and-int v23, v15, v22

    move/from16 v8, p4

    if-nez v23, :cond_e

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v20

    goto :goto_a

    :cond_d
    move/from16 v24, v21

    :goto_a
    or-int v4, v4, v24

    :cond_e
    :goto_b
    and-int/lit8 v24, v13, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v4, v4, v26

    move-object/from16 v9, p5

    goto :goto_d

    :cond_f
    and-int v26, v15, v25

    move-object/from16 v9, p5

    if-nez v26, :cond_11

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v27, 0x10000

    :goto_c
    or-int v4, v4, v27

    :cond_11
    :goto_d
    and-int/lit8 v27, v13, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v4, v4, v28

    move-object/from16 v10, p6

    goto :goto_f

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v15, v28

    move-object/from16 v10, p6

    if-nez v28, :cond_14

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v29, 0x80000

    :goto_e
    or-int v4, v4, v29

    :cond_14
    :goto_f
    and-int/lit16 v11, v13, 0x80

    if-eqz v11, :cond_15

    const/high16 v30, 0xc00000

    or-int v4, v4, v30

    move-object/from16 v6, p7

    goto :goto_11

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v15, v30

    move-object/from16 v6, p7

    if-nez v30, :cond_17

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v31, 0x400000

    :goto_10
    or-int v4, v4, v31

    :cond_17
    :goto_11
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_18

    const/high16 v32, 0x6000000

    or-int v4, v4, v32

    move-object/from16 v5, p8

    goto :goto_13

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v15, v32

    move-object/from16 v5, p8

    if-nez v32, :cond_1a

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v32, 0x2000000

    :goto_12
    or-int v4, v4, v32

    :cond_1a
    :goto_13
    and-int/lit16 v5, v13, 0x200

    if-eqz v5, :cond_1b

    const/high16 v32, 0x30000000

    or-int v4, v4, v32

    move-object/from16 v6, p9

    goto :goto_15

    :cond_1b
    const/high16 v32, 0x70000000

    and-int v32, v15, v32

    move-object/from16 v6, p9

    if-nez v32, :cond_1d

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_14
    or-int v4, v4, v32

    :cond_1d
    :goto_15
    and-int/lit16 v6, v13, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v32, v14, 0x6

    move-object/from16 v8, p10

    goto :goto_17

    :cond_1e
    and-int/lit8 v32, v14, 0xe

    move-object/from16 v8, p10

    if-nez v32, :cond_20

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v32, 0x4

    goto :goto_16

    :cond_1f
    const/16 v32, 0x2

    :goto_16
    or-int v32, v14, v32

    goto :goto_17

    :cond_20
    move/from16 v32, v14

    :goto_17
    and-int/lit16 v8, v13, 0x800

    if-eqz v8, :cond_21

    or-int/lit8 v32, v32, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v33, v14, 0x70

    move-object/from16 v9, p11

    if-nez v33, :cond_23

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    const/16 v23, 0x20

    goto :goto_18

    :cond_22
    const/16 v23, 0x10

    :goto_18
    or-int v32, v32, v23

    :cond_23
    :goto_19
    move/from16 v9, v32

    and-int/lit16 v10, v13, 0x1000

    if-eqz v10, :cond_24

    or-int/lit16 v9, v9, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v12, v14, 0x380

    if-nez v12, :cond_26

    move-object/from16 v12, p12

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v28, 0x100

    goto :goto_1a

    :cond_25
    const/16 v28, 0x80

    :goto_1a
    or-int v9, v9, v28

    goto :goto_1c

    :cond_26
    :goto_1b
    move-object/from16 v12, p12

    :goto_1c
    and-int/lit16 v12, v13, 0x2000

    if-eqz v12, :cond_27

    or-int/lit16 v9, v9, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v2, v14, 0x1c00

    if-nez v2, :cond_29

    move-object/from16 v2, p13

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v17, v18

    :goto_1d
    or-int v9, v9, v17

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v2, p13

    :goto_1f
    and-int/lit16 v2, v13, 0x4000

    if-eqz v2, :cond_2a

    or-int/lit16 v9, v9, 0x6000

    move-object/from16 v1, p14

    goto :goto_21

    :cond_2a
    and-int v17, v14, v22

    move-object/from16 v1, p14

    if-nez v17, :cond_2c

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_20

    :cond_2b
    move/from16 v20, v21

    :goto_20
    or-int v9, v9, v20

    :cond_2c
    :goto_21
    and-int v17, v14, v25

    const v18, 0x8000

    if-nez v17, :cond_2e

    and-int v17, v13, v18

    move-object/from16 v1, p15

    if-nez v17, :cond_2d

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d

    const/high16 v17, 0x20000

    goto :goto_22

    :cond_2d
    const/high16 v17, 0x10000

    :goto_22
    or-int v9, v9, v17

    goto :goto_23

    :cond_2e
    move-object/from16 v1, p15

    :goto_23
    const v17, 0x5b6db6db

    and-int v1, v4, v17

    const v14, 0x12492492

    if-ne v1, v14, :cond_30

    const v1, 0x5b6db

    and-int/2addr v1, v9

    const v14, 0x12492

    if-ne v1, v14, :cond_30

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_24

    .line 239
    :cond_2f
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v35, p13

    move-object/from16 v36, p14

    move-object/from16 v16, p15

    goto/16 :goto_35

    .line 190
    :cond_30
    :goto_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v15, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_33

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_25

    .line 187
    :cond_31
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v0, v13, v18

    if-eqz v0, :cond_32

    const v0, -0x70001

    and-int/2addr v9, v0

    :cond_32
    move-object/from16 v1, p2

    move/from16 v0, p3

    move/from16 v2, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v11, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v10, p11

    move-object/from16 v12, p12

    move-object/from16 v35, p13

    move-object/from16 v36, p14

    move-object/from16 v37, p15

    move v14, v9

    move-object/from16 v9, p10

    goto/16 :goto_33

    :cond_33
    :goto_25
    if-eqz v7, :cond_34

    .line 174
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    goto :goto_26

    :cond_34
    move-object/from16 v1, p2

    :goto_26
    if-eqz v16, :cond_35

    const/16 v16, 0x1

    goto :goto_27

    :cond_35
    move/from16 v16, p3

    :goto_27
    if-eqz v19, :cond_36

    const/16 v17, 0x0

    goto :goto_28

    :cond_36
    move/from16 v17, p4

    :goto_28
    if-eqz v24, :cond_37

    move-object/from16 v19, v14

    goto :goto_29

    :cond_37
    move-object/from16 v19, p5

    :goto_29
    if-eqz v27, :cond_38

    .line 178
    sget-object v20, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    goto :goto_2a

    :cond_38
    move-object/from16 v20, p6

    :goto_2a
    if-eqz v11, :cond_39

    .line 179
    sget-object v11, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v11}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v11

    goto :goto_2b

    :cond_39
    move-object/from16 v11, p7

    :goto_2b
    if-eqz v0, :cond_3a

    .line 180
    sget-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v0

    goto :goto_2c

    :cond_3a
    move-object/from16 v0, p8

    :goto_2c
    if-eqz v5, :cond_3b

    .line 181
    sget-object v5, Landroidx/compose/foundation/text2/input/TextFieldLineLimits;->Companion:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;->getDefault()Landroidx/compose/foundation/text2/input/TextFieldLineLimits;

    move-result-object v5

    goto :goto_2d

    :cond_3b
    move-object/from16 v5, p9

    :goto_2d
    if-eqz v6, :cond_3c

    move-object v6, v14

    goto :goto_2e

    :cond_3c
    move-object/from16 v6, p10

    :goto_2e
    if-eqz v8, :cond_3d

    move-object v8, v14

    goto :goto_2f

    :cond_3d
    move-object/from16 v8, p11

    :goto_2f
    if-eqz v10, :cond_3e

    .line 184
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p3, v8

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    invoke-direct {v10, v7, v8, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v10

    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    goto :goto_30

    :cond_3e
    move-object/from16 p3, v8

    move-object/from16 v7, p12

    :goto_30
    if-eqz v12, :cond_3f

    move-object v8, v14

    goto :goto_31

    :cond_3f
    move-object/from16 v8, p13

    :goto_31
    if-eqz v2, :cond_40

    move-object v2, v14

    goto :goto_32

    :cond_40
    move-object/from16 v2, p14

    :goto_32
    and-int v10, v13, v18

    if-eqz v10, :cond_41

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 187
    invoke-static {v10, v3, v10, v12}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v12

    const v10, -0x70001

    and-int/2addr v9, v10

    move-object/from16 v10, p3

    move-object/from16 v36, v2

    move-object/from16 v35, v8

    move v14, v9

    move-object/from16 v37, v12

    move/from16 v2, v17

    move-object v8, v5

    move-object v9, v6

    move-object v12, v7

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object v7, v0

    move/from16 v0, v16

    goto :goto_33

    :cond_41
    move-object/from16 v10, p3

    move-object/from16 v37, p15

    move-object/from16 v36, v2

    move-object v12, v7

    move-object/from16 v35, v8

    move v14, v9

    move/from16 v2, v17

    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    move/from16 v0, v16

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    :goto_33
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_42

    const-string/jumbo v13, "androidx.compose.foundation.text2.BasicTextField2 (BasicTextField2.kt:189)"

    const v15, -0x2f82a4ec

    .line 190
    invoke-static {v15, v4, v14, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_42
    const v13, -0x1d58f75c

    .line 191
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 545
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .line 546
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_43

    .line 192
    new-instance v13, Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static {v15}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v9

    move-object/from16 v15, p0

    move-object/from16 p11, v12

    const/4 v12, 0x0

    .line 192
    invoke-direct {v13, v15, v9, v10, v12}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 548
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_34

    :cond_43
    move-object/from16 v15, p0

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v12

    .line 544
    :goto_34
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 191
    move-object v9, v13

    check-cast v9, Landroidx/compose/foundation/text2/input/TextFieldState;

    const v10, -0x1d58f75c

    .line 201
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v3, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 552
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 553
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_44

    .line 203
    new-instance v10, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 205
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v12

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p2, v10

    move-object/from16 p3, p0

    move-wide/from16 p4, v12

    move-object/from16 p6, v19

    move/from16 p7, v17

    move-object/from16 p8, v18

    .line 203
    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 202
    invoke-static {v10, v13, v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    .line 555
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 551
    :cond_44
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 201
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 209
    invoke-static {v10}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v12

    const/4 v13, 0x6

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 p2, v12

    move-object/from16 p3, p0

    move-wide/from16 p4, v17

    move-object/from16 p6, v19

    move/from16 p7, v13

    move-object/from16 p8, v16

    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v12

    invoke-static {v10, v12}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 215
    invoke-static {v10}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v12

    const v13, -0x38965088

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v15, p1

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    move-object/from16 p2, v8

    .line 558
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v13, :cond_45

    .line 559
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v8, v13, :cond_46

    .line 216
    :cond_45
    new-instance v8, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$1$1;

    invoke-direct {v8, v15, v10}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 561
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    :cond_46
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v10, 0x0

    .line 213
    invoke-static {v1, v9, v12, v8, v10}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierKt;->syncTextFieldState(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/ui/Modifier;

    move-result-object v17

    shr-int/lit8 v4, v4, 0x3

    and-int/lit16 v8, v4, 0x380

    or-int/lit8 v8, v8, 0x6

    and-int/lit16 v10, v4, 0x1c00

    or-int/2addr v8, v10

    and-int v10, v4, v22

    or-int/2addr v8, v10

    and-int v10, v4, v25

    or-int/2addr v8, v10

    const/high16 v10, 0x380000

    and-int/2addr v10, v4

    or-int/2addr v8, v10

    const/high16 v10, 0x1c00000

    and-int/2addr v10, v4

    or-int/2addr v8, v10

    const/high16 v10, 0xe000000

    and-int/2addr v4, v10

    or-int/2addr v4, v8

    shl-int/lit8 v8, v14, 0x1b

    const/high16 v10, 0x70000000

    and-int/2addr v8, v10

    or-int v32, v4, v8

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v8, v4, 0xe

    and-int/lit8 v10, v4, 0x70

    or-int/2addr v8, v10

    and-int/lit16 v10, v4, 0x380

    or-int/2addr v8, v10

    and-int/lit16 v10, v4, 0x1c00

    or-int/2addr v8, v10

    and-int v4, v4, v22

    or-int v33, v8, v4

    const/16 v34, 0x0

    move-object/from16 v16, v9

    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v23, v7

    move-object/from16 v24, p2

    move-object/from16 v25, p9

    move-object/from16 v26, p10

    move-object/from16 v27, p11

    move-object/from16 v28, v35

    move-object/from16 v29, v36

    move-object/from16 v30, v37

    move-object/from16 v31, v3

    .line 211
    invoke-static/range {v16 .. v34}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_47
    move-object/from16 v10, p2

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object v4, v1

    move-object v8, v6

    move-object v9, v7

    move-object/from16 v16, v37

    move v6, v2

    move-object v7, v5

    move v5, v0

    .line 239
    :goto_35
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_48

    new-instance v20, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v35

    move-object/from16 v38, v15

    move-object/from16 v15, v36

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_48
    return-void
.end method

.method private static final BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    .line 201
    check-cast p0, Landroidx/compose/runtime/State;

    .line 648
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method private static final BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ")V"
        }
    .end annotation

    .line 649
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x2e1e8f07

    .line 488
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldCursorHandle)490@26277L629:BasicTextField2.kt#g98mwb"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text2.TextFieldCursorHandle (BasicTextField2.kt:487)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getPosition-F1C5BW0()J

    move-result-wide v1

    .line 493
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const v4, -0x38961a1c

    .line 494
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 642
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1

    .line 643
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_2

    .line 494
    :cond_1
    new-instance v4, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$1$1;

    invoke-direct {v4, v0}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$1$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 645
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 494
    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v0, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 502
    new-instance v3, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$2;

    invoke-direct {v3, p0, v6}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x180

    move-object v5, p1

    .line 491
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-ULxng0E(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$3;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_5
    return-void
.end method

.method public static final TextFieldSelectionHandles(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const v0, -0x47348d1a

    .line 513
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldSelectionHandles)528@27633L397:BasicTextField2.kt#g98mwb"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text2.TextFieldSelectionHandles (BasicTextField2.kt:512)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getStartSelectionHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    const v1, -0x56a351be    # -4.9000958E-14f

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "515@27123L401"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 516
    new-instance v1, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 519
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    .line 520
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getHandlesCrossed()Z

    move-result v4

    .line 521
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v2, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$2;

    invoke-direct {v2, p0, v8}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v7, 0x30

    const/4 v2, 0x1

    move-object v6, p1

    .line 516
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 527
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getEndSelectionHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    new-instance v1, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 532
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    .line 533
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getHandlesCrossed()Z

    move-result v4

    .line 534
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v2, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$4;

    invoke-direct {v2, p0, v8}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$4;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v7, 0x30

    const/4 v2, 0x0

    move-object v6, p1

    .line 529
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$5;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$5;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method

.method public static final synthetic access$BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method

.method private static synthetic getDefaultTextFieldDecorator$annotations()V
    .locals 0

    return-void
.end method
