.class public final synthetic Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;

    return-void
.end method


# virtual methods
.method public final getAsByte()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    move-result v0

    return v0
.end method
