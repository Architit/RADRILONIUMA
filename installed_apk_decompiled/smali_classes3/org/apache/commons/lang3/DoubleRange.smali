.class public final Lorg/apache/commons/lang3/DoubleRange;
.super Lorg/apache/commons/lang3/NumberRange;
.source "DoubleRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/NumberRange<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/NumberRange;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V

    return-void
.end method

.method public static of(DD)Lorg/apache/commons/lang3/DoubleRange;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/DoubleRange;->of(Ljava/lang/Double;Ljava/lang/Double;)Lorg/apache/commons/lang3/DoubleRange;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Double;Ljava/lang/Double;)Lorg/apache/commons/lang3/DoubleRange;
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/commons/lang3/DoubleRange;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/DoubleRange;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method
