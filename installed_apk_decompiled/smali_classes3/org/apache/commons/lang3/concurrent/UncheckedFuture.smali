.class public interface abstract Lorg/apache/commons/lang3/concurrent/UncheckedFuture;
.super Ljava/lang/Object;
.source "UncheckedFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public static map(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;)",
            "Ljava/util/stream/Stream<",
            "Lorg/apache/commons/lang3/concurrent/UncheckedFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 48
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/lang3/concurrent/UncheckedFuture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/concurrent/UncheckedFuture$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/lang3/concurrent/UncheckedFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/UncheckedFuture;->map(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static on(Ljava/util/concurrent/Future;)Lorg/apache/commons/lang3/concurrent/UncheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)",
            "Lorg/apache/commons/lang3/concurrent/UncheckedFuture<",
            "TT;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/commons/lang3/concurrent/UncheckedFutureImpl;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/UncheckedFutureImpl;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation
.end method
