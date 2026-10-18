.class public Lorg/apache/commons/lang3/ArraySorter;
.super Ljava/lang/Object;
.source "ArraySorter.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sort([B)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    :cond_0
    return-object p0
.end method

.method public static sort([C)[C
    .locals 0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    :cond_0
    return-object p0
.end method

.method public static sort([D)[D
    .locals 0

    if-eqz p0, :cond_0

    .line 67
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    :cond_0
    return-object p0
.end method

.method public static sort([F)[F
    .locals 0

    if-eqz p0, :cond_0

    .line 81
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    :cond_0
    return-object p0
.end method

.method public static sort([I)[I
    .locals 0

    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    :cond_0
    return-object p0
.end method

.method public static sort([J)[J
    .locals 0

    if-eqz p0, :cond_0

    .line 109
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    :cond_0
    return-object p0
.end method

.method public static sort([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 138
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 155
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-object p0
.end method

.method public static sort([S)[S
    .locals 0

    if-eqz p0, :cond_0

    .line 123
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    :cond_0
    return-object p0
.end method
