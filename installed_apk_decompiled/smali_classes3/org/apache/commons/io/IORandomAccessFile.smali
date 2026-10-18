.class public final Lorg/apache/commons/io/IORandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "IORandomAccessFile.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final mode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    .line 48
    iput-object p2, p0, Lorg/apache/commons/io/IORandomAccessFile;->mode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    .line 62
    iput-object p2, p0, Lorg/apache/commons/io/IORandomAccessFile;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/io/IORandomAccessFile;->file:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
