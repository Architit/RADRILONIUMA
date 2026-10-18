.class public Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "AttrDefinitionBands.java"


# instance fields
.field private attributeDefinitionHeader:[I

.field private attributeDefinitionLayout:[Ljava/lang/String;

.field private attributeDefinitionMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

.field private attributeDefinitionName:[Ljava/lang/String;

.field private final cpUTF8:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 61
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->cpUTF8:[Ljava/lang/String;

    return-void
.end method

.method private setupDefaultAttributeNames()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 114
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 116
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 117
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRvaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRiaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRvpaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 121
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->setRipaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    return-void
.end method


# virtual methods
.method public getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getAttributeDefinitionCount()I

    move-result v0

    .line 81
    const-string v1, "attr_definition_headers"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionHeader:[I

    .line 82
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->cpUTF8:[Ljava/lang/String;

    const-string v2, "attr_definition_name"

    move-object v1, p0

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionName:[Ljava/lang/String;

    .line 83
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->cpUTF8:[Ljava/lang/String;

    const-string v2, "attr_definition_layout"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionLayout:[Ljava/lang/String;

    .line 85
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-direct {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    .line 88
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 92
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionHeader:[I

    aget v2, v2, v1

    and-int/lit8 v5, v2, 0x3

    shr-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    move v7, p1

    move p1, v2

    goto :goto_2

    :cond_1
    move v7, v2

    .line 97
    :goto_2
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionName:[Ljava/lang/String;

    aget-object v4, v3, v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionLayout:[Ljava/lang/String;

    aget-object v6, v3, v1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 98
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    .line 99
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->attributeDefinitionMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->checkMap()V

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->setupDefaultAttributeNames()V

    return-void
.end method

.method public unpack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
