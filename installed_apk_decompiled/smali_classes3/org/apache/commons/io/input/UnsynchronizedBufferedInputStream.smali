.class public final Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;
.super Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;
.source "UnsynchronizedBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;
    }
.end annotation


# instance fields
.field protected volatile buffer:[B

.field protected count:I

.field protected markLimit:I

.field protected markPos:I

.field protected pos:I


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 157
    invoke-virtual {p1}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;->getBufferSize()I

    move-result p1

    if-lez p1, :cond_0

    .line 161
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;-><init>(Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;)V

    return-void
.end method

.method private fillBuffer(Ljava/io/InputStream;[B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markLimit:I

    if-lt v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-nez v0, :cond_2

    .line 206
    array-length v2, p2

    if-le v4, v2, :cond_2

    .line 208
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    .line 212
    :goto_0
    new-array v0, v4, [B

    .line 213
    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    move-object p2, v0

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    .line 218
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_3
    :goto_1
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 222
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 223
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 224
    iget p2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p2, p1

    :goto_2
    iput p2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    return p1

    .line 198
    :cond_5
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_6

    .line 200
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 201
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 202
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    :cond_6
    return p1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->inputStream:Ljava/io/InputStream;

    .line 174
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 177
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 175
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 188
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->inputStream:Ljava/io/InputStream;

    .line 189
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method getBuffer()[B
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    return-object v0
.end method

.method public mark(I)V
    .locals 0

    .line 242
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markLimit:I

    .line 243
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 270
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->inputStream:Ljava/io/InputStream;

    .line 271
    const-string v2, "Stream is closed"

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 276
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_0

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v1

    if-ne v1, v5, :cond_0

    return v5

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eq v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    :goto_0
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 289
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_3
    return v5

    .line 272
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 312
    const-string v1, "Stream is closed"

    if-eqz v0, :cond_11

    .line 316
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_10

    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_f

    .line 328
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    if-ge v3, v4, :cond_4

    sub-int v5, v4, v3

    if-lt v5, p3, :cond_1

    move v4, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v3

    .line 331
    :goto_0
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    if-eq v4, p3, :cond_3

    .line 333
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p2, v4

    sub-int v3, p3, v4

    goto :goto_2

    :cond_3
    :goto_1
    return v4

    :cond_4
    move v3, p3

    .line 347
    :goto_2
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    array-length v4, v0

    if-lt v3, v4, :cond_6

    .line 348
    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_c

    if-ne v3, p3, :cond_5

    goto :goto_3

    :cond_5
    sub-int v5, p3, v3

    :goto_3
    return v5

    .line 353
    :cond_6
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v5, :cond_8

    if-ne v3, p3, :cond_7

    goto :goto_4

    :cond_7
    sub-int v5, p3, v3

    :goto_4
    return v5

    .line 357
    :cond_8
    iget-object v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eq v0, v4, :cond_a

    .line 358
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eqz v0, :cond_9

    goto :goto_5

    .line 360
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_a
    :goto_5
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    iget v5, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int v6, v4, v5

    if-lt v6, v3, :cond_b

    move v4, v3

    goto :goto_6

    :cond_b
    sub-int/2addr v4, v5

    .line 365
    :goto_6
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    iget v5, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    :cond_c
    sub-int/2addr v3, v4

    if-nez v3, :cond_d

    return p3

    .line 372
    :cond_d
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_e

    sub-int/2addr p3, v3

    return p3

    :cond_e
    add-int/2addr p2, v4

    goto :goto_2

    .line 324
    :cond_f
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 313
    :cond_11
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eqz v0, :cond_1

    .line 391
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 394
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    return-void

    .line 392
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 409
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->inputStream:Ljava/io/InputStream;

    .line 410
    const-string v2, "Stream is closed"

    if-eqz v0, :cond_6

    const-wide/16 v3, 0x1

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    if-eqz v1, :cond_5

    .line 420
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int v4, v2, v3

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_1

    long-to-int v0, p1

    add-int/2addr v3, v0

    .line 423
    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    return-wide p1

    :cond_1
    sub-int v3, v2, v3

    .line 427
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 429
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markLimit:I

    int-to-long v5, v2

    cmp-long v2, p1, v5

    if-gtz v2, :cond_4

    .line 430
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v0

    if-ne v0, v4, :cond_2

    int-to-long p1, v3

    return-wide p1

    .line 433
    :cond_2
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int v2, v0, v1

    int-to-long v4, v2

    int-to-long v6, v3

    sub-long v6, p1, v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    long-to-int v0, p1

    sub-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 436
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    return-wide p1

    :cond_3
    sub-int p1, v0, v1

    add-int/2addr v3, p1

    .line 441
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    int-to-long p1, v3

    return-wide p1

    :cond_4
    int-to-long v2, v3

    sub-long/2addr p1, v2

    .line 444
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    .line 417
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
