.class final Lorg/apache/commons/io/function/IOStreamAdapter;
.super Lorg/apache/commons/io/function/IOBaseStreamAdapter;
.source "IOStreamAdapter.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/io/function/IOBaseStreamAdapter<",
        "TT;",
        "Lorg/apache/commons/io/function/IOStream<",
        "TT;>;",
        "Ljava/util/stream/Stream<",
        "TT;>;>;",
        "Lorg/apache/commons/io/function/IOStream<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/io/function/IOBaseStreamAdapter;-><init>(Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method static adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lorg/apache/commons/io/function/IOStreamAdapter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOStreamAdapter;-><init>(Ljava/util/stream/Stream;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/io/function/IOStream;->empty()Lorg/apache/commons/io/function/IOStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic wrap(Ljava/util/stream/BaseStream;)Lorg/apache/commons/io/function/IOBaseStream;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    check-cast p1, Ljava/util/stream/Stream;

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/function/IOStreamAdapter;->wrap(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/io/function/IOStreamAdapter;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/io/function/IOStreamAdapter;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    :goto_0
    return-object p1
.end method
