.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackReference"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 138
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;-><init>(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;II)V

    return-void
.end method
