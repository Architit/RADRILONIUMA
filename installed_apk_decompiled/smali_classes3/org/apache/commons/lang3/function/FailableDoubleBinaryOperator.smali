.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;
.super Ljava/lang/Object;
.source "FailableDoubleBinaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract applyAsDouble(DD)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
