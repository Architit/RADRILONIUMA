.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
.source "CPMember.java"


# instance fields
.field attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected final descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field transient descriptorIndex:I

.field flags:S

.field name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field transient nameIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            "J",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;-><init>()V

    .line 49
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 50
    const-string p1, "descriptor"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    long-to-int p1, p3

    int-to-short p1, p1

    .line 51
    iput-short p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->flags:S

    if-nez p5, :cond_0

    .line 52
    sget-object p5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p5, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$resolve$0(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;)V
    .locals 0

    .line 111
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method


# virtual methods
.method protected doWrite(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-short v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->flags:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 58
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->nameIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 59
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptorIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 64
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->doWrite(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;

    .line 77
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v3, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 78
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-short v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->flags:S

    iget-short v3, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->flags:S

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 80
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 5

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 86
    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 87
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 88
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v2, v3, 0x2

    .line 90
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    aput-object v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 100
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 101
    iget-short v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->flags:S

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->nameIndex:I

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptorIndex:I

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->attributes:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPMember: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMember;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
