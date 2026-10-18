.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;
.source "LookupSwitchForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setByteCodeOperands$0(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseValues()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$setByteCodeOperands$1(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result p0

    return p0
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 6

    .line 43
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseCount()I

    move-result v0

    .line 44
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v1

    .line 45
    new-array v2, v0, [I

    .line 46
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 47
    new-array v3, v0, [I

    .line 48
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda1;

    invoke-direct {v4, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    add-int/lit8 p2, v0, 0x1

    .line 50
    new-array p2, p2, [I

    const/4 v4, 0x0

    .line 51
    aput v1, p2, v4

    const/4 v1, 0x1

    .line 52
    invoke-static {v3, v4, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeTargets([I)V

    .line 67
    rem-int/lit8 p3, p3, 0x4

    rsub-int/lit8 p2, p3, 0x3

    rsub-int/lit8 p3, p3, 0xc

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr p3, v3

    add-int/2addr p3, v3

    .line 72
    new-array p3, p3, [I

    .line 77
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v3

    aput v3, p3, v4

    move v3, v4

    :goto_0
    if-ge v3, p2, :cond_0

    add-int/lit8 v5, v1, 0x1

    .line 81
    aput v4, p3, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v1, 0x1

    const/4 v3, -0x1

    .line 86
    aput v3, p3, v1

    add-int/lit8 v5, v1, 0x2

    .line 87
    aput v3, p3, p2

    add-int/lit8 p2, v1, 0x3

    .line 88
    aput v3, p3, v5

    add-int/lit8 v5, v1, 0x4

    .line 89
    aput v3, p3, p2

    .line 93
    invoke-virtual {p0, v0, v5, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v1, v1, 0x8

    :goto_1
    if-ge v4, v0, :cond_1

    .line 99
    aget p2, v2, v4

    .line 101
    invoke-virtual {p0, p2, v1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 p2, v1, 0x4

    add-int/lit8 v5, v1, 0x5

    .line 104
    aput v3, p3, p2

    add-int/lit8 p2, v1, 0x6

    .line 105
    aput v3, p3, v5

    add-int/lit8 v5, v1, 0x7

    .line 106
    aput v3, p3, p2

    add-int/lit8 v1, v1, 0x8

    .line 107
    aput v3, p3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    return-void
.end method
