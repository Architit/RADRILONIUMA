.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongSupplier;
.super Ljava/lang/Object;
.source "FailableLongSupplier.java"


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
.method public abstract getAsLong()J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
