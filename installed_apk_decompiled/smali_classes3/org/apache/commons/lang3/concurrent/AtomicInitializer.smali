.class public Lorg/apache/commons/lang3/concurrent/AtomicInitializer;
.super Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;
.source "AtomicInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<",
        "TT;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_INIT:Ljava/lang/Object;


# instance fields
.field private final reference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->NO_INIT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TT;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TT;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/concurrent/AtomicInitializer$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder<",
            "Lorg/apache/commons/lang3/concurrent/AtomicInitializer<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer$Builder;-><init>()V

    return-object v0
.end method

.method private getNoInit()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 154
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->NO_INIT:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getTypedException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->getTypedException(Ljava/lang/Exception;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    move-result-object p1

    return-object p1
.end method

.method protected getTypedException(Ljava/lang/Exception;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;
    .locals 1

    .line 162
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/concurrent/AtomicInitializer;->NO_INIT:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
