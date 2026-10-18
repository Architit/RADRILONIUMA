.class public final Lorg/apache/commons/codec/digest/Blake3;
.super Ljava/lang/Object;
.source "Blake3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/digest/Blake3$Output;,
        Lorg/apache/commons/codec/digest/Blake3$EngineState;,
        Lorg/apache/commons/codec/digest/Blake3$ChunkState;
    }
.end annotation


# static fields
.field private static final BLOCK_INTS:I = 0x10

.field private static final BLOCK_LEN:I = 0x40

.field private static final CHAINING_VALUE_INTS:I = 0x8

.field private static final CHUNK_END:I = 0x2

.field private static final CHUNK_LEN:I = 0x400

.field private static final CHUNK_START:I = 0x1

.field private static final DERIVE_KEY_CONTEXT:I = 0x20

.field private static final DERIVE_KEY_MATERIAL:I = 0x40

.field private static final IV:[I

.field private static final KEYED_HASH:I = 0x10

.field private static final KEY_INTS:I = 0x8

.field private static final KEY_LEN:I = 0x20

.field private static final MSG_SCHEDULE:[[B

.field private static final OUT_LEN:I = 0x20

.field private static final PARENT:I = 0x4

.field private static final ROOT:I = 0x8


# instance fields
.field private final engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x8

    .line 266
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/16 v0, 0x10

    .line 281
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    new-array v2, v0, [B

    fill-array-data v2, :array_2

    new-array v3, v0, [B

    fill-array-data v3, :array_3

    new-array v4, v0, [B

    fill-array-data v4, :array_4

    new-array v5, v0, [B

    fill-array-data v5, :array_5

    new-array v6, v0, [B

    fill-array-data v6, :array_6

    new-array v7, v0, [B

    fill-array-data v7, :array_7

    filled-new-array/range {v1 .. v7}, [[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/Blake3;->MSG_SCHEDULE:[[B

    return-void

    nop

    :array_0
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x6t
        0x3t
        0xat
        0x7t
        0x0t
        0x4t
        0xdt
        0x1t
        0xbt
        0xct
        0x5t
        0x9t
        0xet
        0xft
        0x8t
    .end array-data

    :array_3
    .array-data 1
        0x3t
        0x4t
        0xat
        0xct
        0xdt
        0x2t
        0x7t
        0xet
        0x6t
        0x5t
        0x9t
        0x0t
        0xbt
        0xft
        0x8t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0xat
        0x7t
        0xct
        0x9t
        0xet
        0x3t
        0xdt
        0xft
        0x4t
        0x0t
        0xbt
        0x2t
        0x5t
        0x8t
        0x1t
        0x6t
    .end array-data

    :array_5
    .array-data 1
        0xct
        0xdt
        0x9t
        0xbt
        0xft
        0xat
        0xet
        0x8t
        0x7t
        0x2t
        0x5t
        0x3t
        0x0t
        0x1t
        0x6t
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0x9t
        0xet
        0xbt
        0x5t
        0x8t
        0xct
        0xft
        0x1t
        0xdt
        0x3t
        0x0t
        0xat
        0x2t
        0x6t
        0x4t
        0x7t
    .end array-data

    :array_7
    .array-data 1
        0xbt
        0xft
        0x5t
        0x0t
        0x1t
        0x9t
        0x8t
        0x6t
        0xet
        0xat
        0x2t
        0xct
        0x3t
        0x4t
        0x7t
        0xdt
    .end array-data
.end method

.method private constructor <init>([II)V
    .locals 2

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$EngineState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/codec/digest/Blake3$EngineState;-><init>([IILorg/apache/commons/codec/digest/Blake3$1;)V

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    return-void
.end method

.method static synthetic access$000([BI)[I
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/Blake3;->unpackInts([BI)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->parentOutput([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(I[BII)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->packInt(I[BII)V

    return-void
.end method

.method static synthetic access$200([I[IIJI)[I
    .locals 0

    .line 76
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/codec/digest/Blake3;->compress([I[IIJI)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([I[I[II)[I
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->parentChainingValue([I[I[II)[I

    move-result-object p0

    return-object p0
.end method

.method private static checkBufferArgs([BII)V
    .locals 3

    .line 293
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 300
    array-length p0, p0

    sub-int v0, p0, p2

    if-gt p1, v0, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " out of bounds with buffer length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Length must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Offset must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static compress([I[IIJI)[I
    .locals 5

    const/16 v0, 0x10

    .line 307
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 308
    sget-object v1, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xc

    long-to-int v2, p3

    .line 309
    aput v2, v0, v1

    const/16 v1, 0x20

    shr-long/2addr p3, v1

    long-to-int p3, p3

    const/16 p4, 0xd

    .line 310
    aput p3, v0, p4

    const/16 p3, 0xe

    .line 311
    aput p2, v0, p3

    const/16 p2, 0xf

    .line 312
    aput p5, v0, p2

    move p2, v4

    :goto_0
    const/4 p3, 0x7

    if-ge p2, p3, :cond_0

    .line 314
    sget-object p3, Lorg/apache/commons/codec/digest/Blake3;->MSG_SCHEDULE:[[B

    aget-object p3, p3, p2

    .line 315
    invoke-static {v0, p1, p3}, Lorg/apache/commons/codec/digest/Blake3;->round([I[I[B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 317
    :cond_0
    :goto_1
    array-length p1, v0

    div-int/lit8 p1, p1, 0x2

    if-ge v4, p1, :cond_1

    .line 318
    aget p1, v0, v4

    add-int/lit8 p2, v4, 0x8

    aget p3, v0, p2

    xor-int/2addr p1, p3

    aput p1, v0, v4

    .line 319
    aget p1, v0, p2

    aget p3, p0, v4

    xor-int/2addr p1, p3

    aput p1, v0, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static g([IIIIIII)V
    .locals 2

    .line 328
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v1, p5

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 329
    aget p5, p0, p4

    xor-int/2addr p5, v0

    const/16 v0, 0x10

    invoke-static {p5, v0}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p5

    aput p5, p0, p4

    .line 330
    aget v0, p0, p3

    add-int/2addr v0, p5

    aput v0, p0, p3

    .line 331
    aget p5, p0, p2

    xor-int/2addr p5, v0

    const/16 v0, 0xc

    invoke-static {p5, v0}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p5

    aput p5, p0, p2

    .line 332
    aget v0, p0, p1

    add-int/2addr p5, p6

    add-int/2addr v0, p5

    aput v0, p0, p1

    .line 333
    aget p1, p0, p4

    xor-int/2addr p1, v0

    const/16 p5, 0x8

    invoke-static {p1, p5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, p0, p4

    .line 334
    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    .line 335
    aget p1, p0, p2

    xor-int/2addr p1, p4

    const/4 p3, 0x7

    invoke-static {p1, p3}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method public static hash([B)[B
    .locals 1

    .line 346
    invoke-static {}, Lorg/apache/commons/codec/digest/Blake3;->initHash()Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/codec/digest/Blake3;->update([B)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static initHash()Lorg/apache/commons/codec/digest/Blake3;
    .locals 3

    .line 355
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3;

    sget-object v1, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/digest/Blake3;-><init>([II)V

    return-object v0
.end method

.method public static initKeyDerivationFunction([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 4

    .line 368
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$EngineState;

    sget-object v1, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/codec/digest/Blake3$EngineState;-><init>([IILorg/apache/commons/codec/digest/Blake3$1;)V

    .line 370
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1400(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    .line 371
    new-array p0, v3, [B

    .line 372
    invoke-static {v0, p0, v2, v3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1500(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    .line 373
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lorg/apache/commons/codec/digest/Blake3;->unpackInts([BI)[I

    move-result-object p0

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/codec/digest/Blake3;-><init>([II)V

    return-object v0
.end method

.method public static initKeyedHash([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 2

    .line 386
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 390
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lorg/apache/commons/codec/digest/Blake3;->unpackInts([BI)[I

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/codec/digest/Blake3;-><init>([II)V

    return-object v0

    .line 388
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Blake3 keys must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static keyedHash([B[B)[B
    .locals 0

    .line 402
    invoke-static {p0}, Lorg/apache/commons/codec/digest/Blake3;->initKeyedHash([B)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/Blake3;->update([B)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize(I)[B

    move-result-object p0

    return-object p0
.end method

.method private static packInt(I[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    .line 407
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parentChainingValue([I[I[II)[I
    .locals 0

    .line 412
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->parentOutput([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/digest/Blake3$Output;->access$700(Lorg/apache/commons/codec/digest/Blake3$Output;)[I

    move-result-object p0

    return-object p0
.end method

.method private static parentOutput([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;
    .locals 9

    const/16 v0, 0x10

    .line 416
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 p0, 0x0

    const/16 v0, 0x8

    .line 417
    invoke-static {p1, p0, v3, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    new-instance p0, Lorg/apache/commons/codec/digest/Blake3$Output;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [I

    or-int/lit8 v7, p3, 0x4

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x40

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/codec/digest/Blake3$Output;-><init>([I[IJIILorg/apache/commons/codec/digest/Blake3$1;)V

    return-object p0
.end method

.method private static round([I[I[B)V
    .locals 8

    const/4 v0, 0x0

    .line 423
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0xc

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/4 v0, 0x2

    .line 424
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x3

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/16 v5, 0xd

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/4 v0, 0x4

    .line 425
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x5

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/16 v4, 0xa

    const/16 v5, 0xe

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/4 v0, 0x6

    .line 426
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x7

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/16 v4, 0xb

    const/16 v5, 0xf

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/16 v0, 0x8

    .line 429
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0x9

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/16 v0, 0xa

    .line 430
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0xb

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/16 v4, 0xb

    const/16 v5, 0xc

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/16 v0, 0xc

    .line 431
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0xd

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/16 v5, 0xd

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    const/16 v0, 0xe

    .line 432
    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0xf

    aget-byte p2, p2, v0

    aget v7, p1, p2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v4, 0x9

    const/16 v5, 0xe

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    return-void
.end method

.method private static unpackInt([BI)I
    .locals 2

    .line 436
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static unpackInts([BI)[I
    .locals 4

    .line 440
    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 442
    invoke-static {p0, v2}, Lorg/apache/commons/codec/digest/Blake3;->unpackInt([BI)I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public doFinalize([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 2

    const/4 v0, 0x0

    .line 462
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize([BII)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object p1

    return-object p1
.end method

.method public doFinalize([BII)Lorg/apache/commons/codec/digest/Blake3;
    .locals 1

    .line 478
    invoke-static {p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->checkBufferArgs([BII)V

    .line 479
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1500(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    return-object p0
.end method

.method public doFinalize(I)[B
    .locals 1

    if-ltz p1, :cond_0

    .line 494
    new-array p1, p1, [B

    .line 495
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize([B)Lorg/apache/commons/codec/digest/Blake3;

    return-object p1

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested bytes must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()Lorg/apache/commons/codec/digest/Blake3;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1600(Lorg/apache/commons/codec/digest/Blake3$EngineState;)V

    return-object p0
.end method

.method public update([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 2

    const/4 v0, 0x0

    .line 516
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->update([BII)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object p1

    return-object p1
.end method

.method public update([BII)Lorg/apache/commons/codec/digest/Blake3;
    .locals 1

    .line 531
    invoke-static {p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->checkBufferArgs([BII)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1400(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    return-object p0
.end method
