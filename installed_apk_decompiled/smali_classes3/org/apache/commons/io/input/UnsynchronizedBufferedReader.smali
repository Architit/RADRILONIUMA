.class public Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;
.super Lorg/apache/commons/io/input/UnsynchronizedReader;
.source "UnsynchronizedBufferedReader.java"


# static fields
.field private static final NUL:C


# instance fields
.field private buf:[C

.field private end:I

.field private final in:Ljava/io/Reader;

.field private mark:I

.field private markLimit:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x2000

    .line 94
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 86
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    if-lez p2, :cond_0

    .line 108
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 109
    new-array p1, p2, [C

    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fillBuf()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int/2addr v3, v0

    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    if-lt v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_2

    .line 155
    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    array-length v5, v3

    if-le v4, v5, :cond_2

    .line 157
    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    .line 161
    :goto_0
    new-array v0, v4, [C

    .line 162
    array-length v4, v3

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    .line 166
    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 168
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 169
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 173
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 175
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    :cond_4
    return v0

    .line 146
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_6

    .line 148
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 149
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 150
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    :cond_6
    return v0
.end method


# virtual methods
.method final chompNewline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 117
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 132
    invoke-super {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->close()V

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    .line 196
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    .line 197
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    return-void

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark(I)V

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->read()I

    move-result v0

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->reset()V

    return v0
.end method

.method public peek([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    array-length v0, p1

    .line 235
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark(I)V

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->read([CII)I

    move-result p1

    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->reset()V

    return p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    .line 253
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 254
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    aget-char v0, v0, v1

    return v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    if-ltz p2, :cond_9

    .line 275
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_9

    if-ltz p3, :cond_9

    move v0, p3

    :cond_0
    const/4 v1, -0x1

    if-lez v0, :cond_6

    .line 284
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    if-lt v2, v0, :cond_1

    move v2, v0

    .line 287
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    invoke-static {v4, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    :cond_2
    if-eqz v0, :cond_6

    if-ge v0, p3, :cond_3

    .line 297
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 307
    :cond_3
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    if-eq v2, v1, :cond_4

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int/2addr v3, v2

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    if-lt v3, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 308
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/Reader;->read([CII)I

    move-result p1

    if-lez p1, :cond_6

    sub-int/2addr v0, p1

    .line 311
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    goto :goto_0

    .line 317
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_6
    :goto_0
    sub-int p1, p3, v0

    if-gtz p1, :cond_7

    if-ne p1, p3, :cond_8

    :cond_7
    move v1, p1

    :cond_8
    return v1

    .line 276
    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readLine()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    .line 336
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v0

    if-ne v0, v3, :cond_0

    return-object v2

    .line 339
    :cond_0
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    :goto_0
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ge v0, v1, :cond_6

    .line 340
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    aget-char v1, v1, v0

    if-le v1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v5, :cond_2

    .line 345
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int v4, v0, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    add-int/lit8 v0, v0, 0x1

    .line 346
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    return-object v1

    :cond_2
    if-ne v1, v4, :cond_5

    .line 350
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int v6, v0, v4

    invoke-direct {v1, v2, v4, v6}, Ljava/lang/String;-><init>([CII)V

    add-int/lit8 v0, v0, 0x1

    .line 351
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 352
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    aget-char v0, v0, v2

    if-ne v0, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 353
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iget v7, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    sub-int/2addr v7, v6

    invoke-virtual {v0, v1, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 365
    :goto_2
    iget v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    iput v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    if-ne v1, v5, :cond_7

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 372
    :cond_7
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v6

    if-ne v6, v3, :cond_a

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    return-object v2

    .line 376
    :cond_a
    iget v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    :goto_3
    iget v7, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    if-ge v6, v7, :cond_11

    .line 377
    iget-object v7, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    aget-char v8, v7, v6

    if-eqz v1, :cond_e

    if-ne v1, v4, :cond_c

    if-ne v8, v5, :cond_c

    .line 380
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    if-le v6, v1, :cond_b

    sub-int v2, v6, v1

    add-int/lit8 v2, v2, -0x1

    .line 381
    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 383
    iput v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    goto :goto_4

    .line 385
    :cond_c
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    if-le v6, v1, :cond_d

    sub-int v2, v6, v1

    add-int/lit8 v2, v2, -0x1

    .line 386
    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 388
    :cond_d
    iput v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 390
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    if-eq v8, v5, :cond_f

    if-ne v8, v4, :cond_10

    :cond_f
    move v1, v8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_11
    if-nez v1, :cond_12

    .line 397
    iget-object v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v8, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 399
    :cond_12
    iget-object v6, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v8, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    .line 416
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    .line 429
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    return-void

    .line 430
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark == -1"

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

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_5

    .line 452
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->checkOpen()V

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    return-wide v0

    .line 456
    :cond_0
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    .line 457
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    return-wide p1

    :cond_1
    sub-int v1, v0, v1

    int-to-long v1, v1

    .line 462
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    :goto_0
    cmp-long v0, v1, p1

    if-gez v0, :cond_4

    .line 464
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    return-wide v1

    .line 467
    :cond_2
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    sub-int v4, v0, v3

    int-to-long v4, v4

    sub-long v6, p1, v1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 468
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    return-wide p1

    :cond_3
    sub-int v3, v0, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 473
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    goto :goto_0

    :cond_4
    return-wide p1

    .line 450
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
