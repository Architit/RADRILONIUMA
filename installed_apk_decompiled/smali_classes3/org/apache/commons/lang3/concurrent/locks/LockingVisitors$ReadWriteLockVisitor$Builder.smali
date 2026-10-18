.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;
.super Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder<",
        "TO;",
        "Ljava/util/concurrent/locks/ReadWriteLock;",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder<",
        "TO;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;->get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;->get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 494
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;-><init>(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$1;)V

    return-object v0
.end method

.method public bridge synthetic setLock(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 483
    check-cast p1, Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;->setLock(Ljava/util/concurrent/locks/ReadWriteLock;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLock(Ljava/util/concurrent/locks/ReadWriteLock;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ")",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder<",
            "TO;>;"
        }
    .end annotation

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/locks/ReadWriteLock;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;->setReadLockSupplier(Ljava/util/function/Supplier;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    .line 500
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/locks/ReadWriteLock;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;->setWriteLockSupplier(Ljava/util/function/Supplier;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    .line 501
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->setLock(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$Builder;

    return-object p1
.end method
