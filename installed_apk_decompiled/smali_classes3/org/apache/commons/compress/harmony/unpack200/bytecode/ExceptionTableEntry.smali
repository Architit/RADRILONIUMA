.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;
.super Ljava/lang/Object;
.source "ExceptionTableEntry.java"


# instance fields
.field private final catchType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

.field private catchTypeIndex:I

.field private final endPC:I

.field private endPcRenumbered:I

.field private final handlerPC:I

.field private handlerPcRenumbered:I

.field private final startPC:I

.field private startPcRenumbered:I


# direct methods
.method public constructor <init>(IIILorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->startPC:I

    .line 53
    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->endPC:I

    .line 54
    iput p3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->handlerPC:I

    .line 55
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    return-void
.end method


# virtual methods
.method public getCatchType()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    return-object v0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->startPC:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->startPcRenumbered:I

    .line 64
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->startPC:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->endPC:I

    add-int/2addr v0, v1

    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->endPcRenumbered:I

    .line 66
    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->handlerPC:I

    add-int/2addr v0, v1

    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->handlerPcRenumbered:I

    return-void
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchTypeIndex:I

    return-void

    .line 77
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchTypeIndex:I

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->startPcRenumbered:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->endPcRenumbered:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->handlerPcRenumbered:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 85
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->catchTypeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
