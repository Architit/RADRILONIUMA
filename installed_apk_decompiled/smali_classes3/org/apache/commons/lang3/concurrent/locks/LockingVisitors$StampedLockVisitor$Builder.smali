.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;
.super Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;
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
        "Ljava/util/concurrent/locks/StampedLock;",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder<",
        "TO;>;>;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ayPvuO-7CeOO4n0U281qvN6qXZg(Ljava/util/concurrent/locks/StampedLock;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->asReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jXi-BdbXGi1SaTTARcYIPNGfwrs(Ljava/util/concurrent/locks/StampedLock;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->asWriteLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 635
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

    .line 630
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;->get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;->get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 641
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;-><init>(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$1;)V

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

    .line 630
    check-cast p1, Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;->setLock(Ljava/util/concurrent/locks/StampedLock;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLock(Ljava/util/concurrent/locks/StampedLock;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/StampedLock;",
            ")",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder<",
            "TO;>;"
        }
    .end annotation

    .line 647
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;->setReadLockSupplier(Ljava/util/function/Supplier;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    .line 648
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;->setWriteLockSupplier(Ljava/util/function/Supplier;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    .line 649
    invoke-super {p0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->setLock(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;

    return-object p1
.end method
