.class public interface abstract Lorg/apache/commons/io/function/IOLongSupplier;
.super Ljava/lang/Object;
.source "IOLongSupplier.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$asSupplier$0(Lorg/apache/commons/io/function/IOLongSupplier;)J
    .locals 2
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOLongSupplier;

    .line 39
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->getAsLong(Lorg/apache/commons/io/function/IOLongSupplier;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public asSupplier()Ljava/util/function/LongSupplier;
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/commons/io/function/IOLongSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOLongSupplier$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOLongSupplier;)V

    return-object v0
.end method

.method public abstract getAsLong()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
