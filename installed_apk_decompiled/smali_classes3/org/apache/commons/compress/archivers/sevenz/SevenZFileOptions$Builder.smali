.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
.super Ljava/lang/Object;
.source "SevenZFileOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private maxMemoryLimitKb:I

.field private tryToRecoverBrokenArchives:Z

.field private useDefaultNameForUnnamedEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 38
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->maxMemoryLimitKb:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->useDefaultNameForUnnamedEntries:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->tryToRecoverBrokenArchives:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .locals 5

    .line 48
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->maxMemoryLimitKb:I

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->useDefaultNameForUnnamedEntries:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->tryToRecoverBrokenArchives:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;-><init>(IZZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$1;)V

    return-object v0
.end method

.method public withMaxMemoryLimitInKb(I)Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
    .locals 0

    .line 61
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->maxMemoryLimitKb:I

    return-object p0
.end method

.method public withTryToRecoverBrokenArchives(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->tryToRecoverBrokenArchives:Z

    return-object p0
.end method

.method public withUseDefaultNameForUnnamedEntries(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;
    .locals 0

    .line 89
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions$Builder;->useDefaultNameForUnnamedEntries:Z

    return-object p0
.end method
