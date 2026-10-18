.class public final Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "RandomAccessFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/RandomAccessFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/RandomAccessFileOutputStream;",
        "Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;->setOpenOptions([Ljava/nio/file/OpenOption;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;->get()Lorg/apache/commons/io/output/RandomAccessFileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/RandomAccessFileOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;-><init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V

    return-object v0
.end method
