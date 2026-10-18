.class public Lorg/apache/commons/compress/harmony/pack200/FileBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "FileBands.java"


# instance fields
.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field private final file_bits:[[B

.field private final file_modtime:[I

.field private file_name:[I

.field private final file_options:[I

.field private final file_size:[J

.field private final options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, p5

    .line 51
    invoke-direct {v0, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 52
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getFileList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileList:Ljava/util/List;

    .line 53
    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    .line 54
    iput-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 56
    new-array v5, v4, [Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iput-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 57
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_modtime:[I

    .line 58
    new-array v5, v4, [J

    iput-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_size:[J

    .line 59
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_options:[I

    .line 61
    new-array v5, v4, [[B

    iput-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_bits:[[B

    .line 62
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->getArchive_modtime()I

    move-result v3

    .line 64
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 65
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getClassList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/objectweb/asm/ClassReader;

    .line 66
    invoke-virtual {v7}, Lorg/objectweb/asm/ClassReader;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    const-string v6, ""

    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v6

    .line 71
    const-string v7, "keep"

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getModificationTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    move v10, v8

    move v11, v10

    :goto_1
    if-ge v10, v4, :cond_5

    .line 73
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileList:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 74
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v13

    .line 75
    const-string v14, ".class"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v2, v13}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isPassFile(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 76
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_options:[I

    aget v15, v14, v10

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v10

    .line 77
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x6

    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 78
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    aput-object v6, v13, v10

    goto :goto_2

    .line 80
    :cond_1
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v13

    aput-object v13, v14, v10

    goto :goto_2

    .line 83
    :cond_2
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v13

    aput-object v13, v14, v10

    .line 86
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isKeepDeflateHint()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDefalteHint()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 87
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_options:[I

    aget v14, v13, v10

    or-int/lit8 v14, v14, 0x1

    aput v14, v13, v10

    .line 89
    :cond_3
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getContents()[B

    move-result-object v13

    .line 90
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_size:[J

    array-length v13, v13

    move v15, v9

    int-to-long v8, v13

    aput-wide v8, v14, v10

    .line 91
    invoke-static {v11, v8, v9}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v11

    .line 94
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getModtime()J

    move-result-wide v8

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v8, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v8, v13

    .line 95
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_modtime:[I

    int-to-long v1, v3

    sub-long/2addr v8, v1

    long-to-int v1, v8

    aput v1, v13, v10

    move v9, v15

    if-eqz v7, :cond_4

    if-ge v9, v1, :cond_4

    move v9, v1

    .line 100
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_bits:[[B

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getContents()[B

    move-result-object v2

    aput-object v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz v7, :cond_6

    .line 104
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_modtime:[I

    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([II)V

    :cond_6
    return-void
.end method

.method private flatten([[B)[I
    .locals 10

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 130
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-array v0, v3, [I

    .line 134
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    .line 135
    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_1

    aget-byte v8, v5, v7

    add-int/lit8 v9, v4, 0x1

    and-int/lit16 v8, v8, 0xff

    .line 136
    aput v8, v0, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public finaliseBands()V
    .locals 4

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_name:[I

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_name:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 117
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isPassFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    aput-object v1, v2, v0

    .line 120
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_options:[I

    aget v2, v1, v0

    and-int/lit8 v2, v2, -0x3

    aput v2, v1, v0

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_name:[I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->fileName:[Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 144
    const-string v0, "Writing file bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_name:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "file_name"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from file_name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_name:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_size:[J

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_size_hi()Z

    move-result v8

    const-string v4, "file_size"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from file_size["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_size:[J

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_modtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_modtime:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "file_modtime"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from file_modtime["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_modtime:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_options()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_options:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "file_options"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from file_options["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_options:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_bits:[[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->flatten([[B)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "file_bits"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from file_bits["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/FileBands;->file_bits:[[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method
