.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "GzipCompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
        "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private decompressConcatenated:Z

.field private fileNameCharset:Ljava/nio/charset/Charset;

.field private onMemberEnd:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private onMemberStart:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 98
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->GZIP_ENCODING:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->fileNameCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->decompressConcatenated:Z

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Ljava/nio/charset/Charset;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->fileNameCharset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->onMemberStart:Lorg/apache/commons/io/function/IOConsumer;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->onMemberEnd:Lorg/apache/commons/io/function/IOConsumer;

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

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->get()Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$1;)V

    return-object v0
.end method

.method public setDecompressConcatenated(Z)Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
    .locals 0

    .line 134
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->decompressConcatenated:Z

    return-object p0
.end method

.method public setFileNameCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->fileNameCharset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setOnMemberEnd(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;)",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->onMemberEnd:Lorg/apache/commons/io/function/IOConsumer;

    return-object p0
.end method

.method public setOnMemberStart(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;)",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->onMemberStart:Lorg/apache/commons/io/function/IOConsumer;

    return-object p0
.end method
