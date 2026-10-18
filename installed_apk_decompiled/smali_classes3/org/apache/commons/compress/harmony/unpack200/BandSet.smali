.class public abstract Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.super Ljava/lang/Object;
.source "BandSet.java"


# instance fields
.field protected header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

.field protected segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 66
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    return-void
.end method

.method static synthetic lambda$getReferences$0([Ljava/lang/String;[II)Ljava/lang/String;
    .locals 0

    .line 178
    aget p1, p1, p2

    aget-object p0, p0, p1

    return-object p0
.end method

.method static synthetic lambda$parseCPClassReferences$1(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 0

    .line 214
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPDescriptorReferences$2(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    .locals 0

    .line 232
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPDoubleReferences$3(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    .locals 0

    .line 250
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDoubleValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPFieldRefReferences$4(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    .locals 0

    .line 268
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPFloatReferences$5(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    .locals 0

    .line 286
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloatValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPInterfaceMethodRefReferences$6(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    .locals 0

    .line 304
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPMethodRefReferences$7(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    .locals 0

    .line 376
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPSignatureReferences$8(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 0

    .line 394
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPSignatureReferences$9(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 0

    .line 416
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPStringReferences$10(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    .locals 0

    .line 443
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpStringValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPUTF8References$11(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 0

    .line 461
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseCPUTF8References$12(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[II)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 0

    .line 485
    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    if-ltz p4, :cond_9

    .line 89
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    if-nez p4, :cond_0

    goto/16 :goto_5

    .line 92
    :cond_0
    invoke-virtual {p3, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p1

    .line 93
    array-length v1, p1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 96
    aget p1, p1, v1

    .line 98
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    const/16 v2, -0x100

    if-lt p1, v2, :cond_2

    if-gt p1, v3, :cond_2

    rsub-int/lit8 p1, p1, -0x1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p3

    .line 101
    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v2

    if-lt p1, v2, :cond_3

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v2

    add-int/lit16 v2, v2, 0xff

    if-gt p1, v2, :cond_3

    .line 104
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p3

    .line 105
    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p1

    goto :goto_0

    :cond_3
    sub-int/2addr p4, v0

    .line 108
    invoke-virtual {p3, p4, p2, p1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;I)[I

    move-result-object p1

    .line 115
    :goto_0
    instance-of p2, p3, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz p2, :cond_7

    .line 116
    check-cast p3, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 117
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object p2

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 118
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 119
    :goto_1
    array-length p4, p1

    if-ge v1, p4, :cond_7

    .line 120
    aget p4, p1, v1

    invoke-static {p2, p4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p4

    if-le p4, v3, :cond_4

    .line 121
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p4

    .line 122
    :goto_2
    instance-of v0, p4, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v0, :cond_6

    check-cast p4, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    invoke-virtual {p4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v4

    .line 125
    :goto_3
    aget v0, p1, v1

    int-to-long v6, v0

    invoke-virtual {p4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    .line 126
    aget v0, p1, v1

    int-to-long v6, v0

    sub-long/2addr v6, v4

    long-to-int v0, v6

    aput v0, p1, v1

    goto :goto_3

    .line 128
    :cond_5
    :goto_4
    aget v0, p1, v1

    int-to-long v6, v0

    invoke-virtual {p4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    .line 129
    aget v0, p1, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v0

    aput v0, p1, v1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-object p1

    .line 90
    :cond_8
    :goto_5
    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p1

    return-object p1

    .line 82
    :cond_9
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p2, "count < 0"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 150
    array-length v0, p4

    new-array v1, v0, [[I

    .line 152
    array-length v2, p4

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget v6, p4, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    move p2, v3

    move p3, p2

    :goto_1
    if-ge p2, v0, :cond_3

    .line 158
    aget v2, p4, p2

    array-length v4, p1

    if-gt v2, v4, :cond_2

    .line 161
    new-array v2, v2, [I

    aput-object v2, v1, p2

    move v2, v3

    .line 162
    :goto_2
    aget-object v4, v1, p2

    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 163
    aget v5, p1, p3

    aput v5, v4, v2

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 159
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Counts value exceeds length of twoDResult"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v1
.end method

.method protected getReferences([I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 178
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda6;-><init>([Ljava/lang/String;[I)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method protected getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 7

    .line 189
    array-length v0, p1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 191
    aget-object v4, p1, v3

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v4, v1, v3

    move v4, v2

    .line 192
    :goto_1
    aget-object v5, v1, v3

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 193
    aget-object v6, p1, v3

    aget v6, v6, v4

    aget-object v6, p2, v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public parseCPClassReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 213
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 214
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda2;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    return-object p1
.end method

.method public parseCPDescriptorReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 231
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 232
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda8;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    return-object p1
.end method

.method public parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 249
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 250
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda7;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    return-object p1
.end method

.method public parseCPFieldRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 267
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 268
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    return-object p1
.end method

.method public parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 285
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 286
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda12;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda12;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    return-object p1
.end method

.method public parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpInt()[I

    move-result-object v1

    .line 322
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 323
    array-length p2, p1

    new-array p2, p2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p4, :cond_1

    .line 325
    aget v2, p1, p3

    if-ltz v2, :cond_0

    .line 326
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 329
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIntegerValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object v2

    aput-object v2, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 327
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Something has gone wrong during parsing references, index = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", array size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p2
.end method

.method public parseCPInterfaceMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 303
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 304
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda4;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    return-object p1
.end method

.method public parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpLong()[J

    move-result-object v1

    .line 349
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 350
    array-length p2, p1

    new-array p2, p2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p4, :cond_1

    .line 352
    aget v2, p1, p3

    if-ltz v2, :cond_0

    .line 353
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 356
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLongValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object v2

    aput-object v2, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 354
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Something has gone wrong during parsing references, index = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", array size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p2
.end method

.method public parseCPMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 375
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 376
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda5;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    return-object p1
.end method

.method public parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 393
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 394
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda9;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-object p1
.end method

.method protected parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 411
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 415
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 416
    new-array p3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, v0}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 418
    array-length p2, p4

    new-array p2, p2, [[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move p3, v1

    move v0, p3

    .line 419
    :goto_1
    array-length v2, p4

    if-ge p3, v2, :cond_1

    .line 420
    aget v2, p4, p3

    .line 421
    new-array v3, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, p2, p3

    .line 422
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public parseCPStringReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 441
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 442
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 443
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda11;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda11;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    return-object p1
.end method

.method public parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 459
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 460
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 461
    array-length p3, p1

    new-array p3, p3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    new-instance p4, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda3;

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, p4}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-object p1
.end method

.method public parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 477
    array-length v0, p4

    new-array v0, v0, [[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 479
    :goto_0
    array-length v4, p4

    if-ge v2, v4, :cond_0

    .line 480
    aget v4, p4, v2

    new-array v5, v4, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v5, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 484
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p2

    .line 485
    new-array p3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda10;

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda10;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;[I)V

    invoke-static {p3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move p2, v1

    move p3, p2

    .line 487
    :goto_1
    array-length v2, p4

    if-ge p2, v2, :cond_1

    .line 488
    aget v2, p4, p2

    .line 489
    new-array v3, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, v0, p2

    .line 490
    invoke-static {p1, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 510
    filled-new-array {p3}, [I

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 527
    filled-new-array {p3}, [I

    move-result-object v3

    if-eqz p5, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    move-object v4, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 544
    array-length v5, v3

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 546
    new-array v1, v6, [J

    filled-new-array {v1}, [[J

    move-result-object v1

    return-object v1

    .line 549
    :cond_0
    new-array v7, v5, [[J

    move v8, v6

    move v9, v8

    :goto_0
    if-ge v8, v5, :cond_1

    .line 551
    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 556
    invoke-virtual {v0, v1, v2, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v8, p5

    .line 558
    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    move v2, v6

    move v8, v2

    :goto_2
    if-ge v2, v5, :cond_5

    .line 562
    aget v9, v3, v2

    new-array v9, v9, [J

    aput-object v9, v7, v2

    move v9, v6

    .line 563
    :goto_3
    aget-object v10, v7, v2

    array-length v11, v10

    if-ge v9, v11, :cond_4

    if-eqz v4, :cond_3

    .line 565
    aget v11, v4, v8

    int-to-long v11, v11

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    aget v13, v1, v8

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    or-long/2addr v11, v13

    aput-wide v11, v10, v9

    goto :goto_4

    .line 567
    :cond_3
    aget v11, v1, v8

    int-to-long v11, v11

    aput-wide v11, v10, v9

    :goto_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v7
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    if-eqz p5, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    move-object v4, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 589
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object p1

    return-object p1
.end method

.method public parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 607
    filled-new-array {p4}, [I

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 626
    array-length v0, p4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 628
    new-array p1, v1, [Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [[Ljava/lang/String;

    aput-object p1, p2, v1

    return-object p2

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 632
    aget v4, p4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object p1

    .line 636
    new-array p2, v3, [Ljava/lang/String;

    move p3, v1

    :goto_1
    if-ge p3, v3, :cond_3

    .line 638
    aget v2, p1, p3

    if-ltz v2, :cond_2

    .line 639
    array-length v4, p5

    if-ge v2, v4, :cond_2

    .line 642
    aget-object v2, p5, v2

    aput-object v2, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 640
    :cond_2
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Something has gone wrong during parsing references, index = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", array size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_3
    new-array p1, v0, [[Ljava/lang/String;

    move p3, v1

    move p5, p3

    :goto_2
    if-ge p3, v0, :cond_4

    .line 648
    aget v2, p4, p3

    .line 649
    new-array v3, v2, [Ljava/lang/String;

    aput-object v3, p1, p3

    .line 650
    invoke-static {p2, p5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p5, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public abstract read(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract unpack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->read(Ljava/io/InputStream;)V

    .line 682
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->unpack()V

    return-void
.end method
