.class public Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;
.super Ljava/lang/Object;
.source "MultiReadOnlySeekableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;


# instance fields
.field private final channelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannelIdx:I

.field private globalPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    new-array v0, v0, [Ljava/nio/file/Path;

    sput-object v0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "channels"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    return-void
.end method

.method public static varargs forFiles([Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v1, "files"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    sget-object p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/file/Path;

    invoke-static {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->forPaths([Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static varargs forPaths([Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const-string v1, "paths"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/file/Path;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    aget-object v5, p0, v3

    .line 82
    new-array v4, v4, [Ljava/nio/file/OpenOption;

    sget-object v6, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v4, v2

    invoke-static {v5, v4}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_1

    .line 85
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/SeekableByteChannel;

    return-object p0

    .line 87
    :cond_1
    new-instance p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static varargs forSeekableByteChannels([Ljava/nio/channels/SeekableByteChannel;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    .line 98
    const-string v0, "channels"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/channels/SeekableByteChannel;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 99
    aget-object p0, p0, v0

    return-object p0

    .line 101
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SeekableByteChannel;

    .line 125
    :try_start_0
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 133
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "failed to close wrapped channel"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public position()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J

    return-wide v0
.end method

.method public declared-synchronized position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Negative position: "

    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_4

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iput-wide p1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 165
    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SeekableByteChannel;

    .line 166
    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, p1, v6

    if-nez v8, :cond_0

    move-wide v6, p1

    move-wide p1, v1

    goto :goto_1

    :cond_0
    cmp-long v8, p1, v4

    if-gtz v8, :cond_1

    .line 175
    iput v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    goto :goto_1

    :cond_1
    sub-long/2addr p1, v4

    move-wide v6, p1

    move-wide p1, v4

    .line 186
    :goto_1
    invoke-interface {v3, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    move-wide p1, v6

    goto :goto_0

    .line 188
    :cond_2
    monitor-exit p0

    return-object p0

    .line 160
    :cond_3
    :try_start_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 157
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized position(JJ)Ljava/nio/channels/SeekableByteChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 205
    iget-object v1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v1

    add-long/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 201
    :cond_1
    :try_start_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    monitor-exit p0

    return v1

    .line 221
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 222
    iget-object v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SeekableByteChannel;

    .line 223
    invoke-interface {v0, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 226
    iget v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 231
    iget v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    .line 236
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit p0

    return v1

    .line 239
    :cond_4
    monitor-exit p0

    return v2

    .line 214
    :cond_5
    :try_start_2
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SeekableByteChannel;

    .line 249
    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1

    .line 245
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 259
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 267
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method
