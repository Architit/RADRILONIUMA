.class public final synthetic Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOBiFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/file/SimplePathVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/file/SimplePathVisitor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/file/SimplePathVisitor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/file/SimplePathVisitor;

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->lambda$new$0$org-apache-commons-io-file-SimplePathVisitor(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
