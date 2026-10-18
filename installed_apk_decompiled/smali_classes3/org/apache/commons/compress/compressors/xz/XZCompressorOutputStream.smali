.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "XZCompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Lorg/tukaani/xz/XZOutputStream;",
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

    .line 127
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->builder()Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;->setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    new-instance v0, Lorg/tukaani/xz/XZOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1, p2}, Lorg/tukaani/xz/LZMA2Options;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;->access$100(Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;
    .locals 1

    .line 112
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream$Builder;-><init>()V

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

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
