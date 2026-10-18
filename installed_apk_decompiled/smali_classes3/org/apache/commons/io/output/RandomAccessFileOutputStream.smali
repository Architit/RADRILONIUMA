.class public final Lorg/apache/commons/io/output/RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "RandomAccessFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;
    }
.end annotation


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 106
    invoke-virtual {p1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;->getRandomAccessFile()Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;-><init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;
    .locals 2

    .line 100
    new-instance v0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;-><init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 112
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 119
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method
