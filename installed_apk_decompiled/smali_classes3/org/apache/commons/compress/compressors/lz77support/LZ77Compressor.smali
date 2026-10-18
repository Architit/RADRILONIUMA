.class public Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.super Ljava/lang/Object;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;
    }
.end annotation


# static fields
.field private static final HASH_MASK:I = 0x7fff

.field private static final HASH_SIZE:I = 0x8000

.field private static final H_SHIFT:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field static final NUMBER_OF_BYTES_IN_HASH:I = 0x3


# instance fields
.field private blockStart:I

.field private final callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

.field private currentPosition:I

.field private final head:[I

.field private initialized:Z

.field private insertHash:I

.field private lookahead:I

.field private matchStart:I

.field private missedInserts:I

.field private final params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

.field private final prev:[I

.field private final wMask:I

.field private final window:[B


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V
    .locals 2

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 324
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 339
    const-string v1, "params"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    const-string v1, "callback"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 343
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 345
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result p1

    mul-int/lit8 p2, p1, 0x2

    .line 346
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 p2, p1, -0x1

    .line 347
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    const p2, 0x8000

    .line 348
    new-array p2, p2, [I

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/ArrayFill;->fill([II)[I

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 349
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    return-void
.end method

.method private catchUpMissedInserts()V
    .locals 3

    .line 353
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    if-lez v0, :cond_0

    .line 354
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    .line 360
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatching()Z

    move-result v1

    .line 361
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatchingThreshold()I

    move-result v2

    .line 363
    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lt v3, v0, :cond_5

    .line 364
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->catchUpMissedInserts()V

    .line 366
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 367
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v6}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 369
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v3

    if-eqz v1, :cond_2

    if-gt v3, v2, :cond_2

    .line 371
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-le v5, v0, :cond_2

    .line 373
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatchForNextPosition(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-lt v3, v0, :cond_4

    .line 377
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v5, v6, :cond_3

    .line 379
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 380
    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 382
    :cond_3
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushBackReference(I)V

    .line 383
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertStringsInMatch(I)V

    .line 384
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 385
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 386
    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_0

    .line 389
    :cond_4
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 390
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 391
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxLiteralLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 393
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method private doCompress([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    .line 433
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->slide()V

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 437
    iget-boolean p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result p2

    if-lt p1, p2, :cond_1

    .line 438
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    .line 440
    :cond_1
    iget-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-eqz p1, :cond_2

    .line 441
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress()V

    :cond_2
    return-void
.end method

.method private flushBackReference(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method private flushLiteralBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;-><init>([BII)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 472
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    return-void
.end method

.method private insertString(I)I
    .locals 5

    .line 485
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 486
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    aget v2, v1, v0

    .line 487
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v4, p1

    aput v2, v3, v4

    .line 488
    aput p1, v1, v0

    return v2
.end method

.method private insertStringsInMatch(I)V
    .locals 4

    add-int/lit8 v0, p1, -0x1

    .line 495
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_0

    .line 498
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 500
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    return-void
.end method

.method private longestMatch(I)I
    .locals 12

    .line 511
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 513
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxBackReferenceLength()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 514
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 515
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getNiceBackReferenceLength()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 516
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxCandidates()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    if-lt p1, v2, :cond_3

    move v7, v3

    move v8, v7

    :goto_1
    if-ge v7, v1, :cond_1

    .line 520
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int v10, p1, v7

    aget-byte v10, v9, v10

    iget v11, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v11, v7

    aget-byte v9, v9, v11

    if-eq v10, v9, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-le v8, v0, :cond_2

    .line 527
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    move v0, v8

    if-lt v8, v4, :cond_2

    goto :goto_3

    .line 533
    :cond_2
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v8, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr p1, v8

    aget p1, v7, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v0
.end method

.method private longestMatchForNextPosition(I)I
    .locals 6

    .line 540
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 541
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 543
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 544
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 545
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v2

    .line 546
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v4, v5

    aget v3, v3, v4

    .line 547
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 552
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 555
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aput v3, v0, v2

    .line 556
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 557
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 558
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    return p1
.end method

.method private nextHash(IB)I
    .locals 0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p1, p1, 0x5

    xor-int/2addr p1, p2

    and-int/lit16 p1, p1, 0x7fff

    return p1
.end method

.method private slide()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    .line 611
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v1, v2, :cond_0

    if-ge v1, v0, :cond_0

    .line 612
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 613
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 615
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 617
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 618
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    move v1, v2

    :goto_0
    const v3, 0x8000

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 620
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    aget v5, v3, v1

    if-lt v5, v0, :cond_1

    sub-int v4, v5, v0

    .line 621
    :cond_1
    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_4

    .line 624
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    aget v3, v1, v2

    if-lt v3, v0, :cond_3

    sub-int/2addr v3, v0

    goto :goto_2

    :cond_3
    move v3, v4

    .line 625
    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public compress([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 406
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method

.method public compress([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    :goto_0
    if-le p3, v0, :cond_0

    .line 420
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 425
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lez v0, :cond_1

    .line 456
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 457
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    invoke-static {}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;->access$000()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method public prefill([B)V
    .locals 4

    .line 588
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 594
    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x3

    if-lt v0, p1, :cond_1

    .line 597
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    add-int/lit8 p1, v0, -0x2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 600
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 602
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    goto :goto_1

    .line 604
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 606
    :goto_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    return-void

    .line 589
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The compressor has already started to accept data, can\'t prefill anymore"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
