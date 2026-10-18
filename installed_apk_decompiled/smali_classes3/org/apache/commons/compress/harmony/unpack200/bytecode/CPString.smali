.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;
.source "CPString.java"


# instance fields
.field private cachedHashCode:I

.field private hashCodeComputed:Z

.field private final name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private transient nameIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V
    .locals 1

    const/16 v0, 0x8

    .line 43
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;-><init>(BLjava/lang/Object;I)V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method private generateHashCode()V
    .locals 2

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->hashCodeComputed:Z

    .line 51
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 52
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->cachedHashCode:I

    return-void
.end method


# virtual methods
.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 3

    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->hashCodeComputed:Z

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->generateHashCode()V

    .line 65
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->cachedHashCode:I

    return v0
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 76
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->nameIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;->nameIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
