.class public Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
.super Ljava/lang/Object;
.source "X000A_NTFS.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field public static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 79
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 80
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 112
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 114
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method private static dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(Ljava/util/Date;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    return-object v0
.end method

.method private static fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    return-object v0
.end method

.method private readTimeAttr([BII)V
    .locals 1

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    .line 336
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 337
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, 0x2

    .line 339
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p3, p2, 0xa

    .line 341
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x12

    .line 343
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 352
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 353
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 354
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method private static zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;
    .locals 2

    if-eqz p0, :cond_1

    .line 97
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToDate(J)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    if-eqz p0, :cond_1

    .line 104
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 118
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 121
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAccessFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getAccessJavaTime()Ljava/util/Date;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getCreateFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getCreateJavaTime()Ljava/util/Date;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreateTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 215
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 5

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    new-array v0, v0, [B

    .line 227
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v4, 0x18

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 246
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getModifyFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getModifyJavaTime()Ljava/util/Date;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getModifyTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 284
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/16 v1, -0x7b

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    const/16 v2, 0xb

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v1, v0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    const/16 v2, 0x16

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->reset()V

    .line 304
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    add-int/2addr p3, p2

    add-int/lit8 p2, p2, 0x4

    :goto_0
    add-int/lit8 v0, p2, 0x4

    if-gt v0, p3, :cond_1

    .line 323
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    add-int/lit8 p2, p2, 0x2

    .line 325
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p3, p2

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->readTimeAttr([BII)V

    goto :goto_1

    .line 329
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 330
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAccessFileTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0

    .line 364
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setAccessJavaTime(Ljava/util/Date;)V
    .locals 0

    .line 373
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 382
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setCreateFileTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0

    .line 392
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setCreateJavaTime(Ljava/util/Date;)V
    .locals 0

    .line 407
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 416
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setModifyFileTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0

    .line 426
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setModifyJavaTime(Ljava/util/Date;)V
    .locals 0

    .line 435
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 444
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x000A Zip Extra Field: Modify:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getModifyFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  Access:["

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getAccessFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  Create:["

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getCreateFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
