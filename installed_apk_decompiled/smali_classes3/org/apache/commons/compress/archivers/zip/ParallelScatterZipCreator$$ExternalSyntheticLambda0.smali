.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

.field public final synthetic f$1:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->lambda$createCallable$1$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequestSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object v0

    return-object v0
.end method
