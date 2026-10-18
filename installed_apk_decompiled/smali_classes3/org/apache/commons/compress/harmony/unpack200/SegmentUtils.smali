.class public final Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;
.super Ljava/lang/Object;
.source "SegmentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countArgs(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countArgs(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static countArgs(Ljava/lang/String;I)I
    .locals 9

    const/16 v0, 0x28

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x29

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    if-lt v1, v0, :cond_8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v0, v1, :cond_7

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v5, :cond_0

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_0

    move v5, v3

    move v6, v5

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_2

    :cond_1
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v6, v3

    goto :goto_2

    :cond_4
    const/16 v8, 0x44

    if-eq v7, v8, :cond_6

    const/16 v8, 0x4a

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    add-int/2addr v4, p1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v4

    .line 42
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static countBit16([I)I
    .locals 5

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p0, v1

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static countBit16([J)I
    .locals 7

    .line 84
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v3, p0, v1

    const-wide/32 v5, 0x10000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static countBit16([[J)I
    .locals 11

    .line 94
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    .line 95
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-wide v7, v4, v6

    const-wide/32 v9, 0x10000

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static countInvokeInterfaceArgs(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    .line 105
    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countArgs(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I
    .locals 5

    .line 110
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v3, p0, v1

    .line 111
    invoke-interface {p1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/IMatcher;->matches(J)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I
    .locals 4

    .line 120
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 121
    invoke-static {v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
