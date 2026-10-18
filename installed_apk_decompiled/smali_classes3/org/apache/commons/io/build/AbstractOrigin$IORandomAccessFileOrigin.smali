.class public Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin;
.source "AbstractOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IORandomAccessFileOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin<",
        "Lorg/apache/commons/io/IORandomAccessFile;",
        "Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/IORandomAccessFile;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin;-><init>(Ljava/io/RandomAccessFile;)V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/IORandomAccessFile;

    invoke-virtual {v0}, Lorg/apache/commons/io/IORandomAccessFile;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
