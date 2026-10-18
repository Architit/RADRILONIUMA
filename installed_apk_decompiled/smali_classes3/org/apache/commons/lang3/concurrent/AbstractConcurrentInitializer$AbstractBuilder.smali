.class public abstract Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
.super Lorg/apache/commons/lang3/builder/AbstractSupplier;
.source "AbstractConcurrentInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<",
        "TT;TE;>;T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder<",
        "TI;TT;TB;TE;>;E:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/apache/commons/lang3/builder/AbstractSupplier<",
        "TI;TB;TE;>;"
    }
.end annotation


# instance fields
.field private closer:Lorg/apache/commons/lang3/function/FailableConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private initializer:Lorg/apache/commons/lang3/function/FailableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/AbstractSupplier;-><init>()V

    .line 50
    invoke-static {}, Lorg/apache/commons/lang3/function/FailableConsumer;->nop()Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->closer:Lorg/apache/commons/lang3/function/FailableConsumer;

    .line 55
    invoke-static {}, Lorg/apache/commons/lang3/function/FailableSupplier;->nul()Lorg/apache/commons/lang3/function/FailableSupplier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->initializer:Lorg/apache/commons/lang3/function/FailableSupplier;

    return-void
.end method


# virtual methods
.method public getCloser()Lorg/apache/commons/lang3/function/FailableConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->closer:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-object v0
.end method

.method public getInitializer()Lorg/apache/commons/lang3/function/FailableSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->initializer:Lorg/apache/commons/lang3/function/FailableSupplier;

    return-object v0
.end method

.method public setCloser(Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;)TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/function/FailableConsumer;->nop()Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->closer:Lorg/apache/commons/lang3/function/FailableConsumer;

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;

    return-object p1
.end method

.method public setInitializer(Lorg/apache/commons/lang3/function/FailableSupplier;)Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TT;+",
            "Ljava/lang/Exception;",
            ">;)TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/function/FailableSupplier;->nul()Lorg/apache/commons/lang3/function/FailableSupplier;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->initializer:Lorg/apache/commons/lang3/function/FailableSupplier;

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;

    return-object p1
.end method
