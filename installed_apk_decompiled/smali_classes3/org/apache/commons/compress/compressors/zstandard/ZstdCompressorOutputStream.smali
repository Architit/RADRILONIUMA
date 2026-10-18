.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "ZstdCompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Lcom/github/luben/zstd/ZstdOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->builder()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->builder()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setLevel(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->builder()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setLevel(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setCloseFrameOnFlush(Z)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->builder()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setLevel(I)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setCloseFrameOnFlush(Z)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->setChecksum(Z)Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->toZstdOutputStream(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;
    .locals 1

    .line 459
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;-><init>()V

    return-object v0
.end method

.method private static toZstdOutputStream(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)Lcom/github/luben/zstd/ZstdOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 465
    instance-of v1, v0, Lcom/github/luben/zstd/ZstdOutputStream;

    if-eqz v1, :cond_0

    .line 467
    check-cast v0, Lcom/github/luben/zstd/ZstdOutputStream;

    return-object v0

    .line 470
    :cond_0
    new-instance v1, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v1, v0}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 471
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$1400(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/luben/zstd/ZstdOutputStream;->setChainLog(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 472
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$1300(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setChecksum(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 473
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$1200(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setCloseFrameOnFlush(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 474
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$1100(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$1100(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setDict([B)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 475
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$1000(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setHashLog(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 476
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$900(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setJobSize(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 477
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$800(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setLevel(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 478
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$700(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setMinMatch(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 479
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$600(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setOverlapLog(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 480
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$500(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setSearchLog(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 481
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$400(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setStrategy(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 482
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$300(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setTargetLength(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 483
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$200(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/luben/zstd/ZstdOutputStream;->setWindowLog(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 484
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;->access$100(Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream$Builder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/luben/zstd/ZstdOutputStream;->setWorkers(I)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
