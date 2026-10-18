.class public final Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;
.super Ljava/lang/Object;
.source "ExtraField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/gzip/ExtraField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubField"
.end annotation


# instance fields
.field private final payload:[B

.field private final si1:B

.field private final si2:B


# direct methods
.method constructor <init>(BB[B)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-byte p1, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si1:B

    .line 92
    iput-byte p2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si2:B

    .line 93
    iput-object p3, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->payload:[B

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)B
    .locals 0

    .line 84
    iget-byte p0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si1:B

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)B
    .locals 0

    .line 84
    iget-byte p0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si2:B

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)[B
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->payload:[B

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 107
    :cond_2
    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;

    .line 108
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->payload:[B

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->payload:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-byte v2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si1:B

    iget-byte v3, p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si1:B

    if-ne v2, v3, :cond_3

    iget-byte v2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si2:B

    iget-byte p1, p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si2:B

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .line 117
    iget-byte v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si1:B

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si2:B

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    const/4 v0, 0x1

    aput-char v1, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->payload:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->payload:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 134
    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->si2:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
