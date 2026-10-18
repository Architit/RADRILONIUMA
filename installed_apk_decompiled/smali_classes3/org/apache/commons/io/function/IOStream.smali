.class public interface abstract Lorg/apache/commons/io/function/IOStream;
.super Ljava/lang/Object;
.source "IOStream.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOBaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/io/function/IOBaseStream<",
        "TT;",
        "Lorg/apache/commons/io/function/IOStream<",
        "TT;>;",
        "Ljava/util/stream/Stream<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public static adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lorg/apache/commons/io/function/IOStreamAdapter;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/function/IOStreamAdapter;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/io/function/IOUnaryOperator<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/apache/commons/io/function/IOStream$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOStream$1;-><init>(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)V

    const/16 p0, 0x410

    .line 107
    invoke-static {v0, p0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$allMatch$0(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->test(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$anyMatch$1(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    .line 167
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->test(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$collect$2(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 0

    .line 207
    invoke-static {p0}, Lorg/apache/commons/io/function/Erase;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$collect$3(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 207
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->accept(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$collect$4(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 207
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->accept(Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$filter$5(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    .line 237
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->test(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$flatMap$6(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 268
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/function/IOStream;

    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static synthetic lambda$flatMapToDouble$7(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 285
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/DoubleStream;

    return-object p0
.end method

.method public static synthetic lambda$flatMapToInt$8(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/IntStream;
    .locals 0

    .line 302
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/IntStream;

    return-object p0
.end method

.method public static synthetic lambda$flatMapToLong$9(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/util/stream/LongStream;
    .locals 0

    .line 319
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/LongStream;

    return-object p0
.end method

.method public static synthetic lambda$forAll$10(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    return-object p1
.end method

.method public static synthetic lambda$forAll$11(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V
    .locals 0

    .line 345
    :try_start_0
    invoke-interface {p0, p4}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    .line 349
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static synthetic lambda$forEach$12(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    .line 368
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$forEachOrdered$13(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    .line 379
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$map$14(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 402
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$max$15(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 465
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->compare(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$min$16(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 477
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->compare(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$noneMatch$17(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    .line 489
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->test(Lorg/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$peek$18(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    .line 501
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$reduce$19(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 513
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$reduce$20(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$reduce$21(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 541
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$reduce$22(Lorg/apache/commons/io/function/IOBinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 541
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$sorted$23(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 572
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Erase;->compare(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static of(Ljava/lang/Iterable;)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Lorg/apache/commons/io/function/IOStream;->empty()Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lorg/apache/commons/io/function/IOStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/Object;)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p0, :cond_1

    .line 132
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/apache/commons/io/function/IOStream;->empty()Lorg/apache/commons/io/function/IOStream;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public allMatch(Lorg/apache/commons/io/function/IOPredicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOPredicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda10;-><init>(Lorg/apache/commons/io/function/IOPredicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public anyMatch(Lorg/apache/commons/io/function/IOPredicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOPredicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/io/function/IOPredicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 186
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lorg/apache/commons/io/function/IOSupplier;Lorg/apache/commons/io/function/IOBiConsumer;Lorg/apache/commons/io/function/IOBiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TR;>;",
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "TR;-TT;>;",
            "Lorg/apache/commons/io/function/IOBiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda22;-><init>(Lorg/apache/commons/io/function/IOSupplier;)V

    new-instance p1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda23;

    invoke-direct {p1, p2}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda23;-><init>(Lorg/apache/commons/io/function/IOBiConsumer;)V

    new-instance p2, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/function/IOBiConsumer;)V

    invoke-interface {v0, v1, p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public count()J
    .locals 2

    .line 216
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct()Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 225
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/commons/io/function/IOPredicate;)Lorg/apache/commons/io/function/IOStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOPredicate<",
            "-TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/function/IOPredicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public findAny()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 246
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findFirst()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 255
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public flatMap(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Lorg/apache/commons/io/function/IOStream<",
            "+TR;>;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/function/IOFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public flatMapToDouble(Lorg/apache/commons/io/function/IOFunction;)Ljava/util/stream/DoubleStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda14;-><init>(Lorg/apache/commons/io/function/IOFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public flatMapToInt(Lorg/apache/commons/io/function/IOFunction;)Ljava/util/stream/IntStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda11;-><init>(Lorg/apache/commons/io/function/IOFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public flatMapToLong(Lorg/apache/commons/io/function/IOFunction;)Ljava/util/stream/LongStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TT;+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda12;-><init>(Lorg/apache/commons/io/function/IOFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public forAll(Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1, v0}, Lorg/apache/commons/io/function/IOStream;->forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/io/IOException;",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 341
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 342
    invoke-static {p1}, Lorg/apache/commons/io/function/IOStreams;->toIOConsumer(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;

    move-result-object p1

    .line 343
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    new-instance v3, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;

    invoke-direct {v3, p1, v0, p2, v1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda18;-><init>(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 357
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/io/IOExceptionList;->checkEmpty(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public forEach(Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda17;-><init>(Lorg/apache/commons/io/function/IOConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachOrdered(Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda19;-><init>(Lorg/apache/commons/io/function/IOConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public limit(J)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 389
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public map(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TT;+TR;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/function/IOFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 419
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 436
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 453
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public max(Lorg/apache/commons/io/function/IOComparator;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOComparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda21;-><init>(Lorg/apache/commons/io/function/IOComparator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public min(Lorg/apache/commons/io/function/IOComparator;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOComparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda20;-><init>(Lorg/apache/commons/io/function/IOComparator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public noneMatch(Lorg/apache/commons/io/function/IOPredicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOPredicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda16;-><init>(Lorg/apache/commons/io/function/IOPredicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public peek(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/function/IOConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Ljava/lang/Object;Lorg/apache/commons/io/function/IOBiFunction;Lorg/apache/commons/io/function/IOBinaryOperator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "TU;-TT;TU;>;",
            "Lorg/apache/commons/io/function/IOBinaryOperator<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/function/IOBiFunction;)V

    new-instance p2, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda8;

    invoke-direct {p2, p3}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/function/IOBinaryOperator;)V

    invoke-interface {v0, p1, v1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Ljava/lang/Object;Lorg/apache/commons/io/function/IOBinaryOperator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/io/function/IOBinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda13;

    invoke-direct {v1, p2}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda13;-><init>(Lorg/apache/commons/io/function/IOBinaryOperator;)V

    invoke-interface {v0, p1, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lorg/apache/commons/io/function/IOBinaryOperator;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOBinaryOperator<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOBinaryOperator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public skip(J)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 551
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public sorted()Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 560
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object v0

    return-object v0
.end method

.method public sorted(Lorg/apache/commons/io/function/IOComparator;)Lorg/apache/commons/io/function/IOStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOComparator<",
            "-TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/function/IOStream$$ExternalSyntheticLambda15;-><init>(Lorg/apache/commons/io/function/IOComparator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 581
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation

    .line 599
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
