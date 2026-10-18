.class public Lorg/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;
.source "UnixLineEndingInputStream.java"


# instance fields
.field private atEos:Z

.field private atSlashCr:Z

.field private atSlashLf:Z

.field private final in:Ljava/io/InputStream;

.field private final lineFeedAtEndOfFile:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 51
    iput-boolean p2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->lineFeedAtEndOfFile:Z

    return-void
.end method

.method private handleEos(Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 71
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->lineFeedAtEndOfFile:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    const/16 p1, 0xa

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private readWithUpdate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 120
    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 124
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 125
    :goto_2
    iput-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 61
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    .line 95
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->handleEos(Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 98
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->readWithUpdate()I

    move-result v1

    .line 99
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->handleEos(Z)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 103
    monitor-exit p0

    const/16 v0, 0xa

    return v0

    :cond_2
    if-eqz v0, :cond_3

    .line 106
    :try_start_3
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    .line 110
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
