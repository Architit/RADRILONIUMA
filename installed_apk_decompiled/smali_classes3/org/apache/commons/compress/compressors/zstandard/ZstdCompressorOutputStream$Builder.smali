.class public final Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ZstdCompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;",
        "Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private chainLog:I

.field private checksum:Z

.field private closeFrameOnFlush:Z

.field private dict:[B

.field private hashLog:I

.field private jobSize:I

.field private level:I

.field private minMatch:I

.field private overlapLog:I

.field private searchLog:I

.field private strategy:I

.field private targetLength:I

.field private windowLog:I

.field private workers:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 76
    sget v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_CLEVEL_DEFAULT:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->level:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->workers:I

    return p0
.end method

.method static synthetic access$1000(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->hashLog:I

    return p0
.end method

.method static synthetic access$1100(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)[B
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->dict:[B

    return-object p0
.end method

.method static synthetic access$1200(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->closeFrameOnFlush:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->checksum:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->chainLog:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->windowLog:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->targetLength:I

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->strategy:I

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->searchLog:I

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->overlapLog:I

    return p0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->minMatch:I

    return p0
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->level:I

    return p0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->jobSize:I

    return p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->get()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$1;)V

    return-object v0
.end method

.method public setChainLog(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 116
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->chainLog:I

    return-object p0
.end method

.method public setChecksum(Z)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->checksum:Z

    return-object p0
.end method

.method public setCloseFrameOnFlush(Z)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 152
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->closeFrameOnFlush:Z

    return-object p0
.end method

.method public setDict([B)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->dict:[B

    return-object p0
.end method

.method public setHashLog(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 199
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->hashLog:I

    return-object p0
.end method

.method public setJobSize(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 222
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->jobSize:I

    return-object p0
.end method

.method public setLevel(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 248
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->level:I

    return-object p0
.end method

.method public setMinMatch(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 270
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->minMatch:I

    return-object p0
.end method

.method public setOverlapLog(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 315
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->overlapLog:I

    return-object p0
.end method

.method public setSearchLog(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 336
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->searchLog:I

    return-object p0
.end method

.method public setStrategy(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 366
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->strategy:I

    return-object p0
.end method

.method public setTargetLength(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 396
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->targetLength:I

    return-object p0
.end method

.method public setWindowLog(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 422
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->windowLog:I

    return-object p0
.end method

.method public setWorkers(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 0

    .line 447
    iput p1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->workers:I

    return-object p0
.end method
