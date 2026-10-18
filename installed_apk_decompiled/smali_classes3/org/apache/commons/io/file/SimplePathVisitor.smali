.class public abstract Lorg/apache/commons/io/file/SimplePathVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SimplePathVisitor.java"

# interfaces
.implements Lorg/apache/commons/io/file/PathVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;",
        "Lorg/apache/commons/io/file/PathVisitor;"
    }
.end annotation


# instance fields
.field private final visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 80
    new-instance v0, Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/file/SimplePathVisitor;)V

    iput-object v0, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 89
    invoke-static {p1}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->access$000(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)Lorg/apache/commons/io/function/IOBiFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->access$000(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)Lorg/apache/commons/io/function/IOBiFunction;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/apache/commons/io/file/SimplePathVisitor$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/file/SimplePathVisitor;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/function/IOBiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 98
    const-string v0, "visitFileFailedFunction"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/function/IOBiFunction;

    iput-object p1, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$org-apache-commons-io-file-SimplePathVisitor(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$new$1$org-apache-commons-io-file-SimplePathVisitor(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
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

    .line 34
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/function/IOBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
