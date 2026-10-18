.class public abstract Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.super Lorg/apache/commons/compress/CompressFilterOutputStream;
.source "CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/io/OutputStream;",
        ">",
        "Lorg/apache/commons/compress/CompressFilterOutputStream<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/compress/CompressFilterOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/CompressFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method
