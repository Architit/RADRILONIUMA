.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "LZMACompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;
    }
.end annotation


# instance fields
.field private final countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->setMemoryLimitKiB(I)Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 109
    :try_start_0
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->access$100(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    new-instance v0, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Throwable;)V

    throw v0
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;
    .locals 1

    .line 87
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static matches([BI)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    .line 99
    aget-byte p1, p0, v0

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    aget-byte v1, p0, p1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    if-nez p0, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 167
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->count(I)V

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 175
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->count(I)V

    return p1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1

    return-wide p1
.end method
