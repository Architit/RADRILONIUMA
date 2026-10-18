.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPRef;
.source "CPMethodRef.java"


# instance fields
.field private cachedHashCode:I

.field private hashCodeComputed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;I)V
    .locals 1

    const/16 v0, 0xa

    .line 31
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPRef;-><init>(BLorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;I)V

    return-void
.end method

.method private generateHashCode()V
    .locals 2

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->hashCodeComputed:Z

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->className:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->nameAndType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->cachedHashCode:I

    return-void
.end method


# virtual methods
.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 3

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->className:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->nameAndType:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->hashCodeComputed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->generateHashCode()V

    .line 53
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;->cachedHashCode:I

    return v0
.end method
