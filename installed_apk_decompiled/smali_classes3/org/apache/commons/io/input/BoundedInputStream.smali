.class public Lorg/apache/commons/io/input/BoundedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "BoundedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/BoundedInputStream$Builder;,
        Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    }
.end annotation


# instance fields
.field private count:J

.field private mark:J

.field private final maxCount:J

.field private final onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    .line 333
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/io/input/BoundedInputStream$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/io/input/BoundedInputStream$Builder;)V
    .locals 2

    .line 337
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;)V

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 338
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    .line 339
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getMaxCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    .line 340
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->isPropagateClose()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 341
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getOnMaxCount()Lorg/apache/commons/io/function/IOBiConsumer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/io/input/BoundedInputStream$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;)V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 316
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    .line 317
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getMaxCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    .line 318
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->isPropagateClose()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 319
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getOnMaxCount()Lorg/apache/commons/io/function/IOBiConsumer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;
    .locals 1

    .line 293
    new-instance v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private isMaxCount()Z
    .locals 4

    .line 440
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toReadLen(J)J
    .locals 4

    .line 573
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method


# virtual methods
.method protected declared-synchronized afterRead(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 368
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    .line 370
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->isMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxLength(JJ)V

    const/4 v0, 0x0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V

    :cond_0
    return-void
.end method

.method public declared-synchronized getCount()J
    .locals 2

    monitor-enter p0

    .line 404
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxCount()J
    .locals 2

    .line 414
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    return-wide v0
.end method

.method public getMaxLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    return-wide v0
.end method

.method public getRemaining()J
    .locals 4

    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getMaxCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPropagateClose()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 460
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method protected onMaxLength(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxCount:Lorg/apache/commons/io/function/IOBiConsumer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/function/IOBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->isMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxLength(JJ)V

    const/4 v0, -0x1

    return v0

    .line 502
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

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

    .line 514
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->read([BII)I

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

    .line 528
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->isMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-wide p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxLength(JJ)V

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v0, p3

    .line 532
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->toReadLen(J)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 543
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropagateClose(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 555
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 567
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream;->toReadLen(J)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide p1

    .line 568
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
