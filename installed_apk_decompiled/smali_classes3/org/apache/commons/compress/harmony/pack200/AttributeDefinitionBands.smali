.class public Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "AttributeDefinitionBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    }
.end annotation


# static fields
.field public static final CONTEXT_CLASS:I = 0x0

.field public static final CONTEXT_CODE:I = 0x3

.field public static final CONTEXT_FIELD:I = 0x1

.field public static final CONTEXT_METHOD:I = 0x2


# instance fields
.field private final attributeDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final classAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final codeAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final fieldAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final methodAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I[Lorg/objectweb/asm/Attribute;)V
    .locals 9

    .line 84
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->classAttributeLayouts:Ljava/util/List;

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    .line 76
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 86
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 88
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 92
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p3, v4

    .line 93
    check-cast v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 94
    instance-of v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;

    if-nez v6, :cond_3

    instance-of v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;

    if-nez v6, :cond_3

    instance-of v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;

    if-nez v6, :cond_3

    .line 96
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextClass()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    iget-object v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextMethod()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    iget-object v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextField()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    iget-object v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextCode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    iget-object v6, v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    const/4 v2, 0x7

    const/4 v4, 0x1

    if-le p3, v2, :cond_5

    .line 111
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_class_flags_hi(Z)V

    .line 113
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p3

    const/4 v5, 0x6

    if-le p3, v5, :cond_6

    .line 114
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_method_flags_hi(Z)V

    .line 116
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p3

    const/16 v6, 0xa

    if-le p3, v6, :cond_7

    .line 117
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_field_flags_hi(Z)V

    .line 119
    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p3

    const/16 v7, 0xf

    if-le p3, v7, :cond_8

    .line 120
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_code_flags_hi(Z)V

    .line 122
    :cond_8
    new-array p3, v2, [I

    fill-array-data p3, :array_0

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    if-le v8, v2, :cond_9

    .line 124
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object p3

    .line 126
    :cond_9
    invoke-direct {p0, p1, p3, v3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 127
    new-array p1, v5, [I

    fill-array-data p1, :array_1

    .line 128
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v5, :cond_a

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object p1

    :cond_a
    const/4 p3, 0x2

    .line 131
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 132
    new-array p1, v6, [I

    fill-array-data p1, :array_2

    .line 133
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v6, :cond_b

    .line 134
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object p1

    .line 136
    :cond_b
    invoke-direct {p0, v0, p1, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 137
    new-array p1, v7, [I

    fill-array-data p1, :array_3

    .line 138
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v7, :cond_c

    .line 139
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object p1

    :cond_c
    const/4 p2, 0x3

    .line 141
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    return-void

    :array_0
    .array-data 4
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_3
    .array-data 4
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data
.end method

.method private addAttributeDefinitions(Ljava/util/Map;[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[II)V"
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;[II)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private addHighIndices([I)[I
    .locals 3

    .line 167
    array-length v0, p1

    const/16 v1, 0x20

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 169
    array-length p1, p1

    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 170
    aput v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private addSyntheticDefinitions()V
    .locals 8

    .line 177
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isAnySyntheticClasses()Z

    move-result v0

    .line 178
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isAnySyntheticMethods()Z

    move-result v1

    .line 179
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isAnySyntheticFields()Z

    move-result v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    .line 181
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v4, "Synthetic"

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v3

    .line 182
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v4

    const/16 v5, 0xc

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    new-instance v6, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    const/4 v6, 0x2

    invoke-direct {v1, v5, v6, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    const/4 v2, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public finaliseBands()V
    .locals 2

    .line 200
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addSyntheticDefinitions()V

    .line 201
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setAttribute_definition_count(I)V

    return-void
.end method

.method public getClassAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->classAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method public getCodeAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method public getFieldAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method public getMethodAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$addAttributeDefinitions$0$org-apache-commons-compress-harmony-pack200-AttributeDefinitionBands([IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 147
    aget p1, p1, v0

    .line 148
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p3

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    .line 149
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->classAttributeLayouts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 222
    const-string v0, "Writing attribute definition bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 224
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 225
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 227
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 228
    iget v8, v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->contextType:I

    iget v9, v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->index:I

    add-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v8, v9

    aput v8, v1, v6

    .line 229
    iget-object v8, v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v8

    aput v8, v3, v6

    .line 230
    iget-object v7, v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->layout:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 233
    :cond_0
    const-string v6, "attributeDefinitionHeader"

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v1, v7}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 234
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Wrote "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " bytes from attributeDefinitionHeader["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 237
    const-string v0, "attributeDefinitionName"

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v3, v6}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from attributeDefinitionName["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 241
    const-string v0, "attributeDefinitionLayout"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v5, v2}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from attributeDefinitionLayout["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method
