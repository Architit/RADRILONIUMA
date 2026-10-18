.class public Lorg/apache/commons/compress/harmony/unpack200/ClassBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "ClassBands.java"


# instance fields
.field private final attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

.field private classAccessFlags:[J

.field private classAttributes:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final classCount:I

.field private classFieldCount:[I

.field private classFlags:[J

.field private classInterfacesInts:[[I

.field private classMethodCount:[I

.field private classSuperInts:[I

.field private classThis:[Ljava/lang/String;

.field private classThisInts:[I

.field private classVersionMajor:[I

.field private classVersionMinor:[I

.field private codeAttributes:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private codeHandlerCatchPO:[[I

.field private codeHandlerClassRCN:[[I

.field private codeHandlerCount:[I

.field private codeHandlerEndPO:[[I

.field private codeHandlerStartP:[[I

.field private codeHasAttributes:[Z

.field private codeMaxNALocals:[I

.field private codeMaxStack:[I

.field private final cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field private fieldAccessFlags:[[J

.field private fieldAttributes:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private fieldDescr:[[Ljava/lang/String;

.field private fieldDescrInts:[[I

.field private fieldFlags:[[J

.field private icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

.field private methodAccessFlags:[[J

.field private methodAttrCalls:[I

.field private methodAttributes:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private methodDescr:[[Ljava/lang/String;

.field private methodDescrInts:[[I

.field private methodFlags:[[J

.field private final options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;


# direct methods
.method public static synthetic $r8$lambda$ZpmJ_VNnAu-jaI1Md1zDJiayPjU(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wBZ5N9SAmxJLRX-vx8hIUeo_fgc()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 129
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    .line 130
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 131
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    .line 132
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    return-void
.end method

.method private getCallCount([[I[[JI)I
    .locals 11

    .line 138
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 139
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 140
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v8, v7, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v7

    .line 141
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    array-length p1, p2

    move v0, v1

    move v2, v0

    :goto_2
    if-ge v0, p1, :cond_3

    aget-object v4, p2, v0

    .line 146
    array-length v5, v4

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_2

    aget-wide v7, v4, v6

    int-to-long v9, v2

    or-long/2addr v7, v9

    long-to-int v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    const/16 p1, 0x1a

    if-ge v1, p1, :cond_5

    const/4 p1, 0x1

    shl-int/2addr p1, v1

    and-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 152
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {p1, v1, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result p1

    add-int/2addr v3, p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return v3
.end method

.method static synthetic lambda$parseClassAttrBands$0(I)Ljava/util/ArrayList;
    .locals 0

    .line 337
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$parseCodeBands$1(I)Ljava/util/List;
    .locals 0

    .line 743
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private parseClassAttrBands(Ljava/io/InputStream;)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 332
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v8

    .line 333
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v9

    .line 336
    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    .line 337
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 339
    iget v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result v5

    const-string v1, "class_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    .line 340
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([J)I

    move-result v0

    .line 341
    const-string v1, "class_attr_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 342
    const-string v1, "class_attr_indexes"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    .line 343
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    filled-new-array {v1}, [[J

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCallCount([[I[[JI)I

    move-result v0

    .line 344
    const-string v1, "class_attr_calls"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 346
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Deprecated"

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 348
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v4, "SourceFile"

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 349
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v4

    .line 350
    const-string v5, "class_SourceFile_RUN"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v10, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    .line 352
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v10, "EnclosingMethod"

    invoke-virtual {v5, v10, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 353
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v10, v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v10

    .line 354
    const-string v11, "class_EnclosingMethod_RC"

    sget-object v12, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v11, v7, v12, v10}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v11

    .line 355
    const-string v12, "class_EnclosingMethod_RDN"

    sget-object v13, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v12, v7, v13, v10}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 357
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v13, "Signature"

    invoke-virtual {v12, v13, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v12

    .line 358
    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v13, v12}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v13

    .line 359
    const-string v14, "class_Signature_RS"

    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v14, v7, v15, v13}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v13

    .line 361
    invoke-direct {v6, v7, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseClassMetadataBands(Ljava/io/InputStream;[I)I

    move-result v14

    .line 363
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v16, v14

    const-string v14, "InnerClasses"

    invoke-virtual {v15, v14, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v14

    .line 364
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v15, v14}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    .line 365
    const-string v2, "class_InnerClasses_N"

    move-object/from16 v17, v8

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v8, v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    .line 366
    const-string v8, "class_InnerClasses_RC"

    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v8, v7, v15, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v8

    .line 367
    const-string v15, "class_InnerClasses_F"

    move-object/from16 v18, v9

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v9, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v9

    .line 369
    array-length v15, v9

    move-object/from16 v20, v2

    move-object/from16 v19, v8

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v15, :cond_2

    move/from16 v21, v15

    aget-object v15, v9, v8

    move-object/from16 v22, v9

    .line 370
    array-length v9, v15

    move-object/from16 v23, v14

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_1

    aget v24, v15, v14

    if-eqz v24, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v21

    move-object/from16 v9, v22

    move-object/from16 v14, v23

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 376
    const-string v8, "class_InnerClasses_outer_RCN"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v8, v7, v9, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 377
    const-string v9, "class_InnerClasses_name_RUN"

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v9, v7, v14, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    .line 379
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v14, "class-file version"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    .line 380
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v14, v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v14

    .line 381
    const-string v15, "class_file_version_minor_H"

    move-object/from16 v21, v9

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v9, v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v9

    .line 382
    const-string v15, "class_file_version_major_H"

    move-object/from16 v24, v9

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v9, v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v9

    if-lez v14, :cond_3

    .line 384
    iget v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v15, v14, [I

    iput-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    .line 385
    new-array v14, v14, [I

    iput-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    .line 387
    :cond_3
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMajorVersion()I

    move-result v14

    .line 388
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMinorVersion()I

    move-result v15

    move/from16 v25, v15

    .line 392
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0x3e

    goto :goto_2

    :cond_4
    const/16 v15, 0x1f

    :goto_2
    move/from16 v26, v14

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v27, v9

    .line 393
    new-array v9, v14, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-object/from16 v28, v2

    .line 394
    new-array v2, v14, [I

    move-object/from16 v29, v8

    .line 395
    new-array v8, v14, [Ljava/util/List;

    move-object/from16 v30, v13

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_6

    move/from16 v31, v15

    .line 397
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v32, v12

    const/4 v12, 0x0

    invoke-virtual {v15, v13, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 398
    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v12

    if-nez v12, :cond_5

    .line 399
    aput-object v15, v9, v13

    .line 400
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v12, v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    aput v12, v2, v13

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v31

    move-object/from16 v12, v32

    goto :goto_3

    :cond_6
    move-object/from16 v32, v12

    move/from16 v12, v16

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_9

    .line 404
    aget v15, v2, v13

    if-lez v15, :cond_7

    .line 405
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v16, v14

    aget-object v14, v9, v13

    invoke-virtual {v15, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v14

    .line 406
    aget v15, v2, v13

    invoke-virtual {v14, v7, v15}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v15

    aput-object v15, v8, v13

    .line 407
    aget-object v15, v9, v13

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v15

    move-object/from16 v31, v2

    if-lez v15, :cond_8

    .line 409
    new-array v2, v15, [I

    const/4 v7, 0x0

    .line 410
    invoke-static {v0, v12, v2, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    invoke-virtual {v14, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v12, v15

    goto :goto_5

    :cond_7
    move-object/from16 v31, v2

    move/from16 v16, v14

    :cond_8
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p1

    move/from16 v14, v16

    move-object/from16 v2, v31

    goto :goto_4

    :cond_9
    move/from16 v16, v14

    .line 424
    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v0, v0, [[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    const/16 p1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 425
    :goto_6
    iget v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v15, v14, :cond_1c

    .line 426
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    move-object/from16 v33, v8

    move-object/from16 v31, v9

    aget-wide v8, v14, v15

    .line 427
    invoke-virtual {v1, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 428
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v14, v14, v15

    move-object/from16 v34, v1

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v34, v1

    .line 430
    :goto_7
    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 431
    aget v1, v4, v0

    move/from16 v35, v15

    int-to-long v14, v1

    .line 432
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v1

    invoke-virtual {v3, v14, v15, v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v1

    if-nez v1, :cond_e

    .line 435
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThis:[Ljava/lang/String;

    aget-object v1, v1, v35

    const/16 v14, 0x2f

    invoke-virtual {v1, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x2e

    .line 436
    invoke-virtual {v1, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    add-int/2addr v14, v15

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    move-object/from16 v37, v3

    const/4 v15, 0x0

    .line 441
    :goto_8
    array-length v3, v14

    if-ge v15, v3, :cond_c

    .line 442
    aget-char v3, v14, v15

    move-object/from16 v38, v4

    const/16 v4, 0x2d

    if-gt v3, v4, :cond_b

    const/4 v3, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v38

    goto :goto_8

    :cond_c
    move-object/from16 v38, v4

    const/4 v3, -0x1

    const/4 v15, -0x1

    :goto_9
    if-le v15, v3, :cond_d

    const/4 v4, 0x0

    .line 448
    invoke-virtual {v1, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 451
    :cond_d
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ".java"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    invoke-virtual {v4, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    goto :goto_a

    :cond_e
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    const/4 v3, -0x1

    .line 453
    :goto_a
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v4, v4, v35

    new-instance v14, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {v14, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move/from16 v35, v15

    const/4 v3, -0x1

    .line 456
    :goto_b
    invoke-virtual {v5, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 457
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    aget v14, v11, v2

    invoke-virtual {v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v1

    .line 459
    aget v14, v10, v2

    if-eqz v14, :cond_10

    .line 460
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v15, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v14

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    .line 462
    :goto_c
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v15, v15, v35

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;

    invoke-direct {v3, v1, v14}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_11
    move-object/from16 v1, v32

    .line 465
    invoke-virtual {v1, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 466
    aget v3, v30, v7

    int-to-long v14, v3

    .line 467
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v3

    invoke-virtual {v1, v14, v15, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 468
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v14, v14, v35

    new-instance v15, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v15, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_12
    move-object/from16 v3, v23

    .line 471
    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 474
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget v15, v20, v12

    new-array v15, v15, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aput-object v15, v14, v35

    move/from16 v14, p1

    const/4 v15, 0x0

    .line 475
    :goto_d
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget-object v4, v4, v35

    array-length v4, v4

    if-ge v15, v4, :cond_16

    .line 476
    aget-object v4, v19, v12

    aget v44, v4, v15

    .line 480
    aget-object v4, v18, v44

    .line 481
    aget-object v32, v22, v12

    aget v32, v32, v15

    if-eqz v32, :cond_13

    .line 486
    aget v36, v29, v14

    .line 487
    aget v39, v28, v14

    .line 488
    aget-object v40, v18, v36

    .line 489
    aget-object v41, v17, v39

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v48, v1

    move/from16 v49, v2

    move/from16 v45, v36

    move/from16 v46, v39

    move-object/from16 v42, v40

    move-object/from16 v43, v41

    move/from16 v36, v0

    move/from16 v41, v32

    goto :goto_10

    :cond_13
    move/from16 v36, v0

    .line 493
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getIcTuples()[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v0

    move-object/from16 v48, v1

    .line 495
    array-length v1, v0

    move/from16 v49, v2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_15

    aget-object v39, v0, v2

    move-object/from16 p1, v0

    .line 496
    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 497
    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getF()I

    move-result v0

    .line 498
    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getC2()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getN()Ljava/lang/String;

    move-result-object v2

    move/from16 v41, v0

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    goto :goto_f

    :cond_14
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    goto :goto_e

    :cond_15
    move/from16 v41, v32

    const/16 v42, 0x0

    const/16 v43, 0x0

    :goto_f
    const/16 v45, -0x1

    const/16 v46, -0x1

    .line 505
    :goto_10
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-object/from16 v39, v0

    move-object/from16 v40, v4

    move/from16 v47, v15

    invoke-direct/range {v39 .. v47}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 506
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget-object v1, v1, v35

    aput-object v0, v1, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v49

    goto/16 :goto_d

    :cond_16
    move/from16 v36, v0

    move-object/from16 v48, v1

    move/from16 v49, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_17
    move/from16 v36, v0

    move-object/from16 v48, v1

    move/from16 v49, v2

    move/from16 v14, p1

    :goto_11
    move-object/from16 v0, v21

    .line 510
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 511
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    aget v2, v27, v13

    aput v2, v1, v35

    .line 512
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    aget v2, v24, v13

    aput v2, v1, v35

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 514
    :cond_18
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    if-eqz v1, :cond_19

    .line 516
    aput v26, v1, v35

    .line 517
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    aput v25, v1, v35

    :cond_19
    :goto_12
    move/from16 v1, v16

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v1, :cond_1b

    .line 521
    aget-object v2, v31, v15

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 523
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v2, v2, v35

    aget-object v4, v33, v15

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    aget-object v2, v33, v15

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_14

    :cond_1a
    move-object/from16 v21, v0

    const/4 v0, 0x0

    :goto_14
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v21

    goto :goto_13

    :cond_1b
    move-object/from16 v21, v0

    const/4 v0, 0x0

    add-int/lit8 v15, v35, 0x1

    move/from16 v16, v1

    move-object/from16 v23, v3

    move/from16 p1, v14

    move-object/from16 v9, v31

    move-object/from16 v8, v33

    move-object/from16 v1, v34

    move/from16 v0, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    move-object/from16 v32, v48

    move/from16 v2, v49

    goto/16 :goto_6

    :cond_1c
    return-void
.end method

.method private parseClassMetadataBands(Ljava/io/InputStream;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    const-string v0, "RVA"

    const-string v1, "RIA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 543
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v1, "RuntimeVisibleAnnotations"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 545
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v2

    .line 546
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    .line 547
    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 548
    filled-new-array {v8, v8}, [I

    move-result-object v6

    const/4 v9, 0x1

    if-lez v2, :cond_1

    .line 551
    aget v2, p2, v8

    aput v2, v6, v8

    if-lez v3, :cond_0

    .line 554
    aget p2, p2, v9

    aput p2, v6, v9

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v9

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    .line 558
    aget p2, p2, v8

    aput p2, v6, v9

    goto :goto_0

    :cond_2
    move p2, v8

    .line 560
    :goto_1
    const-string v7, "class"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object p1

    .line 561
    aget-object v2, p1, v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v2

    .line 562
    aget-object p1, p1, v9

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object p1

    move v3, v8

    move v4, v3

    .line 565
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    array-length v6, v5

    if-ge v8, v6, :cond_5

    .line 566
    aget-wide v6, v5, v8

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 567
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v5, v5, v8

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    .line 569
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    aget-wide v6, v5, v8

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 570
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v5, v5, v8

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    return p2
.end method

.method private parseCodeAttrBands(Ljava/io/InputStream;I)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 577
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCodeFlagsHi()Z

    move-result v5

    const-string v1, "code_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v0

    .line 578
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([J)I

    move-result v1

    .line 579
    const-string v2, "code_attr_count"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 580
    const-string v2, "code_attr_indexes"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v1

    .line 582
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v8, 0x3

    if-ge v4, v2, :cond_1

    aget-object v9, v1, v4

    .line 583
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget v12, v9, v11

    .line 584
    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v13, v12, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v12

    .line 585
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v12

    add-int/2addr v5, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 588
    :cond_1
    const-string v1, "code_attr_calls"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 590
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v4, "LineNumberTable"

    invoke-virtual {v2, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    .line 591
    invoke-static {v0, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v4

    .line 592
    const-string v5, "code_LineNumberTable_N"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v9, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    .line 593
    const-string v5, "code_LineNumberTable_bci_P"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v9, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v5

    .line 594
    const-string v9, "code_LineNumberTable_line"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v9, v7, v10, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v9

    .line 596
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v11, "LocalVariableTable"

    invoke-virtual {v10, v11, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    .line 598
    iget-object v11, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v12, "LocalVariableTypeTable"

    invoke-virtual {v11, v12, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v11

    .line 601
    invoke-static {v0, v10}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    .line 602
    const-string v13, "code_LocalVariableTable_N"

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v13, v7, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v12

    .line 603
    const-string v13, "code_LocalVariableTable_bci_P"

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v13, v7, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v13

    .line 604
    const-string v14, "code_LocalVariableTable_span_O"

    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v14, v7, v15, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v14

    .line 605
    const-string v15, "code_LocalVariableTable_name_RU"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v3, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    .line 606
    const-string v15, "code_LocalVariableTable_type_RS"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v8, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v8

    .line 607
    const-string v15, "code_LocalVariableTable_slot"

    move-object/from16 v17, v8

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v8, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v8

    .line 609
    invoke-static {v0, v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    move-object/from16 v18, v11

    .line 610
    const-string v11, "code_LocalVariableTypeTable_N"

    move-object/from16 v19, v8

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v11, v7, v8, v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 611
    const-string v11, "code_LocalVariableTypeTable_bci_P"

    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v11, v7, v15, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 612
    const-string v15, "code_LocalVariableTypeTable_span_O"

    move-object/from16 v20, v11

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 613
    const-string v15, "code_LocalVariableTypeTable_name_RU"

    move-object/from16 v21, v11

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v11

    .line 615
    const-string v15, "code_LocalVariableTypeTable_type_RS"

    move-object/from16 v22, v11

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v11

    .line 617
    const-string v15, "code_LocalVariableTypeTable_slot"

    move-object/from16 v23, v11

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 621
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCodeFlagsHi()Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x3e

    goto :goto_2

    :cond_2
    const/16 v15, 0x1f

    :goto_2
    move-object/from16 v24, v11

    add-int/lit8 v11, v15, 0x1

    move-object/from16 v25, v8

    .line 622
    new-array v8, v11, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-object/from16 v26, v3

    .line 623
    new-array v3, v11, [I

    move-object/from16 v27, v14

    .line 624
    new-array v14, v11, [Ljava/util/List;

    move-object/from16 v28, v13

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_4

    move/from16 v29, v15

    .line 626
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v30, v12

    const/4 v12, 0x3

    invoke-virtual {v15, v13, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 627
    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v16

    if-nez v16, :cond_3

    .line 628
    aput-object v15, v8, v13

    .line 629
    invoke-static {v0, v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    aput v15, v3, v13

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v29

    move-object/from16 v12, v30

    goto :goto_3

    :cond_4
    move-object/from16 v30, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v11, :cond_7

    .line 633
    aget v15, v3, v12

    if-lez v15, :cond_5

    .line 634
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v16, v11

    aget-object v11, v8, v12

    invoke-virtual {v15, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v11

    .line 635
    aget v15, v3, v12

    invoke-virtual {v11, v7, v15}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v15

    aput-object v15, v14, v12

    .line 636
    aget-object v15, v8, v12

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v15

    move-object/from16 v29, v3

    if-lez v15, :cond_6

    .line 638
    new-array v3, v15, [I

    const/4 v7, 0x0

    .line 639
    invoke-static {v1, v13, v3, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    invoke-virtual {v11, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v13, v15

    goto :goto_5

    :cond_5
    move-object/from16 v29, v3

    move/from16 v16, v11

    :cond_6
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    move/from16 v11, v16

    move-object/from16 v3, v29

    goto :goto_4

    :cond_7
    move/from16 v16, v11

    move/from16 v12, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v7, v12, :cond_d

    .line 650
    aget-wide v12, v0, v7

    invoke-virtual {v2, v12, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 651
    new-instance v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;

    aget v13, v4, v1

    aget-object v15, v5, v1

    move-object/from16 v29, v2

    aget-object v2, v9, v1

    invoke-direct {v12, v13, v15, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;-><init>(I[I[I)V

    add-int/lit8 v1, v1, 0x1

    .line 654
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v2, v2, v7

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v29, v2

    .line 656
    :goto_7
    aget-wide v12, v0, v7

    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 657
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;

    aget v32, v30, v3

    aget-object v33, v28, v3

    aget-object v34, v27, v3

    aget-object v35, v26, v3

    aget-object v36, v17, v3

    aget-object v37, v19, v3

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;-><init>(I[I[I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[I)V

    add-int/lit8 v3, v3, 0x1

    .line 661
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v12, v12, v7

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_9
    aget-wide v12, v0, v7

    move-object/from16 v2, v18

    invoke-virtual {v2, v12, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 664
    new-instance v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;

    aget v32, v25, v11

    aget-object v33, v20, v11

    aget-object v34, v21, v11

    aget-object v35, v22, v11

    aget-object v36, v23, v11

    aget-object v37, v24, v11

    move-object/from16 v31, v12

    invoke-direct/range {v31 .. v37}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;-><init>(I[I[I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[I)V

    add-int/lit8 v11, v11, 0x1

    .line 668
    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v13, v13, v7

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move/from16 v15, v16

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v15, :cond_c

    .line 672
    aget-object v13, v8, v12

    move/from16 p1, v1

    move-object/from16 v18, v2

    if-eqz v13, :cond_b

    aget-wide v1, v0, v7

    invoke-virtual {v13, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 674
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v1, v1, v7

    aget-object v2, v14, v12

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    aget-object v1, v14, v12

    invoke-interface {v1, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move-object/from16 v2, v18

    goto :goto_8

    :cond_c
    move/from16 p1, v1

    move-object/from16 v18, v2

    const/4 v13, 0x0

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, p2

    move/from16 v16, v15

    move-object/from16 v2, v29

    goto/16 :goto_6

    :cond_d
    return-void
.end method

.method private parseCodeBands(Ljava/io/InputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 683
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Code"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    .line 685
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v2

    .line 686
    const-string v3, "code_headers"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v5, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 688
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasAllCodeFlags()Z

    move-result v5

    if-nez v5, :cond_0

    .line 690
    new-array v6, v2, [Z

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHasAttributes:[Z

    :cond_0
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v7, v2, :cond_2

    .line 694
    aget v10, v3, v7

    if-nez v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    if-nez v5, :cond_1

    .line 697
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHasAttributes:[Z

    aput-boolean v9, v10, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 701
    :cond_2
    const-string v7, "code_max_stack"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v7, v1, v10, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v7

    .line 702
    const-string v10, "code_max_na_locals"

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v10, v1, v11, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 703
    const-string v11, "code_handler_count"

    sget-object v12, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v11, v1, v12, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v11

    .line 705
    new-array v12, v2, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    .line 706
    new-array v12, v2, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    .line 707
    new-array v12, v2, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    move v12, v6

    move v13, v12

    :goto_1
    if-ge v12, v2, :cond_8

    .line 710
    aget v14, v3, v12

    const/16 v15, 0xff

    and-int/2addr v14, v15

    if-ltz v14, :cond_7

    if-nez v14, :cond_3

    .line 715
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    aget v15, v7, v13

    aput v15, v14, v12

    .line 716
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    aget v15, v10, v13

    aput v15, v14, v12

    .line 717
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    aget v15, v11, v13

    aput v15, v14, v12

    add-int/lit8 v13, v13, 0x1

    move v14, v4

    goto :goto_3

    :cond_3
    const/16 v4, 0x90

    if-gt v14, v4, :cond_4

    .line 720
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    add-int/lit8 v14, v14, -0x1

    rem-int/lit8 v15, v14, 0xc

    aput v15, v4, v12

    .line 721
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    div-int/lit8 v14, v14, 0xc

    aput v14, v4, v12

    .line 722
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    aput v6, v4, v12

    :goto_2
    const/4 v14, 0x2

    goto :goto_3

    :cond_4
    const/16 v4, 0xd0

    if-gt v14, v4, :cond_5

    .line 724
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    add-int/lit16 v14, v14, -0x91

    rem-int/lit8 v15, v14, 0x8

    aput v15, v4, v12

    .line 725
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    div-int/lit8 v14, v14, 0x8

    aput v14, v4, v12

    .line 726
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    aput v9, v4, v12

    goto :goto_2

    :cond_5
    if-gt v14, v15, :cond_6

    .line 728
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    add-int/lit16 v14, v14, -0xd1

    rem-int/lit8 v15, v14, 0x7

    aput v15, v4, v12

    .line 729
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    div-int/lit8 v14, v14, 0x7

    aput v14, v4, v12

    .line 730
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const/4 v14, 0x2

    aput v14, v4, v12

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v4, v14

    goto :goto_1

    .line 732
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Shouldn\'t get here either"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Shouldn\'t get here"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_8
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v6, "code_handler_start_P"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerStartP:[[I

    .line 736
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v6, "code_handler_end_PO"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerEndPO:[[I

    .line 737
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v6, "code_handler_catch_PO"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCatchPO:[[I

    .line 738
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v6, "code_handler_class_RCN"

    invoke-virtual {v0, v6, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerClassRCN:[[I

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    move v2, v8

    .line 742
    :goto_4
    new-array v3, v2, [Ljava/util/List;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    .line 743
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 744
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCodeAttrBands(Ljava/io/InputStream;I)V

    return-void
.end method

.method private parseFieldAttrBands(Ljava/io/InputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 748
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFieldFlagsHi()Z

    move-result v5

    const-string v1, "field_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    .line 749
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([[J)I

    move-result v0

    .line 750
    const-string v1, "field_attr_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 751
    const-string v1, "field_attr_indexes"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    .line 752
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCallCount([[I[[JI)I

    move-result v0

    .line 753
    const-string v1, "field_attr_calls"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 756
    iget v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v1, v1, [[Ljava/util/ArrayList;

    iput-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 757
    :goto_0
    iget v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v3, v4, :cond_1

    .line 758
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v5, v5, v3

    array-length v5, v5

    new-array v5, v5, [Ljava/util/ArrayList;

    aput-object v5, v4, v3

    const/4 v4, 0x0

    .line 759
    :goto_1
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v5, v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 760
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v5, v5, v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    :cond_1
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v4, "ConstantValue"

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 765
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v4

    .line 766
    const-string v5, "field_ConstantValue_KQ"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v8, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    .line 769
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v8, "Signature"

    invoke-virtual {v5, v8, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 770
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v8, v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    .line 771
    const-string v9, "field_Signature_RS"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v9, v7, v10, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 774
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v10, "Deprecated"

    invoke-virtual {v9, v10, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 776
    :goto_2
    iget v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v10, v13, :cond_8

    const/4 v13, 0x0

    .line 777
    :goto_3
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v14, v14, v10

    array-length v15, v14

    if-ge v13, v15, :cond_7

    .line 778
    aget-wide v1, v14, v13

    .line 779
    invoke-virtual {v9, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 780
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v14, v14, v10

    aget-object v14, v14, v13

    new-instance v15, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v15}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_2
    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v14

    const/16 v15, 0x3a

    if-eqz v14, :cond_5

    .line 784
    aget v14, v4, v11

    move-object/from16 v17, v8

    int-to-long v7, v14

    .line 785
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescr:[[Ljava/lang/String;

    aget-object v14, v14, v10

    aget-object v14, v14, v13

    .line 786
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v16, 0x1

    add-int/lit8 v15, v18, 0x1

    move-object/from16 v18, v4

    const/16 v4, 0x3a

    .line 787
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 788
    const-string v15, "B"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "S"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "C"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "Z"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 789
    :cond_3
    const-string v14, "I"

    .line 791
    :cond_4
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v15

    invoke-virtual {v3, v7, v8, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v7

    .line 792
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v8, v8, v10

    aget-object v8, v8, v13

    new-instance v14, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;

    invoke-direct {v14, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v17, v8

    move v4, v15

    .line 795
    :goto_4
    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 797
    aget v1, v17, v12

    int-to-long v1, v1

    .line 798
    iget-object v7, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescr:[[Ljava/lang/String;

    aget-object v7, v7, v10

    aget-object v7, v7, v13

    .line 799
    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 800
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 801
    iget-object v7, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v7

    invoke-virtual {v5, v1, v2, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 802
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v2, v2, v10

    aget-object v2, v2, v13

    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v4, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, v17

    move-object/from16 v4, v18

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v17, v8

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p1

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_8
    move-object v1, v7

    .line 809
    invoke-direct {v6, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFieldMetadataBands(Ljava/io/InputStream;[I)I

    move-result v2

    .line 810
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFieldFlagsHi()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x3e

    goto :goto_5

    :cond_9
    const/16 v3, 0x1f

    :goto_5
    add-int/lit8 v4, v3, 0x1

    .line 811
    new-array v5, v4, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 812
    new-array v7, v4, [I

    .line 813
    new-array v8, v4, [Ljava/util/List;

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v3, :cond_b

    .line 815
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 816
    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v12

    if-nez v12, :cond_a

    .line 817
    aput-object v10, v5, v9

    .line 818
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v12, v10}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v10

    aput v10, v7, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_d

    .line 822
    aget v9, v7, v3

    if-lez v9, :cond_c

    .line 823
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v9

    .line 824
    aget v10, v7, v3

    invoke-virtual {v9, v1, v10}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v10

    aput-object v10, v8, v3

    .line 825
    aget-object v10, v5, v3

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v10

    if-lez v10, :cond_c

    .line 827
    new-array v11, v10, [I

    const/4 v12, 0x0

    .line 828
    invoke-static {v0, v2, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    invoke-virtual {v9, v11}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v2, v10

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v12, 0x0

    .line 836
    :goto_8
    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v12, v0, :cond_12

    const/4 v0, 0x0

    .line 837
    :goto_9
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v1, v1, v12

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 838
    aget-wide v2, v1, v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v1, v4, :cond_10

    .line 841
    aget-object v9, v5, v1

    if-eqz v9, :cond_f

    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 843
    aget-object v9, v5, v1

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v9

    const/16 v10, 0xf

    if-ge v9, v10, :cond_e

    .line 844
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    add-int/lit8 v10, v7, 0x1

    aget-object v11, v8, v1

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v9, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v7, v10

    goto :goto_b

    :cond_e
    const/4 v13, 0x0

    .line 846
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    aget-object v10, v8, v1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    :goto_b
    aget-object v9, v8, v1

    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v13, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method private parseFieldBands(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 856
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    const-string v2, "field_descr"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescrInts:[[I

    .line 857
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptor()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescr:[[Ljava/lang/String;

    .line 858
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFieldAttrBands(Ljava/io/InputStream;)V

    return-void
.end method

.method private parseFieldMetadataBands(Ljava/io/InputStream;[I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    const-string v0, "RVA"

    const-string v1, "RIA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 865
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v1, "RuntimeVisibleAnnotations"

    const/4 v8, 0x1

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 868
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v2

    .line 869
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    .line 870
    filled-new-array {v2, v3}, [I

    move-result-object v5

    const/4 v9, 0x0

    .line 871
    filled-new-array {v9, v9}, [I

    move-result-object v6

    if-lez v2, :cond_1

    .line 873
    aget v2, p2, v9

    aput v2, v6, v9

    if-lez v3, :cond_0

    .line 876
    aget p2, p2, v8

    aput p2, v6, v8

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v8

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    .line 880
    aget p2, p2, v9

    aput p2, v6, v8

    goto :goto_0

    :cond_2
    move p2, v9

    .line 883
    :goto_1
    const-string v7, "field"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object p1

    .line 884
    aget-object v2, p1, v9

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v2

    .line 885
    aget-object p1, p1, v8

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object p1

    move v3, v9

    move v4, v3

    move v5, v4

    .line 888
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    array-length v6, v6

    if-ge v3, v6, :cond_6

    move v6, v9

    .line 889
    :goto_3
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v7, v7, v3

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 890
    aget-wide v10, v7, v6

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 891
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    .line 893
    :cond_3
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v7, v7, v3

    aget-wide v10, v7, v6

    invoke-virtual {v1, v10, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 894
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    add-int/lit8 v8, v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return p2
.end method

.method private parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 903
    array-length v0, v8

    new-array v10, v0, [Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    const/4 v12, 0x0

    .line 904
    :goto_0
    array-length v0, v8

    if-ge v12, v0, :cond_e

    .line 905
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    aget-object v1, v8, v12

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;-><init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V

    aput-object v0, v10, v12

    .line 906
    aget-object v13, v8, v12

    const/16 v0, 0x50

    .line 907
    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v14, "_"

    if-ltz v0, :cond_0

    .line 908
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_param_NB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v3, p3, v12

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->param_NB:[I

    .line 911
    :cond_0
    const-string v0, "AD"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 912
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_anno_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v3, p3, v12

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    .line 913
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_type_RS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v3, v10, v12

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 914
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_pair_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v3, v10, v12

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    .line 915
    aget-object v0, v10, v12

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 916
    array-length v5, v4

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v5, :cond_1

    aget v16, v4, v15

    add-int v3, v3, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 921
    :cond_2
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_name_RU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    goto :goto_3

    .line 923
    :cond_3
    aget v3, p3, v12

    .line 925
    :goto_3
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v4, p4, v12

    add-int/2addr v3, v4

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    .line 935
    aget-object v0, v10, v12

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    array-length v1, v0

    move-object/from16 v17, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v2, v1, :cond_c

    move/from16 v18, v1

    aget v1, v0, v2

    int-to-char v1, v1

    move-object/from16 v19, v0

    const/16 v0, 0x40

    if-eq v1, v0, :cond_b

    const/16 v0, 0x46

    if-eq v1, v0, :cond_a

    const/16 v0, 0x53

    if-eq v1, v0, :cond_9

    const/16 v0, 0x63

    if-eq v1, v0, :cond_8

    const/16 v0, 0x65

    if-eq v1, v0, :cond_7

    const/16 v0, 0x73

    if-eq v1, v0, :cond_6

    const/16 v0, 0x49

    if-eq v1, v0, :cond_9

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_5

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_9

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v13, v13, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    move-object/from16 v0, v19

    goto :goto_4

    .line 971
    :cond_c
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v17, v6

    const-string v6, "_caseI_KI"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v21, v7

    move/from16 v20, v17

    move-object/from16 v7, p0

    move/from16 v17, v13

    move-object/from16 v13, p1

    invoke-virtual {v7, v1, v13, v6, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    .line 972
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_caseD_KD"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7, v1, v13, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    .line 973
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_caseF_KF"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7, v1, v13, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    .line 974
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_caseJ_KJ"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7, v1, v13, v3, v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    .line 975
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_casec_RS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7, v1, v13, v3, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 976
    aget-object v6, v10, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_caseet_RS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v7, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpSignature()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v8, v2

    move-object/from16 v2, p1

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS:[Ljava/lang/String;

    .line 977
    aget-object v6, v10, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_caseec_RU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v7, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU:[Ljava/lang/String;

    .line 978
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cases_RU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v11, v20

    invoke-virtual {v7, v1, v13, v2, v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 979
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_casearray_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v11, v21

    invoke-virtual {v7, v1, v13, v2, v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N:[I

    .line 980
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_nesttype_RS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v11, v17

    invoke-virtual {v7, v1, v13, v2, v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 981
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_nestpair_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7, v1, v13, v2, v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    .line 983
    aget-object v0, v10, v12

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v1, :cond_d

    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 986
    :cond_d
    aget-object v0, v10, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_nestname_RU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7, v1, v13, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p2

    move-object v6, v7

    move-object v7, v13

    goto/16 :goto_0

    :cond_e
    move-object v7, v6

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseMethodAttrBands(Ljava/io/InputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 992
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasMethodFlagsHi()Z

    move-result v5

    const-string v1, "method_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    .line 993
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([[J)I

    move-result v0

    .line 994
    const-string v1, "method_attr_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 995
    const-string v1, "method_attr_indexes"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    .line 996
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    const/4 v2, 0x2

    invoke-direct {v6, v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCallCount([[I[[JI)I

    move-result v0

    .line 997
    const-string v1, "method_attr_calls"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttrCalls:[I

    .line 1000
    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v0, v0, [[Ljava/util/ArrayList;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1001
    :goto_0
    iget v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v1, v3, :cond_1

    .line 1002
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v4, v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/util/ArrayList;

    aput-object v4, v3, v1

    const/4 v3, 0x0

    .line 1003
    :goto_1
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1004
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Exceptions"

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 1010
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    .line 1011
    const-string v4, "method_Exceptions_n"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v4, v7, v5, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 1012
    const-string v4, "method_Exceptions_RC"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v4, v7, v5, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    .line 1015
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v8, "Signature"

    invoke-virtual {v5, v8, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 1016
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v8, v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    .line 1017
    const-string v9, "method_signature_RS"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v9, v7, v10, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 1019
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v10, "Deprecated"

    invoke-virtual {v9, v10, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1024
    :goto_2
    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    array-length v13, v13

    if-ge v10, v13, :cond_9

    const/4 v13, 0x0

    .line 1025
    :goto_3
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v14, v14, v10

    array-length v14, v14

    if-ge v13, v14, :cond_8

    .line 1026
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v14, v14, v10

    move-object/from16 v16, v3

    aget-wide v2, v14, v13

    .line 1027
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1028
    aget v14, v16, v11

    .line 1029
    aget-object v17, v4, v11

    .line 1030
    new-array v15, v14, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_2

    move-object/from16 v18, v1

    .line 1032
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-object/from16 v19, v4

    aget v4, v17, v0

    invoke-virtual {v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    goto :goto_4

    :cond_2
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    .line 1034
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v10

    aget-object v0, v0, v13

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;

    invoke-direct {v1, v15}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;-><init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    .line 1037
    :goto_5
    invoke-virtual {v5, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1039
    aget v0, v8, v12

    int-to-long v0, v0

    .line 1040
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescr:[[Ljava/lang/String;

    aget-object v4, v4, v10

    aget-object v4, v4, v13

    const/16 v14, 0x3a

    .line 1041
    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 1042
    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1045
    const-string v14, "B"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "H"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1046
    :cond_4
    const-string v4, "I"

    .line 1048
    :cond_5
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v14

    invoke-virtual {v5, v0, v1, v4, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 1049
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v1, v1, v10

    aget-object v1, v1, v13

    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v4, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    .line 1052
    :cond_6
    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1053
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v10

    aget-object v0, v0, v13

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x2

    goto/16 :goto_2

    .line 1059
    :cond_9
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttrCalls:[I

    invoke-direct {v6, v7, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMethodMetadataBands(Ljava/io/InputStream;[I)I

    move-result v0

    .line 1060
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasMethodFlagsHi()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x3e

    goto :goto_6

    :cond_a
    const/16 v1, 0x1f

    :goto_6
    add-int/lit8 v2, v1, 0x1

    .line 1061
    new-array v3, v2, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 1062
    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_c

    .line 1064
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v9, 0x2

    invoke-virtual {v8, v5, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1065
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1066
    aput-object v8, v3, v5

    .line 1067
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v10, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    aput v8, v4, v5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1070
    :cond_c
    new-array v1, v2, [Ljava/util/List;

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_e

    .line 1072
    aget v8, v4, v5

    if-lez v8, :cond_d

    .line 1073
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v8

    .line 1074
    aget v9, v4, v5

    invoke-virtual {v8, v7, v9}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v9

    aput-object v9, v1, v5

    .line 1075
    aget-object v9, v3, v5

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v9

    if-lez v9, :cond_d

    .line 1077
    new-array v10, v9, [I

    .line 1078
    iget-object v11, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttrCalls:[I

    const/4 v12, 0x0

    invoke-static {v11, v0, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    add-int/2addr v0, v9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    .line 1086
    :goto_9
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v12, v0, :cond_13

    const/4 v0, 0x0

    .line 1087
    :goto_a
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v4, v4, v12

    array-length v4, v4

    if-ge v0, v4, :cond_12

    .line 1088
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v4, v4, v12

    aget-wide v7, v4, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v4, v2, :cond_11

    .line 1091
    aget-object v9, v3, v4

    if-eqz v9, :cond_10

    invoke-virtual {v9, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1093
    aget-object v9, v3, v4

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v9

    const/16 v10, 0xf

    if-ge v9, v10, :cond_f

    .line 1094
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    add-int/lit8 v10, v5, 0x1

    aget-object v11, v1, v4

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v9, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v10

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    .line 1096
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v9, v9, v12

    aget-object v9, v9, v0

    aget-object v10, v1, v4

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    :goto_c
    aget-object v9, v1, v4

    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_11
    const/4 v13, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v13, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method private parseMethodBands(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1106
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    const-string v2, "method_descr"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescrInts:[[I

    .line 1107
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptor()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescr:[[Ljava/lang/String;

    .line 1108
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMethodAttrBands(Ljava/io/InputStream;)V

    return-void
.end method

.method private parseMethodMetadataBands(Ljava/io/InputStream;[I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    const-string v0, "RIPA"

    const-string v1, "AD"

    const-string v2, "RVA"

    const-string v3, "RIA"

    const-string v4, "RVPA"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    .line 1114
    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v8

    .line 1116
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v2, "RuntimeVisibleAnnotations"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 1117
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    .line 1118
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v5, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    .line 1120
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v6, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v5, v6, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 1122
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v9, "AnnotationDefault"

    invoke-virtual {v6, v9, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 1123
    filled-new-array {v1, v2, v4, v5, v3}, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 1125
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    invoke-static {v8, v2}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    const/4 v2, 0x5

    .line 1126
    new-array v9, v2, [I

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1129
    aget v6, v8, v3

    if-lez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1131
    aget v6, p2, v5

    aput v6, v9, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1134
    :cond_0
    aput v0, v9, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    const-string v10, "method"

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object p1

    .line 1138
    new-array p2, v2, [Ljava/util/List;

    .line 1139
    new-array v3, v2, [I

    move v5, v0

    .line 1140
    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 1141
    aget-object v6, p1, v5

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v6

    aput-object v6, p2, v5

    .line 1142
    aput v0, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move p1, v0

    .line 1144
    :goto_3
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    array-length v5, v5

    if-ge p1, v5, :cond_6

    move v5, v0

    .line 1145
    :goto_4
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v6, v6, p1

    array-length v6, v6

    if-ge v5, v6, :cond_5

    move v6, v0

    :goto_5
    if-ge v6, v2, :cond_4

    .line 1147
    aget-object v7, v1, v6

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v8, v8, p1

    aget-wide v9, v8, v5

    invoke-virtual {v7, v9, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1148
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    aget-object v7, v7, v5

    aget-object v8, p2, v6

    aget v9, v3, v6

    add-int/lit8 v10, v9, 0x1

    aput v10, v3, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    return v4
.end method


# virtual methods
.method public getClassAttributes()[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClassFieldCount()[I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    return-object v0
.end method

.method public getClassFlags()[J
    .locals 7

    .line 168
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x7fff

    move v3, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 171
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    .line 177
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 178
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    aget-wide v5, v3, v0

    and-long/2addr v5, v1

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    return-object v0
.end method

.method public getClassInterfacesInts()[[I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classInterfacesInts:[[I

    return-object v0
.end method

.method public getClassMethodCount()[I
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    return-object v0
.end method

.method public getClassSuperInts()[I
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classSuperInts:[I

    return-object v0
.end method

.method public getClassThisInts()[I
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThisInts:[I

    return-object v0
.end method

.method public getClassVersionMajor()[I
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    return-object v0
.end method

.method public getClassVersionMinor()[I
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    return-object v0
.end method

.method public getCodeHandlerCatchPO()[[I
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCatchPO:[[I

    return-object v0
.end method

.method public getCodeHandlerClassRCN()[[I
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerClassRCN:[[I

    return-object v0
.end method

.method public getCodeHandlerCount()[I
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    return-object v0
.end method

.method public getCodeHandlerEndPO()[[I
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerEndPO:[[I

    return-object v0
.end method

.method public getCodeHandlerStartP()[[I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerStartP:[[I

    return-object v0
.end method

.method public getCodeHasAttributes()[Z
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHasAttributes:[Z

    return-object v0
.end method

.method public getCodeMaxNALocals()[I
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    return-object v0
.end method

.method public getCodeMaxStack()[I
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    return-object v0
.end method

.method public getFieldAttributes()[[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFieldDescrInts()[[I
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescrInts:[[I

    return-object v0
.end method

.method public getFieldFlags()[[J
    .locals 9

    .line 261
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, 0x7fff

    move v3, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 264
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    shl-int v4, v5, v3

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    array-length v3, v3

    new-array v3, v3, [[J

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    move v3, v0

    .line 270
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 271
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    aget-object v4, v4, v3

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v5, v3

    move v4, v0

    .line 272
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 273
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    aget-object v6, v6, v3

    aget-wide v7, v5, v4

    and-long/2addr v7, v1

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    return-object v0
.end method

.method public getIcLocal()[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-object v0
.end method

.method public getMethodAttributes()[[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethodDescr()[[Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescr:[[Ljava/lang/String;

    return-object v0
.end method

.method public getMethodDescrInts()[[I
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescrInts:[[I

    return-object v0
.end method

.method public getMethodFlags()[[J
    .locals 9

    .line 297
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, 0x7fff

    move v3, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 300
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    array-length v3, v3

    new-array v3, v3, [[J

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    move v3, v0

    .line 306
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 307
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    aget-object v4, v4, v3

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v5, v3

    move v4, v0

    .line 308
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 309
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    aget-object v6, v6, v3

    aget-wide v7, v5, v4

    and-long/2addr v7, v1

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 313
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    return-object v0
.end method

.method public getOrderedCodeAttributes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;>;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawClassFlags()[J
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    return-object v0
.end method

.method synthetic lambda$parseMethodMetadataBands$2$org-apache-commons-compress-harmony-unpack200-ClassBands([Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I
    .locals 1

    .line 1125
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object p1, p1, p2

    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result p1

    return p1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result v0

    .line 1164
    const-string v1, "class_this"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThisInts:[I

    .line 1165
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThis:[Ljava/lang/String;

    .line 1166
    const-string v1, "class_super"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classSuperInts:[I

    .line 1167
    const-string v1, "class_interface_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 1168
    const-string v2, "class_interface"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, p1, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classInterfacesInts:[[I

    .line 1169
    const-string v1, "class_field_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    .line 1170
    const-string v1, "class_method_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    .line 1171
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFieldBands(Ljava/io/InputStream;)V

    .line 1172
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMethodBands(Ljava/io/InputStream;)V

    .line 1173
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseClassAttrBands(Ljava/io/InputStream;)V

    .line 1174
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCodeBands(Ljava/io/InputStream;)V

    return-void
.end method

.method public unpack()V
    .locals 0

    return-void
.end method
