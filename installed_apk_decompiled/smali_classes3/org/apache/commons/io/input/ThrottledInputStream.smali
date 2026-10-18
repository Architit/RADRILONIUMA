.class public final Lorg/apache/commons/io/input/ThrottledInputStream;
.super Lorg/apache/commons/io/input/CountingInputStream;
.source "ThrottledInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    }
.end annotation


# instance fields
.field private final maxBytesPerSecond:D

.field private final startTime:J

.field private totalSleepDuration:Ljava/time/Duration;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->startTime:J

    .line 220
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    .line 224
    invoke-static {p1}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    .line 227
    invoke-static {p1}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:D

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bandwidth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is invalid."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;Lorg/apache/commons/io/input/ThrottledInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ThrottledInputStream;-><init>(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .locals 1

    .line 200
    new-instance v0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private getBytesPerSecond()J
    .locals 4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v0

    return-wide v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v2

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private getSleepMillis()J
    .locals 6

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->startTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/ThrottledInputStream;->toSleepMillis(JJD)J

    move-result-wide v0

    return-wide v0
.end method

.method private throttle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getSleepMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 270
    iget-object v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    .line 272
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Thread aborted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method static toSleepMillis(JJD)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    const-wide/16 v2, 0x0

    cmpg-double v2, p4, v2

    if-lez v2, :cond_2

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    div-double/2addr p0, p4

    const-wide p4, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p4

    long-to-double p2, p2

    sub-double/2addr p0, p2

    double-to-long p0, p0

    cmp-long p2, p0, v0

    if-gtz p2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected beforeRead(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->throttle()V

    return-void
.end method

.method getMaxBytesPerSecond()D
    .locals 2

    .line 250
    iget-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:D

    return-wide v0
.end method

.method getTotalSleepDuration()Ljava/time/Duration;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThrottledInputStream[bytesRead="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getBytesPerSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSleepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
