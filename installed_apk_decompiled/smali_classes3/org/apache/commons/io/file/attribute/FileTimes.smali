.class public final Lorg/apache/commons/io/file/attribute/FileTimes;
.super Ljava/lang/Object;
.source "FileTimes.java"


# static fields
.field public static final EPOCH:Ljava/nio/file/attribute/FileTime;

.field private static final HUNDRED:J = 0x64L

.field private static final HUNDRED_BD:Ljava/math/BigDecimal;

.field static final HUNDRED_NANOS_PER_MILLISECOND:J

.field static final HUNDRED_NANOS_PER_MILLISECOND_BD:Ljava/math/BigDecimal;

.field private static final HUNDRED_NANOS_PER_SECOND:J

.field private static final HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

.field private static final LONG_MAX_VALUE_BD:Ljava/math/BigDecimal;

.field private static final LONG_MIN_VALUE_BD:Ljava/math/BigDecimal;

.field private static final MATH_CONTEXT:Ljava/math/MathContext;

.field static final UNIX_TO_NTFS_OFFSET:J = -0x19db1ded53e8000L

.field private static final UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    .line 43
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MIN_VALUE_BD:Ljava/math/BigDecimal;

    const-wide v0, 0x7fffffffffffffffL

    .line 45
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MAX_VALUE_BD:Ljava/math/BigDecimal;

    .line 47
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->MATH_CONTEXT:Ljava/math/MathContext;

    .line 54
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    const-wide v0, -0x19db1ded53e8000L

    .line 67
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    sput-wide v3, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND:J

    .line 74
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    div-long/2addr v0, v5

    sput-wide v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND:J

    .line 81
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND_BD:Ljava/math/BigDecimal;

    .line 85
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_BD:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromUnixTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 95
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static isUnixTime(J)Z
    .locals 2

    const-wide/32 v0, -0x80000000

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUnixTime(Ljava/nio/file/attribute/FileTime;)Z
    .locals 2

    .line 109
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->isUnixTime(J)Z

    move-result p0

    return p0
.end method

.method public static minusMillis(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 131
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static minusNanos(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 142
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static minusSeconds(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 153
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->minusSeconds(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static now()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 162
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static ntfsTimeToDate(J)Ljava/util/Date;
    .locals 0

    .line 180
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToDate(Ljava/math/BigDecimal;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static ntfsTimeToDate(Ljava/math/BigDecimal;)Ljava/util/Date;
    .locals 3

    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToInstant(Ljava/math/BigDecimal;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 195
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToInstant(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method static ntfsTimeToInstant(J)Ljava/time/Instant;
    .locals 0

    .line 205
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToInstant(Ljava/math/BigDecimal;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method static ntfsTimeToInstant(Ljava/math/BigDecimal;)Ljava/time/Instant;
    .locals 4

    .line 199
    sget-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 200
    sget-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

    sget-object v1, Lorg/apache/commons/io/file/attribute/FileTimes;->MATH_CONTEXT:Ljava/math/MathContext;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    .line 201
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    sget-object v2, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static plusMillis(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 216
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static plusNanos(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 227
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static plusSeconds(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    .line 238
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-static {}, Lorg/apache/commons/io/file/attribute/FileTimes;->now()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;

    return-void
.end method

.method public static toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;
    .locals 3

    if-eqz p0, :cond_0

    .line 259
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static toNtfsTime(J)J
    .locals 0

    .line 316
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 317
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 318
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MAX_VALUE_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 321
    :cond_0
    sget-object p1, Lorg/apache/commons/io/file/attribute/FileTimes;->LONG_MIN_VALUE_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    .line 324
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static toNtfsTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2

    .line 296
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(Ljava/time/Instant;)J

    move-result-wide v0

    return-wide v0
.end method

.method static toNtfsTime(Ljava/time/Instant;)J
    .locals 3

    .line 300
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND_BD:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 302
    sget-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->UNIX_TO_NTFS_OFFSET_BD:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toNtfsTime(Ljava/util/Date;)J
    .locals 2

    .line 283
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toUnixTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 339
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
