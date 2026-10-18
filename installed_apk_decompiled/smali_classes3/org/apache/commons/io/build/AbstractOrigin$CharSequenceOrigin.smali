.class public Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin;
.source "AbstractOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharSequenceOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin<",
        "Ljava/lang/CharSequence;",
        "Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;->origin:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 0

    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public varargs getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {}, Lorg/apache/commons/io/input/CharSequenceInputStream;->builder()Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;->getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->setCharSequence(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-virtual {p1}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->get()Lorg/apache/commons/io/input/CharSequenceInputStream;

    move-result-object p1

    return-object p1
.end method

.method public getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance p1, Lorg/apache/commons/io/input/CharSequenceReader;

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Lorg/apache/commons/io/input/CharSequenceReader;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;->origin:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
