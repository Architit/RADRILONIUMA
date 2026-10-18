.class Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;
.super Ljava/util/zip/InflaterInputStream;
.source "InflaterInputStreamWithStatistics.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private compressedCount:J

.field private uncompressedCount:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 54
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 71
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 80
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    :cond_0
    return p1
.end method
