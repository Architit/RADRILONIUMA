.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;
.source "NewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;,
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;,
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;,
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;
    }
.end annotation


# instance fields
.field private final body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutIndex:I

.field private final lengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    .line 85
    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->layoutIndex:I

    return-void
.end method


# virtual methods
.method public addBCIndex(II)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBCLength(II)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBCOffset(II)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInteger(IJ)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToBody(ILjava/lang/Object;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLayoutIndex()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->layoutIndex:I

    return v0
.end method

.method protected getLength()I
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 5

    .line 134
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 135
    instance-of v3, v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-array v0, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    aput-object v3, v0, v2

    .line 142
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 143
    instance-of v4, v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v4, :cond_2

    .line 144
    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method protected getStartPCs()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->renumbered:Z

    if-nez v0, :cond_6

    .line 161
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 162
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    if-eqz v3, :cond_0

    .line 163
    move-object v1, v2

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    .line 164
    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->access$100(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;)I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->setActualValue(I)V

    goto/16 :goto_1

    .line 165
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    if-eqz v3, :cond_3

    .line 166
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    .line 167
    instance-of v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    if-eqz v4, :cond_1

    .line 168
    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->access$100(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;)I

    move-result v1

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$200(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v4

    add-int/2addr v1, v4

    .line 169
    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setIndex(I)V

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setActualValue(I)V

    goto :goto_1

    .line 171
    :cond_1
    instance-of v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    if-eqz v4, :cond_2

    .line 172
    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$300(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v1

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$200(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v4

    add-int/2addr v1, v4

    .line 173
    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setIndex(I)V

    .line 174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setActualValue(I)V

    goto :goto_1

    .line 177
    :cond_2
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$200(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setActualValue(I)V

    goto :goto_1

    .line 179
    :cond_3
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;

    if-eqz v3, :cond_4

    .line 181
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;

    .line 182
    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    .line 183
    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->access$100(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;)I

    move-result v4

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;->access$400(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;)I

    move-result v5

    add-int/2addr v4, v5

    .line 184
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v1, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->actualValue:I

    sub-int/2addr v4, v1

    .line 185
    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;->setActualValue(I)V

    :cond_4
    :goto_1
    move-object v1, v2

    goto/16 :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->renumbered:Z

    :cond_6
    return-void
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 3

    .line 195
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 197
    instance-of v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v2, :cond_0

    .line 198
    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    goto :goto_0

    .line 201
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->underlyingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 222
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 223
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 225
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 226
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    .line 227
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v2

    :goto_1
    int-to-long v2, v2

    goto :goto_2

    .line 229
    :cond_1
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;

    if-eqz v3, :cond_2

    .line 230
    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;

    iget v2, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;->actualValue:I

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    goto :goto_3

    .line 244
    :cond_3
    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    :cond_4
    long-to-int v1, v2

    .line 241
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    :cond_5
    long-to-int v1, v2

    .line 238
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    :cond_6
    long-to-int v1, v2

    .line 235
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
