.class public Lorg/apache/commons/compress/harmony/pack200/Segment;
.super Lorg/objectweb/asm/ClassVisitor;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;
    }
.end annotation


# static fields
.field public static ASM_API:I = 0x40000


# instance fields
.field private attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field private bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

.field private classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

.field private cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

.field private final fieldVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

.field private fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

.field private icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

.field private final methodVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

.field private nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

.field private options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

.field private segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

.field private stripDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 495
    sget v0, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 483
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fieldVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    .line 484
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->methodVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->addValueAndTag(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/harmony/pack200/Segment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->passCurrentClass()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/BcBands;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/harmony/pack200/Segment;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    return p0
.end method

.method private addValueAndTag(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 500
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "I"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 503
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 504
    const-string v0, "D"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 506
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 507
    const-string v0, "F"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 509
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 510
    const-string v0, "J"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 512
    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 513
    const-string v0, "B"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 516
    const-string v0, "C"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 519
    const-string v0, "S"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 522
    const-string v0, "Z"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 525
    const-string v0, "s"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_8
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_9

    .line 528
    const-string v0, "c"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-void
.end method

.method private passCurrentClass()V
    .locals 1

    .line 646
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;-><init>()V

    throw v0
.end method

.method private processClasses(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;[Lorg/objectweb/asm/Attribute;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->classListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setClass_count(I)V

    .line 651
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getClassList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    .line 652
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    .line 654
    iget-boolean v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 658
    :goto_1
    :try_start_0
    invoke-virtual {v1, p0, p2, v2}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Segment$PassException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->removeCurrentClass()V

    .line 663
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 664
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addPassFile(Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 668
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 670
    iget-object v1, v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:[B

    invoke-virtual {v4, v1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->setContents([B)V

    goto :goto_0

    .line 675
    :cond_2
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error passing file "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public getAttrBands()Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    return-object v0
.end method

.method public getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    return-object v0
.end method

.method public getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    return-object v0
.end method

.method public getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    return-object v0
.end method

.method public getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    return-object v0
.end method

.method public getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    return-object v0
.end method

.method public lastConstantHadWideIndex()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastConstantHadWideIndex()Z

    move-result v0

    return v0
.end method

.method public pack(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 571
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    .line 572
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isStripDebug()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    .line 573
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getEffort()I

    move-result v6

    .line 574
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownAttributePrototypes()[Lorg/objectweb/asm/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start to pack a new segment with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->fileListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files including "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->classListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 578
    const-string v0, "Initialize a header for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 579
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    .line 580
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->fileListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setFile_count(I)V

    .line 581
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_all_code_flags(Z)V

    .line 582
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isKeepDeflateHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getDeflateHint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setDeflate_hint(Z)V

    .line 586
    :cond_0
    const-string v0, "Setup constant pool bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 587
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v0, p0, v6}, Lorg/apache/commons/compress/harmony/pack200/CpBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 589
    const-string v0, "Setup attribute definition bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 590
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

    invoke-direct {v0, p0, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I[Lorg/objectweb/asm/Attribute;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    .line 592
    const-string v0, "Setup internal class bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 593
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IcBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/compress/harmony/pack200/IcBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/CpBands;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    .line 595
    const-string v0, "Setup class bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 596
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->classListSize()I

    move-result v1

    iget-boolean v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    invoke-direct {v0, p0, v1, v6, v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IIZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    .line 598
    const-string v0, "Setup byte code bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 599
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BcBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v0, v1, p0, v6}, Lorg/apache/commons/compress/harmony/pack200/BcBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/Segment;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    .line 601
    const-string v0, "Setup file bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 602
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-object v1, v0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/FileBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    .line 604
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->processClasses(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;[Lorg/objectweb/asm/Attribute;)V

    .line 606
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->finaliseBands()V

    .line 607
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->finaliseBands()V

    .line 608
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->finaliseBands()V

    .line 609
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->finaliseBands()V

    .line 610
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->finaliseBands()V

    .line 611
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->finaliseBands()V

    .line 617
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 619
    const-string v0, "Packing..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numClassesProcessed()I

    move-result v0

    .line 621
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setClass_count(I)V

    .line 622
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->pack(Ljava/io/OutputStream;)V

    if-lez v0, :cond_1

    .line 624
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->pack(Ljava/io/OutputStream;)V

    .line 625
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->pack(Ljava/io/OutputStream;)V

    .line 626
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->pack(Ljava/io/OutputStream;)V

    .line 627
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->pack(Ljava/io/OutputStream;)V

    .line 629
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->pack(Ljava/io/OutputStream;)V

    .line 631
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 632
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->pack(Ljava/io/OutputStream;)V

    .line 634
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 635
    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 637
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->addPackedByteAmount(I)V

    .line 638
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->addPackedByteAmount(I)V

    .line 640
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Wrote total of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getPackedByteAmount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 641
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Transmitted "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->fileListSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " files of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getByteAmount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " input bytes in a segment of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 642
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getPackedByteAmount()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 641
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 683
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v0, p3, p5}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->setCurrentClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->addMajorVersion(I)V

    .line 685
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addClass(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    .line 690
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 5

    .line 695
    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isUnknown()Z

    move-result v0

    const-string v1, "Unknown attribute encountered"

    const-string v2, "error"

    const-string v3, "pass"

    if-eqz v0, :cond_2

    .line 696
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownAttributeAction()Ljava/lang/String;

    move-result-object p1

    .line 697
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->passCurrentClass()V

    goto :goto_1

    .line 699
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 700
    :cond_1
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 702
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    if-eqz v0, :cond_6

    .line 703
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isUnknown(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 705
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    iget-object v4, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownClassAttributeAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 707
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->passCurrentClass()V

    goto :goto_0

    .line 708
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 709
    :cond_4
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addClassAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    :goto_1
    return-void

    .line 714
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected attribute encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitEnd()V
    .locals 1

    .line 720
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->endOfClass()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 6

    .line 725
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fieldVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->addInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 6

    .line 736
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 737
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->methodVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    return-object p1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addEnclosingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 748
    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    if-nez p2, :cond_0

    .line 749
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addSourceFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
