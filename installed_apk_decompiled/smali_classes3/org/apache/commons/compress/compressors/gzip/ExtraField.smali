.class public final Lorg/apache/commons/compress/compressors/gzip/ExtraField;
.super Ljava/lang/Object;
.source "ExtraField.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0xffff

.field private static final ZERO_BYTES:[B


# instance fields
.field private final subFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    return-void
.end method

.method static fromBytes([B)Lorg/apache/commons/compress/compressors/gzip/ExtraField;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/ExtraField;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 149
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x4

    if-gt v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 150
    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x2

    .line 151
    aget-byte v3, p0, v3

    add-int/lit8 v6, v2, 0x3

    .line 152
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x4

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 153
    array-length v6, p0

    sub-int/2addr v6, v2

    if-gt v5, v6, :cond_1

    .line 156
    new-array v6, v5, [B

    .line 157
    invoke-static {p0, v2, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    .line 159
    iget-object v5, v0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;

    invoke-direct {v7, v4, v3, v6}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;-><init>(BB[B)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iput v2, v0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Extra subfield lenght exceeds remaining bytes in extra: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    sub-int/2addr p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    array-length v1, p0

    if-lt v2, v1, :cond_3

    return-object v0

    .line 163
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    sub-int/2addr p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " remaining bytes not used to parse an extra subfield."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$findFirstSubField$0(Ljava/lang/String;Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)Z
    .locals 0

    .line 240
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addSubField(Ljava/lang/String;[B)Lorg/apache/commons/compress/compressors/gzip/ExtraField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-string v0, "payload"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "Subfield id must be a 2 character ISO-8859-1 string."

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v1, 0xff00

    and-int v3, v0, v1

    if-nez v3, :cond_1

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 200
    new-instance v1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-direct {v1, v0, p1, p2}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;-><init>(BB[B)V

    .line 201
    array-length p1, p2

    add-int/lit8 p1, p1, 0x4

    .line 202
    iget p2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    add-int/2addr p2, p1

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    .line 205
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget p2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    return-object p0

    .line 203
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Extra subfield \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' too big (extras total size is already at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 226
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 229
    :cond_2
    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField;

    .line 230
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    iget p1, p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public findFirstSubField(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;

    return-object p1
.end method

.method public getEncodedSize()I
    .locals 1

    .line 250
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    return v0
.end method

.method public getSubField(I)Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method toByteArray()[B
    .locals 8

    .line 298
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->ZERO_BYTES:[B

    return-object v0

    .line 301
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->totalSize:I

    new-array v0, v0, [B

    .line 303
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/ExtraField;->subFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;

    add-int/lit8 v5, v3, 0x1

    .line 304
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$000(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)B

    move-result v6

    aput-byte v6, v0, v3

    add-int/lit8 v6, v3, 0x2

    .line 305
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$100(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)B

    move-result v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v3, 0x3

    .line 306
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$200(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)[B

    move-result-object v7

    array-length v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v3, v3, 0x4

    .line 307
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$200(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)[B

    move-result-object v6

    array-length v6, v6

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 308
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$200(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)[B

    move-result-object v5

    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$200(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;->access$200(Lorg/apache/commons/compress/compressors/gzip/ExtraField$SubField;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method
