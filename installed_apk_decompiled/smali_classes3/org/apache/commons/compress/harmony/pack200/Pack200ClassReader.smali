.class public Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
.super Lorg/objectweb/asm/ClassReader;
.source "Pack200ClassReader.java"


# instance fields
.field private anySyntheticAttributes:Z

.field private fileName:Ljava/lang/String;

.field private lastConstantHadWideIndex:Z

.field private lastUnsignedShort:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public hasSyntheticAttributes()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->anySyntheticAttributes:Z

    return v0
.end method

.method public lastConstantHadWideIndex()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastConstantHadWideIndex:Z

    return v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastUnsignedShort:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastConstantHadWideIndex:Z

    .line 55
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->anySyntheticAttributes:Z

    if-nez p2, :cond_0

    const-string p2, "Synthetic"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->anySyntheticAttributes:Z

    :cond_0
    return-object p1
.end method

.method public readUnsignedShort(I)I
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-lez p1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:[B

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, v1, p1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 64
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastUnsignedShort:I

    goto :goto_0

    :cond_0
    const/16 p1, -0x8000

    .line 66
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastUnsignedShort:I

    :goto_0
    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->fileName:Ljava/lang/String;

    return-void
.end method
