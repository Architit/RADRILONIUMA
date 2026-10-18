.class public Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BrotliCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private final brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

.field private final countingInputStream:Lorg/apache/commons/io/input/BoundedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 48
    new-instance v0, Lorg/brotli/dec/BrotliInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->countingInputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, p1}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->available()I

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

    .line 58
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->countingInputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0, p1}, Lorg/brotli/dec/BrotliInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 82
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->count(I)V

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0, p1}, Lorg/brotli/dec/BrotliInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/brotli/dec/BrotliInputStream;->read([BII)I

    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->count(I)V

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->brotliInputStream:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
