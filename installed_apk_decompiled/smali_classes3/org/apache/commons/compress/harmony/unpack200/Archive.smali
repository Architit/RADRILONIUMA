.class public Lorg/apache/commons/compress/harmony/unpack200/Archive;
.super Ljava/lang/Object;
.source "Archive.java"


# static fields
.field private static final MAGIC:[I


# instance fields
.field private final closeStreams:Z

.field private deflateHint:Z

.field private final inputPath:Ljava/nio/file/Path;

.field private final inputSize:J

.field private inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private logFile:Ljava/io/FileOutputStream;

.field private logLevel:I

.field private final outputFileName:Ljava/lang/String;

.field private final outputStream:Ljava/util/jar/JarOutputStream;

.field private overrideDeflateHint:Z

.field private removePackFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd0

    const/16 v1, 0xd

    const/16 v2, 0xca

    const/16 v3, 0xfe

    .line 46
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->MAGIC:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    .line 79
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    .line 80
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    .line 81
    instance-of p2, p1, Ljava/io/FileInputStream;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 82
    check-cast p1, Ljava/io/FileInputStream;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->readPathString(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputPath:Ljava/nio/file/Path;

    goto :goto_0

    .line 84
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputPath:Ljava/nio/file/Path;

    .line 86
    :goto_0
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputFileName:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 87
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputSize:J

    .line 88
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->closeStreams:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    const/4 v1, 0x0

    .line 101
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputPath:Ljava/nio/file/Path;

    .line 102
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputSize:J

    .line 103
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPath(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    .line 104
    new-instance p1, Ljava/util/jar/JarOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    .line 105
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputFileName:Ljava/lang/String;

    .line 106
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->closeStreams:Z

    return-void
.end method

.method private available(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 112
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/4 p1, -0x1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public setDeflateHint(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->overrideDeflateHint:Z

    .line 123
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->deflateHint:Z

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    return-void
.end method

.method public setLogFile(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 155
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    :cond_1
    return-void
.end method

.method public setRemovePackFile(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->removePackFile:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 176
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    goto :goto_0

    .line 177
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 178
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    :cond_1
    :goto_0
    return-void
.end method

.method public unpack()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    const-string v1, "PACK200"

    invoke-virtual {v0, v1}, Ljava/util/jar/JarOutputStream;->setComment(Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lorg/apache/commons/io/input/BoundedInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    .line 193
    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->mark(I)V

    .line 198
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/io/input/BoundedInputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const v2, 0x8b1f

    if-ne v0, v2, :cond_2

    .line 199
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->reset()V

    .line 200
    new-instance v0, Lorg/apache/commons/io/input/BoundedInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    goto :goto_1

    .line 202
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->reset()V

    .line 204
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    sget-object v2, Lorg/apache/commons/compress/harmony/unpack200/Archive;->MAGIC:[I

    array-length v3, v2

    invoke-virtual {v0, v3}, Lorg/apache/commons/io/input/BoundedInputStream;->mark(I)V

    .line 206
    array-length v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    .line 208
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v5}, Lorg/apache/commons/io/input/BoundedInputStream;->read()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    .line 211
    :goto_3
    sget-object v4, Lorg/apache/commons/compress/harmony/unpack200/Archive;->MAGIC:[I

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v0, v5, :cond_5

    .line 212
    aget v5, v2, v0

    aget v4, v4, v0

    if-eq v5, v4, :cond_4

    move v0, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v3

    .line 217
    :goto_4
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/io/input/BoundedInputStream;->reset()V

    if-eqz v0, :cond_6

    .line 219
    new-instance v0, Ljava/util/jar/JarInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    :goto_5
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 222
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 223
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    const/16 v2, 0x4000

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 224
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    goto :goto_5

    :cond_6
    move v0, v3

    .line 228
    :goto_6
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/Archive;->available(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/2addr v0, v6

    .line 230
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;-><init>()V

    .line 231
    iget v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setLogLevel(I)V

    .line 232
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setLogStream(Ljava/io/OutputStream;)V

    .line 233
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setPreRead(Z)V

    if-ne v0, v6, :cond_7

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unpacking from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputPath:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 237
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading segment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 238
    iget-boolean v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->overrideDeflateHint:Z

    if-eqz v4, :cond_8

    .line 239
    iget-boolean v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->deflateHint:Z

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint(Z)V

    .line 241
    :cond_8
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    .line 242
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 246
    :cond_9
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->closeStreams:Z

    if-eqz v0, :cond_a

    .line 247
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 250
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 252
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->removePackFile:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputPath:Ljava/nio/file/Path;

    if-eqz v0, :cond_b

    .line 253
    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 246
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->closeStreams:Z

    if-eqz v1, :cond_c

    .line 247
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 248
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 250
    :cond_c
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 251
    throw v0
.end method
