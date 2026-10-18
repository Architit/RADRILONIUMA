.class public final Lorg/apache/commons/io/channels/FileChannels;
.super Ljava/lang/Object;
.source "FileChannels.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentEquals(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/channels/FileChannels;->contentEquals(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/channels/SeekableByteChannel;I)Z

    move-result p0

    return p0
.end method

.method public static contentEquals(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/ReadableByteChannel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 77
    invoke-static {p0, v0}, Lorg/apache/commons/io/channels/FileChannels;->readToLimit(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :cond_3
    :goto_1
    if-nez v4, :cond_5

    .line 82
    invoke-static {p1, p2}, Lorg/apache/commons/io/channels/FileChannels;->readToLimit(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 83
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-nez v6, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    if-ne v6, v7, :cond_6

    .line 87
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    if-eqz v5, :cond_9

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    if-eq v5, v6, :cond_8

    return v2

    .line 97
    :cond_8
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    return v2

    .line 91
    :cond_9
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public static contentEquals(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/channels/SeekableByteChannel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 122
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/channels/FileChannels;->size(Ljava/nio/channels/SeekableByteChannel;)J

    move-result-wide v2

    .line 123
    invoke-static {p1}, Lorg/apache/commons/io/channels/FileChannels;->size(Ljava/nio/channels/SeekableByteChannel;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    return v6

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_2

    cmp-long v0, v4, v7

    if-eqz v0, :cond_4

    .line 127
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/channels/FileChannels;->contentEquals(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/ReadableByteChannel;I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v6

    :cond_4
    :goto_0
    return v1
.end method

.method private static readToLimit(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 149
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0

    .line 144
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static size(Ljava/nio/channels/SeekableByteChannel;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
