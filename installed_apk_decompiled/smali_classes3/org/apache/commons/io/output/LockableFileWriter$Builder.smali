.class public Lorg/apache/commons/io/output/LockableFileWriter$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "LockableFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/LockableFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/LockableFileWriter;",
        "Lorg/apache/commons/io/output/LockableFileWriter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private append:Z

.field private lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 77
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    const/16 v0, 0x400

    .line 83
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/output/LockableFileWriter$Builder;)Ljava/io/File;
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->checkOriginFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/output/LockableFileWriter$Builder;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->append:Z

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/output/LockableFileWriter$Builder;)Lorg/apache/commons/io/build/AbstractOrigin;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method

.method private checkOriginFile()Ljava/io/File;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->get()Lorg/apache/commons/io/output/LockableFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/LockableFileWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/apache/commons/io/output/LockableFileWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Lorg/apache/commons/io/output/LockableFileWriter$Builder;Lorg/apache/commons/io/output/LockableFileWriter$1;)V

    return-object v0
.end method

.method public setAppend(Z)Lorg/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->append:Z

    return-object p0
.end method

.method public setLockDirectory(Ljava/io/File;)Lorg/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectory()Ljava/io/File;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->newFileOrigin(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method

.method public setLockDirectory(Ljava/lang/String;)Lorg/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method
