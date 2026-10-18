.class public final synthetic Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->lambda$new$0$org-apache-commons-compress-compressors-snappy-SnappyCompressorOutputStream(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method
