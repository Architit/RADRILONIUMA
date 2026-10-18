.class public final synthetic Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Enumeration;

.field public final synthetic f$1:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;->f$0:Ljava/util/Enumeration;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;->f$1:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final get()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;->f$0:Ljava/util/Enumeration;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;->f$1:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->lambda$expand$5(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    return-object v0
.end method
