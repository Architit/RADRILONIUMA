.class public Lorg/apache/commons/io/input/ReadAheadInputStream;
.super Ljava/io/FilterInputStream;
.source "ReadAheadInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
    }
.end annotation


# static fields
.field private static final BYTE_ARRAY_1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private activeBuffer:Ljava/nio/ByteBuffer;

.field private final asyncReadComplete:Ljava/util/concurrent/locks/Condition;

.field private endOfStream:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isClosed:Z

.field private isReading:Z

.field private isUnderlyingInputStreamBeingClosed:Z

.field private final isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private readAborted:Z

.field private readAheadBuffer:Ljava/nio/ByteBuffer;

.field private readException:Ljava/lang/Throwable;

.field private readInProgress:Z

.field private final shutdownExecutorService:Z

.field private final stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static synthetic $r8$lambda$cP932H2nA4Uo10rUydLTRzAUSL0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/ReadAheadInputStream;->BYTE_ARRAY_1:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-static {}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V
    .locals 1

    .line 239
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    if-lez p2, :cond_0

    .line 243
    const-string p1, "executorService"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 244
    iput-boolean p4, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->shutdownExecutorService:Z

    .line 245
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 246
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    .line 247
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 248
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "bufferSizeInBytes should be greater than 0, but the value is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->getBufferSize()I

    move-result v1

    invoke-static {p1}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 201
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 200
    :goto_1
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;Lorg/apache/commons/io/input/ReadAheadInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
    .locals 1

    .line 130
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private checkReadException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 265
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 267
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method private closeUnderlyingInputStreamIfNecessary()V
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 310
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z

    .line 311
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isUnderlyingInputStreamBeingClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_1

    .line 320
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 316
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 317
    throw v0
.end method

.method private isEndOfStream()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0()[B
    .locals 1

    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [B

    return-object v0
.end method

.method private static newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-read-ahead"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static newExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 151
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private readAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 388
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->checkReadException()V

    .line 392
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 393
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v1, 0x1

    .line 394
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 398
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/ReadAheadInputStream;[B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 396
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 397
    throw v0
.end method

.method private signalAsyncReadComplete()V
    .locals 2

    .line 464
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 466
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 469
    throw v0
.end method

.method private skipInternal(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 505
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    long-to-int v0, p1

    .line 512
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    .line 516
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 517
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 518
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 519
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->swapBuffers()V

    .line 521
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    return-wide p1

    .line 514
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Expected toSkip > 0, actual: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 526
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 527
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 528
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 529
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 530
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 531
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    add-long/2addr v2, p1

    return-wide v2

    .line 502
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expected stateChangeLock to be locked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private swapBuffers()V
    .locals 2

    .line 539
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 540
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 541
    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private waitForAsyncReadComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 547
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 550
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 559
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 564
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->checkReadException()V

    return-void

    :catchall_0
    move-exception v0

    .line 561
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 554
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 556
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    :goto_1
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 561
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    throw v1

    :catchall_2
    move-exception v0

    .line 561
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 256
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    .line 258
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 259
    throw v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 279
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    .line 280
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z

    if-nez v1, :cond_1

    .line 284
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isUnderlyingInputStreamBeingClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->shutdownExecutorService:Z

    if-eqz v1, :cond_3

    .line 292
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 293
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 300
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 295
    :try_start_3
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 297
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    .line 300
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 302
    :cond_2
    throw v1

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 287
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    throw v0
.end method

.method synthetic lambda$readAsync$1$org-apache-commons-io-input-ReadAheadInputStream([B)V
    .locals 6

    .line 399
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 401
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 402
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 409
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 407
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 409
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 423
    array-length v2, p1

    move v3, v1

    move v4, v3

    .line 429
    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_3

    .line 435
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_1

    .line 444
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 446
    :try_start_3
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_4

    goto :goto_1

    .line 448
    :cond_4
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 453
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 454
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 456
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    throw p1

    :catchall_1
    move-exception p1

    .line 438
    :try_start_4
    instance-of v2, p1, Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_7

    .line 444
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 446
    :try_start_5
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_6

    .line 447
    instance-of v2, p1, Ljava/io/EOFException;

    if-eqz v2, :cond_5

    goto :goto_2

    .line 450
    :cond_5
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 451
    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_3

    .line 448
    :cond_6
    :goto_2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 453
    :goto_3
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 454
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 456
    :goto_4
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    return-void

    :catchall_2
    move-exception p1

    .line 456
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    throw p1

    .line 441
    :cond_7
    :try_start_6
    move-object v2, p1

    check-cast v2, Ljava/lang/Error;

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    .line 444
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 446
    :try_start_7
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_8

    .line 447
    instance-of v3, p1, Ljava/io/EOFException;

    if-nez v3, :cond_8

    .line 450
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 451
    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_5

    .line 448
    :cond_8
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 453
    :goto_5
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 454
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 456
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    .line 459
    throw v2

    :catchall_4
    move-exception p1

    .line 456
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    throw p1

    :catchall_5
    move-exception p1

    .line 409
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    throw p1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 337
    :cond_0
    sget-object v0, Lorg/apache/commons/io/input/ReadAheadInputStream;->BYTE_ARRAY_1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    .line 338
    aput-byte v1, v0, v1

    const/4 v2, 0x1

    .line 339
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/io/input/ReadAheadInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    .line 344
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 356
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    .line 359
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 360
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->isEndOfStream()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 369
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, -0x1

    return p1

    .line 365
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->swapBuffers()V

    .line 367
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    throw p1

    .line 372
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 373
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    .line 345
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 479
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1

    .line 482
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 485
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/ReadAheadInputStream;->skipInternal(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 488
    throw p1
.end method
