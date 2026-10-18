.class public final Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
.super Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "UnsynchronizedByteArrayOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/output/AbstractByteArrayOutputStream<",
        "Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    .line 159
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    if-ltz p1, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->needNewBuffer(I)V

    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative initial size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;)V
    .locals 0

    .line 163
    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;->getBufferSize()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
    .locals 1

    .line 101
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$toInputStream$0([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-static {}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->builder()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setOffset(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setLength(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toInputStream$1([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 1

    .line 203
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;-><init>([BII)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 122
    invoke-static {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->builder()Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;->get()Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    move-result-object p1

    .line 146
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 147
    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 145
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method


# virtual methods
.method public reset()V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->resetImpl()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArrayImpl()[B

    move-result-object v0

    return-object v0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 1

    .line 202
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method public write(I)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeImpl(I)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_1

    .line 213
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeImpl([BII)V

    return-void

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "offset=%,d, length=%,d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V

    return-void
.end method
