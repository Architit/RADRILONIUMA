.class public abstract Lorg/apache/commons/io/build/AbstractStreamBuilder;
.super Lorg/apache/commons/io/build/AbstractOriginSupplier;
.source "AbstractStreamBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/build/AbstractOriginSupplier<",
        "TT;TB;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_VALUE:I = 0x7fffffff

.field private static final DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;


# instance fields
.field private bufferSize:I

.field private bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

.field private bufferSizeDefault:I

.field private bufferSizeMax:I

.field private charset:Ljava/nio/charset/Charset;

.field private charsetDefault:Ljava/nio/charset/Charset;

.field private final defaultSizeChecker:Ljava/util/function/IntUnaryOperator;

.field private openOptions:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    sput-object v0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;-><init>()V

    const/16 v0, 0x2000

    .line 52
    iput v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSize:I

    .line 57
    iput v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    const v0, 0x7fffffff

    .line 62
    iput v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeMax:I

    .line 67
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charset:Ljava/nio/charset/Charset;

    .line 72
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    .line 74
    sget-object v0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->openOptions:[Ljava/nio/file/OpenOption;

    .line 79
    new-instance v0, Lorg/apache/commons/io/build/AbstractStreamBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/build/AbstractStreamBuilder;)V

    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->defaultSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

    return-void
.end method

.method private checkBufferSize(I)I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method

.method private throwIae(II)I
    .locals 1

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Request %,d exceeds maximum %,d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSize:I

    return v0
.end method

.method public getBufferSizeDefault()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    return v0
.end method

.method public getCharSequence()Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetDefault()Ljava/nio/charset/Charset;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOpenOptions()[Ljava/nio/file/OpenOption;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->openOptions:[Ljava/nio/file/OpenOption;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getRandomAccessFile([Ljava/nio/file/OpenOption;)Ljava/io/RandomAccessFile;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/io/build/AbstractOrigin;->getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$org-apache-commons-io-build-AbstractStreamBuilder(I)I
    .locals 1

    .line 79
    iget v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeMax:I

    if-le p1, v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->throwIae(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    if-lez p1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkBufferSize(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSize:I

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method public setBufferSize(Ljava/lang/Integer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 286
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method public setBufferSizeChecker(Ljava/util/function/IntUnaryOperator;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntUnaryOperator;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->defaultSizeChecker:Ljava/util/function/IntUnaryOperator;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method protected setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 311
    iput p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method public setBufferSizeMax(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 324
    :goto_0
    iput p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeMax:I

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charset:Ljava/nio/charset/Charset;

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method protected setCharsetDefault(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    .line 366
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method public varargs setOpenOptions([Ljava/nio/file/OpenOption;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/OpenOption;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    sget-object p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;->DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->openOptions:[Ljava/nio/file/OpenOption;

    .line 387
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method
