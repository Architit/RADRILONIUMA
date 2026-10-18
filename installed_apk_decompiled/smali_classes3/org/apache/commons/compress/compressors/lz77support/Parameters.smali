.class public final Lorg/apache/commons/compress/compressors/lz77support/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    }
.end annotation


# static fields
.field public static final TRUE_MIN_BACK_REFERENCE_LENGTH:I = 0x3


# instance fields
.field private final lazyMatching:Z

.field private final lazyThreshold:I

.field private final maxBackReferenceLength:I

.field private final maxCandidates:I

.field private final maxLiteralLength:I

.field private final maxOffset:I

.field private final minBackReferenceLength:I

.field private final niceBackReferenceLength:I

.field private final windowSize:I


# direct methods
.method private constructor <init>(IIIIIIIZI)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->windowSize:I

    .line 281
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->minBackReferenceLength:I

    .line 282
    iput p3, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxBackReferenceLength:I

    .line 283
    iput p4, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxOffset:I

    .line 284
    iput p5, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxLiteralLength:I

    .line 285
    iput p6, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->niceBackReferenceLength:I

    .line 286
    iput p7, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxCandidates:I

    .line 287
    iput-boolean p8, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->lazyMatching:Z

    .line 288
    iput p9, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->lazyThreshold:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIZILorg/apache/commons/compress/compressors/lz77support/Parameters$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p9}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;-><init>(IIIIIIIZI)V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 0

    .line 24
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->isPowerOfTwo(I)Z

    move-result p0

    return p0
.end method

.method public static builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 2

    .line 259
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;-><init>(ILorg/apache/commons/compress/compressors/lz77support/Parameters$1;)V

    return-object v0
.end method

.method private static isPowerOfTwo(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getLazyMatching()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->lazyMatching:Z

    return v0
.end method

.method public getLazyMatchingThreshold()I
    .locals 1

    .line 306
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->lazyThreshold:I

    return v0
.end method

.method public getMaxBackReferenceLength()I
    .locals 1

    .line 315
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxBackReferenceLength:I

    return v0
.end method

.method public getMaxCandidates()I
    .locals 1

    .line 324
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxCandidates:I

    return v0
.end method

.method public getMaxLiteralLength()I
    .locals 1

    .line 333
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxLiteralLength:I

    return v0
.end method

.method public getMaxOffset()I
    .locals 1

    .line 342
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->maxOffset:I

    return v0
.end method

.method public getMinBackReferenceLength()I
    .locals 1

    .line 351
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->minBackReferenceLength:I

    return v0
.end method

.method public getNiceBackReferenceLength()I
    .locals 1

    .line 360
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->niceBackReferenceLength:I

    return v0
.end method

.method public getWindowSize()I
    .locals 1

    .line 369
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->windowSize:I

    return v0
.end method
