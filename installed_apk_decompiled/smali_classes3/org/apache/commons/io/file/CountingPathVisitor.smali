.class public Lorg/apache/commons/io/file/CountingPathVisitor;
.super Lorg/apache/commons/io/file/SimplePathVisitor;
.source "CountingPathVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/CountingPathVisitor$Builder;,
        Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    }
.end annotation


# static fields
.field static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final directoryFilter:Lorg/apache/commons/io/file/PathFilter;

.field private final directoryPostTransformer:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fileFilter:Lorg/apache/commons/io/file/PathFilter;

.field private final pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/io/file/CountingPathVisitor;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .locals 1

    .line 200
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>()V

    .line 213
    const-string v0, "pathCounters"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/Counters$PathCounters;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 214
    const-string p1, "fileFilter"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/PathFilter;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 215
    const-string p1, "directoryFilter"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/PathFilter;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 216
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

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

    .line 232
    invoke-direct {p0, p4}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>(Lorg/apache/commons/io/function/IOBiFunction;)V

    .line 233
    const-string p4, "pathCounters"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/Counters$PathCounters;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 234
    const-string p1, "fileFilter"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/PathFilter;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 235
    const-string p1, "directoryFilter"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/PathFilter;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 236
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)V

    .line 187
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 188
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getFileFilter()Lorg/apache/commons/io/file/PathFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 189
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getDirectoryFilter()Lorg/apache/commons/io/file/PathFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 190
    invoke-virtual {p1}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->getDirectoryPostTransformer()Ljava/util/function/UnaryOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    return-void
.end method

.method static defaultDirectoryFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 147
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method static defaultDirectoryTransformer()Ljava/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method static defaultFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3

    .line 155
    new-instance v0, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;

    sget-object v1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    sget-object v2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;-><init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V

    return-object v0
.end method

.method static defaultPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 159
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .locals 2

    .line 168
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;-><init>()V

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->get()Lorg/apache/commons/io/file/CountingPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .locals 2

    .line 177
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;-><init>()V

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->get()Lorg/apache/commons/io/file/CountingPathVisitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 2

    const/4 v0, 0x0

    .line 249
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    sget-object p2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 257
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/io/file/CountingPathVisitor;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 260
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 261
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    iget-object p1, p1, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 281
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    .line 287
    sget-object p2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p1, p2, :cond_0

    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    .line 303
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    return-void
.end method

.method protected updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 2

    .line 313
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 314
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p1

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V

    return-void
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 322
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
