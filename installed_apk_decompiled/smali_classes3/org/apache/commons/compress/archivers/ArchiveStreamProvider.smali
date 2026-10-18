.class public interface abstract Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;
.super Ljava/lang/Object;
.source "ArchiveStreamProvider.java"


# virtual methods
.method public abstract createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lorg/apache/commons/compress/archivers/ArchiveInputStream<",
            "+",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;>(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation
.end method

.method public abstract createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<",
            "+",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;>(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation
.end method

.method public abstract getInputStreamArchiveNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputStreamArchiveNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
