.class public Lorg/apache/commons/codec/binary/Base64$Builder;
.super Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/binary/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder<",
        "Lorg/apache/commons/codec/binary/Base64;",
        "Lorg/apache/commons/codec/binary/Base64$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-static {}, Lorg/apache/commons/codec/binary/Base64;->access$000()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;-><init>([B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64$Builder;->get()Lorg/apache/commons/codec/binary/Base64;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/codec/binary/Base64;
    .locals 8

    .line 88
    new-instance v7, Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64$Builder;->getLineLength()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64$Builder;->getLineSeparator()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64$Builder;->getPadding()B

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64$Builder;->getEncodeTable()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base64$Builder;->getDecodingPolicy()Lorg/apache/commons/codec/CodecPolicy;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BB[BLorg/apache/commons/codec/CodecPolicy;Lorg/apache/commons/codec/binary/Base64$1;)V

    return-object v7
.end method

.method public setUrlSafe(Z)Lorg/apache/commons/codec/binary/Base64$Builder;
    .locals 0

    .line 98
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->access$200(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64$Builder;->setEncodeTable([B)Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/codec/binary/Base64$Builder;

    return-object p1
.end method
