.class final Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "CpioUtil.java"


# static fields
.field static final DEFAULT_CHARSET_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .locals 4

    .line 42
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 48
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    .line 52
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 53
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    .line 54
    aget-byte v3, p0, v2

    aput-byte v3, p0, p1

    .line 55
    aput-byte v1, p0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 59
    :cond_0
    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 60
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_1

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 62
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-wide v0

    .line 43
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static fileType(J)J
    .locals 2

    const-wide/32 v0, 0xf000

    and-long/2addr p0, v0

    return-wide p0
.end method

.method static long2byteArray(JIZ)[B
    .locals 4

    .line 84
    new-array v0, p2, [B

    .line 88
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 94
    aput-byte v2, v0, v1

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x0

    :goto_1
    if-ge p0, p2, :cond_1

    .line 101
    aget-byte p1, v0, p0

    add-int/lit8 p3, p0, 0x1

    .line 102
    aget-byte v1, v0, p3

    aput-byte v1, v0, p0

    .line 103
    aput-byte p1, v0, p3

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_1
    return-object v0

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
