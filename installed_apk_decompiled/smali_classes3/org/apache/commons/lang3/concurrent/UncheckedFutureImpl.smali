.class final Lorg/apache/commons/lang3/concurrent/UncheckedFutureImpl;
.super Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;
.source "UncheckedFutureImpl.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/UncheckedFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<",
        "TV;>;",
        "Lorg/apache/commons/lang3/concurrent/UncheckedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;-><init>(Ljava/util/concurrent/Future;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lorg/apache/commons/lang3/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 45
    new-instance v1, Lorg/apache/commons/lang3/exception/UncheckedInterruptedException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/exception/UncheckedInterruptedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    new-instance p2, Lorg/apache/commons/lang3/concurrent/UncheckedTimeoutException;

    invoke-direct {p2, p1}, Lorg/apache/commons/lang3/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 58
    new-instance p2, Lorg/apache/commons/lang3/concurrent/UncheckedExecutionException;

    invoke-direct {p2, p1}, Lorg/apache/commons/lang3/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 56
    new-instance p2, Lorg/apache/commons/lang3/exception/UncheckedInterruptedException;

    invoke-direct {p2, p1}, Lorg/apache/commons/lang3/exception/UncheckedInterruptedException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
