.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;
    }
.end annotation


# instance fields
.field private final attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

.field protected attributeLayoutElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private backwardsCallCount:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 606
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 607
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseLayout()V

    .line 608
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->backwardsCallCount:I

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->setBackwardsCallCount(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    move-result-object p0

    return-object p0
.end method

.method private getOneAttribute(ILjava/util/List;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;"
        }
    .end annotation

    .line 646
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    .line 647
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 648
    invoke-interface {v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    move v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 664
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v3, v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-eqz v2, :cond_0

    .line 676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 679
    :cond_4
    :goto_1
    new-instance p1, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private parseLayout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    if-nez v0, :cond_1

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    .line 711
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 713
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextAttributeElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->resolveCalls()V

    :cond_1
    return-void
.end method

.method private readBody(Ljava/io/StringReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StringReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 741
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readNextAttributeElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 747
    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 748
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 753
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;-><init>(Ljava/util/List;)V

    return-object v0

    .line 755
    :cond_1
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 756
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    move-result-object p1

    return-object p1
.end method

.method private readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/16 v1, 0x28

    if-eq v0, v1, :cond_a

    const/16 v1, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x46

    if-eq v0, v1, :cond_8

    const/16 v1, 0x4b

    .line 764
    const-string v5, ""

    if-eq v0, v1, :cond_6

    const/16 v1, 0x56

    if-eq v0, v1, :cond_9

    const/16 v1, 0x48

    if-eq v0, v1, :cond_9

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-object v2

    .line 798
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 804
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextUnionCase(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 805
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 808
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 809
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 811
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 812
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_3

    .line 814
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 815
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v2

    .line 817
    :cond_3
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 775
    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 776
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_4

    .line 777
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 778
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v0

    .line 780
    :cond_4
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PO"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v0

    .line 782
    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 783
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    .line 784
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 785
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "O"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v0

    .line 787
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v0

    .line 791
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    int-to-char v0, v0

    .line 792
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 793
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readUpToMatchingBracket(Ljava/io/StringReader;)Ljava/lang/String;

    move-result-object p1

    .line 794
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 827
    :cond_6
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 828
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_7

    .line 831
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :cond_7
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object p1

    .line 773
    :cond_8
    :pswitch_5
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/String;

    int-to-char v0, v0

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result p1

    int-to-char p1, p1

    const/4 v5, 0x2

    new-array v5, v5, [C

    aput-char v0, v5, v3

    aput-char p1, v5, v4

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 770
    :cond_9
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v1, Ljava/lang/String;

    int-to-char v0, v0

    new-array v2, v4, [C

    aput-char v0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object p1

    .line 821
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 822
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 823
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private readNextUnionCase(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 846
    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 847
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 848
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    int-to-char v1, v0

    const/16 v2, 0x29

    if-eq v1, v2, :cond_4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 855
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 859
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 861
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    :cond_2
    if-nez v1, :cond_1

    .line 865
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    const/4 v1, 0x1

    .line 866
    invoke-virtual {p1, v1}, Ljava/io/StringReader;->mark(I)V

    .line 867
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3

    .line 869
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;)V

    return-object p1

    .line 871
    :cond_3
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 872
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 851
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 883
    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 884
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2d

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 887
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    :cond_1
    const/16 v1, 0x64

    .line 889
    invoke-virtual {p1, v1}, Ljava/io/StringReader;->mark(I)V

    .line 892
    :goto_1
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 895
    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    if-nez v3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 899
    :cond_3
    new-array v1, v3, [C

    .line 900
    invoke-virtual {p1, v1}, Ljava/io/StringReader;->read([C)I

    move-result p1

    if-ne p1, v3, :cond_5

    if-eqz v0, :cond_4

    .line 904
    const-string p1, "-"

    goto :goto_2

    :cond_4
    const-string p1, ""

    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 902
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error reading from the input stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readUpToMatchingBracket(Ljava/io/StringReader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    move v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 918
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v3, v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 933
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private resolveCalls()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 941
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 942
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 943
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v3, :cond_1

    .line 944
    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 946
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->setFirstCallable(Z)V

    .line 949
    :cond_0
    invoke-static {v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->access$400(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 951
    invoke-direct {p0, v0, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->resolveCallsForElement(ILorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->backwardsCallCount:I

    return-void
.end method

.method private resolveCallsForElement(ILorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;)I
    .locals 3

    .line 960
    instance-of v0, p3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 961
    check-cast p3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;

    .line 962
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->access$500(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 965
    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)V

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_4

    :cond_1
    if-lez v0, :cond_3

    add-int/2addr p1, v2

    .line 967
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 968
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 969
    instance-of v2, p2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 972
    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)V

    goto :goto_4

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_0

    .line 980
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 981
    instance-of v1, p2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    .line 984
    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)V

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 990
    :cond_5
    instance-of v0, p3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;

    if-eqz v0, :cond_6

    .line 991
    check-cast p3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;

    invoke-static {p3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;->access$600(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;)Ljava/util/List;

    move-result-object p3

    .line 992
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 993
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->resolveCallsForElement(ILorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    :goto_4
    return v1
.end method


# virtual methods
.method public getBackwardsCallCount()I
    .locals 1

    .line 612
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->backwardsCallCount:I

    return v0
.end method

.method public getCodec(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1

    const/16 v0, 0x4f

    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 623
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p1

    :cond_0
    const/16 v0, 0x50

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 626
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p1

    :cond_1
    const/16 v0, 0x53

    .line 628
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const-string v0, "KS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "RS"

    .line 629
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p1

    :cond_2
    const/16 v0, 0x42

    .line 632
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 633
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p1

    .line 635
    :cond_3
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p1
.end method

.method public parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 693
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;->readBands(Ljava/io/InputStream;I)V

    goto :goto_0

    .line 696
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 698
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getOneAttribute(ILjava/util/List;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    return-void
.end method

.method public setBackwardsCalls([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseLayout()V

    .line 1009
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 1010
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isBackwardsCallable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->addCount(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unpack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    return-void
.end method
