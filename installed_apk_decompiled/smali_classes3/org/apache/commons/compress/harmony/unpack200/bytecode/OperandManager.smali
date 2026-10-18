.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
.super Ljava/lang/Object;
.source "OperandManager.java"


# instance fields
.field bcByte:[I

.field bcByteIndex:I

.field bcCaseCount:[I

.field bcCaseCountIndex:I

.field bcCaseValue:[I

.field bcCaseValueIndex:I

.field bcClassRef:[I

.field bcClassRefIndex:I

.field bcDoubleRef:[I

.field bcDoubleRefIndex:I

.field bcFieldRef:[I

.field bcFieldRefIndex:I

.field bcFloatRef:[I

.field bcFloatRefIndex:I

.field bcIMethodRef:[I

.field bcIMethodRefIndex:I

.field bcInitRef:[I

.field bcInitRefIndex:I

.field bcIntRef:[I

.field bcIntRefIndex:I

.field bcLabel:[I

.field bcLabelIndex:I

.field bcLocal:[I

.field bcLocalIndex:I

.field bcLongRef:[I

.field bcLongRefIndex:I

.field bcMethodRef:[I

.field bcMethodRefIndex:I

.field bcShort:[I

.field bcShortIndex:I

.field bcStringRef:[I

.field bcStringRefIndex:I

.field bcSuperField:[I

.field bcSuperFieldIndex:I

.field bcSuperMethod:[I

.field bcSuperMethodIndex:I

.field bcThisField:[I

.field bcThisFieldIndex:I

.field bcThisMethod:[I

.field bcThisMethodIndex:I

.field currentClass:Ljava/lang/String;

.field newClass:Ljava/lang/String;

.field segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

.field superClass:Ljava/lang/String;

.field wideByteCodeIndex:I

.field wideByteCodes:[I


# direct methods
.method public constructor <init>([I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I)V
    .locals 2

    move-object v0, p0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 85
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseCount:[I

    move-object v1, p2

    .line 86
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseValue:[I

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcByte:[I

    move-object v1, p4

    .line 88
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcShort:[I

    move-object v1, p5

    .line 89
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLocal:[I

    move-object v1, p6

    .line 90
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLabel:[I

    move-object v1, p7

    .line 91
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIntRef:[I

    move-object v1, p8

    .line 92
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFloatRef:[I

    move-object v1, p9

    .line 93
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLongRef:[I

    move-object v1, p10

    .line 94
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcDoubleRef:[I

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcStringRef:[I

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcClassRef:[I

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFieldRef:[I

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcMethodRef:[I

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIMethodRef:[I

    move-object/from16 v1, p16

    .line 101
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisField:[I

    move-object/from16 v1, p17

    .line 102
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperField:[I

    move-object/from16 v1, p18

    .line 103
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisMethod:[I

    move-object/from16 v1, p19

    .line 104
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperMethod:[I

    move-object/from16 v1, p20

    .line 105
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcInitRef:[I

    move-object/from16 v1, p21

    .line 106
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->wideByteCodes:[I

    return-void
.end method


# virtual methods
.method public getCurrentClass()Ljava/lang/String;
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->currentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Current class not set yet"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNewClass()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->newClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "New class not set yet"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuperClass()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->superClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "SuperClass not set yet"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public globalConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()I
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcByte:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcByteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcByteIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextCaseCount()I
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseCount:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseCountIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseCountIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextCaseValues()I
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseValue:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseValueIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcCaseValueIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextClassRef()I
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcClassRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcClassRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcClassRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextDoubleRef()I
    .locals 3

    .line 151
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcDoubleRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcDoubleRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcDoubleRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextFieldRef()I
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFieldRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFieldRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFieldRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextFloatRef()I
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFloatRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFloatRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcFloatRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextIMethodRef()I
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIMethodRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIMethodRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIMethodRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextInitRef()I
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcInitRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcInitRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcInitRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextIntRef()I
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIntRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIntRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcIntRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextLabel()I
    .locals 3

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLabel:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLabelIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLabelIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextLocal()I
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLocal:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLocalIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLocalIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextLongRef()I
    .locals 3

    .line 183
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLongRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLongRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcLongRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextMethodRef()I
    .locals 3

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcMethodRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcMethodRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcMethodRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextShort()I
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcShort:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcShortIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcShortIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextStringRef()I
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcStringRef:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcStringRefIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcStringRefIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextSuperFieldRef()I
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperField:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperFieldIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperFieldIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextSuperMethodRef()I
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperMethod:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperMethodIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcSuperMethodIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextThisFieldRef()I
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisField:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisFieldIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisFieldIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextThisMethodRef()I
    .locals 3

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisMethod:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisMethodIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->bcThisMethodIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextWideByteCode()I
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->wideByteCodes:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->wideByteCodeIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->wideByteCodeIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public setCurrentClass(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->currentClass:Ljava/lang/String;

    return-void
.end method

.method public setNewClass(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->newClass:Ljava/lang/String;

    return-void
.end method

.method public setSegment(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    return-void
.end method

.method public setSuperClass(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->superClass:Ljava/lang/String;

    return-void
.end method
