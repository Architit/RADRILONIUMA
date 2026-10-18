.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "XZCompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;",
        "Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private decompressConcatenated:Z

.field private memoryLimitKiB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->memoryLimitKiB:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->decompressConcatenated:Z

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->memoryLimitKiB:I

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

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->get()Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$1;)V

    return-object v0
.end method

.method public setDecompressConcatenated(Z)Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->decompressConcatenated:Z

    return-object p0
.end method

.method public setMemoryLimitKiB(I)Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;
    .locals 0

    .line 107
    iput p1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream$Builder;->memoryLimitKiB:I

    return-object p0
.end method
