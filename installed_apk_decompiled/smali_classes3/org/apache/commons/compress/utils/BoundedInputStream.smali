.class public Lorg/apache/commons/compress/utils/BoundedInputStream;
.super Lorg/apache/commons/io/input/BoundedInputStream;
.source "BoundedInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BoundedInputStream;->setPropagateClose(Z)V

    return-void
.end method


# virtual methods
.method public getBytesRemaining()J
    .locals 4

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BoundedInputStream;->getMaxCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BoundedInputStream;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
