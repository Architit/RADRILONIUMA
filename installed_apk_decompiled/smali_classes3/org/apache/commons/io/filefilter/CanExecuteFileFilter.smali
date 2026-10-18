.class public Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanExecuteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->CAN_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 66
    invoke-interface {v0}, Lorg/apache/commons/io/filefilter/IOFileFilter;->negate()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->CANNOT_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    if-eqz p1, :cond_0

    .line 98
    invoke-static {p1}, Ljava/nio/file/Files;->isExecutable(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
