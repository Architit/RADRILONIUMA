.class public Lorg/apache/commons/io/input/WindowsLineEndingInputStream;
.super Ljava/io/InputStream;
.source "WindowsLineEndingInputStream.java"


# instance fields
.field private atEos:Z

.field private atSlashCr:Z

.field private atSlashLf:Z

.field private final in:Ljava/io/InputStream;

.field private injectSlashLf:Z

.field private final lineFeedAtEos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 53
    iput-boolean p2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->lineFeedAtEos:Z

    return-void
.end method

.method private handleEos()I
    .locals 4

    .line 73
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->lineFeedAtEos:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashLf:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    if-nez v3, :cond_1

    .line 77
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    const/16 v0, 0xd

    return v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 82
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashLf:Z

    const/16 v0, 0xa

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 64
    iget-object v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 93
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atEos:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->handleEos()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 104
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashLf:Z

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 105
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashLf:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p0

    return v1

    .line 108
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 109
    iget-object v3, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v2

    .line 110
    :goto_0
    iput-boolean v4, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atEos:Z

    const/16 v6, 0xd

    if-nez v4, :cond_5

    if-ne v3, v6, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v2

    .line 112
    :goto_1
    iput-boolean v7, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    if-ne v3, v1, :cond_4

    move v2, v5

    .line 113
    :cond_4
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashLf:Z

    :cond_5
    if-eqz v4, :cond_6

    .line 116
    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->handleEos()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_6
    if-ne v3, v1, :cond_7

    if-nez v0, :cond_7

    .line 119
    :try_start_3
    iput-boolean v5, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashLf:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    monitor-exit p0

    return v6

    .line 122
    :cond_7
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
