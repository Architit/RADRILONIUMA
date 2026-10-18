.class final Lorg/apache/commons/lang3/Strings$CiStrings;
.super Lorg/apache/commons/lang3/Strings;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CiStrings"
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/lang3/Strings;-><init>(ZZLorg/apache/commons/lang3/Strings$1;)V

    return-void
.end method

.method synthetic constructor <init>(ZLorg/apache/commons/lang3/Strings$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/Strings$CiStrings;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Strings$CiStrings;->isNullIsLess()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p2, :cond_4

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Strings$CiStrings;->isNullIsLess()Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 109
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    move v9, v0

    :goto_0
    if-gt v9, v8, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v9

    move-object v4, p2

    move v6, v7

    .line 120
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 9

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v7, 0x0

    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 154
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-le p3, v1, :cond_2

    return v0

    .line 158
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    return p3

    :cond_3
    :goto_0
    if-ge p3, v1, :cond_5

    const/4 v7, 0x0

    .line 162
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x1

    move-object v3, p1

    move v5, p3

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_4

    return p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v7

    if-le p3, v1, :cond_1

    move p3, v1

    :cond_1
    if-gez p3, :cond_2

    return v0

    :cond_2
    if-nez v7, :cond_3

    return p3

    :cond_3
    :goto_0
    if-ltz p3, :cond_5

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    move v6, v7

    .line 186
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_4

    return p3

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method
