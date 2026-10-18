.class final Lorg/apache/commons/compress/compressors/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final FTAB_LENGTH:I = 0x10001

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3e8

    const/16 v1, 0x64

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->STACK_SIZE:I

    const/16 v0, 0xe

    .line 112
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->STACK_SIZE:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 145
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    const/16 v0, 0x3e8

    .line 187
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    const/16 v0, 0x100

    .line 189
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 191
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 193
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    const v0, 0x10001

    .line 195
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 207
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    return-void
.end method

.method private fallbackQSort3([I[III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 260
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-wide v8, v4

    move v7, v6

    :goto_0
    if-lez v7, :cond_c

    add-int/lit8 v10, v7, -0x1

    .line 263
    invoke-direct {v0, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpop(I)[I

    move-result-object v11

    .line 264
    aget v12, v11, v3

    .line 265
    aget v11, v11, v6

    sub-int v13, v11, v12

    const/16 v14, 0xa

    if-ge v13, v14, :cond_0

    .line 268
    invoke-direct {v0, v1, v2, v12, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    move v7, v10

    goto :goto_0

    :cond_0
    const-wide/16 v13, 0x1dc5

    mul-long/2addr v8, v13

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    const-wide/32 v15, 0x8000

    .line 276
    rem-long/2addr v8, v15

    const-wide/16 v15, 0x3

    .line 277
    rem-long v15, v8, v15

    cmp-long v17, v15, v4

    if-nez v17, :cond_1

    .line 280
    aget v13, v1, v12

    aget v13, v2, v13

    :goto_1
    int-to-long v13, v13

    goto :goto_2

    :cond_1
    cmp-long v13, v15, v13

    if-nez v13, :cond_2

    add-int v13, v12, v11

    ushr-int/2addr v13, v6

    .line 282
    aget v13, v1, v13

    aget v13, v2, v13

    goto :goto_1

    .line 284
    :cond_2
    aget v13, v1, v11

    aget v13, v2, v13

    goto :goto_1

    :goto_2
    move v3, v11

    move v5, v3

    move v4, v12

    move v15, v4

    :goto_3
    if-le v15, v3, :cond_3

    goto :goto_4

    .line 297
    :cond_3
    aget v17, v1, v15

    aget v17, v2, v17

    long-to-int v6, v13

    sub-int v17, v17, v6

    if-nez v17, :cond_4

    .line 299
    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    if-lez v17, :cond_b

    :goto_4
    if-le v15, v3, :cond_5

    goto :goto_6

    .line 313
    :cond_5
    aget v6, v1, v3

    aget v6, v2, v6

    long-to-int v2, v13

    sub-int/2addr v6, v2

    if-nez v6, :cond_6

    .line 315
    invoke-direct {v0, v1, v3, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v5, v5, -0x1

    :goto_5
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v2, p2

    goto :goto_4

    :cond_6
    if-gez v6, :cond_a

    :goto_6
    if-le v15, v3, :cond_9

    if-ge v5, v4, :cond_7

    move-object/from16 v2, p2

    move v7, v10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    sub-int v2, v4, v12

    sub-int v6, v15, v4

    .line 337
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v6, v15, v2

    .line 338
    invoke-direct {v0, v1, v12, v6, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    sub-int v2, v11, v5

    sub-int/2addr v5, v3

    .line 339
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    sub-int v6, v11, v2

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 340
    invoke-direct {v0, v1, v3, v6, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    add-int/2addr v15, v12

    sub-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    sub-int v2, v11, v5

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v15, v12

    sub-int v4, v11, v2

    if-le v3, v4, :cond_8

    .line 346
    invoke-direct {v0, v10, v12, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v3, v7, 0x1

    .line 347
    invoke-direct {v0, v7, v2, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v7, v3

    goto :goto_7

    .line 349
    :cond_8
    invoke-direct {v0, v10, v2, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v2, v7, 0x1

    .line 350
    invoke-direct {v0, v7, v12, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v7, v2

    :goto_7
    move-object/from16 v2, p2

    move/from16 v6, v17

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x1

    .line 328
    invoke-direct {v0, v1, v15, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_a
    const/16 v17, 0x1

    goto :goto_5

    :cond_b
    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    :goto_8
    move-object/from16 v2, p2

    move/from16 v6, v17

    goto/16 :goto_3

    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .locals 6

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    add-int/lit8 v0, p4, -0x4

    :goto_0
    if-lt v0, p3, :cond_2

    .line 372
    aget v1, p1, v0

    .line 373
    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x4

    :goto_1
    if-gt v3, p4, :cond_1

    .line 374
    aget v4, p1, v3

    aget v5, p2, v4

    if-le v2, v5, :cond_1

    add-int/lit8 v5, v3, -0x4

    .line 375
    aput v4, p1, v5

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x4

    .line 377
    aput v1, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p4, -0x1

    :goto_2
    if-lt v0, p3, :cond_4

    .line 382
    aget v1, p1, v0

    .line 383
    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    :goto_3
    if-gt v3, p4, :cond_3

    .line 384
    aget v4, p1, v3

    aget v5, p2, v4

    if-le v2, v5, :cond_3

    add-int/lit8 v5, v3, -0x1

    .line 385
    aput v4, p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 387
    aput v1, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private fpop(I)[I
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aget p1, v1, p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method private fpush(III)V
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 538
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aput p3, p2, p1

    return-void
.end method

.method private fswap([III)V
    .locals 2

    .line 545
    aget v0, p1, p2

    .line 546
    aget v1, p1, p3

    aput v1, p1, p2

    .line 547
    aput v0, p1, p3

    return-void
.end method

.method private fvswap([IIII)V
    .locals 0

    :goto_0
    if-lez p4, :cond_0

    .line 555
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEclass()[I
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    return-object v0
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 573
    iget-object v8, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 574
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 575
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 576
    iget-object v11, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 577
    iget-object v12, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    const/4 v0, 0x0

    .line 579
    aput p2, v8, v0

    .line 580
    aput p3, v9, v0

    .line 581
    aput p4, v10, v0

    const/4 v13, 0x1

    move v0, v13

    :goto_0
    add-int/lit8 v14, v0, -0x1

    if-ltz v14, :cond_a

    .line 584
    aget v2, v8, v14

    .line 585
    aget v3, v9, v14

    .line 586
    aget v4, v10, v14

    sub-int v1, v3, v2

    const/16 v5, 0x14

    if-lt v1, v5, :cond_8

    const/16 v1, 0xa

    if-le v4, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v1, v4, 0x1

    .line 594
    aget v5, v11, v2

    add-int/2addr v5, v1

    aget-byte v5, v12, v5

    and-int/lit16 v5, v5, 0xff

    aget v15, v11, v3

    add-int/2addr v15, v1

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    add-int v16, v2, v3

    ushr-int/lit8 v16, v16, 0x1

    aget v16, v11, v16

    add-int v16, v16, v1

    aget-byte v13, v12, v16

    and-int/lit16 v13, v13, 0xff

    invoke-static {v5, v15, v13}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->med3(III)I

    move-result v5

    move v6, v2

    move v13, v6

    move v15, v3

    move/from16 v16, v15

    :goto_1
    if-gt v13, v15, :cond_2

    .line 603
    aget v17, v11, v13

    add-int v18, v17, v1

    aget-byte v7, v12, v18

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v7, v5

    if-nez v7, :cond_1

    add-int/lit8 v7, v13, 0x1

    .line 606
    aget v18, v11, v6

    aput v18, v11, v13

    add-int/lit8 v13, v6, 0x1

    .line 607
    aput v17, v11, v6

    move v6, v13

    move v13, v7

    goto/16 :goto_5

    :cond_1
    if-gez v7, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    :cond_2
    move/from16 v7, v16

    :goto_2
    if-gt v13, v15, :cond_4

    .line 616
    aget v16, v11, v15

    add-int v17, v16, v1

    move/from16 p3, v0

    aget-byte v0, v12, v17

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v0, v5

    if-nez v0, :cond_3

    add-int/lit8 v0, v15, -0x1

    .line 619
    aget v17, v11, v7

    aput v17, v11, v15

    add-int/lit8 v15, v7, -0x1

    .line 620
    aput v16, v11, v7

    move v7, v15

    move v15, v0

    goto :goto_3

    :cond_3
    if-lez v0, :cond_5

    add-int/lit8 v15, v15, -0x1

    :goto_3
    move/from16 v0, p3

    goto :goto_2

    :cond_4
    move/from16 p3, v0

    :cond_5
    if-le v13, v15, :cond_7

    if-ge v7, v6, :cond_6

    .line 637
    aput v2, v8, v14

    .line 638
    aput v3, v9, v14

    .line 639
    aput v1, v10, v14

    goto :goto_4

    :cond_6
    sub-int v0, v6, v2

    sub-int v5, v13, v6

    .line 641
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v5, v13, v0

    .line 642
    invoke-static {v11, v2, v5, v0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    sub-int v0, v3, v7

    sub-int/2addr v7, v15

    .line 643
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v5, v3, v0

    const/4 v15, 0x1

    add-int/2addr v5, v15

    .line 644
    invoke-static {v11, v13, v5, v0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    add-int/2addr v13, v2

    sub-int/2addr v13, v6

    add-int/lit8 v0, v13, -0x1

    sub-int v5, v3, v7

    add-int/lit8 v6, v5, 0x1

    .line 649
    aput v2, v8, v14

    .line 650
    aput v0, v9, v14

    .line 651
    aput v4, v10, v14

    .line 654
    aput v13, v8, p3

    .line 655
    aput v5, v9, p3

    .line 656
    aput v1, v10, p3

    add-int/lit8 v14, p3, 0x1

    .line 659
    aput v6, v8, v14

    .line 660
    aput v3, v9, v14

    .line 661
    aput v4, v10, v14

    :goto_4
    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x1

    .line 631
    aget v0, v11, v13

    add-int/lit8 v17, v13, 0x1

    .line 632
    aget v18, v11, v15

    aput v18, v11, v13

    add-int/lit8 v13, v15, -0x1

    .line 633
    aput v0, v11, v15

    move/from16 v0, p3

    move/from16 v16, v7

    move v15, v13

    move/from16 v13, v17

    :goto_5
    move-object/from16 v7, p1

    goto/16 :goto_1

    :cond_8
    :goto_6
    move/from16 v16, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    .line 589
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    :goto_7
    move v0, v14

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v13, v16

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 679
    iget-boolean v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const/4 v5, 0x0

    .line 683
    :goto_1
    sget-object v7, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v7, v7, v5

    if-ge v7, v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 687
    :cond_2
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 688
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 689
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v8, p5, 0x1

    .line 691
    iget-boolean v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 692
    iget v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 693
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1a

    .line 699
    sget-object v12, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v12, v12, v5

    add-int v13, p2, v12

    add-int/lit8 v14, v13, -0x1

    :goto_3
    if-gt v13, v2, :cond_19

    const/4 v15, 0x3

    :goto_4
    if-gt v13, v2, :cond_17

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_17

    .line 705
    aget v16, v3, v13

    add-int v17, v16, p4

    move/from16 v19, v13

    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_5
    if-eqz v18, :cond_4

    .line 724
    aput v20, v3, v19

    sub-int v4, v19, v12

    if-gt v4, v14, :cond_3

    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    goto/16 :goto_b

    :cond_3
    move/from16 v19, v4

    goto :goto_6

    :cond_4
    const/16 v18, 0x1

    :goto_6
    sub-int v4, v19, v12

    .line 732
    aget v4, v3, v4

    add-int v21, v4, p4

    add-int/lit8 v22, v21, 0x1

    .line 738
    aget-byte v6, v1, v22

    add-int/lit8 v22, v17, 0x1

    move/from16 p1, v4

    aget-byte v4, v1, v22

    if-ne v6, v4, :cond_15

    add-int/lit8 v4, v21, 0x2

    .line 739
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x2

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_14

    add-int/lit8 v4, v21, 0x3

    .line 740
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x3

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_13

    add-int/lit8 v4, v21, 0x4

    .line 741
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x4

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_12

    add-int/lit8 v4, v21, 0x5

    .line 742
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x5

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_11

    add-int/lit8 v21, v21, 0x6

    .line 743
    aget-byte v4, v1, v21

    add-int/lit8 v6, v17, 0x6

    move/from16 v22, v5

    aget-byte v5, v1, v6

    if-ne v4, v5, :cond_10

    move/from16 v4, p5

    :goto_7
    if-lez v4, :cond_f

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v5, v21, 0x1

    move/from16 v23, v4

    .line 747
    aget-byte v4, v1, v5

    add-int/lit8 v24, v6, 0x1

    move/from16 v25, v12

    aget-byte v12, v1, v24

    if-ne v4, v12, :cond_e

    .line 748
    aget-char v4, v7, v21

    aget-char v12, v7, v6

    if-ne v4, v12, :cond_d

    add-int/lit8 v4, v21, 0x2

    .line 749
    aget-byte v12, v1, v4

    add-int/lit8 v26, v6, 0x2

    move/from16 v27, v14

    aget-byte v14, v1, v26

    if-ne v12, v14, :cond_c

    .line 750
    aget-char v5, v7, v5

    aget-char v12, v7, v24

    if-ne v5, v12, :cond_b

    add-int/lit8 v5, v21, 0x3

    .line 751
    aget-byte v12, v1, v5

    add-int/lit8 v14, v6, 0x3

    move/from16 v24, v15

    aget-byte v15, v1, v14

    if-ne v12, v15, :cond_a

    .line 752
    aget-char v4, v7, v4

    aget-char v12, v7, v26

    if-ne v4, v12, :cond_9

    add-int/lit8 v4, v21, 0x4

    .line 753
    aget-byte v12, v1, v4

    add-int/lit8 v6, v6, 0x4

    aget-byte v15, v1, v6

    if-ne v12, v15, :cond_8

    .line 754
    aget-char v5, v7, v5

    aget-char v12, v7, v14

    if-ne v5, v12, :cond_7

    if-lt v4, v8, :cond_5

    sub-int/2addr v4, v8

    :cond_5
    move/from16 v21, v4

    if-lt v6, v8, :cond_6

    sub-int/2addr v6, v8

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v23

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    goto :goto_7

    :cond_7
    if-le v5, v12, :cond_16

    goto :goto_8

    :cond_8
    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v15, 0xff

    if-le v4, v5, :cond_16

    goto :goto_8

    :cond_9
    if-le v4, v12, :cond_16

    goto :goto_8

    :cond_a
    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v15, 0xff

    if-le v4, v5, :cond_16

    goto :goto_8

    :cond_b
    move/from16 v24, v15

    if-le v5, v12, :cond_16

    goto :goto_8

    :cond_c
    move/from16 v24, v15

    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v14, 0xff

    if-le v4, v5, :cond_16

    goto :goto_8

    :cond_d
    move/from16 v27, v14

    move/from16 v24, v15

    if-le v4, v12, :cond_16

    goto :goto_8

    :cond_e
    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v12, 0xff

    if-le v4, v5, :cond_16

    :goto_8
    goto/16 :goto_9

    :cond_f
    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    goto/16 :goto_a

    :cond_10
    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_16

    goto :goto_9

    :cond_11
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-le v4, v5, :cond_16

    goto :goto_9

    :cond_12
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-le v4, v5, :cond_16

    goto :goto_9

    :cond_13
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-le v4, v5, :cond_16

    goto :goto_9

    :cond_14
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-le v4, v5, :cond_16

    goto :goto_9

    :cond_15
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v5, v6, 0xff

    and-int/lit16 v4, v4, 0xff

    if-le v5, v4, :cond_16

    :goto_9
    move/from16 v20, p1

    move/from16 v5, v22

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_16
    :goto_a
    move/from16 v4, v19

    .line 840
    :goto_b
    aput v16, v3, v4

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v22

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_17
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    if-eqz v9, :cond_18

    if-gt v13, v2, :cond_18

    if-le v11, v10, :cond_18

    goto :goto_c

    :cond_18
    move/from16 v5, v22

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_19
    move/from16 v22, v5

    goto/16 :goto_2

    .line 849
    :cond_1a
    :goto_c
    iput v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-eqz v9, :cond_1b

    if-le v11, v10, :cond_1b

    const/4 v4, 0x1

    goto :goto_d

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    return v4
.end method

.method private static med3(III)I
    .locals 0

    if-ge p0, p1, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    :goto_0
    move p0, p1

    goto :goto_2

    :cond_2
    if-le p0, p2, :cond_3

    :goto_1
    move p0, p2

    :cond_3
    :goto_2
    return p0
.end method

.method private static vswap([IIII)V
    .locals 3

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 128
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 129
    aget v2, p0, p2

    aput v2, p0, p1

    add-int/lit8 p1, p2, 0x1

    .line 130
    aput v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 3

    mul-int/lit8 v0, p2, 0x1e

    .line 211
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 216
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 220
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_1

    .line 221
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 225
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    const/4 v2, -0x1

    .line 226
    iput v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    :goto_1
    if-gt v0, p2, :cond_3

    .line 228
    aget v2, v1, v0

    if-nez v2, :cond_2

    .line 229
    iput v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 5

    .line 396
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 397
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort([I[BI)V

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    .line 399
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    .line 402
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 403
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aput p2, p1, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method fallbackSort([I[BI)V
    .locals 10

    const/16 v0, 0x101

    .line 423
    new-array v1, v0, [I

    .line 434
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->getEclass()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p3, :cond_0

    .line 437
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v4, p3, :cond_1

    .line 444
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_2

    .line 447
    aget v6, v1, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, v1, v7

    add-int/2addr v6, v7

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, p3, :cond_3

    .line 451
    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    .line 452
    aget v6, v1, v4

    sub-int/2addr v6, v5

    .line 453
    aput v6, v1, v4

    .line 454
    aput v0, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p3, 0x40

    .line 458
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move p2, v3

    :goto_4
    const/16 v4, 0x100

    if-ge p2, v4, :cond_4

    .line 460
    aget v4, v1, p2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    move p2, v3

    :goto_5
    const/16 v1, 0x20

    if-ge p2, v1, :cond_5

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p3

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/2addr v1, v5

    .line 472
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    move p2, v5

    :cond_6
    move v1, v3

    move v4, v1

    :goto_6
    if-ge v1, p3, :cond_9

    .line 481
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v1

    .line 484
    :cond_7
    aget v6, p1, v1

    sub-int/2addr v6, p2

    if-gez v6, :cond_8

    add-int/2addr v6, p3

    .line 488
    :cond_8
    aput v4, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, -0x1

    move v4, v1

    move v6, v3

    :cond_a
    add-int/2addr v4, v5

    .line 497
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    if-lt v7, p3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 502
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_d

    :goto_7
    mul-int/lit8 p2, p2, 0x2

    if-gt p2, p3, :cond_c

    if-nez v6, :cond_6

    :cond_c
    return-void

    :cond_d
    if-le v4, v7, :cond_a

    sub-int v8, v4, v7

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 511
    invoke-direct {p0, p1, v2, v7, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackQSort3([I[III)V

    move v8, v1

    :goto_8
    if-gt v7, v4, :cond_a

    .line 516
    aget v9, p1, v7

    aget v9, v2, v9

    if-eq v8, v9, :cond_e

    .line 518
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v9

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8
.end method

.method mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 854
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 855
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 856
    iget-object v11, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 857
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 858
    iget-object v13, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 859
    iget-object v14, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 860
    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 861
    iget v5, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 862
    iget-boolean v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    const/4 v3, 0x0

    .line 865
    invoke-static {v12, v3}, Ljava/util/Arrays;->fill([II)V

    move v0, v3

    :goto_0
    const/16 v2, 0x14

    const/4 v1, 0x1

    if-ge v0, v2, :cond_0

    add-int v2, v8, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v16, v8, 0x1

    .line 871
    rem-int v16, v0, v16

    add-int/lit8 v16, v16, 0x1

    aget-byte v1, v13, v16

    aput-byte v1, v13, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v8, 0x15

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 874
    aput-char v3, v15, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x1

    .line 876
    aget-byte v2, v13, v0

    aput-byte v2, v13, v3

    move/from16 v17, v4

    const/16 v4, 0xff

    and-int/2addr v2, v4

    :goto_2
    if-gt v3, v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 882
    aget-byte v1, v13, v3

    and-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 883
    aget v20, v12, v2

    const/16 v19, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v2

    move v2, v1

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_3
    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_3

    .line 888
    aget v2, v12, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    .line 891
    aget-byte v2, v13, v1

    and-int/2addr v2, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_4

    add-int/lit8 v19, v3, 0x2

    .line 893
    aget-byte v1, v13, v19

    and-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 894
    aget v19, v12, v2

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aput v19, v12, v2

    aput v3, v14, v19

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move/from16 v1, v20

    goto :goto_4

    :cond_4
    move/from16 v20, v1

    .line 898
    aget-byte v0, v13, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v13, v20

    and-int/2addr v1, v4

    add-int/2addr v0, v1

    aget v1, v12, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, v12, v0

    aput v8, v14, v1

    const/16 v20, 0x100

    move/from16 v0, v20

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    const/4 v3, 0x0

    .line 904
    aput-boolean v3, v11, v0

    .line 905
    aput v0, v9, v0

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/16 v0, 0x16c

    :cond_6
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 910
    div-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_6
    if-gt v1, v4, :cond_6

    .line 912
    aget v2, v9, v1

    add-int/lit8 v18, v2, 0x1

    shl-int/lit8 v18, v18, 0x8

    .line 913
    aget v18, v12, v18

    shl-int/lit8 v21, v2, 0x8

    aget v21, v12, v21

    sub-int v3, v18, v21

    add-int/lit8 v4, v0, -0x1

    sub-int v21, v1, v0

    .line 916
    aget v21, v9, v21

    move/from16 v23, v1

    :goto_7
    add-int/lit8 v24, v21, 0x1

    shl-int/lit8 v24, v24, 0x8

    aget v24, v12, v24

    shl-int/lit8 v25, v21, 0x8

    aget v25, v12, v25

    move/from16 v26, v5

    sub-int v5, v24, v25

    if-le v5, v3, :cond_8

    .line 917
    aput v21, v9, v23

    sub-int v5, v23, v0

    if-gt v5, v4, :cond_7

    move/from16 v23, v5

    goto :goto_8

    :cond_7
    sub-int v21, v5, v0

    .line 916
    aget v21, v9, v21

    move/from16 v23, v5

    move/from16 v5, v26

    goto :goto_7

    .line 923
    :cond_8
    :goto_8
    aput v2, v9, v23

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v26

    const/4 v3, 0x0

    const/16 v4, 0xff

    goto :goto_6

    :cond_9
    move/from16 v26, v5

    const/4 v5, 0x0

    :goto_9
    if-gt v5, v4, :cond_16

    .line 934
    aget v18, v9, v5

    const/4 v3, 0x0

    :goto_a
    const/high16 v2, 0x200000

    const v0, -0x200001

    if-gt v3, v4, :cond_d

    shl-int/lit8 v1, v18, 0x8

    add-int v21, v1, v3

    .line 943
    aget v23, v12, v21

    and-int v1, v23, v2

    if-eq v1, v2, :cond_c

    and-int v1, v23, v0

    add-int/lit8 v24, v21, 0x1

    .line 946
    aget v24, v12, v24

    and-int v0, v24, v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_a

    const/16 v24, 0x2

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v27, v19

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v16, v2

    move/from16 v2, v19

    move/from16 v22, v3

    const/16 v19, 0x0

    move/from16 v3, v25

    move v7, v4

    move/from16 v4, v24

    move-object/from16 v25, v9

    move/from16 v7, v26

    move v9, v5

    move/from16 v5, p2

    .line 948
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V

    if-eqz v17, :cond_b

    .line 949
    iget v0, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-le v0, v7, :cond_b

    return-void

    :cond_a
    move/from16 v16, v2

    move/from16 v22, v3

    move-object/from16 v25, v9

    move/from16 v27, v19

    move/from16 v7, v26

    const/16 v19, 0x0

    move v9, v5

    :cond_b
    or-int v0, v23, v16

    .line 953
    aput v0, v12, v21

    goto :goto_b

    :cond_c
    move/from16 v22, v3

    move-object/from16 v25, v9

    move/from16 v7, v26

    const/16 v19, 0x0

    const/16 v27, 0x1

    move v9, v5

    :goto_b
    add-int/lit8 v3, v22, 0x1

    move/from16 v26, v7

    move v5, v9

    move-object/from16 v9, v25

    const/16 v4, 0xff

    move-object/from16 v7, p1

    goto :goto_a

    :cond_d
    move/from16 v16, v2

    move-object/from16 v25, v9

    move/from16 v7, v26

    const/16 v19, 0x0

    const/16 v27, 0x1

    move v9, v5

    move v1, v4

    move/from16 v3, v19

    :goto_c
    if-gt v3, v1, :cond_e

    shl-int/lit8 v1, v3, 0x8

    add-int v1, v1, v18

    .line 962
    aget v1, v12, v1

    and-int/2addr v1, v0

    aput v1, v10, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0xff

    goto :goto_c

    :cond_e
    shl-int/lit8 v1, v18, 0x8

    .line 965
    aget v2, v12, v1

    and-int/2addr v2, v0

    add-int/lit8 v3, v18, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v4, v12, v3

    and-int/2addr v4, v0

    :goto_d
    if-ge v2, v4, :cond_11

    .line 966
    aget v5, v14, v2

    .line 967
    aget-byte v0, v13, v5

    move/from16 v22, v4

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 968
    aget-boolean v4, v11, v0

    if-nez v4, :cond_10

    .line 969
    aget v4, v10, v0

    if-nez v5, :cond_f

    move v5, v8

    goto :goto_e

    :cond_f
    add-int/lit8 v5, v5, -0x1

    :goto_e
    aput v5, v14, v4

    .line 970
    aget v4, v10, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v22

    const v0, -0x200001

    goto :goto_d

    :cond_11
    move/from16 v0, v20

    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    shl-int/lit8 v2, v0, 0x8

    add-int v2, v2, v18

    .line 975
    aget v4, v12, v2

    or-int v4, v4, v16

    aput v4, v12, v2

    goto :goto_f

    .line 984
    :cond_12
    aput-boolean v27, v11, v18

    const/16 v0, 0xff

    if-ge v9, v0, :cond_15

    .line 987
    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    .line 988
    aget v3, v12, v3

    and-int/2addr v2, v3

    sub-int/2addr v2, v1

    move/from16 v3, v19

    :goto_10
    shr-int v4, v2, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_13
    move/from16 v4, v19

    :goto_11
    if-ge v4, v2, :cond_15

    add-int v5, v1, v4

    .line 996
    aget v5, v14, v5

    shr-int v0, v4, v3

    int-to-char v0, v0

    .line 998
    aput-char v0, v15, v5

    move/from16 v16, v1

    const/16 v1, 0x14

    if-ge v5, v1, :cond_14

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 1000
    aput-char v0, v15, v5

    :cond_14
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    const/16 v0, 0xff

    goto :goto_11

    :cond_15
    const/16 v1, 0x14

    add-int/lit8 v5, v9, 0x1

    move/from16 v26, v7

    move-object/from16 v9, v25

    const/16 v4, 0xff

    move-object/from16 v7, p1

    goto/16 :goto_9

    :cond_16
    return-void
.end method
