.class final Lorg/apache/commons/io/file/Counters$LongCounter;
.super Ljava/lang/Object;
.source "Counters.java"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongCounter"
.end annotation


# instance fields
.field private value:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$LongCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 237
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 246
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 249
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 250
    iget-wide v3, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 260
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .locals 2

    .line 265
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 270
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 4

    .line 275
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 280
    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
