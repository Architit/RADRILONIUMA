.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Union"
.end annotation


# instance fields
.field private caseCounts:[I

.field private final defaultCaseBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCount:I

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

.field private final unionCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;",
            ">;"
        }
    .end annotation
.end field

.field private final unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;)V"
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V

    .line 456
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    .line 457
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    .line 458
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 9

    .line 463
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    .line 465
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->access$300(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;)[I

    move-result-object v0

    .line 466
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->getValue(I)I

    move-result v1

    .line 468
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 469
    invoke-virtual {v7, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v3

    :goto_1
    if-ge v5, p1, :cond_2

    .line 472
    aget v8, v0, v5

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {v7, v6, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    move v5, v3

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_8

    move v1, v3

    move v2, v1

    :goto_2
    if-ge v1, p1, :cond_7

    .line 484
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v3

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 485
    aget v8, v0, v1

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v6, v4

    goto :goto_3

    :cond_5
    if-nez v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 493
    :cond_7
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 494
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 495
    invoke-virtual {v0, v2, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public getDefaultCaseBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    return-object v0
.end method

.method public getUnionCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    return-object v0
.end method

.method public getUnionTag()Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    return-object v0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->readBands(Ljava/io/InputStream;I)V

    .line 516
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-static {p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->access$300(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;)[I

    move-result-object p2

    .line 518
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    const/4 v0, 0x0

    move v1, v0

    .line 519
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 520
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 521
    array-length v4, p2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, p2, v5

    .line 522
    invoke-virtual {v2, v6}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    aget v7, v6, v1

    add-int/2addr v7, v3

    aput v7, v6, v1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 526
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    aget v3, v3, v1

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->readBands(Ljava/io/InputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_2
    array-length v1, p2

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_6

    aget v4, p2, v2

    .line 531
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 532
    invoke-virtual {v7, v4}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v3

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    .line 537
    iget v4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCount:I

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 540
    :cond_6
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 541
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 542
    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCount:I

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->readBands(Ljava/io/InputStream;I)V

    goto :goto_4

    :cond_7
    return-void
.end method
