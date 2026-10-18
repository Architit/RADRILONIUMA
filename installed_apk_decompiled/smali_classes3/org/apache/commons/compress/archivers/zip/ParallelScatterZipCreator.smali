.class public Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;
.super Ljava/lang/Object;
.source "ParallelScatterZipCreator.java"


# instance fields
.field private final backingStoreSupplier:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

.field private compressionDoneAt:J

.field private final compressionLevel:I

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final futures:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/concurrent/Future<",
            "+",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;>;"
        }
    .end annotation
.end field

.field private scatterDoneAt:J

.field private final startedAt:J

.field private final streams:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final tlScatterStreams:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 94
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)V
    .locals 1

    const/4 v0, -0x1

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/Deque;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/Deque;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->startedAt:J

    .line 67
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->tlScatterStreams:Ljava/lang/ThreadLocal;

    if-ltz p3, :cond_0

    const/16 v0, 0x9

    if-le p3, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 122
    :cond_1
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->backingStoreSupplier:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

    .line 123
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 124
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionLevel:I

    return-void

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Compression level is expected between -1~9"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->backingStoreSupplier:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createDeferred(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Ljava/util/Deque;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/Deque;

    return-object p0
.end method

.method private closeAll()V
    .locals 2

    .line 155
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 156
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createDeferred(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;->get()Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    move-result-object p1

    .line 219
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionLevel:I

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object v0

    .line 220
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;-><init>(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;Lorg/apache/commons/compress/archivers/zip/StreamCompressor;)V

    return-object v1
.end method


# virtual methods
.method public addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->submitStreamAwareCallable(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->submitStreamAwareCallable(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/parallel/InputStreamSupplier;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 183
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->createZipArchiveEntryRequest(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    move-result-object p1

    .line 184
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V

    return-object p2

    .line 181
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method must be set on zipArchiveEntry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)V

    return-object v0
.end method

.method public getStatisticsMessage()Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;
    .locals 7

    .line 229
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionDoneAt:J

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->startedAt:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->scatterDoneAt:J

    sub-long/2addr v5, v1

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;-><init>(JJ)V

    return-object v0
.end method

.method synthetic lambda$createCallable$0$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->tlScatterStreams:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 186
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V

    return-object v0
.end method

.method synthetic lambda$createCallable$1$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->tlScatterStreams:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 210
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;->get()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V

    return-object v0
.end method

.method synthetic lambda$submit$2$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator(Ljava/util/concurrent/Callable;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 241
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->tlScatterStreams:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 239
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->submitStreamAwareCallable(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final submitStreamAwareCallable(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/Deque;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeTo(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 276
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 277
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 283
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionDoneAt:J

    .line 288
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 289
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 290
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter()Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->writeNextZipEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V

    goto :goto_1

    .line 293
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 294
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->close()V

    goto :goto_2

    .line 297
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->scatterDoneAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->closeAll()V

    return-void

    :catchall_0
    move-exception p1

    .line 280
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 281
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 299
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->closeAll()V

    .line 300
    throw p1
.end method
