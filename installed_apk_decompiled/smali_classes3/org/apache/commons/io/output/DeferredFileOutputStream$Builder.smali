.class public Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "DeferredFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/DeferredFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/DeferredFileOutputStream;",
        "Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private directory:Ljava/nio/file/Path;

.field private outputFile:Ljava/nio/file/Path;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/16 v0, 0x400

    .line 90
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 91
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/nio/file/Path;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/nio/file/Path;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->get()Lorg/apache/commons/io/output/DeferredFileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/DeferredFileOutputStream;
    .locals 2

    .line 113
    new-instance v0, Lorg/apache/commons/io/output/DeferredFileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;Lorg/apache/commons/io/output/DeferredFileOutputStream$1;)V

    return-object v0
.end method

.method public setDirectory(Ljava/io/File;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setOutputFile(Ljava/io/File;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setOutputFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public setThreshold(I)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    .line 191
    iput p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I

    return-object p0
.end method
