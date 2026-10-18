.class public Lorg/apache/commons/io/input/TimestampedObserver;
.super Lorg/apache/commons/io/input/ObservableInputStream$Observer;
.source "TimestampedObserver.java"


# instance fields
.field private volatile closeInstant:Ljava/time/Instant;

.field private final openInstant:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;-><init>()V

    .line 46
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public closed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    return-void
.end method

.method public getCloseInstant()Ljava/time/Instant;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    return-object v0
.end method

.method public getOpenInstant()Ljava/time/Instant;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    return-object v0
.end method

.method public getOpenToCloseDuration()Ljava/time/Duration;
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    iget-object v1, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getOpenToNowDuration()Ljava/time/Duration;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimestampedObserver [openInstant="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/io/input/TimestampedObserver;->openInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/input/TimestampedObserver;->closeInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
