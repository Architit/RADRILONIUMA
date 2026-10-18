.class public Lorg/apache/commons/io/file/AccumulatorPathVisitor;
.super Lorg/apache/commons/io/file/CountingPathVisitor;
.source "AccumulatorPathVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;
    }
.end annotation


# instance fields
.field private final dirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;Lorg/apache/commons/io/file/AccumulatorPathVisitor$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/function/IOBiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/Counters$PathCounters;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/function/IOBiFunction;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method private add(Ljava/util/List;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-interface {p2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;
    .locals 1

    .line 91
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;-><init>()V

    return-object v0
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 102
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static withBigIntegerCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 116
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setFileFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setDirectoryFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p0

    return-object p0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 127
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static withLongCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 141
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->builder()Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setFileFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->setDirectoryFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;

    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 214
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 217
    :cond_1
    instance-of v1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    if-nez v1, :cond_2

    return v2

    .line 220
    :cond_2
    check-cast p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 221
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDirList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 245
    invoke-super {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 246
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    .line 280
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 281
    iget-object p2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method

.method protected updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 287
    iget-object p2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method
