.class public final Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
.super Ljava/io/InputStream;
.source "BufferedFileChannelInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;
    }
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 158
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 183
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-static {}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->builder()Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->setPath(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 144
    invoke-static {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->access$100(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->access$100(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 145
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;->getBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;Lorg/apache/commons/io/input/BufferedFileChannelInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;
    .locals 1

    .line 135
    new-instance v0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private clean(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 219
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->cleanDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method private cleanDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 233
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lorg/apache/commons/io/input/ByteBufferCleaner;->clean(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method private refill()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/io/input/Input;->checkOpen(Z)V

    .line 276
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    .line 280
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_0

    .line 282
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    return v1
.end method

.method private skipFromFileChannel(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long v4, v2, v0

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    .line 310
    iget-object p1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-wide v4

    .line 313
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    add-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-wide p1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 202
    monitor-exit p0

    return v1

    .line 204
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 205
    monitor-exit p0

    return v1

    .line 207
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 243
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V

    .line 244
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    .line 257
    :try_start_0
    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 260
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 261
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 263
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 264
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    monitor-exit p0

    return p3

    .line 258
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 291
    monitor-exit p0

    return-wide v0

    .line 293
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    .line 295
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-wide p1

    .line 298
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 301
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 303
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->skipFromFileChannel(J)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v0, p1

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
