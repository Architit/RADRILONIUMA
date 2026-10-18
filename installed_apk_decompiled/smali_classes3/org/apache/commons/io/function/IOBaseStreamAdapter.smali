.class abstract Lorg/apache/commons/io/function/IOBaseStreamAdapter;
.super Ljava/lang/Object;
.source "IOBaseStreamAdapter.java"

# interfaces
.implements Lorg/apache/commons/io/function/IOBaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lorg/apache/commons/io/function/IOBaseStream<",
        "TT;TS;TB;>;B::",
        "Ljava/util/stream/BaseStream<",
        "TT;TB;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/io/function/IOBaseStream<",
        "TT;TS;TB;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/BaseStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/BaseStream;

    iput-object p1, p0, Lorg/apache/commons/io/function/IOBaseStreamAdapter;->delegate:Ljava/util/stream/BaseStream;

    return-void
.end method


# virtual methods
.method public unwrap()Ljava/util/stream/BaseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/commons/io/function/IOBaseStreamAdapter;->delegate:Ljava/util/stream/BaseStream;

    return-object v0
.end method
