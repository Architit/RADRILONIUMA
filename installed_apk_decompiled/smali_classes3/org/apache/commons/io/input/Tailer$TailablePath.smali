.class final Lorg/apache/commons/io/input/Tailer$TailablePath;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Lorg/apache/commons/io/input/Tailer$Tailable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TailablePath"
.end annotation


# instance fields
.field private final linkOptions:[Ljava/nio/file/LinkOption;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method private varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 1

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const-string v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    .line 458
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    return-void
.end method


# virtual methods
.method getPath()Ljava/nio/file/Path;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 467
    new-instance v0, Lorg/apache/commons/io/input/Tailer$RandomAccessFileBridge;

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/input/Tailer$RandomAccessFileBridge;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/io/input/Tailer$1;)V

    return-object v0
.end method

.method public isNewer(Ljava/nio/file/attribute/FileTime;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    return p1
.end method

.method public lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TailablePath [file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$TailablePath;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
