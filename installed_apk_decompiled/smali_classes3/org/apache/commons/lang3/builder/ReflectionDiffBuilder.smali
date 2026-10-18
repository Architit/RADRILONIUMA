.class public Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
.super Ljava/lang/Object;
.source "ReflectionDiffBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Lorg/apache/commons/lang3/builder/DiffResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private excludeFieldNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-static {}, Lorg/apache/commons/lang3/builder/DiffBuilder;->builder()Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->setLeft(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->setRight(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->setStyle(Lorg/apache/commons/lang3/builder/ToStringStyle;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->build()Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    .line 158
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;)V

    return-void
.end method

.method private accept(Ljava/lang/reflect/Field;)Z
    .locals 3

    .line 181
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    return v2

    .line 194
    :cond_3
    const-class v0, Lorg/apache/commons/lang3/builder/DiffExclude;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic access$100([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->toExcludeFieldNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private appendFields(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 205
    invoke-direct {p0, v2}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getRight()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected IllegalAccessException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static builder()Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 138
    new-instance v0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;-><init>()V

    return-object v0
.end method

.method private getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->getRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 266
    invoke-static {p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static toExcludeFieldNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 143
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 146
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArraySorter;->sort([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/commons/lang3/builder/DiffResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/builder/DiffResult<",
            "TT;>;"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->appendFields(Ljava/lang/Class;)V

    .line 229
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->toExcludeFieldNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    return-object p0
.end method
