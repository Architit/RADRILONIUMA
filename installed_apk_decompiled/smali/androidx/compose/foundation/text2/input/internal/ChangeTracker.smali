.class public final Landroidx/compose/foundation/text2/input/internal/ChangeTracker;
.super Ljava/lang/Object;
.source "ChangeTracker.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeTracker.kt\nandroidx/compose/foundation/text2/input/internal/ChangeTracker\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1208#2:197\n1187#2,2:198\n1208#2:200\n1187#2,2:201\n460#3,7:203\n728#3,2:210\n467#3,4:212\n523#3:216\n728#3,2:217\n523#3:219\n523#3:221\n476#3,11:222\n728#3,2:233\n1#4:220\n*S KotlinDebug\n*F\n+ 1 ChangeTracker.kt\nandroidx/compose/foundation/text2/input/internal/ChangeTracker\n*L\n34#1:197\n34#1:198,2\n35#1:200\n35#1:201,2\n38#1:203,7\n39#1:210,2\n38#1:212,4\n81#1:216\n110#1:217,2\n132#1:219\n135#1:221\n139#1:222,11\n186#1:233,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0001 B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0003J*\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0006\u0010\u0012\u001a\u00020\rJ\u001d\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\tH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\tH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u001e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/ChangeTracker;",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;",
        "initialChanges",
        "(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;)V",
        "_changes",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;",
        "_changesTemp",
        "changeCount",
        "",
        "getChangeCount",
        "()I",
        "appendNewChange",
        "",
        "mergedOverlappingChange",
        "preMin",
        "preMax",
        "postDelta",
        "clearChanges",
        "getOriginalRange",
        "Landroidx/compose/ui/text/TextRange;",
        "changeIndex",
        "getOriginalRange--jx7JFs",
        "(I)J",
        "getRange",
        "getRange--jx7JFs",
        "toString",
        "",
        "trackChange",
        "preStart",
        "preEnd",
        "postLength",
        "Change",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _changes:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;",
            ">;"
        }
    .end annotation
.end field

.field private _changesTemp:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;)V
    .locals 8

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 34
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 202
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v1, [Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    invoke-direct {v0, v1, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 35
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p1, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 207
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    .line 209
    :cond_0
    aget-object v1, p1, v3

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    .line 39
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    new-instance v4, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v5

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result v6

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalStart()I

    move-result v7

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalEnd()I

    move-result v1

    invoke-direct {v4, v5, v6, v7, v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;-><init>(IIII)V

    .line 210
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_0

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;)V

    return-void
.end method

.method private final appendNewChange(Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;III)V
    .locals 2

    .line 155
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalEnd()I

    move-result v0

    sub-int v0, v1, v0

    :goto_0
    if-nez p1, :cond_1

    sub-int p1, p2, v0

    sub-int v0, p3, p2

    add-int/2addr v0, p1

    .line 163
    new-instance v1, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    add-int/2addr p3, p4

    invoke-direct {v1, p2, p3, p1, v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;-><init>(IIII)V

    move-object p1, v1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 175
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setPreStart(I)V

    .line 176
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setOriginalStart(I)V

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result p2

    if-le p3, p2, :cond_3

    .line 180
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalEnd()I

    move-result v0

    sub-int/2addr p2, v0

    .line 181
    invoke-virtual {p1, p3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setPreEnd(I)V

    sub-int/2addr p3, p2

    .line 182
    invoke-virtual {p1, p3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setOriginalEnd(I)V

    .line 184
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setPreEnd(I)V

    .line 186
    :goto_1
    iget-object p2, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    .line 233
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final clearChanges()V
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method

.method public getChangeCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    return v0
.end method

.method public getOriginalRange--jx7JFs(I)J
    .locals 2

    .line 135
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 221
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    .line 135
    check-cast p1, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalStart()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalEnd()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRange--jx7JFs(I)J
    .locals 2

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 219
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    .line 132
    check-cast p1, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeList(changes=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 223
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 226
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 228
    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalStart()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalEnd()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")->("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 142
    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v7

    .line 141
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 142
    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result v4

    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    .line 146
    :cond_2
    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final trackChange(III)V
    .locals 5

    if-ne p1, p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p2, p1, v0

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, p2

    .line 80
    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-ge p2, v3, :cond_6

    .line 81
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 216
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, p2

    .line 81
    check-cast v3, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;

    .line 85
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v4

    if-gt v0, v4, :cond_1

    if-gt v4, p1, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result v4

    if-gt v0, v4, :cond_3

    if-gt v4, p1, :cond_3

    :goto_1
    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setPreEnd(I)V

    .line 92
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getOriginalEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setOriginalEnd(I)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v4

    if-le v4, p1, :cond_4

    if-nez v1, :cond_4

    .line 102
    invoke-direct {p0, v2, v0, p1, p3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->appendNewChange(Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;III)V

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreStart()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setPreStart(I)V

    .line 108
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->getPreEnd()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;->setPreEnd(I)V

    .line 110
    :cond_5
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    .line 217
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    .line 117
    invoke-direct {p0, v2, v0, p1, p3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->appendNewChange(Landroidx/compose/foundation/text2/input/internal/ChangeTracker$Change;III)V

    .line 121
    :cond_7
    iget-object p1, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 122
    iget-object p2, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changes:Landroidx/compose/runtime/collection/MutableVector;

    .line 123
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->_changesTemp:Landroidx/compose/runtime/collection/MutableVector;

    .line 124
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method
