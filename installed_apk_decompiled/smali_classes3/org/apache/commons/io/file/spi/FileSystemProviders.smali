.class public Lorg/apache/commons/io/file/spi/FileSystemProviders;
.super Ljava/lang/Object;
.source "FileSystemProviders.java"


# static fields
.field private static final INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"


# instance fields
.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;

    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;-><init>(Ljava/util/List;)V

    sput-object v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->providers:Ljava/util/List;

    return-void
.end method

.method public static getFileSystemProvider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 47
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p0

    return-object p0
.end method

.method public static installed()Lorg/apache/commons/io/file/spi/FileSystemProviders;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

    return-object v0
.end method

.method static synthetic lambda$getFileSystemProvider$0(Ljava/lang/String;Ljava/nio/file/spi/FileSystemProvider;)Z
    .locals 0

    .line 83
    invoke-virtual {p1}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 2

    .line 77
    const-string v0, "scheme"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/file/spi/FileSystemProviders$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/spi/FileSystemProvider;

    return-object p1
.end method

.method public getFileSystemProvider(Ljava/net/URI;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 93
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p1

    return-object p1
.end method

.method public getFileSystemProvider(Ljava/net/URL;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 103
    const-string v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p1

    return-object p1
.end method
