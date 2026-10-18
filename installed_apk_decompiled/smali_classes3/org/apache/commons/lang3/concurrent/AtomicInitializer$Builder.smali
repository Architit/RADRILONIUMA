.class public Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;
.super Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
.source "AtomicInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/AtomicInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/apache/commons/lang3/concurrent/AtomicInitializer<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder<",
        "TI;TT;",
        "Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder<",
        "TI;TT;>;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
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

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;->get()Lorg/apache/commons/lang3/concurrent/AtomicInitializer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/concurrent/AtomicInitializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;->getInitializer()Lorg/apache/commons/lang3/function/FailableSupplier;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;->getCloser()Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/concurrent/AtomicInitializer$1;)V

    return-object v0
.end method
