.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;
.super Ljava/lang/Object;
.source "ClassConstantPool.java"


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected entriesContainsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected indexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mustStartClassPool:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final others:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected othersContainsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entriesContainsSet:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->othersContainsSet:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->mustStartClassPool:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->others:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    return-void
.end method

.method private initialSort()V
    .locals 7

    .line 148
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 149
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 150
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 152
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 153
    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    .line 154
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;->getGlobalIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 155
    instance-of v5, v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    if-eqz v5, :cond_0

    .line 156
    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    instance-of v5, v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-eqz v5, :cond_1

    .line 158
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 167
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$initialSort$0(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I
    .locals 0

    .line 148
    check-cast p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;->getGlobalIndex()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$initialSort$1(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Ljava/lang/String;
    .locals 0

    .line 149
    check-cast p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->underlyingString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$initialSort$2(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Ljava/lang/String;
    .locals 0

    .line 150
    check-cast p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 1

    .line 51
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entriesContainsSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->othersContainsSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->others:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object p1
.end method

.method public addNestedEntries()V
    .locals 9

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->others:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 82
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 83
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->others:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 87
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 88
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 91
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v7

    .line 92
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    instance-of v8, v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    if-eqz v8, :cond_1

    move-object v8, v6

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->nestedMustStartClassPool()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 97
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->mustStartClassPool:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_1
    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->others:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 108
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v4, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_0

    :cond_5
    return-void
.end method

.method public addWithNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 4

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 115
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 116
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addWithNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->resolved:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-object p1

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Constant pool is not yet resolved; this does not make any sense"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->resolved:Z

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexCache:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Index cache is not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Constant pool is not yet resolved; this does not make any sense"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$resolve$3$org-apache-commons-compress-harmony-unpack200-bytecode-ClassConstantPool(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V
    .locals 0

    .line 178
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method

.method synthetic lambda$resolve$4$org-apache-commons-compress-harmony-unpack200-bytecode-ClassConstantPool(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V
    .locals 0

    .line 179
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->initialSort()V

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->sortClassPool()V

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->resolved:Z

    .line 178
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 179
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->others:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected sortClassPool()V
    .locals 6

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 196
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->mustStartClassPool:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexCache:Ljava/util/Map;

    .line 208
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 211
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexCache:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    instance-of v4, v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    if-nez v4, :cond_3

    instance-of v4, v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 218
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 223
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 224
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexCache:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    instance-of v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    if-nez v3, :cond_6

    instance-of v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    if-eqz v3, :cond_5

    goto :goto_4

    .line 231
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 227
    :cond_6
    :goto_4
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_7
    return-void
.end method
