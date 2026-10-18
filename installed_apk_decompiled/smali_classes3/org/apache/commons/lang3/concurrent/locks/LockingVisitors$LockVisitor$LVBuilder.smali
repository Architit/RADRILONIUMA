.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
.super Lorg/apache/commons/lang3/builder/AbstractSupplier;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LVBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder<",
        "TO;T",
        "L;",
        "TB;>;>",
        "Lorg/apache/commons/lang3/builder/AbstractSupplier<",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor<",
        "TO;T",
        "L;",
        ">;TB;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field lock:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private readLockSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field

.field private writeLockSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/AbstractSupplier;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;)Ljava/util/function/Supplier;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->readLockSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;)Ljava/util/function/Supplier;
    .locals 0

    .line 155
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->writeLockSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor<",
            "TO;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;-><init>(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$1;)V

    return-object v0
.end method

.method getReadLockSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->readLockSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method getWriteLockSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->writeLockSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public setLock(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")TB;"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->lock:Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    return-object p1
.end method

.method public setObject(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TB;"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->object:Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    return-object p1
.end method

.method public setReadLockSupplier(Ljava/util/function/Supplier;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)TB;"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->readLockSupplier:Ljava/util/function/Supplier;

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    return-object p1
.end method

.method public setWriteLockSupplier(Ljava/util/function/Supplier;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)TB;"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->writeLockSupplier:Ljava/util/function/Supplier;

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;->asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;

    return-object p1
.end method
