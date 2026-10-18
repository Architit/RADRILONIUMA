.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EOD"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;->INSTANCE:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 241
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;
    .locals 1

    .line 230
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;->INSTANCE:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    return-object v0
.end method
