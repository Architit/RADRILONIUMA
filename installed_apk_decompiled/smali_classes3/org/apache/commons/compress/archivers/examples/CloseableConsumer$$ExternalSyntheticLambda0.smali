.class public final synthetic Lorg/apache/commons/compress/archivers/examples/CloseableConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/Closeable;)V
    .locals 0

    .line 0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-void
.end method
