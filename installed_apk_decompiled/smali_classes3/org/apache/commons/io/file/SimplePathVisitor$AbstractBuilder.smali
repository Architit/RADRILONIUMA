.class public abstract Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;
.super Lorg/apache/commons/io/build/AbstractSupplier;
.source "SimplePathVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/SimplePathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractSupplier<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/build/AbstractSupplier<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;
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
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractSupplier;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)Lorg/apache/commons/io/function/IOBiFunction;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-object p0
.end method


# virtual methods
.method getVisitFileFailedFunction()Lorg/apache/commons/io/function/IOBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-object v0
.end method

.method public setVisitFileFailedFunction(Lorg/apache/commons/io/function/IOBiFunction;)Lorg/apache/commons/io/build/AbstractSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)TB;"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    return-object p1
.end method
