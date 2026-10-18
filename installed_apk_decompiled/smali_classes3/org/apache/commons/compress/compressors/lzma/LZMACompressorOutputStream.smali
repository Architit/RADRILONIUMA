.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "LZMACompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Lorg/tukaani/xz/LZMAOutputStream;",
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

    .line 110
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->builder()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->access$100(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object p1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;
    .locals 1

    .line 95
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
