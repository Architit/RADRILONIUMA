.class public Lorg/apache/commons/lang3/stream/Streams$FailableStream;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailableStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public allMatch(Lorg/apache/commons/lang3/function/FailablePredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;*>;)Z"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 205
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public anyMatch(Lorg/apache/commons/lang3/function/FailablePredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;*>;)Z"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method protected assertNotTerminated()V
    .locals 2

    .line 234
    iget-boolean v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->terminated:Z

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stream is already terminated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TT;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;*>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream<",
            "TT;>;"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 365
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object p0
.end method

.method public forEach(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TT;*>;)V"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 385
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asConsumer(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected makeTerminated()V
    .locals 1

    .line 394
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->terminated:Z

    return-void
.end method

.method public map(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TT;TR;*>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream<",
            "TR;>;"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 411
    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;

    iget-object v1, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asFunction(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 468
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object v0
.end method
