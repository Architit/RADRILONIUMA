.class public Lorg/apache/commons/lang3/time/DurationUtils;
.super Ljava/lang/Object;
.source "DurationUtils.java"


# static fields
.field static final LONG_TO_INT_RANGE:Lorg/apache/commons/lang3/LongRange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MIN_VALUE:Ljava/lang/Long;

    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MAX_VALUE:Ljava/lang/Long;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/LongRange;->of(Ljava/lang/Long;Ljava/lang/Long;)Lorg/apache/commons/lang3/LongRange;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DurationUtils;->LONG_TO_INT_RANGE:Lorg/apache/commons/lang3/LongRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/time/Duration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/time/Duration;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/time/DurationUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getNanosOfMiili(Ljava/time/Duration;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DurationUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    move-result p0

    return p0
.end method

.method public static getNanosOfMilli(Ljava/time/Duration;)I
    .locals 1

    .line 97
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    const v0, 0xf4240

    rem-int/2addr p0, v0

    return p0
.end method

.method public static isPositive(Ljava/time/Duration;)Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/time/Duration;->isZero()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$of$0(Lorg/apache/commons/lang3/function/FailableRunnable;Ljava/time/Instant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableRunnable;->run()V

    return-void
.end method

.method private static now(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/time/Instant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "Ljava/time/Instant;",
            "TE;>;)",
            "Ljava/time/Instant;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 112
    invoke-interface {p0, v0}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/time/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "Ljava/time/Instant;",
            "TE;>;)",
            "Ljava/time/Duration;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableConsumer;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/time/DurationUtils;->now(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DurationUtils;->since(Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/apache/commons/lang3/function/FailableRunnable;)Ljava/time/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableRunnable<",
            "TE;>;)",
            "Ljava/time/Duration;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/time/DurationUtils$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/time/DurationUtils;->of(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static since(Ljava/time/temporal/Temporal;)Ljava/time/Duration;
    .locals 1

    .line 152
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method static toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;
    .locals 2

    .line 163
    sget-object v0, Lorg/apache/commons/lang3/time/DurationUtils$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    sget-object p0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 175
    :pswitch_1
    sget-object p0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 173
    :pswitch_2
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 171
    :pswitch_3
    sget-object p0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 169
    :pswitch_4
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 167
    :pswitch_5
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 165
    :pswitch_6
    sget-object p0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toDuration(JLjava/util/concurrent/TimeUnit;)Ljava/time/Duration;
    .locals 0

    .line 191
    invoke-static {p2}, Lorg/apache/commons/lang3/time/DurationUtils;->toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static toMillisInt(Ljava/time/Duration;)I
    .locals 3

    .line 210
    const-string v0, "duration"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/apache/commons/lang3/time/DurationUtils;->LONG_TO_INT_RANGE:Lorg/apache/commons/lang3/LongRange;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/LongRange;->fit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0
.end method

.method public static zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 1

    .line 222
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->getIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Duration;

    return-object p0
.end method
