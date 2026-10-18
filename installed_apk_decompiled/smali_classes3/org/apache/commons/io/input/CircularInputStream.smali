.class public Lorg/apache/commons/io/input/CircularInputStream;
.super Lorg/apache/commons/io/input/AbstractInputStream;
.source "CircularInputStream.java"


# instance fields
.field private byteCount:J

.field private position:I

.field private final repeatedContent:[B

.field private final targetByteCount:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/io/input/AbstractInputStream;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 65
    invoke-static {p1}, Lorg/apache/commons/io/input/CircularInputStream;->validate([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    .line 66
    array-length p1, p1

    if-eqz p1, :cond_0

    .line 69
    iput-wide p2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "repeatContent is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static validate([B)[B
    .locals 4

    .line 44
    const-string v0, "repeatContent"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeatContent contains the end-of-stream marker -1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CircularInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const v3, 0x7fffffff

    if-gtz v2, :cond_1

    long-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-super {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->close()V

    .line 81
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    return-void
.end method

.method public read()I
    .locals 4

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/CircularInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 90
    iput-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    .line 92
    :cond_2
    iget v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 93
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
