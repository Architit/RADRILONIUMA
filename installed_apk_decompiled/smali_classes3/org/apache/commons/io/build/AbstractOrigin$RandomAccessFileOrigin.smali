.class public Lorg/apache/commons/io/build/AbstractOrigin$RandomAccessFileOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin;
.source "AbstractOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomAccessFileOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin<",
        "Ljava/io/RandomAccessFile;",
        "Lorg/apache/commons/io/build/AbstractOrigin$RandomAccessFileOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin$AbstractRandomAccessFileOrigin;-><init>(Ljava/io/RandomAccessFile;)V

    return-void
.end method
