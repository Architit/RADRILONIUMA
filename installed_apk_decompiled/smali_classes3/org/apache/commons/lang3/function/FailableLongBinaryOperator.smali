.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongBinaryOperator;
.super Ljava/lang/Object;
.source "FailableLongBinaryOperator.java"


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
.method public abstract applyAsLong(JJ)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
