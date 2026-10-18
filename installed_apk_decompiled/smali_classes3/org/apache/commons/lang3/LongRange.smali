.class public final Lorg/apache/commons/lang3/LongRange;
.super Lorg/apache/commons/lang3/NumberRange;
.source "LongRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/NumberRange<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/NumberRange;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V

    return-void
.end method

.method public static of(JJ)Lorg/apache/commons/lang3/LongRange;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/LongRange;->of(Ljava/lang/Long;Ljava/lang/Long;)Lorg/apache/commons/lang3/LongRange;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Long;Ljava/lang/Long;)Lorg/apache/commons/lang3/LongRange;
    .locals 1

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/LongRange;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/LongRange;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public toLongStream()Ljava/util/stream/LongStream;
    .locals 4

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/lang3/LongRange;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/LongRange;->getMaximum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/util/stream/LongStream;->rangeClosed(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
