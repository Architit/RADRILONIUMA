.class public abstract Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "ObservableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ObservableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder<",
        "TT;>;>",
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/ObservableInputStream;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;->observers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 52
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;

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

    .line 52
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setObservers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;->observers:Ljava/util/List;

    return-void
.end method
