.class final Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseZeroInputStream;
.super Ljava/io/InputStream;
.source "TarArchiveSparseZeroInputStream.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skip(J)J
    .locals 0

    return-wide p1
.end method
