.class public Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin;
.source "AbstractOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URIOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin<",
        "Ljava/net/URI;",
        "Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 530
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public varargs getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 541
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->installed()Lorg/apache/commons/io/file/spi/FileSystemProviders;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {v2, v0}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 546
    :cond_0
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 547
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
