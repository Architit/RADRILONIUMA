.class public Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "CPNameAndType.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field private final signature:Lorg/apache/commons/compress/harmony/pack200/CPSignature;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPSignature;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 31
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->signature:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 36
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->signature:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->signature:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameIndex()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v0

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->signature:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->getIndex()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->signature:Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
