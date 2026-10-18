.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "LZMACompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;",
        "Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private lzma2Options:Lorg/tukaani/xz/LZMA2Options;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 58
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->lzma2Options:Lorg/tukaani/xz/LZMA2Options;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;)Lorg/tukaani/xz/LZMA2Options;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->lzma2Options:Lorg/tukaani/xz/LZMA2Options;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->get()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$1;)V

    return-object v0
.end method

.method public setLzma2Options(Lorg/tukaani/xz/LZMA2Options;)Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {p1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream$Builder;->lzma2Options:Lorg/tukaani/xz/LZMA2Options;

    return-object p0
.end method
