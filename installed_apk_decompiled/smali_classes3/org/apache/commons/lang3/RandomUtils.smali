.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static INSECURE:Lorg/apache/commons/lang3/RandomUtils;

.field private static SECURE:Lorg/apache/commons/lang3/RandomUtils;

.field private static final SECURE_RANDOM_STRONG:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static SECURE_STRONG:Lorg/apache/commons/lang3/RandomUtils;

.field private static final SECURE_STRONG_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final random:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EAudPwk-o910NaGekEJs4TLij_c()Ljava/security/SecureRandom;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$mPAG4QCbSGijbkS1PUbLTnkaZbE()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lorg/apache/commons/lang3/RandomUtils;

    new-instance v1, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->INSECURE:Lorg/apache/commons/lang3/RandomUtils;

    .line 75
    new-instance v0, Lorg/apache/commons/lang3/RandomUtils;

    new-instance v1, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE:Lorg/apache/commons/lang3/RandomUtils;

    .line 77
    new-instance v0, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE_STRONG_SUPPLIER:Ljava/util/function/Supplier;

    .line 79
    new-instance v1, Lorg/apache/commons/lang3/RandomUtils;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/commons/lang3/RandomUtils;->SECURE_STRONG:Lorg/apache/commons/lang3/RandomUtils;

    .line 81
    new-instance v0, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/RandomUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE_RANDOM_STRONG:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE_STRONG_SUPPLIER:Ljava/util/function/Supplier;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/RandomUtils;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Random;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lorg/apache/commons/lang3/RandomUtils;->random:Ljava/util/function/Supplier;

    return-void
.end method

.method public static insecure()Lorg/apache/commons/lang3/RandomUtils;
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->INSECURE:Lorg/apache/commons/lang3/RandomUtils;

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/util/Random;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE_RANDOM_STRONG:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/security/SecureRandom;
    .locals 2

    .line 83
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lorg/apache/commons/lang3/exception/UncheckedException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/exception/UncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static nextBoolean()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/RandomUtils;->randomBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextBytes(I)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/RandomUtils;->randomBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static nextDouble()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/RandomUtils;->randomDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/RandomUtils;->randomDouble(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static nextFloat()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/RandomUtils;->randomFloat()F

    move-result v0

    return v0
.end method

.method public static nextFloat(FF)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->randomFloat(FF)F

    move-result p0

    return p0
.end method

.method public static nextInt()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/RandomUtils;->randomInt()I

    move-result v0

    return v0
.end method

.method public static nextInt(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result p0

    return p0
.end method

.method public static nextLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/RandomUtils;->randomLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(JJ)J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->secure()Lorg/apache/commons/lang3/RandomUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/RandomUtils;->randomLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private randomLong(J)J
    .locals 6

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    .line 438
    rem-long v2, v0, p1

    sub-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    return-wide v2
.end method

.method public static secure()Lorg/apache/commons/lang3/RandomUtils;
    .locals 1

    .line 255
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE:Lorg/apache/commons/lang3/RandomUtils;

    return-object v0
.end method

.method static secureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 259
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE_RANDOM_STRONG:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static secureStrong()Lorg/apache/commons/lang3/RandomUtils;
    .locals 1

    .line 274
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->SECURE_STRONG:Lorg/apache/commons/lang3/RandomUtils;

    return-object v0
.end method


# virtual methods
.method random()Ljava/util/Random;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/apache/commons/lang3/RandomUtils;->random:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

.method public randomBoolean()Z
    .locals 1

    .line 308
    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public randomBytes(I)[B
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 320
    :goto_0
    const-string v2, "Count cannot be negative."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 321
    new-array p1, p1, [B

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method public randomDouble()D
    .locals 4

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 334
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->randomDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public randomDouble(DD)D
    .locals 5

    cmpl-double v0, p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 348
    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 349
    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmpl-double v0, p1, p3

    if-nez v0, :cond_2

    return-wide p1

    :cond_2
    sub-double/2addr p3, p1

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public randomFloat()F
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 364
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->randomFloat(FF)F

    move-result v0

    return v0
.end method

.method public randomFloat(FF)F
    .locals 5

    cmpl-float v0, p2, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 377
    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 378
    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v0, p1, p2

    if-nez v0, :cond_2

    return p1

    :cond_2
    sub-float/2addr p2, p1

    .line 382
    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method public randomInt()I
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 393
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->randomInt(II)I

    move-result v0

    return v0
.end method

.method public randomInt(II)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p2, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 407
    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 408
    :goto_1
    const-string v2, "Both range values must be non-negative."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, p2, :cond_2

    return p1

    .line 412
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public randomLong()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 423
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->randomLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public randomLong(JJ)J
    .locals 5

    cmp-long v0, p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 454
    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 455
    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p1, p3

    if-nez v0, :cond_2

    return-wide p1

    :cond_2
    sub-long/2addr p3, p1

    .line 459
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/lang3/RandomUtils;->randomLong(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RandomUtils [random="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/RandomUtils;->random()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
