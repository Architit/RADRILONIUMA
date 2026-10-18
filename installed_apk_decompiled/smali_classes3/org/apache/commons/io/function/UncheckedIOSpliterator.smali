.class final Lorg/apache/commons/io/function/UncheckedIOSpliterator;
.super Ljava/lang/Object;
.source "UncheckedIOSpliterator.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/apache/commons/io/function/IOSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/io/function/IOSpliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/function/IOSpliterator;

    iput-object p1, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/function/IOSpliterator;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v1, v0}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->getComparator()Lorg/apache/commons/io/function/IOComparator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/io/function/IOComparator;->asComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/function/IOSpliterator;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOSpliterator;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v1, v0}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/function/UncheckedIOSpliterator$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/function/IOSpliterator;)V

    invoke-static {v1}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/function/IOSpliterator;

    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
