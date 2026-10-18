.class public Lorg/apache/commons/io/input/BoundedInputStream$Builder;
.super Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
.source "BoundedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/BoundedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/BoundedInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-instance v0, Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Lorg/apache/commons/io/input/BoundedInputStream$Builder;)V

    return-object v0
.end method

.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 243
    invoke-super {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOnMaxCount(Lorg/apache/commons/io/function/IOBiConsumer;)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setOnMaxCount(Lorg/apache/commons/io/function/IOBiConsumer;)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method
