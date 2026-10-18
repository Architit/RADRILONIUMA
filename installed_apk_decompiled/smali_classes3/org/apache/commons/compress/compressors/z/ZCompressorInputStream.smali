.class public Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "ZCompressorInputStream.java"


# static fields
.field private static final BLOCK_MODE_MASK:I = 0x80

.field private static final MAGIC_1:I = 0x1f

.field private static final MAGIC_2:I = 0x9d

.field private static final MAX_CODE_SIZE_MASK:I = 0x1f


# instance fields
.field private final blockMode:Z

.field private final maxCodeSize:I

.field private totalCodesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 75
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v1

    long-to-int p1, v1

    .line 76
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 77
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x1f

    if-ne p1, v2, :cond_2

    const/16 p1, 0x9d

    if-ne v1, p1, :cond_2

    if-ltz v0, :cond_2

    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    and-int/2addr v0, v2

    .line 82
    iput v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setClearCode(I)V

    .line 86
    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->initializeTables(II)V

    .line 87
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input is not in .Z format"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearEntries()V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    add-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setTableSize(I)V

    return-void
.end method

.method public static matches([BI)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 49
    aget-byte p1, p0, v1

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-byte p0, p0, p1

    const/16 v0, -0x63

    if-ne p0, v0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method private reAlignReading()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v2, 0x8

    rem-long/2addr v0, v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v0, v3

    :cond_0
    :goto_0
    cmp-long v2, v3, v0

    if-gez v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v1

    shl-int/2addr v0, v1

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addEntry(IBI)I

    move-result p1

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result p2

    iget v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-ge p2, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->incrementCodeSize()V

    :cond_0
    return p1
.end method

.method protected decompressNextSymbol()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 137
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getClearCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 139
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->resetCodeSize()V

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->resetPreviousCode()V

    return v2

    .line 145
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addRepeatOfPreviousCode()I

    const/4 v2, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 151
    :goto_0
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->expandCodeToOutputStack(IZ)I

    move-result v0

    return v0

    .line 149
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Invalid %d bit code 0x%x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readNextCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    move-result v0

    if-ltz v0, :cond_0

    .line 165
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    :cond_0
    return v0
.end method
