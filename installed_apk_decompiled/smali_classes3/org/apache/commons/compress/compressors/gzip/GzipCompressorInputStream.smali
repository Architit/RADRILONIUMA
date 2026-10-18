.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
    }
.end annotation


# static fields
.field private static final NOOP:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buf:[B

.field private bufUsed:I

.field private final countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private final crc:Ljava/util/zip/CRC32;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private final fileNameCharset:Ljava/nio/charset/Charset;

.field private final in:Ljava/io/InputStream;

.field private inflater:Ljava/util/zip/Inflater;

.field private final onMemberEnd:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final onMemberStart:Lorg/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final oneByte:[B

.field private parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    invoke-static {}, Lorg/apache/commons/io/function/IOConsumer;->noop()Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->NOOP:Lorg/apache/commons/io/function/IOConsumer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-static {}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    invoke-static {}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->builder()Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->setDecompressConcatenated(Z)Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/16 v0, 0x2000

    .line 228
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    .line 236
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    .line 252
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 255
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    .line 265
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    .line 268
    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    .line 269
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->access$100(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    .line 270
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->access$200(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->fileNameCharset:Ljava/nio/charset/Charset;

    .line 271
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->access$300(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->access$300(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->NOOP:Lorg/apache/commons/io/function/IOConsumer;

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->onMemberStart:Lorg/apache/commons/io/function/IOConsumer;

    .line 272
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->access$400(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;->access$400(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)Lorg/apache/commons/io/function/IOConsumer;

    move-result-object p1

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->NOOP:Lorg/apache/commons/io/function/IOConsumer;

    :goto_2
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->onMemberEnd:Lorg/apache/commons/io/function/IOConsumer;

    .line 273
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;
    .locals 1

    .line 202
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private init(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 344
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected: isFirstMember and decompressConcatenated are both false."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_c

    .line 354
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x8b

    if-eq v0, v2, :cond_3

    goto/16 :goto_2

    .line 357
    :cond_3
    new-instance p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    .line 358
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->fileNameCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFileNameCharset(Ljava/nio/charset/Charset;)V

    .line 360
    new-instance p1, Ljava/io/DataInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 361
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    .line 365
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v3, v0, 0xe0

    if-nez v3, :cond_a

    .line 369
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/4 v4, 0x4

    invoke-static {p1, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setModificationTime(J)V

    .line 370
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_4

    .line 378
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    goto :goto_1

    .line 375
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    goto :goto_1

    .line 372
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 381
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setOperatingSystem(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    .line 384
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 385
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    .line 386
    new-array v1, v1, [B

    .line 387
    invoke-interface {p1, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 388
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->fromBytes([B)Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setExtraField(Lorg/apache/commons/compress/compressors/gzip/ExtraField;)V

    :cond_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    .line 392
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInput;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getFileNameCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFileName(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_8

    .line 396
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInput;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getFileNameCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setComment(Ljava/lang/String;)V

    :cond_8
    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setHeaderCRC(Z)V

    .line 405
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    .line 408
    :cond_9
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 409
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 410
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->onMemberStart:Lorg/apache/commons/io/function/IOConsumer;

    invoke-interface {p1, p0}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return v6

    .line 367
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Reserved flags are set in the .gz header."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported compression method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in the .gz header"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_c
    :goto_2
    new-instance v0, Ljava/io/IOException;

    if-eqz p1, :cond_d

    const-string p1, "Input is not in the .gz format."

    goto :goto_3

    :cond_d
    const-string p1, "Unexpected data after a valid .gz stream."

    :goto_3
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matches([BI)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 214
    aget-byte p1, p0, v1

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-byte p0, p0, p1

    const/16 v0, -0x75

    if-ne p0, v0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method private static readToNull(Ljava/io/DataInput;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 218
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 330
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 429
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    :cond_2
    if-lez p3, :cond_a

    .line 436
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 439
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 441
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    if-eq v3, v2, :cond_3

    .line 446
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    .line 443
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 451
    :cond_4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    add-int/2addr v1, v3

    .line 460
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 462
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 466
    iget v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v3, v4

    .line 467
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 470
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 471
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x4

    .line 473
    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v5

    .line 474
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_8

    .line 478
    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v3

    .line 479
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    cmp-long v7, v3, v7

    if-nez v7, :cond_7

    .line 482
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v7, v5, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setTrailerCrc(J)V

    .line 483
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setTrailerISize(J)V

    .line 484
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->onMemberEnd:Lorg/apache/commons/io/function/IOConsumer;

    invoke-interface {v3, p0}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    .line 486
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 487
    :cond_5
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    return v2

    .line 480
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Gzip-compressed data is corrupt (uncompressed size mismatch)."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Gzip-compressed data is corrupt (CRC32 error)."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 453
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Gzip-compressed data is corrupt."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    return v1
.end method
