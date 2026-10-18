.class public Lorg/apache/commons/io/input/BrokenReader;
.super Ljava/io/Reader;
.source "BrokenReader.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/input/BrokenReader;


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
    new-instance v0, Lorg/apache/commons/io/input/BrokenReader;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/BrokenReader;->INSTANCE:Lorg/apache/commons/io/input/BrokenReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/io/input/BrokenReader$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BrokenReader$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/commons/io/input/BrokenReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/BrokenReader$$ExternalSyntheticLambda0;-><init>(Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    new-instance v0, Lorg/apache/commons/io/input/BrokenReader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/BrokenReader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

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
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/commons/io/input/BrokenReader;->exceptionSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/Throwable;
    .locals 2

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken reader"

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

    .line 147
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exceptionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/commons/io/function/Erase;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public read([CII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/io/input/BrokenReader;->rethrow()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
