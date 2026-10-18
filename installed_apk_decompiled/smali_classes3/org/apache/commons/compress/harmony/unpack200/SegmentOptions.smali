.class public Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
.super Ljava/lang/Object;
.source "SegmentOptions.java"


# static fields
.field private static final DEFLATE_HINT:I = 0x20

.field private static final HAVE_ALL_CODE_FLAGS:I = 0x4

.field private static final HAVE_CLASS_FLAGS_HI:I = 0x200

.field private static final HAVE_CODE_FLAGS_HI:I = 0x400

.field private static final HAVE_CP_NUMBERS:I = 0x2

.field private static final HAVE_FIELD_FLAGS_HI:I = 0x400

.field private static final HAVE_FILE_HEADERS:I = 0x10

.field private static final HAVE_FILE_MODTIME:I = 0x40

.field private static final HAVE_FILE_OPTIONS:I = 0x80

.field private static final HAVE_FILE_SIZE_HI:I = 0x100

.field private static final HAVE_METHOD_FLAGS_HI:I = 0x800

.field private static final HAVE_SPECIAL_FORMATS:I = 0x1

.field private static final UNUSED:I = -0x1ff8


# instance fields
.field private final options:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, -0x1ff8

    if-nez v0, :cond_0

    .line 73
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    return-void

    .line 71
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v0, "Some unused flags are non-zero"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasAllCodeFlags()Z
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArchiveFileCounts()Z
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCPNumberCounts()Z
    .locals 1

    .line 93
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClassFlagsHi()Z
    .locals 1

    .line 85
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCodeFlagsHi()Z
    .locals 1

    .line 89
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFieldFlagsHi()Z
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileModtime()Z
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileOptions()Z
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileSizeHi()Z
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMethodFlagsHi()Z
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpecialFormats()Z
    .locals 2

    .line 117
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldDeflate()Z
    .locals 1

    .line 121
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->options:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
