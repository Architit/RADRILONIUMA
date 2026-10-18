.class public Lorg/apache/commons/compress/harmony/pack200/CpBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "CpBands.java"


# instance fields
.field private final cp_Class:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Descr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Double:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Field:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Float:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPFloat;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Imethod:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Int:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPInt;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Long:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPLong;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Method:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Signature:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_String:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPString;",
            ">;"
        }
    .end annotation
.end field

.field private final cp_Utf8:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final objectsToCPConstant:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field private final stringsToCpClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCpField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCpIMethod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCpMethod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCpNameAndType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCpSignature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCpUtf8:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 42
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->defaultAttributeNames:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Field:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Method:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Imethod:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpUtf8:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpNameAndType:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpSignature:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpMethod:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpField:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpIMethod:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->objectsToCPConstant:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 72
    const-string p1, "AnnotationDefault"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string p1, "RuntimeVisibleAnnotations"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string p1, "RuntimeInvisibleAnnotations"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string p1, "RuntimeVisibleParameterAnnotations"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string p1, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string p1, "Code"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string p1, "LineNumberTable"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string p1, "LocalVariableTable"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const-string p1, "LocalVariableTypeTable"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string p1, "ConstantValue"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string p1, "Deprecated"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string p1, "EnclosingMethod"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string p1, "Exceptions"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    const-string p1, "InnerClasses"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    const-string p1, "Signature"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const-string p1, "SourceFile"

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCharacters(Ljava/util/List;[C)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;[C)V"
        }
    .end annotation

    .line 91
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p2, v1

    .line 92
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addIndices()V
    .locals 14

    .line 105
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Field:Ljava/util/Set;

    iget-object v10, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Method:Ljava/util/Set;

    iget-object v11, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Imethod:Ljava/util/Set;

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/util/Set;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v1, 0x2

    aput-object v2, v12, v1

    const/4 v1, 0x3

    aput-object v3, v12, v1

    const/4 v1, 0x4

    aput-object v4, v12, v1

    const/4 v1, 0x5

    aput-object v5, v12, v1

    const/4 v1, 0x6

    aput-object v6, v12, v1

    const/4 v1, 0x7

    aput-object v7, v12, v1

    const/16 v1, 0x8

    aput-object v8, v12, v1

    const/16 v1, 0x9

    aput-object v9, v12, v1

    const/16 v1, 0xa

    aput-object v10, v12, v1

    const/16 v1, 0xb

    aput-object v11, v12, v1

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 108
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v13

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;

    .line 109
    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->setIndex(I)V

    add-int/2addr v3, v0

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda1;-><init>()V

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Field:Ljava/util/Set;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Method:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;Ljava/util/function/BiFunction;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$addIndices$0(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addIndices$1(Ljava/util/Map;Ljava/util/function/BiFunction;Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;)V
    .locals 1

    .line 115
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->getClassName()Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->setIndexInClass(I)V

    return-void
.end method

.method static synthetic lambda$addIndices$2(Ljava/util/Map;Ljava/util/function/BiFunction;Ljava/util/Map;Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;)V
    .locals 2

    .line 119
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->getClassName()Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v0

    .line 120
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p3, p0}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->setIndexInClass(I)V

    .line 121
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->getDesc()Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "<init>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p3, p0}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->setIndexInClassForConstructor(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$writeCpSignature$4(Ljava/util/List;I)I
    .locals 0

    .line 508
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$writeCpUtf8$5(Ljava/util/List;I)I
    .locals 0

    .line 570
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method static synthetic lambda$writeCpUtf8$6(Ljava/util/List;I)I
    .locals 0

    const/4 p1, 0x0

    .line 575
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private removeCpUtf8(Ljava/lang/String;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpUtf8:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    if-eqz v0, :cond_0

    .line 362
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpUtf8:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeSignaturesFromCpUTF8()V
    .locals 2

    .line 369
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private writeCpClass(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Class entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 383
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 384
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndexInCpUtf8()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    :cond_0
    const-string v2, "cpClass"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 388
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes from cpClass["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpDescr(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Descriptor entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 395
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 397
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 398
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getNameIndex()I

    move-result v7

    aput v7, v1, v5

    .line 399
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getTypeIndex()I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    :cond_0
    const-string v4, "cp_Descr_Name"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 404
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrote "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from cp_Descr_Name["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 407
    const-string v0, "cp_Descr_Type"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 408
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from cp_Descr_Type["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpDouble(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Double entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 415
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 417
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    .line 418
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->getDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    shr-long v8, v6, v8

    long-to-int v8, v8

    .line 419
    aput v8, v1, v5

    long-to-int v6, v6

    .line 420
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 423
    :cond_0
    const-string v4, "cp_Double_hi"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 424
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrote "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from cp_Double_hi["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 427
    const-string v0, "cp_Double_lo"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 428
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from cp_Double_lo["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpFloat(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Float entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 436
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    .line 437
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/CPFloat;->getFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_0
    const-string v2, "cp_Float"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 441
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes from cp_Float["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpInt(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Integer entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 449
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    .line 450
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/CPInt;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    :cond_0
    const-string v2, "cp_Int"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 454
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes from cp_Int["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpLong(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Long entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 461
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 463
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    .line 464
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/CPLong;->getLong()J

    move-result-wide v6

    const/16 v8, 0x20

    shr-long v8, v6, v8

    long-to-int v8, v8

    .line 465
    aput v8, v1, v5

    long-to-int v6, v6

    .line 466
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 469
    :cond_0
    const-string v4, "cp_Long_hi"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 470
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrote "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from cp_Long_hi["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 473
    const-string v0, "cp_Long_lo"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 474
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from cp_Long_lo["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpMethodOrField(Ljava/util/Set;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Method and Field entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 480
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 481
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 483
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    .line 484
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->getClassIndex()I

    move-result v6

    aput v6, v1, v4

    .line 485
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;->getDescIndex()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "_class"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, p1, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p1

    .line 489
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Wrote "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "_class["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "_desc"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, p1, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object p1

    .line 493
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_desc["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpSignature(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Signature entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 500
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 502
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    .line 503
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->getClasses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->getIndexInCpUtf8()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [I

    .line 508
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-static {v4, v5}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 510
    const-string v2, "cpSignatureForm"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 511
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Wrote "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes from cpSignatureForm["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 514
    const-string v0, "cpSignatureClasses"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 515
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from cpSignatureClasses["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpString(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " String entries..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 523
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPString;

    .line 524
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/CPString;->getIndexInCpUtf8()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    :cond_0
    const-string v2, "cpString"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 528
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes from cpString["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private writeCpUtf8(Ljava/io/OutputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UTF8 entries..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 534
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    new-array v4, v2, [I

    .line 535
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    new-array v7, v5, [I

    .line 536
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 537
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 538
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 539
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    .line 540
    aget-object v6, v11, v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v6

    .line 541
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    aput v12, v7, v13

    .line 542
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCharacters(Ljava/util/List;[C)V

    .line 543
    :goto_0
    array-length v6, v11

    if-ge v3, v6, :cond_3

    add-int/lit8 v6, v3, -0x1

    .line 544
    aget-object v12, v11, v6

    check-cast v12, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 545
    aget-object v14, v11, v3

    check-cast v14, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v14

    .line 546
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    move/from16 v17, v5

    move-object/from16 v16, v11

    move v11, v13

    .line 548
    :goto_1
    array-length v5, v12

    if-ge v13, v5, :cond_1

    .line 549
    aget-char v5, v12, v13

    move-object/from16 v18, v12

    aget-char v12, v15, v13

    if-eq v5, v12, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, v18

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v5, v3, -0x2

    .line 554
    aput v11, v4, v5

    .line 555
    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 557
    array-length v11, v5

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_2

    const/4 v11, 0x0

    .line 559
    aput v11, v7, v6

    .line 560
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-direct {v0, v10, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCharacters(Ljava/util/List;[C)V

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 563
    array-length v12, v5

    aput v12, v7, v6

    .line 564
    invoke-direct {v0, v8, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCharacters(Ljava/util/List;[C)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v13, v11

    move-object/from16 v11, v16

    move/from16 v5, v17

    goto :goto_0

    :cond_3
    move/from16 v17, v5

    move v11, v13

    .line 567
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [I

    .line 568
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    new-array v12, v6, [I

    .line 569
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    new-array v14, v13, [[I

    .line 570
    new-instance v15, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda5;

    invoke-direct {v15, v8}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-static {v5, v15}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    move v8, v11

    :goto_4
    if-ge v8, v6, :cond_4

    .line 572
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 573
    aput v15, v12, v8

    .line 574
    new-array v15, v15, [I

    aput-object v15, v14, v8

    .line 575
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda6;

    invoke-direct {v11, v10}, Lorg/apache/commons/compress/harmony/pack200/CpBands$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-static {v15, v11}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_4

    .line 578
    :cond_4
    const-string v8, "cpUtf8Prefix"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v8, v4, v9}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v4

    .line 579
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Wrote "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " bytes from cpUtf8Prefix["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 582
    const-string v2, "cpUtf8Suffix"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v2, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 583
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " bytes from cpUtf8Suffix["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v7, v17

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 586
    const-string v2, "cpUtf8Chars"

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->CHAR3:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v2, v5, v7}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 587
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes from cpUtf8Chars["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 590
    const-string v2, "cpUtf8BigSuffix"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v2, v12, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 591
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from cpUtf8BigSuffix["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_5

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "cpUtf8BigChars "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v5, v14, v2

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v5, v6}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 596
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes from cpUtf8BigChars"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v14, v2

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method


# virtual methods
.method public addCPClass(Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    return-void
.end method

.method addCPUtf8(Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    return-void
.end method

.method public existsCpClass(Ljava/lang/String;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public finaliseBands()V
    .locals 2

    .line 136
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->removeSignaturesFromCpUTF8()V

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addIndices()V

    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Utf8_count(I)V

    .line 140
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Int_count(I)V

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Float_count(I)V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Long_count(I)V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Double_count(I)V

    .line 144
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_String_count(I)V

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Class_count(I)V

    .line 146
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Signature_count(I)V

    .line 147
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Descr_count(I)V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Field:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Field_count(I)V

    .line 149
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Method:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Method_count(I)V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Imethod:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setCp_Imethod_count(I)V

    return-void
.end method

.method public getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 197
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v0

    .line 201
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    .line 202
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 205
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->currentClassReferencesInnerClass(Lorg/apache/commons/compress/harmony/pack200/CPClass;)V

    :cond_2
    return-object v0
.end method

.method public getCPField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPField(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p1

    return-object p1
.end method

.method public getCPField(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpField:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    .line 216
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPClass;Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;)V

    .line 217
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Field:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpField:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getCPIMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPIMethod(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p1

    return-object p1
.end method

.method public getCPIMethod(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpIMethod:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    .line 232
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPClass;Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;)V

    .line 233
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Imethod:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpIMethod:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p1

    return-object p1
.end method

.method public getCPMethod(Lorg/apache/commons/compress/harmony/pack200/CPClass;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpMethod:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    .line 248
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPClass;Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;)V

    .line 249
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Method:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpMethod:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpNameAndType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPSignature;)V

    .line 264
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpNameAndType:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Descr:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method public getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpSignature:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    if-nez v1, :cond_8

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    const/16 v2, 0x4c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 288
    :goto_0
    array-length v8, v5

    const/16 v9, 0x2f

    if-ge v7, v8, :cond_3

    .line 289
    aget-char v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    aget-char v8, v5, v7

    if-ne v8, v2, :cond_2

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v7, 0x1

    .line 292
    :goto_1
    array-length v11, v5

    if-ge v10, v11, :cond_2

    .line 293
    aget-char v11, v5, v10

    .line 294
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_1

    if-eq v11, v9, :cond_1

    const/16 v12, 0x24

    if-eq v11, v12, :cond_1

    const/16 v12, 0x5f

    if-eq v11, v12, :cond_1

    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v10, -0x1

    goto :goto_2

    .line 299
    :cond_1
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v7, v3

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->removeCpUtf8(Ljava/lang/String;)V

    .line 304
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    const/16 v4, 0x2e

    .line 307
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-nez v4, :cond_5

    .line 310
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v4

    .line 311
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/CPClass;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    .line 312
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Class:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpClass:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto :goto_4

    :cond_4
    move-object v4, v0

    .line 316
    :cond_5
    :goto_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 319
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v0

    goto :goto_5

    .line 321
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v0

    .line 323
    :goto_5
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-direct {v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;-><init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;Ljava/util/List;)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Signature:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpSignature:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_8
    return-object v1
.end method

.method public getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpUtf8:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Utf8:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->stringsToCpUtf8:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->objectsToCPConstant:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    if-nez v0, :cond_8

    .line 156
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPInt;-><init>(I)V

    .line 158
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Int:Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 160
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/CPLong;-><init>(J)V

    .line 161
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Long:Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 162
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 163
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPFloat;-><init>(F)V

    .line 164
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Float:Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 165
    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 166
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/CPDouble;-><init>(D)V

    .line 167
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Double:Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 169
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CPString;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPString;-><init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    .line 170
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_String:Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_4
    instance-of v1, p1, Lorg/objectweb/asm/Type;

    if-eqz v1, :cond_7

    .line 172
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[L"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v0

    .line 182
    :cond_7
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->objectsToCPConstant:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method synthetic lambda$removeSignaturesFromCpUTF8$3$org-apache-commons-compress-harmony-pack200-CpBands(Lorg/apache/commons/compress/harmony/pack200/CPSignature;)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->getUnderlyingString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPSignature;->getSignatureForm()Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 374
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->removeCpUtf8(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 345
    const-string v0, "Writing constant pool bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpUtf8(Ljava/io/OutputStream;)V

    .line 347
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpInt(Ljava/io/OutputStream;)V

    .line 348
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpFloat(Ljava/io/OutputStream;)V

    .line 349
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpLong(Ljava/io/OutputStream;)V

    .line 350
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpDouble(Ljava/io/OutputStream;)V

    .line 351
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpString(Ljava/io/OutputStream;)V

    .line 352
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpClass(Ljava/io/OutputStream;)V

    .line 353
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpSignature(Ljava/io/OutputStream;)V

    .line 354
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpDescr(Ljava/io/OutputStream;)V

    .line 355
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Field:Ljava/util/Set;

    const-string v1, "cp_Field"

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpMethodOrField(Ljava/util/Set;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Method:Ljava/util/Set;

    const-string v1, "cp_Method"

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpMethodOrField(Ljava/util/Set;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CpBands;->cp_Imethod:Ljava/util/Set;

    const-string v1, "cp_Imethod"

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->writeCpMethodOrField(Ljava/util/Set;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
