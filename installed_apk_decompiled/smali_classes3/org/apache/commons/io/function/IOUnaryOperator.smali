.class public interface abstract Lorg/apache/commons/io/function/IOUnaryOperator;
.super Ljava/lang/Object;
.source "IOUnaryOperator.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/io/function/IOFunction<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Lorg/apache/commons/io/function/IOUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/io/function/IOUnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$asUnaryOperator$1(Lorg/apache/commons/io/function/IOUnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOUnaryOperator;

    .line 52
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public asUnaryOperator()Ljava/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOUnaryOperator;)V

    return-object v0
.end method
