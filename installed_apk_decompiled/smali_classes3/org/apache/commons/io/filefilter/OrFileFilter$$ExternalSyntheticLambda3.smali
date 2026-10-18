.class public final synthetic Lorg/apache/commons/io/filefilter/OrFileFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/Path;

.field public final synthetic f$1:Ljava/nio/file/attribute/BasicFileAttributes;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/OrFileFilter$$ExternalSyntheticLambda3;->f$0:Ljava/nio/file/Path;

    iput-object p2, p0, Lorg/apache/commons/io/filefilter/OrFileFilter$$ExternalSyntheticLambda3;->f$1:Ljava/nio/file/attribute/BasicFileAttributes;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter$$ExternalSyntheticLambda3;->f$0:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/OrFileFilter$$ExternalSyntheticLambda3;->f$1:Ljava/nio/file/attribute/BasicFileAttributes;

    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->lambda$accept$2(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p1

    return p1
.end method
