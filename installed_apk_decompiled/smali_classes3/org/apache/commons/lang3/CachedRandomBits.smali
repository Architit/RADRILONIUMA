.class final Lorg/apache/commons/lang3/CachedRandomBits;
.super Ljava/lang/Object;
.source "CachedRandomBits.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BITS_PER_BYTE:I = 0x8

.field private static final BIT_INDEX_MASK:I = 0x7

.field private static final MAX_BITS:I = 0x20

.field private static final MAX_CACHE_SIZE:I = 0xfffffff


# instance fields
.field private bitIndex:I

.field private final cache:[B

.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILjava/util/Random;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    const v0, 0xfffffff

    if-gt p1, v0, :cond_0

    .line 79
    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    .line 80
    const-string v0, "random"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Random;

    iput-object p2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->random:Ljava/util/Random;

    .line 81
    invoke-virtual {p2, p1}, Ljava/util/Random;->nextBytes([B)V

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    return-void

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheSize must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public nextBits(I)I
    .locals 8

    const/16 v0, 0x20

    if-gt p1, v0, :cond_2

    if-lez p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 110
    iget v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    shr-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 114
    iget-object v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 115
    iput v0, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    .line 121
    :cond_0
    iget v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    and-int/lit8 v3, v3, 0x7

    rsub-int/lit8 v3, v3, 0x8

    sub-int v4, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    shl-int/2addr v2, v3

    .line 130
    iget-object v4, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    iget v5, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    shr-int/lit8 v6, v5, 0x3

    aget-byte v4, v4, v6

    and-int/lit8 v6, v5, 0x7

    shr-int/2addr v4, v6

    const/4 v6, 0x1

    shl-int v7, v6, v3

    sub-int/2addr v7, v6

    and-int/2addr v4, v7

    or-int/2addr v2, v4

    add-int/2addr v1, v3

    add-int/2addr v5, v3

    .line 133
    iput v5, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    goto :goto_0

    :cond_1
    return v2

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "number of bits must be between 1 and 32"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
