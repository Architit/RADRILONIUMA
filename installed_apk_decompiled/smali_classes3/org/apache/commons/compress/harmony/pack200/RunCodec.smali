.class public Lorg/apache/commons/compress/harmony/pack200/RunCodec;
.super Lorg/apache/commons/compress/harmony/pack200/Codec;
.source "RunCodec.java"


# instance fields
.field private final aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field private final bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field private k:I

.field private last:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 45
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    .line 46
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 47
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-void

    .line 43
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p2, "Must supply both codecs for a RunCodec"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p2, "Cannot have a RunCodec for a negative number of numbers"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private normalise(ILorg/apache/commons/compress/harmony/pack200/Codec;)I
    .locals 6

    .line 102
    instance-of v0, p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v0, :cond_1

    .line 103
    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 104
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v0

    :goto_0
    int-to-long v2, p1

    .line 106
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    sub-long/2addr v2, v0

    long-to-int p1, v2

    goto :goto_0

    :cond_0
    :goto_1
    int-to-long v2, p1

    .line 109
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 110
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result p1

    goto :goto_1

    :cond_1
    return p1
.end method

.method private normalise([ILorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 9

    .line 118
    instance-of v0, p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 119
    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 120
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v2

    .line 122
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_6

    .line 123
    :goto_1
    aget v0, p1, v1

    int-to-long v4, v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 124
    aget v0, p1, v1

    int-to-long v4, v0

    sub-long/2addr v4, v2

    long-to-int v0, v4

    aput v0, p1, v1

    goto :goto_1

    .line 126
    :cond_0
    :goto_2
    aget v0, p1, v1

    int-to-long v4, v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 127
    aget v0, p1, v1

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v0

    aput v0, p1, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    instance-of v0, p2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v0, :cond_6

    .line 132
    check-cast p2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 133
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 134
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 135
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 136
    aget v2, p1, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 137
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v2

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v2

    .line 138
    :goto_4
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v3, :cond_5

    .line 139
    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 140
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v3

    .line 142
    :goto_5
    aget v5, p1, v1

    int-to-long v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 143
    aget v5, p1, v1

    int-to-long v5, v5

    sub-long/2addr v5, v3

    long-to-int v5, v5

    aput v5, p1, v1

    goto :goto_5

    .line 145
    :cond_4
    :goto_6
    aget v5, p1, v1

    int-to-long v5, v5

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 146
    aget v5, p1, v1

    invoke-static {v5, v3, v4}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v5

    aput v5, p1, v1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 52
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->last:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->decode(Ljava/io/InputStream;J)I

    move-result p1

    return p1
.end method

.method public decode(Ljava/io/InputStream;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 57
    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    if-ltz p2, :cond_1

    .line 58
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->last:I

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result p1

    .line 59
    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->last:I

    .line 60
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->normalise(ILorg/apache/commons/compress/harmony/pack200/Codec;)I

    move-result p1

    return p1

    .line 62
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->last:I

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->last:I

    .line 63
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->normalise(ILorg/apache/commons/compress/harmony/pack200/Codec;)I

    move-result p1

    return p1
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->normalise([ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    .line 70
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v1

    .line 71
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->normalise([ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->check(ILjava/io/InputStream;)I

    move-result p2

    new-array p2, p2, [I

    .line 73
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    sub-int/2addr p1, v0

    invoke-static {v1, v3, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget p1, p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    iget v0, v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->lastBandLength:I

    return-object p2
.end method

.method public encode(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 81
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v0, "Must encode entire band at once with a RunCodec"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(II)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 86
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p2, "Must encode entire band at once with a RunCodec"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getACodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object v0
.end method

.method public getBCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RunCodec[k="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";aCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->aCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->bCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
