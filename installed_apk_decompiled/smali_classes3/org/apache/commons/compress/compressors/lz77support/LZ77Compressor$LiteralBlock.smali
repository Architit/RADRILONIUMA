.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiteralBlock"
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 266
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->LITERAL:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$AbstractReference;-><init>(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;II)V

    .line 267
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->data:[B

    return-object v0
.end method
