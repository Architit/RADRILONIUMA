.class public Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "PathMatcherFileFilter.java"


# instance fields
.field private final pathMatcher:Ljava/nio/file/PathMatcher;


# direct methods
.method public constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 40
    const-string v0, "pathMatcher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/PathMatcher;

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->pathMatcher:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->matches(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Ljava/nio/file/Path;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->pathMatcher:Ljava/nio/file/PathMatcher;

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
