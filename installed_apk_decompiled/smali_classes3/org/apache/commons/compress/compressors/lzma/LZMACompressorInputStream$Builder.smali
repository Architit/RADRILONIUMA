.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "LZMACompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;",
        "Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private memoryLimitKiB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->memoryLimitKiB:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;)I
    .locals 0

    .line 58
    iget p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->memoryLimitKiB:I

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

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->get()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$1;)V

    return-object v0
.end method

.method public setMemoryLimitKiB(I)Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;
    .locals 0

    .line 75
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream$Builder;->memoryLimitKiB:I

    return-object p0
.end method
