.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final ALPHANUMERICAL_CHARS:[C

.field private static final ASCII_0:I = 0x30

.field private static final ASCII_9:I = 0x39

.field private static final ASCII_A:I = 0x41

.field private static final ASCII_z:I = 0x7a

.field private static final BASE_CACHE_SIZE_PADDING:I = 0xa

.field private static final BITS_TO_BYTES_DIVISOR:I = 0x5

.field private static final CACHE_PADDING_BITS:I = 0x3

.field private static INSECURE:Lorg/apache/commons/lang3/RandomStringUtils;

.field private static SECURE:Lorg/apache/commons/lang3/RandomStringUtils;

.field private static SECURE_STRONG:Lorg/apache/commons/lang3/RandomStringUtils;

.field private static final SECURE_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/commons/lang3/RandomUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final random:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/commons/lang3/RandomUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    new-instance v0, Lorg/apache/commons/lang3/RandomStringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/RandomStringUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->SECURE_SUPPLIER:Ljava/util/function/Supplier;

    .line 85
    new-instance v1, Lorg/apache/commons/lang3/RandomStringUtils;

    new-instance v2, Lorg/apache/commons/lang3/RandomStringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/commons/lang3/RandomStringUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/RandomStringUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/commons/lang3/RandomStringUtils;->INSECURE:Lorg/apache/commons/lang3/RandomStringUtils;

    .line 87
    new-instance v1, Lorg/apache/commons/lang3/RandomStringUtils;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/RandomStringUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/commons/lang3/RandomStringUtils;->SECURE:Lorg/apache/commons/lang3/RandomStringUtils;

    .line 89
    new-instance v0, Lorg/apache/commons/lang3/RandomStringUtils;

    new-instance v1, Lorg/apache/commons/lang3/RandomStringUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/lang3/RandomStringUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->SECURE_STRONG:Lorg/apache/commons/lang3/RandomStringUtils;

    const/16 v0, 0x3e

    .line 91
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->ALPHANUMERICAL_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    sget-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->SECURE_SUPPLIER:Ljava/util/function/Supplier;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/commons/lang3/RandomUtils;",
            ">;)V"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lorg/apache/commons/lang3/RandomStringUtils;->random:Ljava/util/function/Supplier;

    return-void
.end method

.method public static insecure()Lorg/apache/commons/lang3/RandomStringUtils;
    .locals 1

    .line 119
    sget-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->INSECURE:Lorg/apache/commons/lang3/RandomStringUtils;

    return-object v0
.end method

.method public static random(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->next(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IIIZZ[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 11

    move v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p5

    if-nez v0, :cond_0

    .line 258
    const-string v0, ""

    return-object v0

    :cond_0
    if-ltz v0, :cond_19

    if-eqz v3, :cond_2

    .line 263
    array-length v4, v3

    if-eqz v4, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chars array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v4, 0x20

    .line 267
    const-string v5, "Parameter end ("

    const v6, 0x10ffff

    const/16 v7, 0x7b

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-eqz v3, :cond_3

    .line 269
    array-length v2, v3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v1, v4

    move v2, v7

    goto :goto_1

    :cond_5
    if-le v2, v1, :cond_18

    if-ltz v1, :cond_17

    if-ltz v2, :cond_17

    :goto_1
    if-le v2, v6, :cond_6

    goto :goto_2

    :cond_6
    move v6, v2

    :goto_2
    if-nez v3, :cond_d

    const/16 v2, 0x7f

    if-gt v6, v2, :cond_d

    const/16 v2, 0x30

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    if-gt v1, v2, :cond_7

    if-lt v6, v7, :cond_7

    const/4 v4, 0x0

    .line 297
    sget-object v5, Lorg/apache/commons/lang3/RandomStringUtils;->ALPHANUMERICAL_CHARS:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v0, p0

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    if-eqz p4, :cond_8

    if-le v6, v2, :cond_9

    :cond_8
    const/16 v8, 0x41

    if-eqz p3, :cond_a

    if-le v6, v8, :cond_9

    goto :goto_3

    .line 301
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be greater then (48) for generating digits or greater then (65) for generating letters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 315
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 316
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_b
    if-eqz p4, :cond_c

    .line 319
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x3a

    .line 320
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_c
    if-eqz p3, :cond_d

    .line 323
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 324
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 328
    :cond_d
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int v5, v6, v1

    .line 330
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v7, v0

    int-to-long v9, v4

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3

    add-long/2addr v7, v9

    const-wide/16 v9, 0x5

    .line 343
    div-long/2addr v7, v9

    const-wide/16 v9, 0xa

    add-long/2addr v7, v9

    const-wide/32 v9, 0x199999a3

    .line 344
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    .line 345
    new-instance v7, Lorg/apache/commons/lang3/CachedRandomBits;

    move-object/from16 v8, p6

    invoke-direct {v7, v5, v8}, Lorg/apache/commons/lang3/CachedRandomBits;-><init>(ILjava/util/Random;)V

    :cond_e
    :goto_5
    add-int/lit8 v5, v0, -0x1

    if-eqz v0, :cond_16

    .line 349
    invoke-virtual {v7, v4}, Lorg/apache/commons/lang3/CachedRandomBits;->nextBits(I)I

    move-result v8

    add-int/2addr v8, v1

    if-lt v8, v6, :cond_f

    goto :goto_5

    :cond_f
    if-nez v3, :cond_10

    .line 360
    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v9

    if-eqz v9, :cond_e

    const/16 v10, 0x12

    if-eq v9, v10, :cond_e

    const/16 v10, 0x13

    if-eq v9, v10, :cond_e

    goto :goto_6

    .line 369
    :cond_10
    aget-char v8, v3, v8

    .line 372
    :goto_6
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    if-nez v5, :cond_11

    const/4 v10, 0x1

    if-le v9, v10, :cond_11

    goto :goto_5

    :cond_11
    if-eqz p3, :cond_12

    .line 378
    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v10

    if-nez v10, :cond_14

    :cond_12
    if-eqz p4, :cond_13

    invoke-static {v8}, Ljava/lang/Character;->isDigit(I)Z

    move-result v10

    if-nez v10, :cond_14

    :cond_13
    if-nez p3, :cond_e

    if-nez p4, :cond_e

    .line 380
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    if-ne v9, v8, :cond_15

    add-int/lit8 v0, v0, -0x2

    goto :goto_5

    :cond_15
    move v0, v5

    goto :goto_5

    .line 390
    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Character positions MUST be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must be greater than start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested random string length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is less than 0."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->next(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static random(IZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->next(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private random()Ljava/util/Random;
    .locals 1

    .line 997
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAlphabetic(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphabetic(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAlphabetic(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAlphanumeric(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphanumeric(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAlphanumeric(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAscii(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAscii(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAscii(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomGraph(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 535
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->nextGraph(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomGraph(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextGraph(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->nextNumeric(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomNumeric(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextNumeric(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomPrint(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->nextPrint(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomPrint(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 625
    invoke-static {}, Lorg/apache/commons/lang3/RandomStringUtils;->secure()Lorg/apache/commons/lang3/RandomStringUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextPrint(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private randomUtils()Lorg/apache/commons/lang3/RandomUtils;
    .locals 1

    .line 1006
    iget-object v0, p0, Lorg/apache/commons/lang3/RandomStringUtils;->random:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/RandomUtils;

    return-object v0
.end method

.method public static secure()Lorg/apache/commons/lang3/RandomStringUtils;
    .locals 1

    .line 640
    sget-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->SECURE:Lorg/apache/commons/lang3/RandomStringUtils;

    return-object v0
.end method

.method public static secureStrong()Lorg/apache/commons/lang3/RandomStringUtils;
    .locals 1

    .line 655
    sget-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->SECURE_STRONG:Lorg/apache/commons/lang3/RandomStringUtils;

    return-object v0
.end method


# virtual methods
.method public next(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next(IIIZZ)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    .line 750
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->random()Ljava/util/Random;

    move-result-object v6

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs next(IIIZZ[C)Ljava/lang/String;
    .locals 7

    .line 774
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->random()Ljava/util/Random;

    move-result-object v6

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p2, :cond_0

    const/4 v5, 0x0

    .line 793
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->random()Ljava/util/Random;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 795
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->next(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next(IZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    .line 710
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IIIZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs next(I[C)Ljava/lang/String;
    .locals 7

    if-nez p2, :cond_0

    const/4 v5, 0x0

    .line 728
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->random()Ljava/util/Random;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 730
    :cond_0
    array-length v2, p2

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->random()Ljava/util/Random;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextAlphabetic(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 810
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextAlphabetic(II)Ljava/lang/String;
    .locals 1

    .line 826
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAlphabetic(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextAlphanumeric(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 841
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextAlphanumeric(II)Ljava/lang/String;
    .locals 1

    .line 857
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAlphanumeric(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextAscii(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x20

    const/16 v3, 0x7f

    move-object v0, p0

    move v1, p1

    .line 873
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IIIZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextAscii(II)Ljava/lang/String;
    .locals 1

    .line 890
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextAscii(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextGraph(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x21

    const/16 v3, 0x7e

    move-object v0, p0

    move v1, p1

    .line 907
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IIIZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextGraph(II)Ljava/lang/String;
    .locals 1

    .line 923
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextGraph(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextNumeric(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 938
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextNumeric(II)Ljava/lang/String;
    .locals 1

    .line 954
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextNumeric(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextPrint(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x20

    const/16 v3, 0x7e

    move-object v0, p0

    move v1, p1

    .line 972
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/RandomStringUtils;->next(IIIZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextPrint(II)Ljava/lang/String;
    .locals 1

    .line 988
    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomUtils()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->nextPrint(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RandomStringUtils [random="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->random()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
