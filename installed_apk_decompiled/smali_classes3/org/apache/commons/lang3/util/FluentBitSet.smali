.class public final Lorg/apache/commons/lang3/util/FluentBitSet;
.super Ljava/lang/Object;
.source "FluentBitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bitSet:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/util/FluentBitSet;-><init>(Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/util/FluentBitSet;-><init>(Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "set"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    iput-object p1, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public and(Lorg/apache/commons/lang3/util/FluentBitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public andNot(Ljava/util/BitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public andNot(Lorg/apache/commons/lang3/util/FluentBitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public bitSet()Ljava/util/BitSet;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    return-object v0
.end method

.method public cardinality()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    return v0
.end method

.method public clear()Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    return-object p0
.end method

.method public clear(I)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-object p0
.end method

.method public clear(II)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    return-object p0
.end method

.method public varargs clear([I)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 4

    .line 151
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 152
    iget-object v3, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 193
    new-instance v0, Lorg/apache/commons/lang3/util/FluentBitSet;

    iget-object v1, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/util/FluentBitSet;-><init>(Ljava/util/BitSet;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 201
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/util/FluentBitSet;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/util/FluentBitSet;

    .line 205
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public flip(I)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->flip(I)V

    return-object p0
.end method

.method public flip(II)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->flip(II)V

    return-object p0
.end method

.method public get(II)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 2

    .line 258
    new-instance v0, Lorg/apache/commons/lang3/util/FluentBitSet;

    iget-object v1, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/util/FluentBitSet;-><init>(Ljava/util/BitSet;)V

    return-object v0
.end method

.method public get(I)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lorg/apache/commons/lang3/util/FluentBitSet;)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    return v0
.end method

.method public nextClearBit(I)I
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    return p1
.end method

.method public nextSetBit(I)I
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    return p1
.end method

.method public or(Ljava/util/BitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public or(Lorg/apache/commons/lang3/util/FluentBitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public varargs or([Lorg/apache/commons/lang3/util/FluentBitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 4

    .line 365
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 366
    iget-object v3, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object v2, v2, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public previousClearBit(I)I
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->previousClearBit(I)I

    move-result p1

    return p1
.end method

.method public previousSetBit(I)I
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->previousSetBit(I)I

    move-result p1

    return p1
.end method

.method public set(I)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public set(II)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(II)V

    return-object p0
.end method

.method public set(IIZ)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/BitSet;->set(IIZ)V

    return-object p0
.end method

.method public set(IZ)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    return-object p0
.end method

.method public varargs set([I)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 4

    .line 426
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 427
    iget-object v3, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setInclusive(II)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(II)V

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v0

    return v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->stream()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toLongArray()[J
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Ljava/util/BitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->xor(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public xor(Lorg/apache/commons/lang3/util/FluentBitSet;)Lorg/apache/commons/lang3/util/FluentBitSet;
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/apache/commons/lang3/util/FluentBitSet;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->xor(Ljava/util/BitSet;)V

    return-object p0
.end method
