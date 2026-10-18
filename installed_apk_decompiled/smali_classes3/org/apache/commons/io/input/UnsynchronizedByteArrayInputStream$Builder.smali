.class public Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "UnsynchronizedByteArrayInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;",
        "Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->checkOriginByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)I
    .locals 0

    .line 82
    iget p0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->offset:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)I
    .locals 0

    .line 82
    iget p0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    return p0
.end method

.method private checkOriginByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getByteArray()[B

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

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$1;)V

    return-object v0
.end method

.method public bridge synthetic setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    .line 126
    const-string v0, "origin"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    .line 127
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    return-object p1
.end method

.method public setLength(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 140
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    return-object p0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffset(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 154
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->offset:I

    return-object p0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
