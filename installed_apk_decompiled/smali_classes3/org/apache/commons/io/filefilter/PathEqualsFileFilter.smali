.class public Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "PathEqualsFileFilter.java"


# instance fields
.field private final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->path:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 53
    iget-object p2, p0, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->path:Ljava/nio/file/Path;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->path:Ljava/nio/file/Path;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
