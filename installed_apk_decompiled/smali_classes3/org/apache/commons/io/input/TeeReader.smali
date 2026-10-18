.class public Lorg/apache/commons/io/input/TeeReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "TeeReader.java"


# instance fields
.field private final branch:Ljava/io/Writer;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/TeeReader;-><init>(Ljava/io/Reader;Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    .line 71
    iput-object p2, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 72
    iput-boolean p3, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 86
    iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 89
    :cond_1
    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 151
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 156
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 158
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    throw v0

    :cond_0
    :goto_0
    return v1
.end method

.method public read([C)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyReader;->read([CII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return p3
.end method
