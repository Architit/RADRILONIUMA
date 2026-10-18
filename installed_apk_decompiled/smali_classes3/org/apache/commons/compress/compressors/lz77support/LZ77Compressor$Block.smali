.class public abstract Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.super Ljava/lang/Object;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Block"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    }
.end annotation


# instance fields
.field private final type:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->type:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->type:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->type:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
