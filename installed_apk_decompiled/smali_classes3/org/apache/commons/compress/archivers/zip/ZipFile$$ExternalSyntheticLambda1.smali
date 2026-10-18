.class public final synthetic Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->lambda$fillNameMap$2$org-apache-commons-compress-archivers-zip-ZipFile(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    return-void
.end method
