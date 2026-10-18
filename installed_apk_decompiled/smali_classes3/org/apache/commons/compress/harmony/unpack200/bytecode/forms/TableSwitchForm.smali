.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;
.source "TableSwitchForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setByteCodeOperands$0(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result p0

    return p0
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 7

    .line 49
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseCount()I

    move-result v0

    .line 50
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v1

    .line 52
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseValues()I

    move-result v2

    .line 54
    new-array v3, v0, [I

    .line 55
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    add-int/lit8 p2, v0, 0x1

    .line 57
    new-array p2, p2, [I

    const/4 v4, 0x0

    .line 58
    aput v1, p2, v4

    const/4 v1, 0x1

    .line 59
    invoke-static {v3, v4, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeTargets([I)V

    add-int p2, v2, v0

    sub-int/2addr p2, v1

    .line 76
    rem-int/lit8 p3, p3, 0x4

    rsub-int/lit8 v3, p3, 0x3

    rsub-int/lit8 p3, p3, 0x10

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr p3, v5

    .line 82
    new-array p3, p3, [I

    .line 87
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v5

    aput v5, p3, v4

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    add-int/lit8 v6, v1, 0x1

    .line 91
    aput v4, p3, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    const/4 v5, -0x1

    .line 96
    aput v5, p3, v1

    add-int/lit8 v6, v1, 0x2

    .line 97
    aput v5, p3, v3

    add-int/lit8 v3, v1, 0x3

    .line 98
    aput v5, p3, v6

    add-int/lit8 v6, v1, 0x4

    .line 99
    aput v5, p3, v3

    .line 103
    invoke-virtual {p0, v2, v6, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v2, v1, 0x8

    .line 108
    invoke-virtual {p0, p2, v2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v1, v1, 0xc

    :goto_1
    if-ge v4, v0, :cond_1

    add-int/lit8 p2, v1, 0x1

    .line 115
    aput v5, p3, v1

    add-int/lit8 v2, v1, 0x2

    .line 116
    aput v5, p3, p2

    add-int/lit8 p2, v1, 0x3

    .line 117
    aput v5, p3, v2

    add-int/lit8 v1, v1, 0x4

    .line 118
    aput v5, p3, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    return-void
.end method
