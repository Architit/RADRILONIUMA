.class public interface abstract Lorg/apache/commons/io/function/IOIntSupplier;
.super Ljava/lang/Object;
.source "IOIntSupplier.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$asIntSupplier$0(Lorg/apache/commons/io/function/IOIntSupplier;)I
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOIntSupplier;

    .line 39
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public asIntSupplier()Ljava/util/function/IntSupplier;
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/commons/io/function/IOIntSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOIntSupplier$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOIntSupplier;)V

    return-object v0
.end method

.method public abstract getAsInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
