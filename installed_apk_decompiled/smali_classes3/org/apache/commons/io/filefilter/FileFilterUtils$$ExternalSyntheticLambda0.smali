.class public final synthetic Lorg/apache/commons/io/filefilter/FileFilterUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/FileFilterUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/FileFilterUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/filefilter/IOFileFilter;

    check-cast p1, Ljava/io/File;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
