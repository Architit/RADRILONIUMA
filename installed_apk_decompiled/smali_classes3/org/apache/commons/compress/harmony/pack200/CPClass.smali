.class public Lorg/apache/commons/compress/harmony/pack200/CPClass;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
        ">;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final isInnerClass:Z

.field private final value:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 5

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->value:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 37
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    const/16 v4, 0x2d

    if-gt v3, v4, :cond_0

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass:Z

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
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getIndexInCpUtf8()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->value:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v0

    return v0
.end method

.method public isInnerClass()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    return-object v0
.end method
