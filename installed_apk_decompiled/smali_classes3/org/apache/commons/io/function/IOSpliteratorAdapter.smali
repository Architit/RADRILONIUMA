.class final Lorg/apache/commons/io/function/IOSpliteratorAdapter;
.super Ljava/lang/Object;
.source "IOSpliteratorAdapter.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/io/function/IOSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lorg/apache/commons/io/function/IOSpliteratorAdapter;->delegate:Ljava/util/Spliterator;

    return-void
.end method

.method static adapt(Ljava/util/Spliterator;)Lorg/apache/commons/io/function/IOSpliteratorAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TE;>;)",
            "Lorg/apache/commons/io/function/IOSpliteratorAdapter<",
            "TE;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/apache/commons/io/function/IOSpliteratorAdapter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOSpliteratorAdapter;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method


# virtual methods
.method public unwrap()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/commons/io/function/IOSpliteratorAdapter;->delegate:Ljava/util/Spliterator;

    return-object v0
.end method
