.class final Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection$setSelection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StatelessInputConnection.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection;->setSelection(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $end:I

.field final synthetic $start:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection$setSelection$1;->$start:I

    iput p2, p0, Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection$setSelection$1;->$end:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection$setSelection$1;->invoke(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V
    .locals 2

    .line 171
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection$setSelection$1;->$start:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection$setSelection$1;->$end:I

    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    return-void
.end method
