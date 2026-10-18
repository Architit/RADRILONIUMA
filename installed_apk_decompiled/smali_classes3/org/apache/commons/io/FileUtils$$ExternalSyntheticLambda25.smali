.class public final synthetic Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public final synthetic f$1:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda25;->f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

    iput-object p2, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda25;->f$1:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda25;->f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

    iget-object v1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda25;->f$1:Lorg/apache/commons/io/filefilter/IOFileFilter;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/FileUtils;->lambda$listFilesAndDirs$13(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p1

    return-object p1
.end method
