.class public Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.super Ljava/lang/Object;
.source "GzipParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final OS_ACORN_RISCOS:I = 0xd

.field private static final OS_AMIGA:I = 0x1

.field private static final OS_ATARI_TOS:I = 0x5

.field private static final OS_CPM:I = 0x9

.field private static final OS_FAT:I = 0x0

.field private static final OS_HPFS:I = 0x6

.field private static final OS_MACINTOSH:I = 0x7

.field private static final OS_NTFS:I = 0xb

.field private static final OS_QDOS:I = 0xc

.field private static final OS_TOPS_20:I = 0xa

.field private static final OS_UNIX:I = 0x3

.field private static final OS_UNKNOWN:I = 0xff

.field private static final OS_VMS:I = 0x2

.field private static final OS_VM_CMS:I = 0x4

.field private static final OS_Z_SYSTEM:I = 0x8


# instance fields
.field private bufferSize:I

.field private comment:Ljava/lang/String;

.field private compressionLevel:I

.field private deflateStrategy:I

.field private extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

.field private fileName:Ljava/lang/String;

.field private fileNameCharset:Ljava/nio/charset/Charset;

.field private headerCrc:Z

.field private modificationInstant:Ljava/time/Instant;

.field private operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

.field private trailerCrc:J

.field private trailerISize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 286
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    .line 293
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->GZIP_ENCODING:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    .line 303
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    .line 304
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-void
.end method

.method private requireNonNulByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 493
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->contains([BB)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String encoded in Charset \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' contains the nul byte 0 which is not supported in gzip."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 313
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 316
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    .line 317
    iget v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    iget v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    iget v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    iget v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    .line 318
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    .line 319
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->headerCrc:Z

    iget-boolean v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->headerCrc:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    .line 320
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerCrc:J

    iget-wide v5, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerCrc:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerISize:J

    iget-wide v5, p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerISize:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 332
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 354
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return v0
.end method

.method public getDeflateStrategy()I
    .locals 1

    .line 366
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return v0
.end method

.method public getExtraField()Lorg/apache/commons/compress/compressors/gzip/ExtraField;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderCRC()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->headerCrc:Z

    return v0
.end method

.method public getModificationInstant()Ljava/time/Instant;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    return-object v0
.end method

.method public getModificationTime()J
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOS()Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-object v0
.end method

.method public getOperatingSystem()I
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->access$000(Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;)I

    move-result v0

    return v0
.end method

.method public getTrailerCrc()J
    .locals 2

    .line 473
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerCrc:J

    return-wide v0
.end method

.method public getTrailerISize()J
    .locals 2

    .line 483
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerISize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 14

    .line 488
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->headerCrc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    iget-object v10, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    iget-wide v11, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerCrc:J

    .line 489
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerISize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 488
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBufferSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 509
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid buffer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 519
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->requireNonNulByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 535
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return-void

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid gzip compression level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeflateStrategy(I)V
    .locals 0

    .line 546
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return-void
.end method

.method public setExtraField(Lorg/apache/commons/compress/compressors/gzip/ExtraField;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->requireNonNulByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileNameCharset(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 596
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->GZIP_ENCODING:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderCRC(Z)V
    .locals 0

    .line 607
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->headerCrc:Z

    return-void
.end method

.method public setModificationInstant(Ljava/time/Instant;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    sget-object p1, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    return-void
.end method

.method public setModificationTime(J)V
    .locals 0

    .line 631
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    return-void
.end method

.method public setOS(Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    sget-object p1, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->UNKNOWN:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-void
.end method

.method public setOperatingSystem(I)V
    .locals 0

    .line 657
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;->from(I)Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    return-void
.end method

.method setTrailerCrc(J)V
    .locals 0

    .line 671
    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerCrc:J

    return-void
.end method

.method setTrailerISize(J)V
    .locals 0

    .line 675
    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerISize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GzipParameters [bufferSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    iget v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", compressionLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    .line 682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deflateStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraField="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->extraField:Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    .line 683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileNameCharset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileNameCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", headerCrc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->headerCrc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modificationInstant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationInstant:Ljava/time/Instant;

    .line 684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", operatingSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:Lorg/apache/commons/compress/compressors/gzip/GzipParameters$OS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trailerCrc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerCrc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trailerISize="

    .line 685
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->trailerISize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
