.class public Lorg/apache/commons/lang3/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/StopWatch$State;,
        Lorg/apache/commons/lang3/time/StopWatch$SplitState;
    }
.end annotation


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L


# instance fields
.field private final message:Ljava/lang/String;

.field private runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

.field private splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

.field private startInstant:Ljava/time/Instant;

.field private startTimeNanos:J

.field private stopInstant:Ljava/time/Instant;

.field private stopTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/StopWatch;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 213
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 265
    iput-object p1, p0, Lorg/apache/commons/lang3/time/StopWatch;->message:Ljava/lang/String;

    return-void
.end method

.method public static create()Lorg/apache/commons/lang3/time/StopWatch;
    .locals 1

    .line 183
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/StopWatch;-><init>()V

    return-object v0
.end method

.method public static createStarted()Lorg/apache/commons/lang3/time/StopWatch;
    .locals 1

    .line 193
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/StopWatch;-><init>()V

    .line 194
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch;->start()V

    return-object v0
.end method

.method private nanosToMillis(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 547
    div-long/2addr p1, v0

    return-wide p1
.end method

.method private startResume()V
    .locals 1

    .line 654
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->start()V

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->resume()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public formatSplitTime()Ljava/lang/String;
    .locals 2

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatTime()Ljava/lang/String;
    .locals 2

    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/StopWatch;->startResume()V

    .line 299
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    .line 302
    throw p1
.end method

.method public getDuration()Ljava/time/Duration;
    .locals 2

    .line 316
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNanoTime()J
    .locals 4

    .line 341
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal running state has occurred."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTimeNanos:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeNanos:J

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    .line 348
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeNanos:J

    goto :goto_0
.end method

.method public getSplitDuration()Ljava/time/Duration;
    .locals 2

    .line 367
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitNanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getSplitNanoTime()J
    .locals 4

    .line 382
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    if-ne v0, v1, :cond_0

    .line 385
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTimeNanos:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeNanos:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplitTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitNanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/time/StopWatch;->nanosToMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartInstant()Ljava/time/Instant;
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startInstant:Ljava/time/Instant;

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getStartInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStopInstant()Ljava/time/Instant;
    .locals 2

    .line 440
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopInstant:Ljava/time/Instant;

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStopTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getStopInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public getT(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TT;TE;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 471
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/StopWatch;->startResume()V

    .line 473
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/lang3/function/FailableSupplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    .line 476
    throw p1
.end method

.method public getTime()J
    .locals 2

    .line 490
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/time/StopWatch;->nanosToMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 507
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStarted()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStopped()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 558
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 559
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method

.method public resume()V
    .locals 6

    .line 572
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 575
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTimeNanos:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeNanos:J

    .line 576
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 0

    .line 586
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/StopWatch;->startResume()V

    .line 588
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    .line 591
    throw p1
.end method

.method public runT(Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableRunnable<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 603
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/StopWatch;->startResume()V

    .line 605
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/lang3/function/FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->suspend()V

    .line 608
    throw p1
.end method

.method public split()V
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 625
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTimeNanos:J

    .line 626
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2

    .line 639
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    .line 642
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 645
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeNanos:J

    .line 646
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startInstant:Ljava/time/Instant;

    .line 647
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 671
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_2

    .line 675
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTimeNanos:J

    .line 676
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopInstant:Ljava/time/Instant;

    .line 678
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void
.end method

.method public suspend()V
    .locals 2

    .line 691
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 694
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTimeNanos:J

    .line 695
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopInstant:Ljava/time/Instant;

    .line 696
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 692
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 3

    .line 711
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->message:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->formatSplitTime()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 728
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->message:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->formatTime()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public unsplit()V
    .locals 2

    .line 743
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    if-ne v0, v1, :cond_0

    .line 746
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
