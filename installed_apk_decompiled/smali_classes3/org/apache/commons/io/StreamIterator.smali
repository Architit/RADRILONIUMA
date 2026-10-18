.class public final Lorg/apache/commons/io/StreamIterator;
.super Ljava/lang/Object;
.source "StreamIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/stream/Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TE;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "stream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    iput-object v0, p0, Lorg/apache/commons/io/StreamIterator;->stream:Ljava/util/stream/Stream;

    .line 71
    invoke-interface {p1}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static iterator(Ljava/util/stream/Stream;)Lorg/apache/commons/io/StreamIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lorg/apache/commons/io/StreamIterator<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/commons/io/StreamIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/StreamIterator;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/apache/commons/io/StreamIterator;->closed:Z

    .line 80
    iget-object v0, p0, Lorg/apache/commons/io/StreamIterator;->stream:Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/io/StreamIterator;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/io/StreamIterator;->close()V

    :cond_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/io/StreamIterator;->close()V

    :cond_0
    return-object v0
.end method
