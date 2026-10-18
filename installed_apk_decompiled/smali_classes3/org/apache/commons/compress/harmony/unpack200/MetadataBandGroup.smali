.class public Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
.super Ljava/lang/Object;
.source "MetadataBandGroup.java"


# static fields
.field private static riaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private static ripaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private static rvaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private static rvpaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field public T:[I

.field private T_index:I

.field public anno_N:[I

.field private anno_N_Index:I

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

.field private caseD_KD_Index:I

.field public caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

.field private caseF_KF_Index:I

.field public caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

.field private caseI_KI_Index:I

.field public caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

.field private caseJ_KJ_Index:I

.field public casearray_N:[I

.field private casearray_N_Index:I

.field public casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private casec_RS_Index:I

.field public caseec_RU:[Ljava/lang/String;

.field private caseec_RU_Index:I

.field public caseet_RS:[Ljava/lang/String;

.field private caseet_RS_Index:I

.field public cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private cases_RU_Index:I

.field private final cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field public name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private nestname_RU_Iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public nestpair_N:[I

.field private nestpair_N_Index:I

.field public nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private nesttype_RS_Index:I

.field public pair_N:[[I

.field private pair_N_Index:I

.field public param_NB:[I

.field private final type:Ljava/lang/String;

.field public type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    return-void
.end method

.method private getAnnotation(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            "I",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;"
        }
    .end annotation

    .line 134
    new-array v0, p2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 135
    new-array v1, p2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 137
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, v0, v2

    .line 138
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    iget v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T_index:I

    aget v3, v3, v4

    .line 139
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getNextValue(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;-><init>(ILjava/lang/Object;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-instance p3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    invoke-direct {p3, p2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;-><init>(ILorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;)V

    return-object p3
.end method

.method private getAttribute(I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            "[I",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;"
        }
    .end annotation

    .line 145
    new-array p1, p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    .line 146
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 147
    new-instance p2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleAnnotationsAttribute;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string p4, "RVA"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->rvaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->riaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    :goto_0
    invoke-direct {p2, p3, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleAnnotationsAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;)V

    return-object p2
.end method

.method private getNextValue(I)Ljava/lang/Object;
    .locals 5

    const/16 v0, 0x40

    if-eq p1, v0, :cond_8

    const/16 v0, 0x46

    if-eq p1, v0, :cond_7

    const/16 v0, 0x53

    if-eq p1, v0, :cond_6

    const/16 v0, 0x63

    if-eq p1, v0, :cond_5

    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_3

    const/16 v0, 0x49

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :pswitch_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD_Index:I

    aget-object p1, p1, v0

    return-object p1

    .line 215
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N_Index:I

    aget p1, p1, v0

    .line 216
    new-array v0, p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 218
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T_index:I

    aget v2, v2, v3

    .line 219
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getNextValue(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;-><init>(ILjava/lang/Object;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 204
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ_Index:I

    aget-object p1, p1, v0

    return-object p1

    .line 213
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU_Index:I

    aget-object p1, p1, v0

    return-object p1

    .line 210
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS_Index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS_Index:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU_Index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU_Index:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object p1

    return-object p1

    .line 206
    :cond_5
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS_Index:I

    aget-object p1, p1, v0

    return-object p1

    .line 198
    :cond_6
    :pswitch_1
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI_Index:I

    aget-object p1, p1, v0

    return-object p1

    .line 202
    :cond_7
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF_Index:I

    aget-object p1, p1, v0

    return-object p1

    .line 223
    :cond_8
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS_Index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS_Index:I

    aget-object p1, p1, v0

    .line 224
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N_Index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N_Index:I

    aget v0, v0, v1

    .line 226
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU_Iterator:Ljava/util/Iterator;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAnnotation(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getParameterAttribute(ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;"
        }
    .end annotation

    .line 232
    new-array v0, p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 234
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N_Index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N_Index:I

    aget v2, v2, v3

    .line 235
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    iget v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N_Index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N_Index:I

    aget-object v3, v3, v4

    .line 236
    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    .line 237
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, p2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[ILjava/util/Iterator;)V

    invoke-static {v2, v4}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 238
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;

    invoke-direct {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;-><init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute;

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v1, "RVPA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->rvpaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->ripaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    :goto_1
    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;)V

    return-object p1
.end method

.method public static setRiaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    .line 51
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->riaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method public static setRipaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    .line 55
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->ripaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method public static setRvaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    .line 59
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->rvaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method public static setRvpaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    .line 63
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->rvpaUTF8:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->attributes:Ljava/util/List;

    if-nez v0, :cond_5

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->attributes:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    const-string v1, "AD"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 155
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T_index:I

    .line 159
    :cond_0
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI_Index:I

    .line 160
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD_Index:I

    .line 161
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF_Index:I

    .line 162
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ_Index:I

    .line 163
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS_Index:I

    .line 164
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS_Index:I

    .line 165
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU_Index:I

    .line 166
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU_Index:I

    .line 167
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N_Index:I

    .line 168
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS_Index:I

    .line 169
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N_Index:I

    .line 170
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU_Iterator:Ljava/util/Iterator;

    .line 171
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v3, "RVA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v3, "RIA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v3, "RVPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v3, "RIPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    :cond_2
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N_Index:I

    .line 177
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N_Index:I

    .line 178
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->param_NB:[I

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_5

    aget v4, v1, v2

    .line 179
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->attributes:Ljava/util/List;

    invoke-direct {p0, v4, v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getParameterAttribute(ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 173
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->attributes:Ljava/util/List;

    aget v1, v1, v2

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    aget-object v5, v5, v2

    invoke-direct {p0, v1, v4, v5, v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttribute(I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    .line 184
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->attributes:Ljava/util/List;

    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;

    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getNextValue(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;-><init>(ILjava/lang/Object;)V

    invoke-direct {v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->attributes:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$getAttribute$0$org-apache-commons-compress-harmony-unpack200-MetadataBandGroup([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 0

    .line 146
    aget-object p1, p1, p4

    aget p2, p2, p4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAnnotation(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getParameterAttribute$1$org-apache-commons-compress-harmony-unpack200-MetadataBandGroup([ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N_Index:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    aget-object v0, v0, p3

    aget p1, p1, p3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAnnotation(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p1

    return-object p1
.end method
