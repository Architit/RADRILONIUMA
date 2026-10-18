.class final Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "BinaryTree.java"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 143
    new-array p1, p1, [I

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ArrayFill;->fill([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "depth must be bigger than 0 and not bigger than 30 but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d

    .line 50
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 55
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 56
    array-length v2, p0

    if-ne v2, v0, :cond_b

    .line 63
    new-array v0, p1, [I

    .line 65
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    aget-byte v7, p0, v4

    and-int/lit16 v8, v7, 0xf0

    shr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v1

    add-int v9, v5, v8

    if-gt v9, p1, :cond_1

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v7, v1

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    add-int/lit8 v10, v5, 0x1

    .line 74
    aput v7, v0, v5

    add-int/lit8 v9, v9, 0x1

    move v5, v10

    goto :goto_1

    .line 77
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Number of values exceeds given total number of values"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_2
    new-array p0, p1, [I

    move v2, v3

    :goto_2
    if-ge v2, p1, :cond_3

    .line 84
    aput v2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    :cond_3
    new-array v2, p1, [I

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, p1, :cond_6

    move v7, v3

    :goto_4
    if-ge v7, p1, :cond_5

    .line 93
    aget v8, v0, v7

    if-ne v8, v4, :cond_4

    .line 95
    aput v4, v2, v5

    .line 98
    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 110
    :cond_6
    new-array v4, p1, [I

    add-int/lit8 v5, p1, -0x1

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_5
    if-ltz v5, :cond_8

    add-int/2addr v7, v8

    .line 114
    aget v10, v2, v5

    if-eq v10, v9, :cond_7

    rsub-int/lit8 v8, v10, 0x10

    shl-int v8, v1, v8

    move v9, v10

    .line 118
    :cond_7
    aget v10, p0, v5

    aput v7, v4, v10

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 122
    :cond_8
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    move v1, v3

    :goto_6
    if-ge v1, p1, :cond_a

    .line 125
    aget v2, v0, v1

    if-lez v2, :cond_9

    .line 127
    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    move-result v5

    invoke-virtual {p0, v3, v5, v2, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    return-object p0

    .line 57
    :cond_b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 52
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "totalNumberOfValues must be bigger than 0, is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addLeaf(IIII)V
    .locals 2

    if-nez p3, :cond_1

    .line 157
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget p3, p2, p1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 160
    aput p4, p2, p1

    goto :goto_0

    .line 158
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Tree value at index "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " has already been assigned ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget p1, p4, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x2

    aput v1, v0, p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    ushr-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 167
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    :goto_0
    return-void
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->readBit()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 188
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v4, v4, v3

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-eq v4, v2, :cond_2

    return v4

    .line 195
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of node at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not defined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
