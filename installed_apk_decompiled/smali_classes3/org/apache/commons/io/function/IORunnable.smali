.class public interface abstract Lorg/apache/commons/io/function/IORunnable;
.super Ljava/lang/Object;
.source "IORunnable.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$asRunnable$0(Lorg/apache/commons/io/function/IORunnable;)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IORunnable;

    .line 47
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public static noop()Lorg/apache/commons/io/function/IORunnable;
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/commons/io/function/Constants;->IO_RUNNABLE:Lorg/apache/commons/io/function/IORunnable;

    return-object v0
.end method


# virtual methods
.method public asRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/commons/io/function/IORunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IORunnable$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IORunnable;)V

    return-object v0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
