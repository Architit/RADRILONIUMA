.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;
.super Lorg/apache/commons/io/input/BoundedInputStream;
.source "ZipFile.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StoredStatisticsStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getCompressedCount()J
    .locals 2

    .line 276
    invoke-super {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;->getCompressedCount()J

    move-result-wide v0

    return-wide v0
.end method
