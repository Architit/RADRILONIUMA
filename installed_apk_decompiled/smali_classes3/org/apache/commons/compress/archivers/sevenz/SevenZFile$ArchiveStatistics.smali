.class final Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
.super Ljava/lang/Object;
.source "SevenZFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArchiveStatistics"
.end annotation


# instance fields
.field private folderHasCrc:Ljava/util/BitSet;

.field private numberOfCoders:J

.field private numberOfEntries:I

.field private numberOfEntriesWithStream:I

.field private numberOfFolders:I

.field private numberOfInStreams:J

.field private numberOfOutStreams:J

.field private numberOfPackedStreams:I

.field private numberOfUnpackSubStreams:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I
    .locals 0

    .line 89
    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    return p0
.end method

.method static synthetic access$1002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I
    .locals 0

    .line 89
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    return p1
.end method

.method static synthetic access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfUnpackSubStreams:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J
    .locals 0

    .line 89
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfUnpackSubStreams:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->folderHasCrc:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->folderHasCrc:Ljava/util/BitSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I
    .locals 0

    .line 89
    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntries:I

    return p0
.end method

.method static synthetic access$402(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I
    .locals 0

    .line 89
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntries:I

    return p1
.end method

.method static synthetic access$502(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I
    .locals 0

    .line 89
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntriesWithStream:I

    return p1
.end method

.method static synthetic access$614(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfCoders:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfCoders:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfOutStreams:J

    return-wide v0
.end method

.method static synthetic access$714(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfOutStreams:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfOutStreams:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfInStreams:J

    return-wide v0
.end method

.method static synthetic access$814(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfInStreams:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfInStreams:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I
    .locals 0

    .line 89
    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfPackedStreams:I

    return p0
.end method

.method static synthetic access$902(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I
    .locals 0

    .line 89
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfPackedStreams:I

    return p1
.end method

.method private bindPairSize()J
    .locals 2

    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method private coderSize()J
    .locals 2

    const-wide/16 v0, 0x16

    return-wide v0
.end method

.method private entrySize()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method private folderSize()J
    .locals 2

    const-wide/16 v0, 0x1e

    return-wide v0
.end method

.method private streamMapSize()J
    .locals 2

    .line 167
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfPackedStreams:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntries:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method assertValidity(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntriesWithStream:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "archive with entries but no folders"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    int-to-long v0, v0

    .line 110
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfUnpackSubStreams:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-ltz v2, :cond_2

    return-void

    .line 116
    :cond_2
    new-instance v2, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw v2

    .line 111
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "archive doesn\'t contain enough substreams for entries"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method estimateSize()J
    .locals 9

    .line 150
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfPackedStreams:I

    int-to-long v1, v0

    const-wide/16 v3, 0x10

    mul-long/2addr v1, v3

    div-int/lit8 v0, v0, 0x8

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    int-to-long v3, v0

    .line 152
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->folderSize()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfCoders:J

    .line 153
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->coderSize()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfOutStreams:J

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->bindPairSize()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfInStreams:J

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfOutStreams:J

    sub-long/2addr v3, v5

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    int-to-long v7, v0

    add-long/2addr v3, v7

    const-wide/16 v7, 0x8

    mul-long/2addr v3, v7

    add-long/2addr v1, v3

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntries:I

    int-to-long v3, v0

    .line 157
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->entrySize()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->streamMapSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 175
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfEntries:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->numberOfFolders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->estimateSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Archive with %,d entries in %,d folders, estimated size %,d KiB."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
