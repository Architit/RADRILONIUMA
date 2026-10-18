.class public Lorg/apache/commons/compress/harmony/pack200/CPInt;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPInt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPInt;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 34
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->value:I

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
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPInt;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPInt;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPInt;)I
    .locals 1

    .line 39
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->value:I

    iget p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;->value:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public getInt()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->value:I

    return v0
.end method
