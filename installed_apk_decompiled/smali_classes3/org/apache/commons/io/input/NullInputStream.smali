.class public Lorg/apache/commons/io/input/NullInputStream;
.super Lorg/apache/commons/io/input/AbstractInputStream;
.source "NullInputStream.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/input/NullInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readLimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/commons/io/input/NullInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/NullInputStream;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/NullInputStream;->INSTANCE:Lorg/apache/commons/io/input/NullInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 94
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/io/input/AbstractInputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 80
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 114
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 115
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 116
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    return-void
.end method

.method private checkThrowEof(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleEof()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const-string v0, "handleEof()"

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/NullInputStream;->checkThrowEof(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 6

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 124
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const v0, 0x7fffffff

    return v0

    :cond_2
    long-to-int v0, v2

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-super {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->close()V

    const-wide/16 v0, -0x1

    .line 154
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    return-void
.end method

.method public getPosition()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public init()Lorg/apache/commons/io/input/NullInputStream;
    .locals 4

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/NullInputStream;->setClosed(Z)V

    const-wide/16 v0, 0x0

    .line 194
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v2, -0x1

    .line 195
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 196
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J

    return-object p0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_0

    .line 211
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    int-to-long v0, p1

    .line 212
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->checkOpen()V

    .line 263
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 264
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->handleEof()I

    move-result v0

    return v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 266
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 267
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 280
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->checkOpen()V

    .line 299
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 300
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->handleEof()I

    move-result p1

    return p1

    :cond_1
    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 302
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 306
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 308
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    return p3

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Marked position ["

    monitor-enter p0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v1, :cond_2

    .line 323
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 326
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v5, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J

    add-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 329
    iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/NullInputStream;->setClosed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->reset()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const-string p1, "skip(long)"

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/NullInputStream;->checkThrowEof(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1

    .line 347
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 348
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->handleEof()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_1
    add-long/2addr v0, p1

    .line 350
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 354
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    :cond_2
    return-wide p1
.end method
