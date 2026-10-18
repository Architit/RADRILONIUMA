.class public Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "ThrottledInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ThrottledInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/ThrottledInputStream;",
        "Lorg/apache/commons/io/input/ThrottledInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private maxBytesPerSecond:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 80
    iput-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;)D
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    return-wide v0
.end method

.method private setMaxBytesPerSecond(D)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    .line 176
    iput-wide p1, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    return-object p1

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bandwidth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " must be > 0."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->get()Lorg/apache/commons/io/input/ThrottledInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ThrottledInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/apache/commons/io/input/ThrottledInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ThrottledInputStream;-><init>(Lorg/apache/commons/io/input/ThrottledInputStream$Builder;Lorg/apache/commons/io/input/ThrottledInputStream$1;)V

    return-object v0
.end method

.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 75
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;

    move-result-object v0

    return-object v0
.end method

.method getMaxBytesPerSecond()D
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:D

    return-wide v0
.end method

.method public bridge synthetic setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method setMaxBytes(JLjava/time/Duration;)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .locals 4

    .line 161
    const-string v0, "duration"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/time/Duration;

    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    long-to-double p1, p1

    mul-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->setMaxBytesPerSecond(D)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    return-object p1
.end method

.method public setMaxBytes(JLjava/time/temporal/ChronoUnit;)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .locals 0

    .line 138
    invoke-virtual {p3}, Ljava/time/temporal/ChronoUnit;->getDuration()Ljava/time/Duration;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->setMaxBytes(JLjava/time/Duration;)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    return-object p1
.end method

.method public setMaxBytesPerSecond(J)V
    .locals 0

    long-to-double p1, p1

    .line 187
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->setMaxBytesPerSecond(D)Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    return-void
.end method
