.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;,
        Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_NAME:Ljava/lang/String; = "unknown archive"

.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private compressedBytesReadFromCurrentEntry:J

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private final maxMemoryLimitKiB:I

.field private password:[B

.field private final tryToRecoverBrokenArchives:Z

.field private uncompressedBytesReadFromCurrentEntry:J

.field private final useDefaultNameForUnnamedEntries:Z


# direct methods
.method public static synthetic $r8$lambda$4BQ5ArfWXirWkxf9s4XfDylm8lY()[B
    .locals 1

    invoke-static {}, Lorg/apache/commons/io/IOUtils;->byteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VOm64xXfZ2rfTCb1WE1acSh87S4(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cOGEan9qYZ2WnG4ze1FuzNShUbE(Ljava/lang/Integer;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 340
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 527
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->newByteChannel(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->newByteChannel(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    .line 513
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p3

    .line 512
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 743
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    .line 647
    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 447
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 448
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 653
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 654
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 655
    iput p5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKiB:I

    .line 656
    iput-boolean p6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->useDefaultNameForUnnamedEntries:Z

    .line 657
    iput-boolean p7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToRecoverBrokenArchives:Z

    .line 659
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    if-eqz p3, :cond_0

    .line 661
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 663
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_1

    .line 668
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 670
    :cond_1
    throw p1
.end method

.method synthetic constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZLorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct/range {p0 .. p7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v5

    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getUseDefaultNameForUnnamedEntries()Z

    move-result v6

    .line 688
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getTryToRecoverBrokenArchives()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 687
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    const-string v0, "unknown archive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$114(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method private static assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int p0, p1

    return p0

    .line 345
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot handle % %,d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 749
    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v3, v2, p4

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {p3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 781
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 782
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move-object v1, p2

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 783
    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v7

    .line 787
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v2

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKiB:I

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v1

    .line 788
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, v7, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 784
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Multi input/output stream coders are not yet supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :cond_1
    invoke-virtual {p5, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 791
    iget-boolean p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz p2, :cond_2

    .line 793
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    new-instance p3, Ljava/util/zip/CRC32;

    invoke-direct {p3}, Ljava/util/zip/CRC32;-><init>()V

    .line 794
    invoke-virtual {p2, p3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    .line 795
    invoke-virtual {p2, v1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 796
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    iget-wide p3, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 797
    invoke-virtual {p2, p3, p4}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p1

    .line 798
    invoke-virtual {p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private buildDecodingStream(IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    if-eqz v0, :cond_7

    .line 817
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v0, v0, p1

    if-gez v0, :cond_0

    .line 819
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v1, v1, p1

    .line 826
    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_3

    if-lez p1, :cond_1

    .line 833
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 839
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 840
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aget v2, v2, v0

    .line 841
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v2, v4, v2

    .line 842
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 846
    :cond_3
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 848
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    move v2, v3

    :goto_0
    if-eqz p2, :cond_4

    .line 854
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipEntriesWhenNeeded(IZI)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-eqz p2, :cond_5

    .line 857
    iget p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ne p2, p1, :cond_5

    if-nez v0, :cond_5

    return-void

    .line 866
    :cond_5
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 867
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 868
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 869
    invoke-virtual {p1, v3}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 870
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object p1

    .line 871
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 873
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 874
    invoke-virtual {p2, v0}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    .line 875
    invoke-virtual {p2, p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 876
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p1

    .line 877
    invoke-virtual {p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object p1

    .line 881
    :cond_6
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 815
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Archive doesn\'t contain stream information to read entries"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static builder()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 1

    .line 357
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;-><init>()V

    return-object v0
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 887
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 889
    aput v4, v1, v3

    .line 890
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 893
    :cond_0
    iget-object v3, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v3, v3

    .line 894
    new-array v4, v3, [J

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_1

    .line 896
    aput-wide v5, v4, v7

    .line 897
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v9, v8, v7

    add-long/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 899
    :cond_1
    new-array v0, v0, [I

    .line 900
    iget-object v3, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v3, v3

    new-array v3, v3, [I

    move v5, v2

    move v6, v5

    move v7, v6

    .line 903
    :goto_2
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v8, v8

    if-ge v5, v8, :cond_9

    .line 904
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isEmptyStream()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v6, :cond_2

    const/4 v8, -0x1

    .line 905
    aput v8, v3, v5

    goto :goto_6

    :cond_2
    if-nez v6, :cond_6

    .line 909
    :goto_3
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 910
    aput v5, v0, v7

    .line 911
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v8, v8, v7

    iget v8, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 915
    :cond_4
    :goto_4
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v8

    if-ge v7, v8, :cond_5

    goto :goto_5

    .line 916
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Too few folders in archive"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 919
    :cond_6
    :goto_5
    aput v7, v3, v5

    .line 920
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isEmptyStream()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 924
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v8, v8, v7

    iget v8, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v6, v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v6, v2

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 929
    :cond_9
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v2, v1, v4, v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>([I[J[I[I)V

    iput-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    return-void
.end method

.method private static checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-object p0

    .line 363
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "remaining %,d < expectRemaining %,d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkEntryIsInitialized(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;I)V"
        }
    .end annotation

    .line 933
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method private static get(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 369
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static getChar(Ljava/nio/ByteBuffer;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 373
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    return p0
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/commons/compress/utils/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 960
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 963
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_3

    .line 967
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 968
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda4;-><init>()V

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v0, v4, v5, v1}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;JLjava/util/function/Supplier;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 969
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 970
    :cond_1
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 967
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 972
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 961
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInt(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 377
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method private static getLong(Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 381
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 386
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private hasCurrentEntryBeenRead()Z
    .locals 8

    .line 1094
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1095
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 1098
    instance-of v2, v0, Lorg/apache/commons/io/input/ChecksumInputStream;

    if-eqz v2, :cond_0

    .line 1099
    check-cast v0, Lorg/apache/commons/io/input/ChecksumInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ChecksumInputStream;->getRemaining()J

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    .line 1100
    :cond_0
    instance-of v2, v0, Lorg/apache/commons/io/input/BoundedInputStream;

    if-eqz v2, :cond_1

    .line 1101
    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getRemaining()J

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    const-string v0, "nextHeaderSize"

    iget-wide v1, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1109
    iget-wide v0, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v0, v0

    .line 1110
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v2, 0x20

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v4, v2

    invoke-interface {v1, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    if-eqz p3, :cond_2

    .line 1112
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p3}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v1

    .line 1113
    new-instance p3, Ljava/util/zip/CheckedInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v3}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p3, v3, v4}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    int-to-long v3, v0

    .line 1114
    invoke-virtual {p3, v3, v4}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 1117
    iget-wide v3, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {p3}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    .line 1120
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    .line 1118
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "NextHeader CRC-32 mismatch"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1115
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Problem computing NextHeader CRC-32"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1122
    :cond_2
    :goto_0
    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 1123
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 1124
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1125
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    .line 1127
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 1129
    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 1130
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_3
    const/4 p2, 0x1

    if-ne v0, p2, :cond_4

    .line 1135
    invoke-direct {p0, p3, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    const/4 p2, 0x0

    .line 1136
    iput-object p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    return-object p1

    .line 1133
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Broken or unsupported archive: no Header"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$checkEntryIsInitialized$0(Ljava/lang/Integer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 0

    .line 933
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$readFilesInfo$1(Lorg/apache/commons/compress/archivers/sevenz/Archive;)Ljava/lang/String;
    .locals 2

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isEmptyStream for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readFilesInfo$2(Lorg/apache/commons/compress/archivers/sevenz/Archive;)Ljava/lang/String;
    .locals 2

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isEmptyStream for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readFilesInfo$3(I)[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 0

    .line 1415
    new-array p0, p0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    return-object p0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 400
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    .line 403
    :goto_0
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 404
    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static newByteChannel(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/4 v1, 0x1

    .line 1193
    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1196
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1203
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1205
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1206
    new-array v0, v0, [B

    .line 1207
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1208
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p2, :cond_2

    if-nez v3, :cond_0

    .line 1219
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/16 v3, 0x80

    :cond_0
    and-int v5, v4, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    .line 1221
    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1229
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    .line 1230
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1231
    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKiB:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->assertValidity(I)V

    .line 1232
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1234
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1236
    iget-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1239
    iget-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1244
    iget-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-wide/16 v1, 0x20

    .line 1246
    iget-wide v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v3, v1

    .line 1248
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1249
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object p2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v3, p2, v0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 1250
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1251
    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1254
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 1255
    invoke-virtual {p1, v6}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v4

    iget v8, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKiB:I

    move-object v7, p3

    .line 1254
    invoke-static/range {v2 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 1252
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Multi input/output stream coders are not yet supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1257
    :cond_1
    iget-boolean p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz p2, :cond_2

    .line 1259
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    new-instance p3, Ljava/util/zip/CRC32;

    invoke-direct {p3}, Ljava/util/zip/CRC32;-><init>()V

    .line 1260
    invoke-virtual {p2, p3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    .line 1261
    invoke-virtual {p2, v3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 1262
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    iget-wide v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 1263
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p2

    .line 1264
    invoke-virtual {p2}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v3

    .line 1267
    :cond_2
    const-string p2, "unpackSize"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result p1

    .line 1268
    invoke-static {v3, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object p2

    .line 1269
    array-length p3, p2

    if-lt p3, p1, :cond_3

    .line 1272
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1273
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 1270
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "premature end of stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1240
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no packed streams, can\'t read encoded header"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1237
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no folders, can\'t read encoded header"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1277
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1278
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    .line 1283
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_a

    move v1, v9

    move v8, v1

    move v10, v8

    :goto_1
    if-ge v1, v3, :cond_9

    .line 1389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    if-nez v11, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v12, 0x1

    if-eqz v5, :cond_2

    .line 1393
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    move v13, v9

    goto :goto_3

    :cond_2
    :goto_2
    move v13, v12

    :goto_3
    invoke-virtual {v11, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 1394
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1395
    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    if-eqz v12, :cond_4

    .line 1398
    invoke-virtual {v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1399
    invoke-virtual {v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1400
    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v12, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1401
    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v14, v12, v10

    invoke-virtual {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 1402
    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v13, v12, v10

    invoke-virtual {v11, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1403
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1404
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "broken archive, entry with negative size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1396
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Archive contains file with streams but no subStreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-eqz v6, :cond_7

    .line 1408
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_4

    :cond_6
    move v13, v9

    goto :goto_5

    :cond_7
    :goto_4
    move v13, v12

    :goto_5
    invoke-virtual {v11, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    if-eqz v7, :cond_8

    .line 1409
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    move v12, v9

    :goto_6
    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1410
    invoke-virtual {v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    const-wide/16 v12, 0x0

    .line 1411
    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v8, v8, 0x1

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1415
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iput-object v1, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1416
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    return-void

    .line 1287
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    const/16 v12, 0x19

    if-eq v8, v12, :cond_13

    packed-switch v8, :pswitch_data_0

    .line 1381
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    :cond_b
    move-object/from16 v16, v4

    goto/16 :goto_e

    .line 1361
    :pswitch_0
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    .line 1362
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :goto_8
    if-ge v9, v3, :cond_b

    .line 1364
    invoke-direct {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1365
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1366
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 1367
    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1368
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1348
    :pswitch_1
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    .line 1349
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :goto_9
    if-ge v9, v3, :cond_b

    .line 1351
    invoke-direct {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1352
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1353
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 1354
    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1355
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1335
    :pswitch_2
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    .line 1336
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :goto_a
    if-ge v9, v3, :cond_b

    .line 1338
    invoke-direct {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1339
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1340
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 1341
    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1342
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1322
    :pswitch_3
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v8

    .line 1323
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :goto_b
    if-ge v9, v3, :cond_b

    .line 1325
    invoke-direct {v0, v4, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1326
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1327
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 1328
    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1329
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1302
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    long-to-int v8, v10

    .line 1303
    new-array v10, v8, [B

    .line 1305
    invoke-static {v1, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    move v11, v9

    move v12, v11

    :goto_c
    if-ge v9, v8, :cond_11

    .line 1309
    aget-byte v13, v10, v9

    if-nez v13, :cond_10

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v10, v13

    if-nez v13, :cond_10

    .line 1310
    invoke-direct {v0, v4, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1311
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    new-instance v14, Ljava/lang/String;

    sub-int v15, v9, v11

    move-object/from16 v16, v4

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v14, v10, v11, v15, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v4, v9, 0x2

    add-int/lit8 v12, v12, 0x1

    move v11, v4

    goto :goto_d

    :cond_10
    move-object/from16 v16, v4

    :goto_d
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v4, v16

    goto :goto_c

    :cond_11
    move-object/from16 v16, v4

    if-ne v11, v8, :cond_12

    if-ne v12, v3, :cond_12

    goto :goto_e

    .line 1317
    :cond_12
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error parsing file names"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    move-object/from16 v16, v4

    .line 1298
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    invoke-static {v5, v4}, Lorg/apache/commons/compress/archivers/ArchiveException;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    move-object v7, v4

    goto :goto_e

    :pswitch_6
    move-object/from16 v16, v4

    .line 1294
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    invoke-static {v5, v4}, Lorg/apache/commons/compress/archivers/ArchiveException;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    move-object v6, v4

    goto :goto_e

    :pswitch_7
    move-object/from16 v16, v4

    .line 1290
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    move-object v5, v4

    goto :goto_e

    :cond_13
    move-object/from16 v16, v4

    .line 1376
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    :goto_e
    move-object/from16 v4, v16

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1420
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 1422
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1423
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x1

    if-ge v9, v2, :cond_6

    .line 1427
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v12

    and-int/lit8 v13, v12, 0xf

    and-int/lit8 v14, v12, 0x10

    const/4 v15, 0x1

    if-nez v14, :cond_0

    move v14, v15

    goto :goto_1

    :cond_0
    move v14, v6

    :goto_1
    and-int/lit8 v16, v12, 0x20

    if-eqz v16, :cond_1

    move/from16 v16, v15

    goto :goto_2

    :cond_1
    move/from16 v16, v6

    :goto_2
    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    move v15, v6

    .line 1433
    :goto_3
    new-array v12, v13, [B

    .line 1434
    invoke-static {v0, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    if-eqz v14, :cond_3

    move-wide/from16 v19, v10

    move-wide/from16 v21, v19

    goto :goto_4

    .line 1441
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 1442
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    move-wide/from16 v19, v10

    move-wide/from16 v21, v13

    :goto_4
    add-long v4, v4, v19

    add-long v7, v7, v21

    if-eqz v16, :cond_4

    .line 1448
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 1449
    new-array v10, v10, [B

    .line 1450
    invoke-static {v0, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v23, v10

    if-nez v15, :cond_5

    .line 1457
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    invoke-direct/range {v17 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>([BJJ[B)V

    aput-object v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1454
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :cond_6
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1460
    iput-wide v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 1461
    iput-wide v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    sub-long/2addr v7, v10

    long-to-int v2, v7

    .line 1464
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    move v9, v6

    :goto_6
    if-ge v9, v2, :cond_7

    .line 1466
    new-instance v12, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    invoke-direct {v12, v13, v14, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>(JJ)V

    aput-object v12, v3, v9

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v10, 0x1

    goto :goto_6

    .line 1468
    :cond_7
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    sub-long v2, v4, v7

    long-to-int v7, v2

    .line 1471
    new-array v8, v7, [J

    const-wide/16 v9, 0x1

    cmp-long v2, v2, v9

    if-nez v2, :cond_a

    move v0, v6

    :goto_7
    long-to-int v2, v4

    if-ge v0, v2, :cond_9

    .line 1475
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v2

    if-gez v2, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    int-to-long v2, v0

    .line 1479
    aput-wide v2, v8, v6

    goto :goto_a

    :cond_a
    :goto_9
    if-ge v6, v7, :cond_b

    .line 1482
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1485
    :cond_b
    :goto_a
    iput-object v8, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    return-object v1
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1491
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1492
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1493
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1497
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1498
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckAndCollectStatistics(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    move-result-object v1

    .line 1499
    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKiB:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->assertValidity(I)V

    .line 1500
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1502
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1505
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 1506
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1515
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1516
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1520
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1521
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :cond_2
    return-void

    .line 1510
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Additional streams unsupported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 1526
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1527
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x6

    .line 1528
    new-array v1, v1, [B

    .line 1529
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1530
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1534
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1535
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v1, :cond_4

    .line 1541
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 1544
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    const/16 v4, 0x14

    .line 1545
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1546
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1547
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v5, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1549
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1550
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1563
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToRecoverBrokenArchives:Z

    if-eqz v0, :cond_2

    .line 1564
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object p1

    return-object p1

    .line 1566
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1560
    :cond_3
    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object p1

    return-object p1

    .line 1537
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unsupported 7z version (%d,%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1531
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad 7z signature"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1571
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 1572
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1573
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1575
    new-array v1, v0, [J

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    move v1, v3

    .line 1576
    :goto_0
    iget-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1577
    iget-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1579
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 1583
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 1584
    new-array v1, v0, [J

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    :goto_1
    if-ge v3, v0, :cond_3

    .line 1586
    iget-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1587
    iget-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v4, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1591
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :cond_4
    return-void
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1597
    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 1599
    invoke-virtual {v1, v2}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v4, 0x14

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 1600
    invoke-virtual {v1, v2}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 1601
    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v1

    .line 1602
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p1

    .line 1603
    invoke-virtual {p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1605
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-ltz p1, :cond_1

    const-wide/16 p1, 0x20

    add-long v4, v2, p1

    .line 1606
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 1609
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    add-long v6, v2, v4

    cmp-long v1, v6, v2

    if-ltz v1, :cond_0

    add-long/2addr v6, p1

    .line 1611
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide p1

    cmp-long p1, v6, p1

    if-gtz p1, :cond_0

    .line 1614
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    int-to-long p1, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v6, p1

    .line 1615
    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object p1

    .line 1612
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "nextHeaderSize is out of bounds"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1607
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "nextHeaderOffset is out of bounds"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 1597
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1620
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1623
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1624
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1628
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1629
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1632
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->EMPTY_FOLDER_ARRAY:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1636
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1637
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :cond_2
    return-void
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1642
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 1643
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1645
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    int-to-long v1, v1

    .line 1647
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/16 v6, 0xd

    const-wide/16 v7, 0x0

    if-ne v4, v6, :cond_2

    .line 1650
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    move-wide v9, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 1651
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    long-to-int v13, v11

    .line 1652
    iput v13, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1655
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    move-wide v1, v9

    :cond_2
    long-to-int v1, v1

    .line 1659
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>(I)V

    .line 1661
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x9

    if-ge v9, v6, :cond_6

    aget-object v12, v1, v9

    .line 1662
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v13, :cond_3

    goto :goto_4

    :cond_3
    move-wide v13, v7

    if-ne v4, v11, :cond_4

    const/4 v11, 0x0

    .line 1667
    :goto_3
    iget v15, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v15, v5

    if-ge v11, v15, :cond_4

    .line 1668
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v15

    .line 1669
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v17, v10, 0x1

    aput-wide v15, v3, v10

    add-long/2addr v13, v15

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v17

    goto :goto_3

    .line 1673
    :cond_4
    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v15

    cmp-long v3, v13, v15

    if-gtz v3, :cond_5

    .line 1676
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v15

    sub-long/2addr v15, v13

    aput-wide v15, v3, v10

    move v10, v11

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1674
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "sum of unpack sizes of folder exceeds total unpack size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne v4, v11, :cond_7

    .line 1679
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1683
    :cond_7
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v6, v3, :cond_a

    aget-object v8, v1, v6

    .line 1684
    iget v9, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v9, v5, :cond_8

    iget-boolean v9, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v9, :cond_9

    .line 1685
    :cond_8
    iget v8, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v7, v8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    const/16 v1, 0xa

    if-ne v4, v1, :cond_10

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1690
    invoke-direct {v1, v3, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    .line 1691
    new-array v6, v7, [J

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    .line 1693
    invoke-virtual {v4, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1694
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    aput-wide v9, v6, v8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1699
    :cond_c
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v9, v8, :cond_f

    aget-object v12, v7, v9

    .line 1700
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v13, v5, :cond_d

    iget-boolean v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v13, :cond_d

    .line 1701
    iget-object v13, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v13, v10, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 1702
    iget-object v13, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    iget-wide v14, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_d
    const/4 v13, 0x0

    .line 1705
    :goto_8
    iget v14, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v13, v14, :cond_e

    .line 1706
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v4, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    invoke-virtual {v14, v10, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 1707
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v15, v6, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1714
    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    goto :goto_a

    :cond_10
    move-object/from16 v1, p0

    .line 1717
    :goto_a
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    return-void
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x80

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_1

    int-to-long v9, v2

    and-long/2addr v9, v0

    cmp-long v9, v9, v3

    if-nez v9, :cond_0

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    mul-int/2addr v5, v8

    shl-long/2addr v0, v5

    or-long/2addr v0, v6

    return-wide v0

    .line 424
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v8, v8

    mul-int/lit8 v10, v5, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1721
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1722
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1723
    new-array v1, v0, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1724
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1725
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1727
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move v2, p2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1731
    aget-object v3, v1, v2

    .line 1732
    const-string v4, "totalOutputStreams"

    iget-wide v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    invoke-static {v4, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1733
    iget-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v4, v4

    new-array v4, v4, [J

    iput-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    move v4, p2

    :goto_2
    int-to-long v5, v4

    .line 1734
    iget-wide v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 1735
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1739
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 1741
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move v3, p2

    :goto_3
    if-ge v3, v0, :cond_4

    .line 1743
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1744
    aget-object v4, v1, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 1745
    aget-object v4, v1, v3

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    iput-wide v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 1747
    :cond_3
    aget-object v4, v1, v3

    iput-boolean p2, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1751
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    :cond_5
    return-void
.end method

.method private reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1763
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1764
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 1766
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1768
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v2, v0, p1

    .line 1769
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v5, v0, p1

    .line 1770
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v3, 0x20

    add-long/2addr v0, v3

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v3, p1, v5

    add-long/2addr v3, v0

    move-object v1, p0

    move-object v6, p2

    .line 1772
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    return-void
.end method

.method private sanityCheckAndCollectStatistics(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1776
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    .line 1778
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1781
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 1782
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1791
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1792
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1796
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1797
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    .line 1801
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Badly terminated header, found "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1786
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Additional streams unsupported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sanityCheckArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1810
    const-string v0, "propertySize"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v0

    int-to-long v0, v0

    .line 1811
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 1814
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    goto :goto_0

    .line 1812
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "invalid property size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private sanityCheckFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1819
    const-string v0, "numFiles"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$402(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    const/4 v0, -0x1

    move v1, v0

    .line 1823
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1935
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p2, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$502(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    return-void

    .line 1827
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 1828
    const-string v6, "Not implemented"

    packed-switch v2, :pswitch_data_0

    .line 1928
    :pswitch_0
    invoke-static {p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_11

    goto :goto_0

    .line 1920
    :pswitch_1
    invoke-static {p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    .line 1921
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incomplete kDummy property"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1914
    :pswitch_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "kStartPos is unsupported, please report"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1903
    :pswitch_3
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 1904
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_3

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    .line 1908
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    goto :goto_0

    .line 1909
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid windows attributes size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1906
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1892
    :pswitch_4
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 1893
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_5

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 1897
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    goto/16 :goto_0

    .line 1898
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid modification dates size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1895
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1881
    :pswitch_5
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 1882
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_7

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 1886
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_6

    goto/16 :goto_0

    .line 1887
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid access dates size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1884
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1870
    :pswitch_6
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 1871
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_9

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 1875
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    goto/16 :goto_0

    .line 1876
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid creation dates size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1873
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1848
    :pswitch_7
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-nez v2, :cond_e

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 1852
    const-string v2, "file names length"

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_d

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_b

    .line 1859
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getChar(Ljava/nio/ByteBuffer;)C

    move-result v5

    if-nez v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1864
    :cond_b
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    if-ne v4, v2, :cond_c

    goto/16 :goto_0

    .line 1865
    :cond_c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid number of file names ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1854
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File names length invalid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1850
    :cond_e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8
    if-eq v1, v0, :cond_f

    .line 1844
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    goto/16 :goto_0

    .line 1842
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_9
    if-eq v1, v0, :cond_10

    .line 1837
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    goto/16 :goto_0

    .line 1835
    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1830
    :pswitch_a
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    goto/16 :goto_0

    .line 1929
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Incomplete property of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sanityCheckFolder(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1940
    const-string v2, "numCoders"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    if-eqz v2, :cond_10

    int-to-long v3, v2

    .line 1944
    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$614(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move-wide v9, v7

    move v6, v5

    :goto_0
    const-wide/16 v11, 0x1

    const/4 v13, 0x1

    if-ge v6, v2, :cond_6

    .line 1949
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v14

    and-int/lit8 v15, v14, 0xf

    .line 1951
    new-array v15, v15, [B

    invoke-static {v0, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    and-int/lit8 v15, v14, 0x10

    if-nez v15, :cond_0

    move v15, v13

    goto :goto_1

    :cond_0
    move v15, v5

    :goto_1
    and-int/lit8 v16, v14, 0x20

    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    move v13, v5

    :goto_2
    and-int/lit16 v14, v14, 0x80

    if-nez v14, :cond_5

    if-eqz v15, :cond_2

    add-long/2addr v7, v11

    goto :goto_3

    .line 1964
    :cond_2
    const-string v11, "numInStreams"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 1965
    const-string v11, "numOutStreams"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    :goto_3
    add-long/2addr v9, v11

    if-eqz v13, :cond_4

    .line 1969
    const-string v11, "propertiesSize"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    .line 1970
    invoke-static {v0, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    cmp-long v11, v13, v11

    if-ltz v11, :cond_3

    goto :goto_4

    .line 1971
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid propertiesSize in folder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1957
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_6
    const-string v2, "totalInStreams"

    invoke-static {v2, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1976
    const-string v2, "totalOutStreams"

    invoke-static {v2, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1977
    invoke-static {v1, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$714(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1978
    invoke-static {v1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$814(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_f

    .line 1984
    const-string v1, "numBindPairs"

    sub-long v2, v9, v11

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v1

    int-to-long v2, v1

    cmp-long v4, v7, v2

    if-ltz v4, :cond_e

    .line 1988
    new-instance v4, Ljava/util/BitSet;

    long-to-int v6, v7

    invoke-direct {v4, v6}, Ljava/util/BitSet;-><init>(I)V

    move v6, v5

    :goto_5
    if-ge v6, v1, :cond_9

    .line 1990
    const-string v11, "inIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v11

    int-to-long v14, v11

    cmp-long v12, v7, v14

    if-lez v12, :cond_8

    .line 1994
    invoke-virtual {v4, v11}, Ljava/util/BitSet;->set(I)V

    .line 1995
    const-string v11, "outIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static {v11, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1997
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "outIndex is bigger than number of outStreams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inIndex is bigger than number of inStreams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2001
    :cond_9
    const-string v1, "numPackedStreams"

    sub-long v2, v7, v2

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v1

    if-ne v1, v13, :cond_b

    .line 2004
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    goto :goto_7

    .line 2005
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_6
    if-ge v5, v1, :cond_d

    .line 2009
    const-string v2, "packedStreamIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2011
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "packedStreamIndex is bigger than number of totalInStreams"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    long-to-int v0, v9

    return v0

    .line 1986
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1981
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total output streams can\'t be 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder without coders"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sanityCheckPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2020
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    .line 2021
    const-string v7, ") is out of range"

    if-ltz v6, :cond_6

    const-wide/16 v8, 0x20

    add-long/2addr v8, v2

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gtz v6, :cond_6

    cmp-long v6, v8, v4

    if-ltz v6, :cond_6

    .line 2024
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 2025
    const-string v6, "numPackStreams"

    invoke-static {v6, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v6

    move-object/from16 v10, p2

    invoke-static {v10, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$902(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 2026
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/16 v11, 0x9

    if-ne v6, v11, :cond_2

    const/4 v6, 0x0

    move-wide v11, v4

    .line 2029
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v13

    if-ge v6, v13, :cond_1

    .line 2030
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    add-long/2addr v11, v13

    add-long v15, v8, v11

    cmp-long v17, v13, v4

    if-ltz v17, :cond_0

    .line 2033
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    cmp-long v4, v15, v4

    if-gtz v4, :cond_0

    cmp-long v4, v15, v2

    if-ltz v4, :cond_0

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2034
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packSize ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2037
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    :cond_2
    const/16 v2, 0xa

    if-ne v6, v2, :cond_4

    .line 2041
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    .line 2042
    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3

    .line 2045
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    goto :goto_1

    .line 2043
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid number of CRCs in PackInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    return-void

    .line 2049
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Badly terminated PackInfo ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2022
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packPos ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2057
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 2058
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2062
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 2063
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 2067
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 2068
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 2072
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly terminated StreamsInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sanityCheckSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2078
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2079
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    .line 2081
    :goto_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2082
    const-string v2, "numStreams"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2084
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1102(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 2085
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1

    .line 2087
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1102(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 2090
    :goto_1
    const-string v2, "totalUnpackStreams"

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    .line 2093
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_3
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_2

    .line 2098
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2100
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "negative unpackSize"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2104
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2108
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2109
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result p2

    goto :goto_6

    :cond_7
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v1

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p2

    sub-int p2, v1, p2

    goto :goto_6

    .line 2112
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 2113
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v6

    goto :goto_5

    :cond_9
    move v2, v6

    goto :goto_4

    :cond_a
    :goto_5
    add-int/2addr v3, v4

    goto :goto_4

    :cond_b
    move p2, v3

    :goto_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 2120
    const-string v0, "numDigests"

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 2121
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    int-to-long v0, p2

    .line 2122
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_c

    .line 2125
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_7

    .line 2123
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid number of missing CRCs in SubStreamInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_7
    if-nez v0, :cond_e

    return-void

    .line 2129
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly terminated SubStreamsInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sanityCheckUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2134
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 2138
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 2139
    const-string v2, "numFolders"

    invoke-static {v2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 2140
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2145
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2146
    :goto_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2147
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckFolder(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2150
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$700(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 2151
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$800(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 2152
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    .line 2156
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 2161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    .line 2163
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2165
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative unpackSize"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2170
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2172
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1202(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;Ljava/util/BitSet;)Ljava/util/BitSet;

    .line 2173
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    int-to-long v0, p2

    .line 2174
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_4

    .line 2177
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_2

    .line 2175
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid number of CRCs in UnpackInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    return-void

    .line 2181
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly terminated UnpackInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2158
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected kCodersUnpackSize, got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2153
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "archive doesn\'t contain enough packed streams"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2142
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "External unsupported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2136
    :cond_a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Expected kFolder, got "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .locals 4

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 435
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 436
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    move-wide p1, v1

    :cond_1
    long-to-int v1, p1

    add-int/2addr v0, v1

    .line 440
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method

.method private skipEntriesWhenNeeded(IZI)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2207
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v0, v0, p1

    .line 2210
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->hasCurrentEntryBeenRead()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 2219
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 2221
    iget p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ge p2, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    .line 2228
    :cond_1
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    :cond_2
    :goto_0
    if-ge v1, p1, :cond_4

    .line 2233
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object p2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object p2, p2, v1

    .line 2234
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object p3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 2235
    invoke-virtual {p3, v4}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 2236
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 2237
    invoke-virtual {p3, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 2238
    invoke-virtual {p3}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object p3

    .line 2239
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2241
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v4

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 2242
    invoke-virtual {v4, v5}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v4

    .line 2243
    invoke-virtual {v4, p3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 2244
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p3

    .line 2245
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object p3

    .line 2246
    invoke-virtual {p3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object p3

    .line 2249
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2263
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2266
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v3

    const-wide/16 v5, 0x14

    add-long/2addr v3, v5

    .line 2269
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    add-long/2addr v5, v7

    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v9}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    .line 2270
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v5

    goto :goto_0

    .line 2272
    :cond_0
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v5

    sub-long/2addr v5, v7

    .line 2274
    :goto_0
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    :catch_0
    :cond_1
    :goto_1
    cmp-long v11, v7, v5

    if-lez v11, :cond_5

    sub-long/2addr v7, v9

    .line 2278
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v11, v7, v8}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2279
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2280
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v11, v2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v11

    if-lt v11, v1, :cond_4

    .line 2283
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    const/16 v13, 0x17

    if-eq v11, v13, :cond_2

    if-ne v11, v1, :cond_3

    :cond_2
    sub-long v15, v7, v3

    .line 2289
    :try_start_0
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v11}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v13

    sub-long v17, v13, v7

    .line 2290
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    const-wide/16 v19, 0x0

    move-object v14, v11

    invoke-direct/range {v14 .. v20}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>(JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p1

    .line 2291
    :try_start_1
    invoke-direct {v0, v11, v13, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v11

    .line 2293
    iget-object v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v12, v12

    if-lez v12, :cond_1

    iget-object v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v12, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v12, :cond_1

    return-object v11

    :catch_1
    :cond_3
    move-object/from16 v13, p1

    goto :goto_1

    .line 2281
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2301
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Start header corrupt and unable to guess end header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 945
    :try_start_0
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 948
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v0, :cond_0

    .line 949
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 951
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 947
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 948
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 949
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 951
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 952
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 3

    .line 987
    const-string v0, "unknown archive"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 992
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 994
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 996
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1029
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1030
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    const/4 p1, 0x1

    .line 1040
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(IZ)V

    .line 1041
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 1042
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget p1, p1, v0

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 1043
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 1037
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1056
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 1057
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 1058
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->useDefaultNameForUnnamedEntries:Z

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 1061
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(IZ)V

    const-wide/16 v1, 0x0

    .line 1062
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .locals 1

    .line 1073
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1150
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1163
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result p1

    return p1
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

    .line 1180
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    .line 1182
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    :cond_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2259
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
