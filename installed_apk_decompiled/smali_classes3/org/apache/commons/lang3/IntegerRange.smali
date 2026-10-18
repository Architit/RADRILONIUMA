.class public final Lorg/apache/commons/lang3/IntegerRange;
.super Lorg/apache/commons/lang3/NumberRange;
.source "IntegerRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/NumberRange<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/NumberRange;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V

    return-void
.end method

.method public static of(II)Lorg/apache/commons/lang3/IntegerRange;
    .locals 0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/IntegerRange;->of(Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/apache/commons/lang3/IntegerRange;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/apache/commons/lang3/IntegerRange;
    .locals 1

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/IntegerRange;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/IntegerRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public toIntStream()Ljava/util/stream/IntStream;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/lang3/IntegerRange;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/IntegerRange;->getMaximum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
