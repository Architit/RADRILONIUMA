.class public Lorg/apache/commons/compress/utils/ExactMath;
.super Ljava/lang/Object;
.source "ExactMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(IJ)I
    .locals 0

    .line 39
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument too large or result overflows"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
