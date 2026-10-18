.class public Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "MetadataBandGroup.java"


# static fields
.field public static final CONTEXT_CLASS:I = 0x0

.field public static final CONTEXT_FIELD:I = 0x1

.field public static final CONTEXT_METHOD:I = 0x2


# instance fields
.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public caseD_KD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public caseF_KF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public caseI_KI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public caseJ_KJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public casec_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field public caseec_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public caseet_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field public cases_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private final context:I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field public name_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public nestname_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public nesttype_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private numBackwardsCalls:I

.field public pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final type:Ljava/lang/String;

.field public type_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p5, p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 40
    new-instance p4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 41
    new-instance p4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 42
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    .line 43
    new-instance p4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 44
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    .line 45
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    .line 46
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    .line 47
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    .line 48
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    .line 49
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    .line 50
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    .line 51
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    .line 52
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    .line 53
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    .line 54
    new-instance p4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 55
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    .line 56
    new-instance p4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 57
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 75
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->context:I

    return-void
.end method

.method static synthetic lambda$tagListToArray$7(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private nextString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private removeOnePair()V
    .locals 5

    .line 365
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v4, v2

    goto :goto_0

    :sswitch_b
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 388
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 384
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 391
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    .line 392
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    :goto_1
    if-ge v3, v0, :cond_c

    .line 394
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeOnePair()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 381
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 378
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 375
    :pswitch_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 372
    :pswitch_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 398
    :pswitch_7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    .line 400
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    :goto_2
    if-ge v3, v0, :cond_c

    .line 402
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeOnePair()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tagListToArray(Ljava/util/List;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 409
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 94
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p2, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 97
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 98
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v0, -0x1

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p4, "s"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string p4, "e"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string p4, "c"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string p4, "Z"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string p4, "S"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string p4, "J"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string p4, "I"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string p4, "F"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string p4, "D"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string p4, "C"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_a
    const-string p4, "B"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 130
    :pswitch_0
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :pswitch_1
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 121
    :pswitch_2
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :pswitch_3
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :pswitch_4
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 109
    :pswitch_5
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :pswitch_6
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    :cond_b
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 137
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 138
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 139
    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    add-int/2addr p3, p2

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    goto :goto_2

    .line 141
    :cond_c
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p6, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 142
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p7, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 143
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 144
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 145
    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    goto :goto_3

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 168
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    .line 169
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->addAll(Lorg/apache/commons/compress/harmony/pack200/IntList;)V

    .line 172
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p4, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 173
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p5, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 174
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 175
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 176
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, -0x1

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p4, "s"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 p5, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string p4, "e"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 p5, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string p4, "c"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 p5, 0x8

    goto/16 :goto_2

    :sswitch_3
    const-string p4, "Z"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 p5, 0x7

    goto :goto_2

    :sswitch_4
    const-string p4, "S"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p5, 0x6

    goto :goto_2

    :sswitch_5
    const-string p4, "J"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    const/4 p5, 0x5

    goto :goto_2

    :sswitch_6
    const-string p4, "I"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    const/4 p5, 0x4

    goto :goto_2

    :sswitch_7
    const-string p4, "F"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    const/4 p5, 0x3

    goto :goto_2

    :sswitch_8
    const-string p4, "D"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_2

    :cond_9
    const/4 p5, 0x2

    goto :goto_2

    :sswitch_9
    const-string p4, "C"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    goto :goto_2

    :cond_a
    const/4 p5, 0x1

    goto :goto_2

    :sswitch_a
    const-string p4, "B"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto :goto_2

    :cond_b
    move p5, v0

    :goto_2
    packed-switch p5, :pswitch_data_0

    goto/16 :goto_1

    .line 208
    :pswitch_0
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 203
    :pswitch_1
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 199
    :pswitch_2
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    :pswitch_3
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 191
    :pswitch_4
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    :pswitch_5
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 183
    :pswitch_6
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 214
    :cond_c
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 215
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 216
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 217
    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    add-int/2addr p3, p2

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    goto :goto_3

    .line 219
    :cond_d
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p9, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 220
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p10, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 221
    invoke-interface {p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 222
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 223
    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    goto :goto_4

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasContent()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementAnnoN()V
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    return-void
.end method

.method synthetic lambda$addAnnotation$0$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addAnnotation$1$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addAnnotation$2$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$3$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$4$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$5$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$6$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public newEntryInAnnoN()V
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public numBackwardsCalls()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 259
    const-string v0, "Writing metadata band group..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->context:I

    if-nez v0, :cond_0

    .line 263
    const-string v0, "Class"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 265
    const-string v0, "Field"

    goto :goto_0

    .line 267
    :cond_1
    const-string v0, "Method"

    .line 270
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v2, "AD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, " bytes from "

    const-string v4, "Wrote "

    const-string v5, "_"

    if-nez v1, :cond_3

    .line 271
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    const/16 v6, 0x50

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    const-string v7, " anno_N["

    if-eq v1, v6, :cond_2

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " param_NB"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 274
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 277
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " anno_N"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 278
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " type_RS"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 282
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " type_RS["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " pair_N"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 286
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " pair_N["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " name_RU"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 290
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " name_RU["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 293
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " T"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->tagListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 294
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " T["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseI_KI"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 298
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseI_KI["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseD_KD"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 302
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseD_KD["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseF_KF"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 306
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseF_KF["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseJ_KJ"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 310
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseJ_KJ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " casec_RS"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 314
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " casec_RS["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseet_RS"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 318
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseet_RS["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseec_RU"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 322
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " caseec_RU["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " cases_RU"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 326
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " cases_RU["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " casearray_N"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 330
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " casearray_N["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " nesttype_RS"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 334
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " nesttype_RS["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " nestpair_N"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 338
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " nestpair_N["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " nestname_RU"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 342
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " nestname_RU["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public removeLatest()V
    .locals 5

    .line 351
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 353
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 354
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 356
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeOnePair()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
