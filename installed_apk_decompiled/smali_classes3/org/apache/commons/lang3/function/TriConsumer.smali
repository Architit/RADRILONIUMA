.class public interface abstract Lorg/apache/commons/lang3/function/TriConsumer;
.super Ljava/lang/Object;
.source "TriConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$andThen$0(Lorg/apache/commons/lang3/function/TriConsumer;Lorg/apache/commons/lang3/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/TriConsumer;

    .line 65
    invoke-interface {p0, p2, p3, p4}, Lorg/apache/commons/lang3/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/commons/lang3/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)V"
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/lang3/function/TriConsumer;)Lorg/apache/commons/lang3/function/TriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/TriConsumer<",
            "-TT;-TU;-TV;>;)",
            "Lorg/apache/commons/lang3/function/TriConsumer<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/TriConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/TriConsumer;Lorg/apache/commons/lang3/function/TriConsumer;)V

    return-object v0
.end method
