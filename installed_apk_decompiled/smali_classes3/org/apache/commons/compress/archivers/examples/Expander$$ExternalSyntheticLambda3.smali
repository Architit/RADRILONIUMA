.class public final synthetic Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/archivers/tar/TarFile;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    return-void
.end method


# virtual methods
.method public final accept(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->lambda$expand$4(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/io/OutputStream;)V

    return-void
.end method
