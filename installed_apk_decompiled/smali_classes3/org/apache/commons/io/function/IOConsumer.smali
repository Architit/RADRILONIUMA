.class public interface abstract Lorg/apache/commons/io/function/IOConsumer;
.super Ljava/lang/Object;
.source "IOConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOOP_IO_CONSUMER:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/IOConsumer;->NOOP_IO_CONSUMER:Lorg/apache/commons/io/function/IOConsumer;

    return-void
.end method

.method public static forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lorg/apache/commons/io/function/IOStreams;->of(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/commons/io/function/IOStreams;->forAll(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/stream/Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0, v0}, Lorg/apache/commons/io/function/IOStreams;->forAll(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static varargs forAll(Lorg/apache/commons/io/function/IOConsumer;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 82
    invoke-static {p1}, Lorg/apache/commons/io/function/IOStreams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/commons/io/function/IOStreams;->forAll(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forEach(Ljava/lang/Iterable;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lorg/apache/commons/io/function/IOStreams;->of(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/io/function/IOStreams;->forEach(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forEach(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/IOStreams;->forEach(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forEach([Ljava/lang/Object;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lorg/apache/commons/io/function/IOStreams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/io/function/IOStreams;->forEach(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    .line 157
    invoke-interface {p1, p2}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$asConsumer$2(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOConsumer;

    .line 168
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static noop()Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 133
    sget-object v0, Lorg/apache/commons/io/function/IOConsumer;->NOOP_IO_CONSUMER:Lorg/apache/commons/io/function/IOConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 154
    const-string v0, "after"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    new-instance v0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method

.method public asConsumer()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method
