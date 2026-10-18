.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/binary/BaseNCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder<",
        "TT;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

.field private final defaultEncodeTable:[B

.field private encodeTable:[B

.field private lineLength:I

.field private lineSeparator:[B

.field private padding:B


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

    .line 66
    sget-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->CHUNK_SEPARATOR:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->lineSeparator:[B

    const/16 v0, 0x3d

    .line 70
    iput-byte v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->padding:B

    .line 73
    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->defaultEncodeTable:[B

    .line 74
    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->encodeTable:[B

    return-void
.end method


# virtual methods
.method asThis()Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method getDecodingPolicy()Lorg/apache/commons/codec/CodecPolicy;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

    return-object v0
.end method

.method getEncodeTable()[B
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->encodeTable:[B

    return-object v0
.end method

.method getLineLength()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->lineLength:I

    return v0
.end method

.method getLineSeparator()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->lineSeparator:[B

    return-object v0
.end method

.method getPadding()B
    .locals 1

    .line 110
    iget-byte v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->padding:B

    return v0
.end method

.method public setDecodingPolicy(Lorg/apache/commons/codec/CodecPolicy;)Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/CodecPolicy;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    sget-object p1, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->asThis()Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setEncodeTable([B)Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->defaultEncodeTable:[B

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->encodeTable:[B

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->asThis()Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLineLength(I)Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->lineLength:I

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->asThis()Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setLineSeparator([B)Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/codec/binary/BaseNCodec;->CHUNK_SEPARATOR:[B

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->lineSeparator:[B

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->asThis()Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPadding(B)Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TB;"
        }
    .end annotation

    .line 164
    iput-byte p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->padding:B

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;->asThis()Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method
