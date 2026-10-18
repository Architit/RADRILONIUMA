.class final Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;
.source "AES256SHA256Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;,
        Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderOutputStream;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 236
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method static sha256Password([BI[B)[B
    .locals 9

    .line 192
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    .line 196
    new-array v2, v1, [B

    const-wide/16 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    cmp-long v7, v3, v7

    if-gez v7, :cond_2

    .line 198
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 199
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 200
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_1

    .line 202
    aget-byte v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-long/2addr v3, v5

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SHA-256 is unsupported by your Java implementation"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static sha256Password([CI[B)[B
    .locals 0

    .line 212
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->sha256Password([BI[B)[B

    move-result-object p0

    return-object p0
.end method

.method static utf16Decode([C)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 230
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 231
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;
    .locals 6

    .line 242
    new-instance p3, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v2, p5

    move-object v3, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;)V

    return-object p3
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderOutputStream;

    check-cast p2, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderOutputStream;-><init>(Lorg/apache/commons/compress/archivers/sevenz/AES256Options;Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;)V

    return-object v0
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    check-cast p1, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    .line 253
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 256
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getNumCyclesPower()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x80

    :goto_0
    or-int/2addr v2, v3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x40

    :goto_1
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 258
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_5

    .line 260
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v3

    :goto_2
    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v3

    :goto_3
    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 263
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v2, v4, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v0
.end method
