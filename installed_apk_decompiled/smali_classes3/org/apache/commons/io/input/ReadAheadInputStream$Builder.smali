.class public Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ReadAheadInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReadAheadInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ReadAheadInputStream;",
        "Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->get()Lorg/apache/commons/io/input/ReadAheadInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ReadAheadInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;Lorg/apache/commons/io/input/ReadAheadInputStream$1;)V

    return-object v0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
