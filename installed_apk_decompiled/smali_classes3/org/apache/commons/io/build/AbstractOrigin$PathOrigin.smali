.class public Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin;
.source "AbstractOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin<",
        "Ljava/nio/file/Path;",
        "Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getByteArray$0(JILjava/io/RandomAccessFile;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-static {p3, p0, p1, p2}, Lorg/apache/commons/io/RandomAccessFiles;->read(Ljava/io/RandomAccessFile;JI)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getByteArray(JI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    sget-object v0, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    iget-object v1, p0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->origin:Ljava/lang/Object;

    check-cast v1, Ljava/nio/file/Path;

    new-instance v2, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin$$ExternalSyntheticLambda0;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/io/RandomAccessFileMode;->apply(Ljava/nio/file/Path;Lorg/apache/commons/io/function/IOFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method
