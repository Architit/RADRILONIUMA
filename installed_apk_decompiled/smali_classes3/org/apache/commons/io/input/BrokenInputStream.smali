.class public Lorg/apache/commons/io/input/BrokenInputStream;
.super Ljava/io/InputStream;
.source "BrokenInputStream.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/input/BrokenInputStream;


# instance fields
.field private final exceptionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/commons/io/input/BrokenInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BrokenInputStream;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/BrokenInputStream;->INSTANCE:Lorg/apache/commons/io/input/BrokenInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/io/input/BrokenInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BrokenInputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenInputStream;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/commons/io/input/BrokenInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/BrokenInputStream$$ExternalSyntheticLambda2;-><init>(Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenInputStream;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    new-instance v0, Lorg/apache/commons/io/input/BrokenInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/BrokenInputStream$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenInputStream;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exceptionSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/Throwable;
    .locals 2

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$2(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method private rethrow()Ljava/lang/RuntimeException;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BrokenInputStream;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/function/Erase;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenInputStream;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenInputStream;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exceptionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenInputStream;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenInputStream;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenInputStream;->rethrow()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
