.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "XZCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;
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

    .line 166
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->setDecompressConcatenated(Z)Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->setDecompressConcatenated(Z)Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->setMemoryLimitKiB(I)Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 150
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    .line 151
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->access$100(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lorg/tukaani/xz/XZInputStream;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->access$200(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->access$200(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;
    .locals 1

    .line 119
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 131
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    .line 135
    :goto_0
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 136
    aget-byte v0, p0, p1

    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v2, v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

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

    .line 214
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 229
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->count(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Throwable;)V

    throw v1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->count(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 247
    new-instance p2, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result p3

    invoke-direct {p2, v0, v1, p3, p1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Throwable;)V

    throw p2
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 257
    new-instance p2, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v2

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Throwable;)V

    throw p2
.end method
