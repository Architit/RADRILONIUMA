.class final Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
.super Ljava/lang/Object;
.source "AbstractFormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/AbstractFormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayKey"
.end annotation


# instance fields
.field private final hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 69
    :cond_2
    check-cast p1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 70
    iget-object v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->hashCode:I

    return v0
.end method
