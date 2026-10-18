.class public Lorg/apache/commons/io/input/QueueInputStream;
.super Ljava/io/InputStream;
.source "QueueInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/QueueInputStream$Builder;
    }
.end annotation


# instance fields
.field private final blockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-static {}, Lorg/apache/commons/io/input/QueueInputStream;->builder()Lorg/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)Lorg/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 179
    invoke-static {p1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->access$100(Lorg/apache/commons/io/input/QueueInputStream$Builder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-string v1, "blockingQueue"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 180
    invoke-static {p1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->access$200(Lorg/apache/commons/io/input/QueueInputStream$Builder;)Ljava/time/Duration;

    move-result-object p1

    const-string v0, "timeout"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;Lorg/apache/commons/io/input/QueueInputStream$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Lorg/apache/commons/io/input/QueueInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/QueueInputStream$Builder;
    .locals 1

    .line 148
    new-instance v0, Lorg/apache/commons/io/input/QueueInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/QueueInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method getBlockingQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method getTimeout()Ljava/time/Duration;
    .locals 2

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newQueueOutputStream()Lorg/apache/commons/io/output/QueueOutputStream;
    .locals 2

    .line 207
    new-instance v0, Lorg/apache/commons/io/output/QueueOutputStream;

    iget-object v1, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public read()I
    .locals 4

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v1, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 250
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 257
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    iget-object v2, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1, p3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 259
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/io/input/QueueInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v3

    .line 265
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v2, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v2, v1, p3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 269
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int v2, p2, v0

    .line 270
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 251
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Range [%d, %<d + %d) out of bounds for length %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
