.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
.source "CPConstant.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BLjava/lang/Object;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;-><init>(BI)V

    .line 40
    const-string p1, "value"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;

    .line 52
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
