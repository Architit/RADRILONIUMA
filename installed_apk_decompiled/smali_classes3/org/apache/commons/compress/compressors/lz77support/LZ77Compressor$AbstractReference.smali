.class public abstract Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractReference"
.end annotation


# instance fields
.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;II)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;)V

    .line 98
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;->offset:I

    .line 99
    iput p3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;->length:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;->offset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
