.class public Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;
.super Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
.source "BackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder<",
        "TI;TT;",
        "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder<",
        "TI;TT;>;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private externalExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;->get()Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;->getInitializer()Lorg/apache/commons/lang3/function/FailableSupplier;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;->getCloser()Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;->externalExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$1;)V

    return-object v0
.end method

.method public setExternalExecutor(Ljava/util/concurrent/ExecutorService;)Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder<",
            "TI;TT;>;"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;->externalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;

    return-object p1
.end method
