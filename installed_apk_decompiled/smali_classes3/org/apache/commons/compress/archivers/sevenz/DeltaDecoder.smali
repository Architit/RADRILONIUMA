.class final Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;
.source "DeltaDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 32
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Number;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method private getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 58
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x0

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance p1, Lorg/tukaani/xz/DeltaOptions;

    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result p3

    invoke-direct {p1, p3}, Lorg/tukaani/xz/DeltaOptions;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/tukaani/xz/DeltaOptions;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->toInt(Ljava/lang/Object;I)I

    move-result p2

    .line 46
    :try_start_0
    new-instance v0, Lorg/tukaani/xz/DeltaOptions;

    invoke-direct {v0, p2}, Lorg/tukaani/xz/DeltaOptions;-><init>(I)V

    new-instance p2, Lorg/tukaani/xz/FinishableWrapperOutputStream;

    invoke-direct {p2, p1}, Lorg/tukaani/xz/FinishableWrapperOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Lorg/tukaani/xz/DeltaOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/tukaani/xz/UnsupportedOptionsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 2

    const/4 v0, 0x1

    .line 54
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->toInt(Ljava/lang/Object;I)I

    move-result p1

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
