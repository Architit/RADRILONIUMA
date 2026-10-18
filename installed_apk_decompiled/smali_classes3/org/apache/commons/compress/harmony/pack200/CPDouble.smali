.class public Lorg/apache/commons/compress/harmony/pack200/CPDouble;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPDouble.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPDouble;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 34
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->value:D

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPDouble;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPDouble;)I
    .locals 4

    .line 39
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->value:D

    iget-wide v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public getDouble()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->value:D

    return-wide v0
.end method
