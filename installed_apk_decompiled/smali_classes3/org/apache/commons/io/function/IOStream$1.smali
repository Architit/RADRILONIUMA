.class Lorg/apache/commons/io/function/IOStream$1;
.super Ljava/lang/Object;
.source "IOStream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/io/function/IOStream;->iterate(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)Lorg/apache/commons/io/function/IOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$f:Lorg/apache/commons/io/function/IOUnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$1;->val$seed:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOStream$1;->val$f:Lorg/apache/commons/io/function/IOUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object p1, Lorg/apache/commons/io/function/IOStreams;->NONE:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/io/function/IOStreams;->NONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->val$seed:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->val$f:Lorg/apache/commons/io/function/IOUnaryOperator;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/io/function/IOUnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/function/IOStream$1;->t:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103
    throw v1
.end method
