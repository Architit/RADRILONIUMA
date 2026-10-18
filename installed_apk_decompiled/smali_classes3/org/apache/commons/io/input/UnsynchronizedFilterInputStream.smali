.class public Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;
.super Ljava/io/InputStream;
.source "UnsynchronizedFilterInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;
    }
.end annotation


# instance fields
.field protected volatile inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 130
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 121
    invoke-virtual {p1}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;
    .locals 1

    .line 112
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

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

    .line 206
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
