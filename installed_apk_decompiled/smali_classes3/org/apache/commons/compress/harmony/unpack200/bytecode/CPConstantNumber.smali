.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstantNumber;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;
.source "CPConstantNumber.java"


# direct methods
.method public constructor <init>(BLjava/lang/Object;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;-><init>(BLjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method protected getNumber()Ljava/lang/Number;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstantNumber;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method
