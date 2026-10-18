.class final Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;
.super Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;
.source "TarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/tar/TarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BoundedTarEntryInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private currentSparseInputStreamIndex:I

.field private final entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private entryOffset:J

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/nio/channels/SeekableByteChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    .line 63
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;-><init>(JJ)V

    .line 64
    invoke-interface {p3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 67
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 68
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "entry size exceeds archive size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readArchive(JLjava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 98
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1, p3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private readSparse(JLjava/nio/ByteBuffer;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->access$000(Lorg/apache/commons/compress/archivers/tar/TarFile;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_1

    return v3

    .line 112
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 113
    new-array v2, p4, [B

    .line 114
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p3, v2, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 121
    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_3

    return v1

    :cond_3
    if-ne v1, v3, :cond_4

    .line 127
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readSparse(JLjava/nio/ByteBuffer;I)I

    move-result p1

    return p1

    :cond_4
    if-ge v1, p4, :cond_6

    .line 134
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    int-to-long v4, v1

    add-long/2addr p1, v4

    sub-int/2addr p4, v1

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readSparse(JLjava/nio/ByteBuffer;I)I

    move-result p1

    if-ne p1, v3, :cond_5

    return v1

    :cond_5
    add-int/2addr v1, p1

    :cond_6
    return v1

    .line 105
    :cond_7
    :goto_0
    iget-object p4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readArchive(JLjava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected read(JLjava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readSparse(JLjava/nio/ByteBuffer;I)I

    move-result p1

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readArchive(JLjava/nio/ByteBuffer;)I

    move-result p1

    :goto_0
    if-ne p1, v1, :cond_3

    .line 85
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    array-length p2, p2

    if-gtz p2, :cond_2

    .line 88
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarFile;->setAtEOF(Z)V

    goto :goto_1

    .line 86
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Truncated TAR archive"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    .line 91
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_1
    return p1
.end method
