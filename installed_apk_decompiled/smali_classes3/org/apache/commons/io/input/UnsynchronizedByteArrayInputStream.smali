.class public Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.super Ljava/io/InputStream;
.source "UnsynchronizedByteArrayInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    }
.end annotation


# static fields
.field public static final END_OF_STREAM:I = -0x1


# instance fields
.field private final data:[B

.field private final eod:I

.field private markedOffset:I

.field private offset:I


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-static {p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->access$100(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->access$200(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)I

    move-result v1

    invoke-static {p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->access$300(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    array-length v0, p1

    const-string v1, "offset"

    invoke-static {p2, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->requireNonNegative(ILjava/lang/String;)I

    move-result v1

    invoke-static {p1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->minPosLen([BI)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->minPosLen([BI)I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 247
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->requireNonNegative(ILjava/lang/String;)I

    .line 248
    const-string v0, "length"

    invoke-static {p3, v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->requireNonNegative(ILjava/lang/String;)I

    .line 249
    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 250
    invoke-static {p1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->minPosLen([BI)I

    move-result v0

    add-int/2addr v0, p3

    array-length p3, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 251
    invoke-static {p1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->minPosLen([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 252
    invoke-static {p1, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->minPosLen([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void
.end method

.method private constructor <init>([BIII)V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 256
    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 257
    iput p2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 258
    iput p3, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 259
    iput p4, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    .line 171
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private static minPosLen([BI)I
    .locals 1

    .line 175
    const-string v0, "defaultValue"

    invoke-static {p1, v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->requireNonNegative(ILjava/lang/String;)I

    .line 176
    array-length v0, p0

    if-lez v0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static requireNonNegative(ILjava/lang/String;)I
    .locals 1

    if-ltz p0, :cond_0

    return p0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be negative"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 264
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public mark(I)V
    .locals 0

    .line 270
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 280
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 285
    const-string v0, "dest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 286
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 291
    const-string v0, "dest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 292
    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 296
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v1, v0

    if-ge p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-gtz p3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 307
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    return p3

    .line 293
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 315
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    return-void
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 324
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    move-wide v2, p1

    .line 329
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    return-wide v2

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Skipping backward is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
