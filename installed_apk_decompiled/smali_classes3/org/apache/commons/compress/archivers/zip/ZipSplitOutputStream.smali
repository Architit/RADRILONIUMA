.class final Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;
.super Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;
.source "ZipSplitOutputStream.java"


# static fields
.field private static final ZIP_SEGMENT_MAX_SIZE:J = 0xffffffffL

.field private static final ZIP_SEGMENT_MIN_SIZE:J = 0x10000L


# instance fields
.field private currentChannel:Ljava/nio/channels/FileChannel;

.field private currentSplitSegmentBytesWritten:J

.field private currentSplitSegmentIndex:I

.field private final diskToPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

.field private final positionToFiles:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final singleByte:[B

.field private final splitSize:J

.field private totalPosition:J

.field private zipFile:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;-><init>(Ljava/nio/file/Path;J)V

    return-void
.end method

.method constructor <init>(Ljava/nio/file/Path;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;-><init>()V

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->singleByte:[B

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->diskToPosition:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->positionToFiles:Ljava/util/TreeMap;

    const-wide/32 v2, 0x10000

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    .line 95
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    .line 96
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->splitSize:J

    .line 97
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    .line 98
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 p1, 0x0

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    invoke-virtual {v1, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->writeZipSplitSignature()V

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zip split segment size should between 64K and 4,294,967,295"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createNewSplitSegmentFile(Ljava/lang/Integer;)Ljava/nio/file/Path;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->getSplitSegmentFileName(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    .line 140
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 141
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "split ZIP segment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " already exists"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    .line 157
    invoke-static {v0}, Lorg/apache/commons/io/file/PathUtils;->getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->close()V

    .line 159
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/CopyOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 160
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->finished:Z

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSplitSegmentFileName(Ljava/lang/Integer;)Ljava/nio/file/Path;
    .locals 4

    if-nez p1, :cond_0

    .line 172
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentIndex:I

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 173
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    .line 174
    invoke-static {v0}, Lorg/apache/commons/io/file/PathUtils;->getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".z"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x9

    if-gt p1, v2, :cond_1

    .line 177
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "."

    .line 184
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method private openNewSplitSegment()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentIndex:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->close()V

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->createNewSplitSegmentFile(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object v0

    .line 197
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    new-array v5, v3, [Ljava/nio/file/CopyOption;

    const/4 v6, 0x0

    sget-object v7, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 198
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->positionToFiles:Ljava/util/TreeMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->createNewSplitSegmentFile(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object v0

    .line 203
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->close()V

    .line 204
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    invoke-direct {v4, v0}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;-><init>(Ljava/nio/file/Path;)V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    .line 205
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentChannel:Ljava/nio/channels/FileChannel;

    .line 206
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    .line 207
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->zipFile:Ljava/nio/file/Path;

    .line 208
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentIndex:I

    .line 209
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->diskToPosition:Ljava/util/List;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->positionToFiles:Ljava/util/TreeMap;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private writeToSegment(Ljava/nio/file/Path;J[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 310
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 311
    :try_start_0
    invoke-static {p4, p5, p6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipIoUtil;->writeAll(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 310
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method private writeZipSplitSignature()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->write([B)V

    .line 322
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    .line 323
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    return-void
.end method


# virtual methods
.method public calculateDiskPosition(JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->diskToPosition:Ljava/util/List;

    long-to-int p1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, p3

    return-wide p1

    .line 107
    :cond_0
    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Disk number exceeded internal limits: limit=2147483647 requested="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->finish()V

    :cond_0
    return-void
.end method

.method public getCurrentSplitSegmentBytesWritten()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    return-wide v0
.end method

.method public getCurrentSplitSegmentIndex()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentIndex:I

    return v0
.end method

.method public position()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    return-wide v0
.end method

.method public prepareToWriteUnsplittableContent(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->splitSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 237
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    sub-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    .line 239
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->openNewSplitSegment()V

    :cond_0
    return-void

    .line 234
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The unsplittable content size is bigger than the split segment size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->singleByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 280
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_0

    return-void

    .line 262
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->splitSize:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 263
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->openNewSplitSegment()V

    .line 264
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    add-long v6, v0, v4

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    long-to-int v2, v2

    long-to-int v0, v0

    sub-int/2addr v2, v0

    .line 267
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->write([BII)V

    .line 268
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->openNewSplitSegment()V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->write([BII)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->outputStream:Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->write([BII)V

    .line 272
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentSplitSegmentBytesWritten:J

    .line 273
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->totalPosition:J

    :goto_0
    return-void
.end method

.method public writeAll([BIIJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_2

    .line 287
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->positionToFiles:Ljava/util/TreeMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->positionToFiles:Ljava/util/TreeMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->currentChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p4, v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipIoUtil;->writeAll(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    int-to-long v0, p3

    add-long/2addr p4, v0

    add-int/2addr p2, p3

    move p3, v7

    goto :goto_0

    :cond_0
    int-to-long v2, p3

    add-long v8, p4, v2

    .line 294
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gtz v2, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p4, v2

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->writeToSegment(Ljava/nio/file/Path;J[BII)V

    add-int/2addr p2, p3

    move p3, v7

    move-wide p4, v8

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v7

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p4, v2

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipSplitOutputStream;->writeToSegment(Ljava/nio/file/Path;J[BII)V

    int-to-long v0, v7

    add-long/2addr p4, v0

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    goto/16 :goto_0

    :cond_2
    return-void
.end method
