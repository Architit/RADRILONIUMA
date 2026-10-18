.class public abstract Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ProxyInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ProxyInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private afterRead:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->afterRead:Lorg/apache/commons/io/function/IOIntConsumer;

    return-object v0
.end method

.method public setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOIntConsumer;",
            ")TB;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->afterRead:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method
