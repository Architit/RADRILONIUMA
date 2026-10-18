.class public abstract Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
.super Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;
.source "CountingPathVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/CountingPathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private directoryFilter:Lorg/apache/commons/io/file/PathFilter;

.field private directoryPostTransformer:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private fileFilter:Lorg/apache/commons/io/file/PathFilter;

.field private pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;-><init>()V

    .line 51
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 52
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 53
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 54
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryTransformer()Ljava/util/function/UnaryOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method getDirectoryFilter()Lorg/apache/commons/io/file/PathFilter;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    return-object v0
.end method

.method getDirectoryPostTransformer()Ljava/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    return-object v0
.end method

.method getFileFilter()Lorg/apache/commons/io/file/PathFilter;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    return-object v0
.end method

.method getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    return-object v0
.end method

.method public setDirectoryFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    return-object p1
.end method

.method public setDirectoryPostTransformer(Ljava/util/function/UnaryOperator;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/nio/file/Path;",
            ">;)TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultDirectoryTransformer()Ljava/util/function/UnaryOperator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->directoryPostTransformer:Ljava/util/function/UnaryOperator;

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    return-object p1
.end method

.method public setFileFilter(Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    return-object p1
.end method

.method public setPathCounters(Lorg/apache/commons/io/file/Counters$PathCounters;)Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/Counters$PathCounters;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->defaultPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;

    return-object p1
.end method

.method public bridge synthetic setVisitFileFailedFunction(Lorg/apache/commons/io/function/IOBiFunction;)Lorg/apache/commons/io/build/AbstractSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->setVisitFileFailedFunction(Lorg/apache/commons/io/function/IOBiFunction;)Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    return-object p1
.end method
