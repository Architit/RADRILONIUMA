.class public Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;
.super Ljava/lang/Object;
.source "DefaultBackingStoreSupplier.java"

# interfaces
.implements Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "parallelscatter"


# instance fields
.field private final dir:Ljava/nio/file/Path;

.field private final storeNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;->storeNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;->dir:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;->storeNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/DefaultBackingStoreSupplier;->dir:Ljava/nio/file/Path;

    const/4 v2, 0x0

    const-string v3, "parallelscatter"

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v0, v1}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3, v0, v2}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    .line 67
    :goto_0
    new-instance v1, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;-><init>(Ljava/nio/file/Path;)V

    return-object v1
.end method
