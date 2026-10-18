.class public Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "DeflateCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field private static final MAGIC_1:I = 0x78

.field private static final MAGIC_2a:I = 0x1

.field private static final MAGIC_2b:I = 0x5e

.field private static final MAGIC_2c:I = 0x9c

.field private static final MAGIC_2d:I = 0xda


# instance fields
.field private final countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private final in:Ljava/io/InputStream;

.field private final inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 67
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->withZlibHeader()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 78
    new-instance p2, Ljava/util/zip/InflaterInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->asSupplier()Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {p2, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public static matches([BI)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 52
    aget-byte p1, p0, v1

    const/16 v0, 0x78

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    aget-byte p0, p0, p1

    if-eq p0, p1, :cond_0

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_0

    const/16 v0, -0x64

    if-eq p0, v0, :cond_0

    const/16 v0, -0x26

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, p1

    :cond_1
    return v1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 94
    throw v0
.end method

.method public getCompressedCount()J
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

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

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 109
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->count(I)V

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->count(I)V

    return p1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1

    return-wide p1
.end method
