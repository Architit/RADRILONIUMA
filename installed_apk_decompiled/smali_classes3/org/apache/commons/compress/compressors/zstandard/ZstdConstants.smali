.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;
.super Ljava/lang/Object;
.source "ZstdConstants.java"


# static fields
.field public static final ZSTD_CHAINLOG_MAX:I

.field public static final ZSTD_CHAINLOG_MIN:I

.field public static final ZSTD_CLEVEL_DEFAULT:I

.field public static final ZSTD_CLEVEL_MAX:I

.field public static final ZSTD_CLEVEL_MIN:I

.field public static final ZSTD_HASHLOG_MAX:I

.field public static final ZSTD_HASHLOG_MIN:I

.field public static final ZSTD_MINMATCH_MAX:I = 0x7

.field public static final ZSTD_MINMATCH_MIN:I = 0x3

.field public static final ZSTD_SEARCHLOG_MAX:I

.field public static final ZSTD_SEARCHLOG_MIN:I

.field public static final ZSTD_WINDOWLOG_LIMIT_DEFAULT:I = 0x1b

.field public static final ZSTD_WINDOWLOG_MAX:I

.field public static final ZSTD_WINDOWLOG_MIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->chainLogMax()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_CHAINLOG_MAX:I

    .line 53
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->chainLogMin()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_CHAINLOG_MIN:I

    .line 65
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->defaultCompressionLevel()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_CLEVEL_DEFAULT:I

    .line 77
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->maxCompressionLevel()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_CLEVEL_MAX:I

    .line 89
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->minCompressionLevel()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_CLEVEL_MIN:I

    .line 101
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->hashLogMax()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_HASHLOG_MAX:I

    .line 113
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->hashLogMin()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_HASHLOG_MIN:I

    .line 142
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->searchLogMax()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_SEARCHLOG_MAX:I

    .line 154
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->searchLogMin()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_SEARCHLOG_MIN:I

    .line 182
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->windowLogMax()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_WINDOWLOG_MAX:I

    .line 194
    invoke-static {}, Lcom/github/luben/zstd/Zstd;->windowLogMin()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdConstants;->ZSTD_WINDOWLOG_MIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
